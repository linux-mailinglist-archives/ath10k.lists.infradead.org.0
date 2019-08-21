Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768DE9770D
	for <lists+ath10k@lfdr.de>; Wed, 21 Aug 2019 12:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFeI4JonGt9WBcHUTZKujSGaItQYDWisGSVgJ+A8Hdw=; b=fZ20TejLJI7aOA
	PoJF/YkmZ5blHNQhJd75t0YbH8OQJHdqXKAySJ5rKawsL55MTRdb+Lz3z4ZVZYRtT/xQU8j4DlAE/
	69oY01Xn+0MkYcsGkUXqVomamO1v36N586xpQlvmfq7hDzNdcl79EMt0I13J6Akm6ng5i7YcZ7e9o
	hAEqwHYxSQfUChc2fCddbJvNDkw/5eTXO2ESEBnyA5ch7kYT1uyT1HLfRwj680HPc8EQRkTzdn5yt
	inolBCNWqx962Wrqw4l3xYgueHpx0glJHqlj5879w58pr52LfVe6XURkHMrdWGvh7bYdxcqZsruuR
	BB0yUska1/MZf8TD08kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Nkr-0007Xo-Jk; Wed, 21 Aug 2019 10:22:14 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Nje-0006UX-DA
 for ath10k@lists.infradead.org; Wed, 21 Aug 2019 10:21:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566382858; x=1597918858;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=ce6W1lGosJ6tdqCxwLZgMOwlQsNLvnMc2ZDAfih4LfA=;
 b=oT06HvdVT2yM86eOcR8aposGvWGGJq402O2DJ0/Y1pkII3jnwecvce5k
 18J10Gpx82YRLnbmwVNbsCLuZ2yoyTuatAL0s+qmAMGtbUM6ay8r3quE3
 IW4N2Of51Iqq5eH3IG2UGlQsAwzI+NYXPKnyiqJ4rU20XacrDaejBJuFU U=;
Subject: RE: [PATCH 4/7] ath10k: disable TX complete indication of htt for sdio
Thread-Topic: [PATCH 4/7] ath10k: disable TX complete indication of htt for
 sdio
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 21 Aug 2019 18:20:55 +0800
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 21 Aug 2019 18:20:50 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 21 Aug 2019 18:20:48 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 21 Aug 2019 18:20:48 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: =?utf-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, Wen Gong
 <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVV1IyEev87vakM0G2WVqJ6I35M6cFHQig//+/hoCAAIiLIA==
Date: Wed, 21 Aug 2019 10:20:48 +0000
Message-ID: <86d0eabcc63849efa914f2c14a3cd59f@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-5-git-send-email-wgong@codeaurora.org>
 <87blwkt480.fsf@toke.dk>
 <00992d0991704b0fae73a500bb2eb504@aptaiexm02f.ap.qualcomm.com>
 <8736husub0.fsf@toke.dk>
In-Reply-To: <8736husub0.fsf@toke.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.80.80.8]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_032058_787601_2B2A3DF9 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.227 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
ZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgMjEsIDIw
MTkgNjoxMCBQTQ0KPiBUbzogV2VuIEdvbmcgPHdnb25nQHF0aS5xdWFsY29tbS5jb20+OyBXZW4g
R29uZw0KPiA8d2dvbmdAY29kZWF1cm9yYS5vcmc+OyBhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9y
Zw0KPiBDYzogbGludXgtd2lyZWxlc3NAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFtFWFRd
IFJFOiBbUEFUQ0ggNC83XSBhdGgxMGs6IGRpc2FibGUgVFggY29tcGxldGUgaW5kaWNhdGlvbiBv
ZiBodHQNCj4gZm9yIHNkaW8NCj4gDQo+IFdlbiBHb25nIDx3Z29uZ0BxdGkucXVhbGNvbW0uY29t
PiB3cml0ZXM6DQo+IA0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBGcm9t
OiBhdGgxMGsgPGF0aDEway1ib3VuY2VzQGxpc3RzLmluZnJhZGVhZC5vcmc+IE9uIEJlaGFsZiBP
ZiBUb2tlDQo+ID4+IEjDuGlsYW5kLUrDuHJnZW5zZW4NCj4gPj4gU2VudDogVHVlc2RheSwgQXVn
dXN0IDIwLCAyMDE5IDg6MjQgUE0NCj4gPj4gVG86IFdlbiBHb25nIDx3Z29uZ0Bjb2RlYXVyb3Jh
Lm9yZz47IGF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnDQo+ID4+IENjOiBsaW51eC13aXJlbGVz
c0B2Z2VyLmtlcm5lbC5vcmcNCj4gPj4gU3ViamVjdDogW0VYVF0gUmU6IFtQQVRDSCA0LzddIGF0
aDEwazogZGlzYWJsZSBUWCBjb21wbGV0ZSBpbmRpY2F0aW9uIG9mDQo+IGh0dA0KPiA+IFdoZW4g
dGhpcyBwYXRjaCBhcHBsaWVkLCBmaXJtd2FyZSB3aWxsIG5vdCBpbmRpY2F0ZSB0eCBjb21wbGV0
ZSBmb3IgdHgNCj4gPiBEYXRhLCBpdCBvbmx5IGluZGljYXRlIEhUVF9UMkhfTVNHX1RZUEVfVFhf
Q1JFRElUX1VQREFURV9JTkQsDQo+ID4gVGhpcyBodHQgbXNnIHdpbGwgdGVsbCBob3cgbWFueSBk
YXRhIHR4IGNvbXBsZXRlIHdpdGhvdXQgc3RhdHVzKHN0YXR1cw0KPiBtYXliZSBzdWNjZXNzL2Zh
aWwpLg0KPiANCj4gQWgsIHNvIHRoaXMgaXMgYmFzaWNhbGx5IGEgY291bnRlciBvZiBob3cgbXVj
aCBkYXRhIGlzIGN1cnJlbnRseSBxdWV1ZWQNCj4gaW4gdGhlIGZpcm13YXJlPw0KWWVzLg0KPiAN
Cj4gPj4gQW5kIGNvdWxkIHlvdSBleHBsYWluIHdoYXQgdGhlIGNyZWRpdHMgdGhpbmcgaXMgZm9y
LCBwbGVhc2U/IDopDQo+ID4gRm9yIGhpZ2ggbGF0ZW5jeSBidXMgY2hpcCwgYWxsIHRoZSB0eCBk
YXRhJ3MgY29udGVudChpbmNsdWRlIGlwL3VkcC90Y3ANCj4gaGVhZGVyDQo+ID4gYW5kIHBheWxv
YWQpIHdpbGwgYmUgdHJhbnNmZXIgdG8gZmlybXdhcmUncyBtZW1vcnkgdmlhIGJ1cy4NCj4gPiBB
bmQgZmlybXdhcmUgaGFzIGxpbWl0ZWQgbWVtb3J5IGZvciB0eCBkYXRhLCB0aGUgdHggZGF0YSdz
IGNvbnRlbnQgbXVzdA0KPiA+IFNhdmVkIGluIGZpcm13YXJlIG1lbW9yeSBiZWZvcmUgaXQgdHgg
Y29tcGxldGUsIGlmIGF0aDEwayB0cmFuc2ZlciB0eA0KPiA+IGRhdGEgbW9yZSB0aGFuIHRoZSBs
aW1pdCwgZmlybXdhcmUgd2lsbCBvY2N1ciBlcnJvci4gVGhlIGNyZWRpdCBpcyB1c2VkDQo+ID4g
dG8gYXZvaWQgYXRoMTBrIGV4Y2VlZCB0aGUgbGltaXQuDQo+IA0KPiBXaGF0J3MgYSB0eXBpY2Fs
IGxpbWl0IGluIHRoZSBmaXJtd2FyZT8NCkl0IGlzIDk2IGRhdGEgcGFja2V0IGluIG15IHRlc3Qu
IEl0IGNhbiBjaGFuZ2VkIGluIGZpcm13YXJlIGNvZGUuDQo+IA0KPiAtVG9rZQ0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlz
dAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
