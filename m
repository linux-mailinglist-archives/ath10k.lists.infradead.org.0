Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7622BD62
	for <lists+ath10k@lfdr.de>; Tue, 28 May 2019 04:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJXVUq4p7IlasZVFUdjuAV3iIMXx6GUP+uNVeZdJUKk=; b=b2HLf54awRTeHg
	NjTLoVfYVNWp9U4/4DfwK3I8VfuaJeeKyW/iUfhdrdXmKt5IJJ4+8W2L6GSFHYNuLjp7sYuAsaXBH
	z3hBCgRb7mHsE5MF9EUVJvTPla13q358dtg9HRDVKuTtxWY4G3wke4QJR0HPA10HW4glxD3sARNqI
	9nXZYX5tnQvLHUFnE7CgAAOcIfGOe0weI4/dmEnkIGbR9u5zoYfSmO01xf+AZ7SmvOJi1w0CrotHJ
	W7IoPzuB6L3XfgXRFhU16GrecQRwEWbU8TpaKPaPe7ifuAkACxQqzppu3zLxKKj9smuTwHEUc94Sl
	MDYRC6EYFOyVX2qVm05g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVSBQ-0002v3-0w; Tue, 28 May 2019 02:49:48 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVSBL-0002uc-8y
 for ath10k@lists.infradead.org; Tue, 28 May 2019 02:49:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1559011783; x=1590547783;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=nRkNCMt05aLNGjQ9q8m2WKD2+ZjBBj2uPIxe4Au82VQ=;
 b=Id73tOt6909oU/gyAe60VP+S9Ikm1Evx2BwxDP+E0KgES48wUCRGzosy
 rnV6FXqYEoYhwmBz2W85jxudWJzZli1HiBzFkwXPzle7uBeRzM4j38PhO
 uJResU5OfqTWy8GKOIDMlW9FbBaAgsfyFuSnbgW+vKDu+wDmjUtADQ+7u w=;
Subject: RE: [PATCH] ath10k: Remove ATH10K_STATE_RESTARTED in simulate fw crash
Thread-Topic: [PATCH] ath10k: Remove ATH10K_STATE_RESTARTED in simulate fw
 crash
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 28 May 2019 10:49:38 +0800
X-IronPort-AV: E=McAfee;i="5900,7806,9270"; a="30539829"
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 28 May 2019 10:49:32 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1395.4; Tue, 28 May 2019 10:49:30 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1395.000; Tue, 28 May 2019 10:49:30 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Brian Norris <briannorris@chromium.org>
Thread-Index: AQHUpmQJz5XVQIMvMUei5K703fyTnaYnTmZwgAtNzTD///F7AIABLCiAgADKTICAAL2CYIBLcTDg
Date: Tue, 28 May 2019 02:49:30 +0000
Message-ID: <301c4b127ea74abd8a9d8221d93656fd@aptaiexm02f.ap.qualcomm.com>
References: <1542163824-795-1-git-send-email-wgong@codeaurora.org>
 <CABvG-CWg-VXAtoN8HZumW-ZdP6dX9cO_8fWJ58C22kD2yDcXdw@mail.gmail.com>
 <195f3bb0c88c43a6b1ca0ad336f947c0@aptaiexm02f.ap.qualcomm.com>
 <CABvG-CWAfB8jjCDW4ggjJ8_YC++CjttJOMOt4s24F3mymvNR9A@mail.gmail.com>
 <02904ba8682441e1a89668c1345cbec9@aptaiexm02f.ap.qualcomm.com>
 <54b4dab1191d41b8b329f3ceb7017626@aptaiexm02f.ap.qualcomm.com>
 <CABvG-CWz0rBCXfF7mX9L62=fmdcYhpOaO5JNLtvSE87o_XJFng@mail.gmail.com>
 <1fec49e1b6794860a1eff2330bcdea28@aptaiexm02f.ap.qualcomm.com>
 <CA+ASDXP1Ftpi93p=Bp2w1rRd3xVtNn_+diwkKTMXbTqK0B3ahA@mail.gmail.com>
 <b073fa90e9a3437c9846ce2d22fab15f@aptaiexm02f.ap.qualcomm.com>
In-Reply-To: <b073fa90e9a3437c9846ce2d22fab15f@aptaiexm02f.ap.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_194943_593027_4551536C 
X-CRM114-Status: UNSURE (   6.38  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?utf-8?B?TWljaGHFgiBLYXppb3I=?= <kazikcz@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBhdGgxMGsgPGF0aDEway1ib3Vu
Y2VzQGxpc3RzLmluZnJhZGVhZC5vcmc+IE9uIEJlaGFsZiBPZiBXZW4gR29uZw0KPiBTZW50OiBX
ZWRuZXNkYXksIEFwcmlsIDEwLCAyMDE5IDEwOjQ1IEFNDQo+IFRvOiBCcmlhbiBOb3JyaXMgPGJy
aWFubm9ycmlzQGNocm9taXVtLm9yZz4NCj4gQ2M6IE1pY2hhxYIgS2F6aW9yIDxrYXppa2N6QGdt
YWlsLmNvbT47IGxpbnV4LXdpcmVsZXNzIDxsaW51eC0NCj4gd2lyZWxlc3NAdmdlci5rZXJuZWwu
b3JnPjsgYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmc7IFdlbiBHb25nDQo+IDx3Z29uZ0Bjb2Rl
YXVyb3JhLm9yZz4NCj4gU3ViamVjdDogW0VYVF0gUkU6IFtQQVRDSF0gYXRoMTBrOiBSZW1vdmUg
QVRIMTBLX1NUQVRFX1JFU1RBUlRFRCBpbg0KPiBzaW11bGF0ZSBmdyBjcmFzaA0KPiANCj4gSWYg
Q2hyb21lT1MgaXMgZWFzeSB0byBjaGFuZ2UgdG9vbCwNCj4gSSB0aGluayBJIHdpbGwgY2hhbmdl
IHRoZSBtZWNoYW5pc20gb2YgdGhlIHNpbXVsYXRlX2Z3X2NyYXNoLg0KPiBUaGVuIGFsbCB0b29s
cyB3aWxsIHdvcmsgbm9ybWFsbHkuDQo+IA0KTmV3IHBhdGNoIHVwbG9hZGVkDQpodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwODk3NTg3Lw0KW3YyXSBhdGgxMGs6IFJlbW92ZSBB
VEgxMEtfU1RBVEVfUkVTVEFSVEVEIGluIHNpbXVsYXRlIGZ3IGNyYXNoDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0
aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYXRoMTBrCg==
