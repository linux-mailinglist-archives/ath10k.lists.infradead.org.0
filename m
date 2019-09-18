Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C352CB614C
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 12:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6LC+5+o3uVXojy+ZHy54xFJfQG2I8TibkoHhjIu30po=; b=h6PjeKYlmucxBBKuRdBSP4aii
	cSkw8YPOSIcghLkxyJkIPPeVkS2stZLD7SdPCUNn+h+L9BHT03KtU/v0QAMzBmb2cjNR0khXhHrS/
	y1JGzTixi3iFxg4hs+wSULJgfQ2KWGSRq68SqVtcryglaunLCS/T+X9Sp2YTkwyXakrqbBbHlqRXB
	zv+15GOymYjfGOlCfdDMDlYHMefmASQpr0PVgzgZj8UzrzyVPwW78OApebnIdsOz7omHKhYBWuNkQ
	nG9lMSW/0z6yMyxyRXx+Xr/rTfuuWJwSuZK9AOhk9lQsXBRgzwZsH9PZ603HPDGzpjTNIu8xQZzmM
	kAs0GBGXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAX39-0007NT-Kq; Wed, 18 Sep 2019 10:19:03 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAX34-0007N8-UN
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 10:19:00 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8614B607F4; Wed, 18 Sep 2019 10:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568801938;
 bh=x5KQoxkKPdpw3obd8l7+AXrpmpoqBbu12IbMaDiZPjw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kDIX2fP3OD9fVQeaZlsH7pAx1wZaPRjyn8RMGVWL7wrzcFiG5SDtXLIZJP32+UjZ0
 wKOppnRVydI1VxUbswhlwytdut/uHs+rAD2hVuCc4sPzMvbUbMaA+HqLkEbg65aCNe
 NSA9eeMs5IFwtYB3OUgvBztkxbfLhWJsS5WlVB4Y=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id ACA066050D;
 Wed, 18 Sep 2019 10:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568801937;
 bh=x5KQoxkKPdpw3obd8l7+AXrpmpoqBbu12IbMaDiZPjw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=M9KYs/TR8ntrF+sR1H9IRyfuy4+KWN0+kh2Q3uqRFFi3+Jd6KVYgT1uCSagtzhzLq
 oI93gUUZbzYVM6kdh0lVk3ybnJj7rgYeJg2kT4OtL0QflhTf1fZ1Tq7UlkIm01LQ3W
 LqegDn8x2z3addyZbtiwuBgicAgiJAzravYptMFk=
MIME-Version: 1.0
Date: Wed, 18 Sep 2019 18:18:56 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH 3/4] mac80211: fix low throughput in push pull mode
In-Reply-To: <871rwdj4ez.fsf@toke.dk>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-3-git-send-email-yiboz@codeaurora.org>
 <6684ceecde399edeb31c594f889a403440c78142.camel@sipsolutions.net>
 <8e4cd872d082c6bce598c87411a2125f@codeaurora.org> <87lfumiq3w.fsf@toke.dk>
 <595c99a36c4f3e3eb131894d85c09746@codeaurora.org> <871rwdj4ez.fsf@toke.dk>
Message-ID: <4780268b967c128a42396c39d697e67e@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_031859_022989_2C79F15E 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: linux-wireless-owner@vger.kernel.org,
 Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0xOCAxODoxNiwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFlp
Ym8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPiAKPj4gT24gMjAxOS0wOS0x
OCAwNToxMiwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+Pj4gWWlibyBaaGFvIDx5
aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4gCj4+Pj4gT24gMjAxOS0wOS0xNiAyMzoy
NywgSm9oYW5uZXMgQmVyZyB3cm90ZToKPj4+Pj4gV2l0aG91dCByZWFsbHkgbG9va2luZyBhdCB0
aGUgY29kZSAtCj4+Pj4+IAo+Pj4+Pj4gSWYgc3RhdGlvbiBpcyBpbmVsaWdpYmxlIGZvciB0cmFu
c21pc3Npb24gaW4KPj4+Pj4+IGllZWU4MDIxMV90eHFfbWF5X3RyYW5zbWl0KCksCj4+Pj4+PiBu
byBwYWNrZXQgd2lsbCBiZSBkZWxpdmVyZWQgdG8gRlcuIER1cmluZyB0aGUgdGVzdHMgaW4gcHVz
aC1wdWxsCj4+Pj4+PiBtb2RlCj4+Pj4+PiB3aXRoCj4+Pj4+PiBtYW55IGNsaWVudHMsIGFmdGVy
IHNldmVyYWwgc2Vjb25kcywgbm90IGEgc2luZ2xlIHN0YXRpb24gaXMgYW4KPj4+Pj4+IGVsaWdp
YmxlCj4+Pj4+PiBjYW5kaWRhdGUgZm9yIHRyYW5zbWlzc2lvbiBzaW5jZSBnbG9iYWwgdGltZSBp
cyBzbWFsbGVyIHRoYW4gYWxsIAo+Pj4+Pj4gdGhlCj4+Pj4+PiBzdGF0aW9uJ3MgdmlydHVhbCBh
aXJ0aW1lLiBBcyBhIGNvbnNlcXVlbmNlLCB0aGUgVHggaGFzIGJlZW4gCj4+Pj4+PiBibG9ja2Vk
Cj4+Pj4+PiBhbmQKPj4+Pj4+IHRocm91Z2hwdXQgaXMgcXVpdGUgbG93Lgo+Pj4+PiAKPj4+Pj4g
WW91IHNob3VsZCByZXdyaXRlIHRoaXMgdG8gYmUsIGVybSwgYSBiaXQgbW9yZSB1bmRlcnN0YW5k
YWJsZSBpbgo+Pj4+PiBtYWM4MDIxMSBjb250ZXh0LiBJIGFzc3VtZSB5b3UncmUgc3BlYWtpbmcg
KG1vc3RseT8pIGFib3V0IGF0aDEwaywKPj4+Pj4gYnV0Cj4+Pj4+IEkKPj4+Pj4gaGF2ZSB2ZXJ5
IGxpdHRsZSBjb250ZXh0IHRoZXJlLiAicHVzaCBwdWxsIG1vZGUiPyAiZmlybXdhcmUiPyBUaGVz
ZQo+Pj4+PiB0aGluZ3MgYXJlIG5vdCBzb21ldGhpbmcgbWFjODAyMTEga25vd3MgYWJvdXQuCj4+
Pj4gSGkgSm9oYW5uZXMsCj4+Pj4gCj4+Pj4gVGhhbmtzIGZvciB5b3VyIGtpbmRseSByZW1pbmRl
ci4gV2lsbCByZXdyaXRlIHRoZSBjb21taXQgbG9nLgo+Pj4+IAo+Pj4+PiAKPj4+Pj4+IENvLWRl
dmVsb3BlZC1ieTogWWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4KPj4+Pj4gCj4+Pj4+
IFRoYXQgYWxzbyBzZWVtcyB3cm9uZywgc2hvdWxkIGJlIFRva2UgSSBndWVzcywgdW5sZXNzIHlv
dSBpbnRlbmRlZAo+Pj4+PiBmb3IKPj4+Pj4gYQo+Pj4+PiBGcm9tOiBUb2tlIHRvIGJlIHByZXNl
bnQ/Cj4+Pj4gRG8geW91IG1lYW4gaXQgc2hvdWxkIGJlIHNvbWV0aGluZyBsaWtlOgo+Pj4+IAo+
Pj4+IENvLWRldmVsb3BlZC1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2Uu
ZGs+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogWWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4K
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5k
az4KPj4+PiAKPj4+PiBBbSBJIHVuZGVyc3RhbmRpbmcgcmlnaHQ/Cj4+PiAKPj4+IEkgdGhpbmsg
dGhlIHJpZ2h0IHRoaW5nIGhlcmUsIGFzIHdpdGggdGhlIHByZXZpb3VzIHBhdGNoLCBpcyB0byBq
dXN0Cj4+PiBkcm9wIG15IHNpZ24tb2ZmOyB5b3UncmUgd3JpdGluZyB0aGlzIHBhdGNoLCBhbmQg
SSdsbCBhZGQgYWNrL3Jldmlld3MKPj4+IGFzCj4+PiBhcHByb3ByaWF0ZS4gQW5kIGluIHRoYXQg
Y2FzZSwgd2VsbCwgbm8gbmVlZCB0byBoYXZlIGNvLWRldmVsb3BlZC1ieQo+Pj4geW91cnNlbGYg
d2hlbiB5b3VyIG5hbWUgaXMgb24gdGhlIHBhdGNoIGFzIGF1dGhvciA6KQo+Pj4gCj4+PiAtVG9r
ZQo+PiBTb3JyeSwgSSB0aGluayBJIGhhdmUgbWlzc2VkIGNoZWNraW5nIHlvdXIgcmVwbHksIHBs
ZWFzZSBpZ25vcmUgdGhlCj4+IHdyb25nIHNpZ25lZC1vZmYgaW4gUEFUQ0gtVjIuCj4gCj4gV2hp
bGUgeW91J3JlIHJlLXNwaW5uaW5nLCBjb3VsZCB5b3UgcGxlYXNlIGFkZCBhIGNoYW5nZWxvZyBm
b3IgdGhlCj4gY2hhbmdlcyB5b3UgbWFrZT8gTWFrZXMgaXQgZWFzaWVyIHRvIGtlZXAgdHJhY2sg
OikKPiAKPiBZb3UgY2FuIGFkZCBhIGNvdmVyLWxldHRlciB3aXRoIGEgZnVsbCBjaGFuZ2Vsb2cg
aW5zdGVhZCBvZiBoYXZpbmcgYQo+IHNlcGFyYXRlIGNoYW5nZWxvZyBmb3IgZWFjaCBwYXRjaDsg
dGhhdCdzIHdoYXQgSSB1c3VhbGx5IGRvLi4uCj4gCj4gLVRva2UKU3VyZSwgdGhhbmtzLgotLSAK
WWlibwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRo
MTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
