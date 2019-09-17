Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C43B4794
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 08:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TwlKrIJkxptQ/PbkQenXzLbg1hDV1CH/NwFshgZrIUw=; b=mg2vtgdTLv83qPBmgegiploHM
	HkiwqEs7MNYKENj+o60oS089stWxttMV2u8O9Ypp3wvF8Ivk14wtOWjU1que+qdquUycD8fL16RkP
	ypvSFckZRVQvsxr46szpJ6f9J81I29UiWzJWpQtoGDRFglRTLoqERDK5cel9zb4YBqiqS+7v/AVIr
	5HdZVyjmNZtAaLCIolqBf+j3q+eGW4gjWfVeN1tD+tPDgXgDvsyc6yayFa3BQBqaCb4RcPSSQDHgH
	EYkiM0xR3AIKvH7KZWJYA03a8taBp7p9PgSo2DRlOPDOhJ/7/pqaBpMk6jhjUYm8zHPHiuI/o/z50
	qulXmSLug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA76B-0004m9-Hw; Tue, 17 Sep 2019 06:36:27 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA766-0004lj-0o
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 06:36:23 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 754C16141D; Tue, 17 Sep 2019 06:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568702180;
 bh=j+K5h9V7T3l/wUoaSAsdMed329Ydn4hIdD2z0M3JVhA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=H1pkD3qTb0EM9fatCQwsm40YVuEw4i7RK7h8ahmo/uZx1CpMduVearL6N4yIbEmxo
 fTzXSTKwkq6sAH5brNffFN92JCEfmve9hDUS8HNv5ycWVnT+pRwt+4N9eLloAOFqXb
 1zIWvAbTwjMs0ckLn38vsoCgaHbxpOmTtKXux8xQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 1C53260271;
 Tue, 17 Sep 2019 06:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568702180;
 bh=j+K5h9V7T3l/wUoaSAsdMed329Ydn4hIdD2z0M3JVhA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=H1pkD3qTb0EM9fatCQwsm40YVuEw4i7RK7h8ahmo/uZx1CpMduVearL6N4yIbEmxo
 fTzXSTKwkq6sAH5brNffFN92JCEfmve9hDUS8HNv5ycWVnT+pRwt+4N9eLloAOFqXb
 1zIWvAbTwjMs0ckLn38vsoCgaHbxpOmTtKXux8xQ=
MIME-Version: 1.0
Date: Tue, 17 Sep 2019 14:36:20 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH 3/4] mac80211: fix low throughput in push pull mode
In-Reply-To: <6684ceecde399edeb31c594f889a403440c78142.camel@sipsolutions.net>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-3-git-send-email-yiboz@codeaurora.org>
 (sfid-20190916_151039_049848_BE125514)
 <6684ceecde399edeb31c594f889a403440c78142.camel@sipsolutions.net>
Message-ID: <8e4cd872d082c6bce598c87411a2125f@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_233622_613924_6D6CD185 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0xNiAyMzoyNywgSm9oYW5uZXMgQmVyZyB3cm90ZToKPiBXaXRob3V0IHJlYWxs
eSBsb29raW5nIGF0IHRoZSBjb2RlIC0KPiAKPj4gSWYgc3RhdGlvbiBpcyBpbmVsaWdpYmxlIGZv
ciB0cmFuc21pc3Npb24gaW4gCj4+IGllZWU4MDIxMV90eHFfbWF5X3RyYW5zbWl0KCksCj4+IG5v
IHBhY2tldCB3aWxsIGJlIGRlbGl2ZXJlZCB0byBGVy4gRHVyaW5nIHRoZSB0ZXN0cyBpbiBwdXNo
LXB1bGwgbW9kZSAKPj4gd2l0aAo+PiBtYW55IGNsaWVudHMsIGFmdGVyIHNldmVyYWwgc2Vjb25k
cywgbm90IGEgc2luZ2xlIHN0YXRpb24gaXMgYW4gCj4+IGVsaWdpYmxlCj4+IGNhbmRpZGF0ZSBm
b3IgdHJhbnNtaXNzaW9uIHNpbmNlIGdsb2JhbCB0aW1lIGlzIHNtYWxsZXIgdGhhbiBhbGwgdGhl
Cj4+IHN0YXRpb24ncyB2aXJ0dWFsIGFpcnRpbWUuIEFzIGEgY29uc2VxdWVuY2UsIHRoZSBUeCBo
YXMgYmVlbiBibG9ja2VkIAo+PiBhbmQKPj4gdGhyb3VnaHB1dCBpcyBxdWl0ZSBsb3cuCj4gCj4g
WW91IHNob3VsZCByZXdyaXRlIHRoaXMgdG8gYmUsIGVybSwgYSBiaXQgbW9yZSB1bmRlcnN0YW5k
YWJsZSBpbgo+IG1hYzgwMjExIGNvbnRleHQuIEkgYXNzdW1lIHlvdSdyZSBzcGVha2luZyAobW9z
dGx5PykgYWJvdXQgYXRoMTBrLCBidXQgCj4gSQo+IGhhdmUgdmVyeSBsaXR0bGUgY29udGV4dCB0
aGVyZS4gInB1c2ggcHVsbCBtb2RlIj8gImZpcm13YXJlIj8gVGhlc2UKPiB0aGluZ3MgYXJlIG5v
dCBzb21ldGhpbmcgbWFjODAyMTEga25vd3MgYWJvdXQuCkhpIEpvaGFubmVzLAoKVGhhbmtzIGZv
ciB5b3VyIGtpbmRseSByZW1pbmRlci4gV2lsbCByZXdyaXRlIHRoZSBjb21taXQgbG9nLgoKPiAK
Pj4gQ28tZGV2ZWxvcGVkLWJ5OiBZaWJvIFpoYW8gPHlpYm96QGNvZGVhdXJvcmEub3JnPgo+IAo+
IFRoYXQgYWxzbyBzZWVtcyB3cm9uZywgc2hvdWxkIGJlIFRva2UgSSBndWVzcywgdW5sZXNzIHlv
dSBpbnRlbmRlZCBmb3IgCj4gYQo+IEZyb206IFRva2UgdG8gYmUgcHJlc2VudD8KRG8geW91IG1l
YW4gaXQgc2hvdWxkIGJlIHNvbWV0aGluZyBsaWtlOgoKQ28tZGV2ZWxvcGVkLWJ5OiBUb2tlIEjD
uGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5kaz4KU2lnbmVkLW9mZi1ieTogWWlibyBaaGFv
IDx5aWJvekBjb2RlYXVyb3JhLm9yZz4KU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hy
Z2Vuc2VuIDx0b2tlQHRva2UuZGs+CgpBbSBJIHVuZGVyc3RhbmRpbmcgcmlnaHQ/Cj4gCj4gam9o
YW5uZXMKCi0tIApZaWJvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
