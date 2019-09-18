Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC82AB60FE
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 12:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wi3SvZgIVNte80GZNvOH/+KbOAqU5QpyuKfW0/WRm+Q=; b=fZGqSaP24weCZ+UFoQ5Nputl8
	uYyvWcjK2ryyda6TDpt7w5CwibmyaCmnZzHq9fA9zjiNfxQRt9FU55virnL6bKZAHPK9lWEhVqGVx
	ytoYG6yscO2yBaeZQ7c8+ahJcqQ2E4Y5e2XM7uepN5VM/g8Vm8/foWPnnw42djHax00qvlmuZQHDw
	MCfTg5y9u5CX05yxgbqCpXnVJCXJgFUaFrGgbHmgsBvodOoowBQfaG8sAf1brLngX+SYozwgpScER
	iZvU1dIxKoQrFCZYLYiwEIbGtdet1pGUnfSkdTaIi7QG+YzTsTTS8s4WhZqG3Jpk5e92pN9vM2IEc
	R+EczcYog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWnO-0001mK-7T; Wed, 18 Sep 2019 10:02:46 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWnJ-0001lr-E5
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 10:02:42 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 01FF9602F0; Wed, 18 Sep 2019 10:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568800961;
 bh=1bGaOxZtc50/tDmmvlQLND5p4BJKZCG7nqc4sGoGBAA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Z3+2GLx4JijkRdP1A2fLl1H0va5OqrnY+KgRHF+HFuWidNMjjaWlTJjdf19DlwaqC
 QGsAWR/yGgsjl4fjmgDQXOF4F1Dr4rTu2p2LWAJxjLn6Ce86vYqdmQv8t3qux2Lhbd
 H4KhSVjQPKRQ3fzu7klD1xGiRn8PolQ3j1zPvNSI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 32E7B60252;
 Wed, 18 Sep 2019 10:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568800960;
 bh=1bGaOxZtc50/tDmmvlQLND5p4BJKZCG7nqc4sGoGBAA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ny9e549NJGx6EwihVSpLqHvZbqsSXy0O9com6n054VUuGSnD4VxkD2+uK3ICng+TK
 3dFnNCadAYfN2Jj66/BWiTptxejd5o3rGjYSpJM0UtNaAwhjsiA6eZ/Lx40PEzRLhj
 TbmkKbzImCETzMhRGgtKVyYpg9E1RmJyYrW+3LNI=
MIME-Version: 1.0
Date: Wed, 18 Sep 2019 18:02:40 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH 3/4] mac80211: fix low throughput in push pull mode
In-Reply-To: <87lfumiq3w.fsf@toke.dk>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-3-git-send-email-yiboz@codeaurora.org>
 <6684ceecde399edeb31c594f889a403440c78142.camel@sipsolutions.net>
 <8e4cd872d082c6bce598c87411a2125f@codeaurora.org> <87lfumiq3w.fsf@toke.dk>
Message-ID: <595c99a36c4f3e3eb131894d85c09746@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_030241_510461_DF2E5EF7 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
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

T24gMjAxOS0wOS0xOCAwNToxMiwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFlp
Ym8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPiAKPj4gT24gMjAxOS0wOS0x
NiAyMzoyNywgSm9oYW5uZXMgQmVyZyB3cm90ZToKPj4+IFdpdGhvdXQgcmVhbGx5IGxvb2tpbmcg
YXQgdGhlIGNvZGUgLQo+Pj4gCj4+Pj4gSWYgc3RhdGlvbiBpcyBpbmVsaWdpYmxlIGZvciB0cmFu
c21pc3Npb24gaW4KPj4+PiBpZWVlODAyMTFfdHhxX21heV90cmFuc21pdCgpLAo+Pj4+IG5vIHBh
Y2tldCB3aWxsIGJlIGRlbGl2ZXJlZCB0byBGVy4gRHVyaW5nIHRoZSB0ZXN0cyBpbiBwdXNoLXB1
bGwgCj4+Pj4gbW9kZQo+Pj4+IHdpdGgKPj4+PiBtYW55IGNsaWVudHMsIGFmdGVyIHNldmVyYWwg
c2Vjb25kcywgbm90IGEgc2luZ2xlIHN0YXRpb24gaXMgYW4KPj4+PiBlbGlnaWJsZQo+Pj4+IGNh
bmRpZGF0ZSBmb3IgdHJhbnNtaXNzaW9uIHNpbmNlIGdsb2JhbCB0aW1lIGlzIHNtYWxsZXIgdGhh
biBhbGwgdGhlCj4+Pj4gc3RhdGlvbidzIHZpcnR1YWwgYWlydGltZS4gQXMgYSBjb25zZXF1ZW5j
ZSwgdGhlIFR4IGhhcyBiZWVuIGJsb2NrZWQKPj4+PiBhbmQKPj4+PiB0aHJvdWdocHV0IGlzIHF1
aXRlIGxvdy4KPj4+IAo+Pj4gWW91IHNob3VsZCByZXdyaXRlIHRoaXMgdG8gYmUsIGVybSwgYSBi
aXQgbW9yZSB1bmRlcnN0YW5kYWJsZSBpbgo+Pj4gbWFjODAyMTEgY29udGV4dC4gSSBhc3N1bWUg
eW91J3JlIHNwZWFraW5nIChtb3N0bHk/KSBhYm91dCBhdGgxMGssIAo+Pj4gYnV0Cj4+PiBJCj4+
PiBoYXZlIHZlcnkgbGl0dGxlIGNvbnRleHQgdGhlcmUuICJwdXNoIHB1bGwgbW9kZSI/ICJmaXJt
d2FyZSI/IFRoZXNlCj4+PiB0aGluZ3MgYXJlIG5vdCBzb21ldGhpbmcgbWFjODAyMTEga25vd3Mg
YWJvdXQuCj4+IEhpIEpvaGFubmVzLAo+PiAKPj4gVGhhbmtzIGZvciB5b3VyIGtpbmRseSByZW1p
bmRlci4gV2lsbCByZXdyaXRlIHRoZSBjb21taXQgbG9nLgo+PiAKPj4+IAo+Pj4+IENvLWRldmVs
b3BlZC1ieTogWWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4KPj4+IAo+Pj4gVGhhdCBh
bHNvIHNlZW1zIHdyb25nLCBzaG91bGQgYmUgVG9rZSBJIGd1ZXNzLCB1bmxlc3MgeW91IGludGVu
ZGVkIAo+Pj4gZm9yCj4+PiBhCj4+PiBGcm9tOiBUb2tlIHRvIGJlIHByZXNlbnQ/Cj4+IERvIHlv
dSBtZWFuIGl0IHNob3VsZCBiZSBzb21ldGhpbmcgbGlrZToKPj4gCj4+IENvLWRldmVsb3BlZC1i
eTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+Cj4+IFNpZ25lZC1vZmYt
Ynk6IFlpYm8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IFRv
a2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUB0b2tlLmRrPgo+PiAKPj4gQW0gSSB1bmRlcnN0
YW5kaW5nIHJpZ2h0Pwo+IAo+IEkgdGhpbmsgdGhlIHJpZ2h0IHRoaW5nIGhlcmUsIGFzIHdpdGgg
dGhlIHByZXZpb3VzIHBhdGNoLCBpcyB0byBqdXN0Cj4gZHJvcCBteSBzaWduLW9mZjsgeW91J3Jl
IHdyaXRpbmcgdGhpcyBwYXRjaCwgYW5kIEknbGwgYWRkIGFjay9yZXZpZXdzIAo+IGFzCj4gYXBw
cm9wcmlhdGUuIEFuZCBpbiB0aGF0IGNhc2UsIHdlbGwsIG5vIG5lZWQgdG8gaGF2ZSBjby1kZXZl
bG9wZWQtYnkKPiB5b3Vyc2VsZiB3aGVuIHlvdXIgbmFtZSBpcyBvbiB0aGUgcGF0Y2ggYXMgYXV0
aG9yIDopCj4gCj4gLVRva2UKU29ycnksIEkgdGhpbmsgSSBoYXZlIG1pc3NlZCBjaGVja2luZyB5
b3VyIHJlcGx5LCBwbGVhc2UgaWdub3JlIHRoZSAKd3Jvbmcgc2lnbmVkLW9mZiBpbiBQQVRDSC1W
Mi4KCi0tIApZaWJvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
