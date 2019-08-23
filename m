Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A7B9A5C0
	for <lists+ath10k@lfdr.de>; Fri, 23 Aug 2019 04:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Hv1GnCPYnJNVeRYLsYWijKtmTOBsW/4yZ1JZBKO3BA=; b=DxaDGztosez93t
	JQmJ9BoK87DrGe8fMYr0IqInYsjadE1j9geCwwDqNHicGTrt/GIvXvXhHeaXDsuTS5M9sXlB/b0k2
	37CHt+gQLsSd8O8ZYwnerP1scLeZ7TLTASORWEz3jyQKvkVZlajrOy1A0DKuh8oQl0XYlIjIzCyC5
	whZrAxZoMGnKceNy4DsVKrpWQgepAeIPgCFmexb8MdKyfU27VISt8QlLoHjKtKTO9Eks7YxY7Eb4x
	vy7wKaxkH7VgWbjHTvwWkz8jY4wlWOWbBJ7Oc2+ThzhtbAC39rEfeUmoe+vzmfcvo0+P8gas/xcvv
	FdQcicoVJwri9WrP1P8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0zbJ-00069K-Kn; Fri, 23 Aug 2019 02:46:54 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0zbD-00068x-9M
 for ath10k@lists.infradead.org; Fri, 23 Aug 2019 02:46:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566528407; x=1598064407;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=u7twx3rZjWo1MRPV3n/6cZgQgybcJO1QhZ/B3wHy5qk=;
 b=sTo+BWyGfUL2Yp8C0X1Ag+NN2cMH6SGDaUKUOohPFPHrqbotZAyEWVK5
 4VILG0jx1uhOZW2LNamNOVSjAfu52uz1Gv9OTpWsdfW3Bb3ISBdZF8tbf
 eRqYwVJH+o6nFUGjCS15u0gE6vHXr2zNDQqOJeUMLyhTuU2YgwypAN1Rl 4=;
Subject: RE: [PATCH 4/7] ath10k: disable TX complete indication of htt for sdio
Thread-Topic: [PATCH 4/7] ath10k: disable TX complete indication of htt for
 sdio
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 23 Aug 2019 10:46:43 +0800
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 23 Aug 2019 10:46:38 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Fri, 23 Aug 2019 10:46:36 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Fri, 23 Aug 2019 10:46:36 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: =?utf-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, Wen Gong
 <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVV1IyEev87vakM0G2WVqJ6I35M6cFHQig//+/hoCAAIiLIIABK8GAgAF5MzA=
Date: Fri, 23 Aug 2019 02:46:36 +0000
Message-ID: <250d064103394dfd864c1281f0da3d83@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-5-git-send-email-wgong@codeaurora.org>
 <87blwkt480.fsf@toke.dk>
 <00992d0991704b0fae73a500bb2eb504@aptaiexm02f.ap.qualcomm.com>
 <8736husub0.fsf@toke.dk>
 <86d0eabcc63849efa914f2c14a3cd59f@aptaiexm02f.ap.qualcomm.com>
 <874l29pffy.fsf@toke.dk>
In-Reply-To: <874l29pffy.fsf@toke.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_194647_595026_BD04BB16 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.226 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBUb2tlIEjDuGlsYW5kLUrDuHJn
ZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEF1Z3VzdCAyMiwgMjAx
OSA4OjEyIFBNDQo+IFRvOiBXZW4gR29uZyA8d2dvbmdAcXRpLnF1YWxjb21tLmNvbT47IFdlbiBH
b25nDQo+IDx3Z29uZ0Bjb2RlYXVyb3JhLm9yZz47IGF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3Jn
DQo+IENjOiBsaW51eC13aXJlbGVzc0B2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDogW0VYVF0g
UkU6IFtQQVRDSCA0LzddIGF0aDEwazogZGlzYWJsZSBUWCBjb21wbGV0ZSBpbmRpY2F0aW9uIG9m
IGh0dA0KPiBmb3Igc2Rpbw0KPiA+PiBXaGF0J3MgYSB0eXBpY2FsIGxpbWl0IGluIHRoZSBmaXJt
d2FyZT8NCj4gPiBJdCBpcyA5NiBkYXRhIHBhY2tldCBpbiBteSB0ZXN0LiBJdCBjYW4gY2hhbmdl
ZCBpbiBmaXJtd2FyZSBjb2RlLg0KPiANCj4gUmlnaHQsIEkgc2VlLiBJcyB0aGlzIGNvdW50ZXIg
YXZhaWxhYmxlIGluIGFsbCBhdGgxMGsgZmlybXdhcmUsIG9yIGlzIGl0DQo+IFNESU8gb25seT8N
Cj4gDQpJdCBpcyBvbmx5IGZvciBTRElPLg0KRm9yIFBDSUUsIGl0IGRvZXMgbm90IGhhdmUgY3Jl
ZGl0IGxpbWl0LCBmaXJtd2FyZSBtZW1vcnkgb25seSBuZWVkIHRvIHNhdmUNClRoZSB0eCBkZXNj
cmlwdG9yLCBub3QgbmVlZCBmb3IgcGFseWxvYWQuDQo+IEknbSBhc2tpbmcgYmVjYXVzZSB0aGlz
IGNvdWxkIGFsc28gYmUgYSB3YXkgb2YgaW1wbGVtZW50aW5nIHNvbWV0aGluZw0KPiBsaWtlIEJ5
dGUgUXVldWUgTGltaXRzICh0aG91Z2ggSSdtIG5vdCBzdXJlIGhvdyBlZmZlY3RpdmUgaXQgd291
bGQgYmUpLg0KPiANCj4gLVRva2UNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
