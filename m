Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC2FC9FFA
	for <lists+ath10k@lfdr.de>; Thu,  3 Oct 2019 16:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3g+9hZS3A0KkltUyH7L+VXDkvjkZV+wabY8TmoyukNQ=; b=GRZil2slyNF3Of
	Pf1KaXNSN8gNAtPKJzbmi7hYNpl+2CqNj8Hc4M6L+w/1CKuygHr+ypkf8ZEAavxRMVdc3v1dBeaDc
	nhCH0kCSt3L0adF8xYPmdbSQ9ZZcQFJGfMSp/Evi+BY34cnc4pUkq/YR6uF+p3x7+Sl3b+JaX6dtS
	e5mmVRQib+Sc6n2hViJCvMGZEy4OeXMC7IAk8AwPBkEOVcHC/AHpMlFKiSCm3OH2htPNcXa6y52ni
	XOPxmB3wenGr1KZ+QZ2DhVieCO+l2hiSrA5X3lt/lrnjaLF1Iy4tO7arW1SNwR7bIIrfBLijSEMOA
	Hmy2w5GHxVzICrb+2DwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG1fr-0007xk-Tl; Thu, 03 Oct 2019 14:01:43 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG1fn-0007wz-Hy
 for ath10k@lists.infradead.org; Thu, 03 Oct 2019 14:01:41 +0000
Received: by mail-oi1-x241.google.com with SMTP id e18so2715619oii.0
 for <ath10k@lists.infradead.org>; Thu, 03 Oct 2019 07:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Xbl2FVDV/NRDS6TRrMIuIQnHaMA9j+8M/vbEhytQez0=;
 b=uErh8nrK1Rs0KHN+obi/qdELNSpKYpzBn8koOfceCkJVWTVpbNiP46flbubxGRXUDc
 cR6hCdWYmUHMZrJDF+4Z+Iq3euNopfgyXB07pSdYUTJPR65bqetkW2L60WPHAxIfjZHk
 YCjZc1ABi5OVMy24FahqAhNFRSibUJOOk4gyz45cow1U7h250+/UiIoqCXD8WRiv0gnv
 garCRttau3lmFyRIkaGl4S/pszqE8b5VkexGS4wgTfWSPAiTHxEhow5nhtDkNZzJJiHX
 8er50thFFqK8iEKqrSQn7cMZJPtP1svTDzyY3pk4NTQre5QmRiB/4fRvskLFZqTx8XFx
 UhLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Xbl2FVDV/NRDS6TRrMIuIQnHaMA9j+8M/vbEhytQez0=;
 b=t05PKbv1p+iyP7nikX0H4d+1qkhRxA0hS5Yx5TS+yMu/RqcpWd8hqEekp7S7+yLzrm
 Liu1UpdPm1L+DX1kM3cOzBU6Vrmni8hkUi7ZGwHC4syZgDNzCx5FzVq57y8y0Hu7nvsh
 4YI0Z2PTckdPi+EPgfEoJ8YQtV38Duoi+5H4rJAZHqnttz3F7zBMRPueYvhwljoHfTL0
 Y5vg79mQPJVG6XWhL1LrD011QYA4y5tw8bmou+DRu4fdRaMJy/HUFdhjBTprtLz5hC0G
 MO4i0ZtowbU+pKp+nG+/7PH/HjOPNO/t0lAipSPbvDl0T/HCWT3Jdr3VtQkEsYK4BGKA
 OfgQ==
X-Gm-Message-State: APjAAAUsouaQJV3Dv1sOyveSPa6c7kcwOggFHkmQ3XlezOWMo10OMQT8
 SjTB1i3aDmaDp1mykG/uzbPR1NDLaBpkgbe8m0i3UeAy
X-Google-Smtp-Source: APXvYqzkKQ4SM5WDnCFERLLU+BzE1d3/Gg0x7itFys0N71kFzpge/0jV++4cn4A7IWK5YPPcYqR4rsrAcaeEVr7zw0s=
X-Received: by 2002:aca:a88e:: with SMTP id r136mr3020734oie.30.1570111296850; 
 Thu, 03 Oct 2019 07:01:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2286:0:0:0:0:0 with HTTP;
 Thu, 3 Oct 2019 07:01:35 -0700 (PDT)
In-Reply-To: <87wodmgdhh.fsf@tynnyri.adurom.net>
References: <1553025580-6118-1-git-send-email-pozega.tomislav@gmail.com>
 <87wodmgdhh.fsf@tynnyri.adurom.net>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Thu, 3 Oct 2019 16:01:35 +0200
Message-ID: <CAKR_QV+mJKoP1MGdw3GYA5NHG00DOj00tRC0KTCnM9txXev8Qw@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Fix ASPM L1 state on QCA988X
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_070139_617376_6DB68257 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMDMvMTAvMjAxOSwgS2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+IHdyb3RlOgo+
IChwbGVhc2UgYWx3YXlzIENDIGF0aDEwayBsaXN0IHNvIHRoYXQgYXRoMTBrIHBhdGNoZXMgYXJl
IGVhc3kgdG8gZmluZCkKPgo+IFRvbWlzbGF2IFBvxb5lZ2EgPHBvemVnYS50b21pc2xhdkBnbWFp
bC5jb20+IHdyaXRlczoKPgo+PiBPbiBzb21lIHN5c3RlbXMgdGhlcmUgYXJlIGhlYXZ5IGNyYXNo
ZXMgaWYgdGhlIGtlcm5lbCBjb25maWcKPj4gb3B0aW9uIENPTkZJR19QQ0lFQVNQTV9QRVJGT1JN
QU5DRSBpcyBub3Qgc2V0LiBQYXRjaCBwcm92aWRlZCBieQo+PiBTdWppdGggZm9yIGF0aDlrIGZp
eGVzIHRoaXMgaXNzdWUgYW5kIHRoZSBjYXJkIG9wZXJhdGVzIHdpdGhvdXQKPj4gY3Jhc2hlcyB3
aXRoIGtlcm5lbCBkZWZhdWx0IENPTkZJR19QQ0lFQVNQTV9ERUZBVUxUIG9wdGlvbiB0aGF0IHVz
ZXMKPj4gQklPUyBwcm92aWRlZCBBU1BNIHNldHRpbmdzLiBUZXN0ZWQgd2l0aCBRQ0E5ODYyIG1Q
Q0llIGNhcmQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFN1aml0aCBNYW5vaGFyYW4gPGNfbWFub2hh
QHFjYS5xdWFsY29tbS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFRvbWlzbGF2IFBvxb5lZ2EgPHBv
emVnYS50b21pc2xhdkBnbWFpbC5jb20+Cj4KPiBTbyBJJ2xsIHN1bW1hcmlzZSB0aGUgZGlzY3Vz
c2lvbiBmcm9tIHBhdGNod29yazoKPgo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0
Y2gvMTA4NjAzMDEvCj4KPiBTdWppdGggd3JvdGUgdGhpcyB3b3JrYXJvdW5kIGZpcnN0IGZvciBh
dGg5ayBhbmQgeW91IHBvcnRlZCBpdCB0bwo+IGF0aDEwazoKPgo+IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LXdpcmVsZXNzLzEzNzc0MjE5ODktMjEyNDAtMS1naXQtc2VuZC1lbWFpbC1z
dWppdGhAbXN1aml0aC5vcmcvCj4KPiBodHRwczovL2dpdC5rZXJuZWwub3JnL2xpbnVzL2IzODBh
NDNiNTJiZQo+Cj4gQW5kIHlvdSBoYXZlIFBDSSBwcm9ibGVtcyBhZnRlciBRQ0E5ODhYIGZpcm13
YXJlIGhhcyBjcmFzaGVkIG9uIEhQCj4gQ29tcGFxIDY3MzViIGxhcHRvcCwgYXBwYXJlbnRseSB0
aGUgZGV2aWNlIGp1c3QgZG9lcyBub3QgcmVzcG9uZCBvbiBQQ0kKPiBidXMgYXQgdGhhdCBwb2lu
dC4gQW5kIHRoaXMgd29ya2Fyb3VuZCBzb2x2ZXMgdGhlIGlzc3VlIGFuZCB5b3UgZG9uJ3QKPiBo
YXZlIGFueSBwcm9ibGVtcyBhbnltb3JlLgo+Cj4gUGxlYXNlIGNvcnJlY3QgaWYgSSBoYXZlIG1p
c3VuZGVyc3Rvb2QuCj4KPj4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9w
Y2kuYwo+PiArKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3BjaS5jCj4+IEBA
IC0yNzg3LDE0ICsyNzg3LDI1IEBAIHN0YXRpYyBpbnQgYXRoMTBrX3BjaV9oaWZfcG93ZXJfdXAo
c3RydWN0IGF0aDEwawo+PiAqYXIsCj4+ICAJCQkJICAgZW51bSBhdGgxMGtfZmlybXdhcmVfbW9k
ZSBmd19tb2RlKQo+PiAgewo+PiAgCXN0cnVjdCBhdGgxMGtfcGNpICphcl9wY2kgPSBhdGgxMGtf
cGNpX3ByaXYoYXIpOwo+PiArCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gYXJfcGNpLT5wZGV2Owo+
PiAgCWludCByZXQ7Cj4+ICsJdTMyIHZhbDsKPj4KPj4gIAlhdGgxMGtfZGJnKGFyLCBBVEgxMEtf
REJHX0JPT1QsICJib290IGhpZiBwb3dlciB1cFxuIik7Cj4+Cj4+IC0JcGNpZV9jYXBhYmlsaXR5
X3JlYWRfd29yZChhcl9wY2ktPnBkZXYsIFBDSV9FWFBfTE5LQ1RMLAo+PiArCWlmIChhci0+ZGV2
X2lkID09IFFDQTk4OFhfMl8wX0RFVklDRV9JRCkgewo+PiArCQlwY2lfcmVhZF9jb25maWdfZHdv
cmQocGRldiwgMHg3MGMsICZ2YWwpOwo+PiArCQlpZiAoKHZhbCAmIDB4ZmYwMDAwMDApID09IDB4
MTcwMDAwMDApIHsKPj4gKwkJCXZhbCAmPSAweDAwZmZmZmZmOwo+PiArCQkJdmFsIHw9IDB4Mjcw
MDAwMDA7Cj4+ICsJCQlwY2lfd3JpdGVfY29uZmlnX2R3b3JkKHBkZXYsIDB4NTcwYywgdmFsKTsK
Pj4gKwkJfQo+PiArCX0gZWxzZSB7Cj4+ICsJCXBjaWVfY2FwYWJpbGl0eV9yZWFkX3dvcmQoYXJf
cGNpLT5wZGV2LCBQQ0lfRVhQX0xOS0NUTCwKPj4gIAkJCQkgICZhcl9wY2ktPmxpbmtfY3RsKTsK
Pj4gLQlwY2llX2NhcGFiaWxpdHlfd3JpdGVfd29yZChhcl9wY2ktPnBkZXYsIFBDSV9FWFBfTE5L
Q1RMLAo+PiArCQlwY2llX2NhcGFiaWxpdHlfd3JpdGVfd29yZChhcl9wY2ktPnBkZXYsIFBDSV9F
WFBfTE5LQ1RMLAo+PiAgCQkJCSAgIGFyX3BjaS0+bGlua19jdGwgJiB+UENJX0VYUF9MTktDVExf
QVNQTUMpOwo+PiArCX0KPgo+IE1hZ2ljIHZhbHVlcyBhcmUgbm90IG5pY2UsIGl0J3MgYmV0dGVy
IHRvIGhhdmUgcHJvcGVyIGRlZmluZXMuIFN1aml0aAo+IGFscmVhZHkgcHJvdmlkZWQgbWVhbmlu
ZyBmb3IgMHg3MGMsIGJ1dCBJIGRvbid0IGtub3cgd2hhdCAweDU3MGMgbWVhbnMKPiAob3IgSSBn
dWVzcyAweDUwMCBvZmZzZXQpPwo+Cj4gQWxzbyBwbGVhc2UgdXNlIEdFTk1BU0soKSBhbmQgRklF
TERfUFJFUCgpLiBPdGhlcndpc2UgbG9va3MgZ29vZCB0byBtZS4KPgo+IC0tCj4gaHR0cHM6Ly93
aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1p
dHRpbmdwYXRjaGVzCj4KCkkgZG9uJ3QgdGhpbmsgdGhlIG9sZCBwYXRjaCBmcm9tIGF0aDlrIGlz
IHRoYXQgbXVjaCByZWxldmFudCBpbiB0aGlzCmJ1ZyBjYXNlIGF0IGFsbCwgc2luY2UgYnkgYXBw
bHlpbmcgaXQgdGhlIHdheSBpdCBpcyB0aGUgcGF0Y2ggYWN0dWFsbHkKcHJldmVudGVkIEFTUE0g
Y29kZSBmcm9tIGV4ZWN1dGlvbiAobW92ZWQgYWZ0ZXIgfSBlbHNlIHsgKSBvbgpRQ0E5ODhYXzJf
MCBkZXZpY2VzLiBUaGUgQVNQTSBlbmFibGUgY29kZSB0aGF0IHdhcyBjb21taXRlZCB5ZWFycyBh
Z28KY2F1c2VzIHJlZ3Jlc3Npb24gYXMgSSd2ZSBhbHJlYWR5IHdyb3RlLCBhbmQgcmV2ZXJ0aW5n
IHRoYXQgY29tbWl0IGlzCnN1ZmZpY2llbnQgdG8gaGF2ZSBjYXJkIG9wZXJhdGluZyBwcm9wZXJs
eS4KV2hlbiB0aGF0IGlzIGhhbmRsZWQgcHJvcGVybHksIHRoaXMgcGF0Y2ggY2FuIHRoZW4gYmUg
YWRkZWQgYmVmb3JlIG9yCmFmdGVyIHRoZSBBU1BNIGVuYWJsZSBjb2RlLiBBbHNvLCBzaW5jZSB0
aGUgcmVhZCB2YWx1ZSB3aWxsIG9idmlvdXNseQpkaWZmZXIgZnJvbSBzeXN0ZW0gdG8gc3lzdGVt
LCBzb21ldGhpbmcgbGlrZSB0aGlzIGNvdWxkIGJlIHVzZWQ6CgppZiAoKHZhbCAmIDB4ZmYwMDAw
MDApICE9IDB4MjcwMDAwMDApCgoweDU3MGMgc2hvdWxkIHJlZmVyIHRvIHByb2dyYW1taW5nIGFk
ZHJlc3MgZm9yIHRoaXMgcmVnaXN0ZXIsIGF0IGxlYXN0CmFjY29yZGluZyB0byByZWZlcmVuY2Ug
ZHJpdmVyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
