Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61DFF05A
	for <lists+ath10k@lfdr.de>; Tue, 30 Apr 2019 08:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFLzNxW/GgoxQzsHQILX2CJjgxlyCV29r4Za0NkRXC0=; b=IPVv31vXR94WE7
	bx7M9XWKYi7C5NJgxpgTfyfct87ivkuSYvT+qk6z2LcoQj2PHTVEOxRxRGj18zna+v3lsIJSKqjU4
	9OZytz68yLjOHaQwB7GJOagK6mY8Sd/9rsdB8bCa3OKfhqGsZRHuo4RBzhFQhdCzZ4jotCSY/WOb4
	bWMdCju0iJOO6SVIDX1AMyBSFEM9Ep2eKZ7I4p5g/KFgjAWrIrsg8ISizvU6uoTpT+ufRBWS+aWri
	K4flm+JON8baEECdxN6E3D7NOfqpL4K7DDWsDqySHhB5TTCOQ/OpSo0mt9+CX4rn2Dr0/2EM5/iQc
	dMIh1zpSnF0xF1iSN4nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLM1v-0002rS-Nr; Tue, 30 Apr 2019 06:14:15 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLM1r-0002r0-Ar
 for ath10k@lists.infradead.org; Tue, 30 Apr 2019 06:14:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1556604851; x=1588140851;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=+vi7Lvva6Lqfwqm41RGRl8a2nmWRAXhmBKttQ8yNlU8=;
 b=cdbzJmoHboNR0r5EsDy95z1D4F+XThQQUh1YVM1INyKHwRUziYEA+W7P
 dhHbxaSFDm/ejJribVjUAsQrI6fJJSS9ErRoCgVL9YaLb+/x5eFf+Lbtp
 z5pd5FMzhsv/LZDKGH1HYbHWP7lPpVIFelsjLQT3b+7wiFXEnGrYAxJgE 8=;
Subject: RE: [PATCHv2] ath10k: Add wrapper function to ath10k debug
Thread-Topic: [PATCHv2] ath10k: Add wrapper function to ath10k debug
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 29 Apr 2019 23:14:09 -0700
Received: from nasanexm01h.na.qualcomm.com ([10.85.0.34])
 by ironmsg02-sd.qualcomm.com with ESMTP/TLS/AES256-SHA;
 29 Apr 2019 23:14:01 -0700
Received: from APSANEXR01B.ap.qualcomm.com (10.85.0.37) by
 NASANEXM01H.na.qualcomm.com (10.85.0.34) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 23:14:00 -0700
Received: from APSANEXR01F.ap.qualcomm.com (10.85.0.39) by
 APSANEXR01B.ap.qualcomm.com (10.85.0.37) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 23:13:57 -0700
Received: from APSANEXR01F.ap.qualcomm.com ([10.85.0.39]) by
 APSANEXR01F.ap.qualcomm.com ([10.85.0.39]) with mapi id 15.00.1395.000; Mon,
 29 Apr 2019 23:13:57 -0700
From: Venkateswara Naralasetty <vnaralas@qti.qualcomm.com>
To: Ben Greear <greearb@candelatech.com>, =?utf-8?B?TWljaGHFgiBLYXppb3I=?=
 <kazikcz@gmail.com>, Venkateswara Naralasetty <vnaralas@codeaurora.org>
Thread-Index: AQHU/DZRZsxSuuAgfEynIothPCgWB6ZO7J4AgAVRXQA=
Date: Tue, 30 Apr 2019 06:13:56 +0000
Message-ID: <d0784b86ad184a188e82b86e14a89338@APSANEXR01F.ap.qualcomm.com>
References: <1556283505-29539-1-git-send-email-vnaralas@codeaurora.org>
 <CABvG-CVxmnm=JsSsgYQqEzHHYU8RJDxqCZJn4Rzy=zPLtKY1hA@mail.gmail.com>
 <52f8d2ff-9bd0-d456-e29a-c60b99a1eb8a@candelatech.com>
In-Reply-To: <52f8d2ff-9bd0-d456-e29a-c60b99a1eb8a@candelatech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.80.80.8]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_231411_406311_6AB587E5 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.39 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Kan Yan <kyan@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogYXRoMTBrIDxhdGgxMGst
Ym91bmNlc0BsaXN0cy5pbmZyYWRlYWQub3JnPiBPbiBCZWhhbGYgT2YgQmVuDQo+IEdyZWVhcg0K
PiBTZW50OiBGcmlkYXksIEFwcmlsIDI2LCAyMDE5IDc6MjcgUE0NCj4gVG86IE1pY2hhxYIgS2F6
aW9yIDxrYXppa2N6QGdtYWlsLmNvbT47IFZlbmthdGVzd2FyYSBOYXJhbGFzZXR0eQ0KPiA8dm5h
cmFsYXNAY29kZWF1cm9yYS5vcmc+DQo+IENjOiBLYW4gWWFuIDxreWFuQGNocm9taXVtLm9yZz47
IGxpbnV4LXdpcmVsZXNzIDxsaW51eC0NCj4gd2lyZWxlc3NAdmdlci5rZXJuZWwub3JnPjsgYXRo
MTBrQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogW0VYVF0gUmU6IFtQQVRDSHYyXSBh
dGgxMGs6IEFkZCB3cmFwcGVyIGZ1bmN0aW9uIHRvIGF0aDEwayBkZWJ1Zw0KPiANCj4gT24gNC8y
Ni8xOSA2OjQ0IEFNLCBNaWNoYcWCIEthemlvciB3cm90ZToNCj4gPiBPbiBGcmksIDI2IEFwciAy
MDE5IGF0IDE0OjU4LCBWZW5rYXRlc3dhcmEgTmFyYWxhc2V0dHkNCj4gPiA8dm5hcmFsYXNAY29k
ZWF1cm9yYS5vcmc+IHdyb3RlOg0KPiA+Pg0KPiA+PiBhdGgxMGtfZGJnKCkgaXMgY2FsbGVkIGlu
IGF0aDEwa19wcm9jZXNzX3J4KCkgd2l0aCBodWdlIHNldCBvZg0KPiA+PiBhcmd1bWVudHMgd2hp
Y2ggaXMgY2F1c2luZyBDUFUgb3ZlcmhlYWQgZXZlbiB3aGVuIGRlYnVnX21hc2sgaXMgbm90DQo+
IHNldC4NCj4gPj4gR29vZCBpbXByb3ZlbWVudCB3YXMgb2JzZXJ2ZWQgaW4gdGhlIHJlY2VpdmUg
c2lkZSBwZXJmb3JtYW5jZSB3aGVuDQo+ID4+IGNhbGwgdG8gYXRoMTBrX2RiZygpIGlzIGF2b2lk
ZWQgaW4gdGhlIFJYIHBhdGguDQo+ID4gWy4uLl0NCj4gPg0KPiA+PiArLyogQXZvaWQgY2FsbGlu
ZyBfX2F0aDEwa19kYmcoKSBpZiBkZWJ1Z19tYXNrIGlzIG5vdCBzZXQgYW5kIHRyYWNpbmcNCj4g
Pj4gKyAqIGRpc2FibGVkLg0KPiA+PiArICovDQo+ID4+ICsjZGVmaW5lIGF0aDEwa19kYmcoYXIs
IGRiZ19tYXNrLCBmbXQsIC4uLikgICAgICAgICAgICAgICAgICAgICBcDQo+ID4+ICtkbyB7ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBc
DQo+ID4+ICsgICAgICAgaWYgKChhdGgxMGtfZGVidWdfbWFzayAmIGRiZ19tYXNrKSB8fCAgICAg
ICAgICAgICAgICAgICBcDQo+ID4+ICsgICAgICAgICAgIHRyYWNlX2F0aDEwa19sb2dfZGJnX2Vu
YWJsZWQoKSkgICAgICAgICAgICAgICAgICAgICBcDQo+ID4+ICsgICAgICAgICAgICAgICBfX2F0
aDEwa19kYmcoYXIsIGRiZ19tYXNrLCBmbXQsICMjX19WQV9BUkdTX18pOyBcIH0NCj4gPj4gK3do
aWxlICgwKQ0KPiA+DQo+ID4gRGlkIHlvdSBjb25zaWRlciB1c2luZyBqdW1wIGxhYmVscyAoc2Vl
IGluY2x1ZGUvbGludXgvanVtcF9sYWJlbC5oKT8NCj4gPiBJdCdzIHdoYXQgdHJhY2luZyB1c2Vz
IHVuZGVyIHRoZSBob29kLiBJIHdvbmRlciBpZiB5b3UgY291bGQgc3F1ZWV6ZQ0KPiA+IG91dCBh
IGJpdCBtb3JlIHBlcmZvcm1hbmNlIHdpdGggdGhhdD8gSSBndWVzcyB5b3UnZCBuZWVkIHRvIGFk
ZA0KPiA+IGBzdHJ1Y3Qgc3RhdGljX2tleSBhdGgxMGtfZGJnX21hc2tfa2V5c1tBVEgxMEtfREJH
X01BWF1gIGFuZCByZS1kbw0KPiA+IGF0aDEwa19kZWJ1Z19tYXNrIGVudW0gYSBiaXQuDQo+IA0K
PiBNYXliZSBmaXJzdCB0ZXN0IHdpdGggZGVidWdnaW5nIGp1c3QgY29tcGlsZWQgb3V0IHRvIHNl
ZSBpZiB0aGVyZSBpcyBzdGlsbCBhbnkNCj4gc2lnbmlmaWNhbnQgb3ZlcmhlYWQgd2l0aCB0aGlz
IG5ldyBwYXRjaCBhcHBsaWVkPw0KU2luY2UgdGhpcyBtYWNybyBhdGgxMGtfZGJnIGRlZmluZWQg
b3V0c2lkZSBvZiBDT05GSUdfQVRIMTBLX0RFQlVHIHdpbGwgaXQgbWFrZSBhbnkgZGlmZmVyZW5j
ZSBldmVuIGlmIGRlYnVnZ2luZyBjb21waWxlZCBvdXQ/DQoNClRoYW5rcywNClZlbmthdGVzaC4N
Cj4gDQo+IFRoYW5rcywNCj4gQmVuDQo+IA0KPiAtLQ0KPiBCZW4gR3JlZWFyIDxncmVlYXJiQGNh
bmRlbGF0ZWNoLmNvbT4NCj4gQ2FuZGVsYSBUZWNobm9sb2dpZXMgSW5jICBodHRwOi8vd3d3LmNh
bmRlbGF0ZWNoLmNvbQ0KPiANCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+IGF0aDEwayBtYWlsaW5nIGxpc3QNCj4gYXRoMTBrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcNCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9hdGgxMGsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
