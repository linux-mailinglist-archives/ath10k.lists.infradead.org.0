Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC55B9671
	for <lists+ath10k@lfdr.de>; Fri, 20 Sep 2019 19:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXNVOUFLXyhx1CZZ/VCQy8CAghYQJCU081jg+/uzXHU=; b=WFnDMf+rAgVkHx
	6zVleNdjQzTG2cap1F9rD8ShLntNvuvLLV1qyVkhA1Vuoac96SXU9V55ttlMl11EvJZh6ljjnPbYL
	tRVytN/FvLzUOZcJu5WubYXv2CnyxaZIIj6vWT6FlT6CNGIIZV35J6KNr21Q+RWtDmaKHEOq8s4WM
	3RjGNROb6CaanWLAPXx/rPEJM1/L3TkX1GwzTu0FSQG3zcFgARiiGfBXM0ukzbv4bTJSNEfO7me3Y
	rNLpSOn1hBh+GQ2kdu6ZAaNuxAmu0TAp5HQAExfXpZt18Xym1hrw5AGDcFoXeHWS1k3q2Y4f1a6i6
	6qxmSBAuHpV4SeJN2pSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBMZA-0002mU-7S; Fri, 20 Sep 2019 17:19:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBMZ5-0002lC-Tj
 for ath10k@lists.infradead.org; Fri, 20 Sep 2019 17:19:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id h7so7513673wrw.8
 for <ath10k@lists.infradead.org>; Fri, 20 Sep 2019 10:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/lqDng+a1V5wthmlIGyTOvwnRwIUwaocc0044UXAv6k=;
 b=s1Ic7nUwmQyDdLG2cUmKuRHpjy2WyahzIJvuOlfDErVaXGlNnMZ9+mlxDAqttCSFkf
 PvMsjOZjM+ca+fUSB0Ad8GyCq/7mStyQgQJOD323/Hh9ZK9eZuqrBCPvTYWkOIv9Ff9Q
 YZUGDDSkiTixskLHbVAbK0MKz0nykVxIsILWlxzRLX+H6LPRt3SqMrtj9cW/8jQkXnQq
 fKiykPAXeljmC+w+97+vEs6AgTBVEz6y81lIqRX16wsmjEX/oqUAFUqhaqpHcgFaiKyc
 vb5is3n/BZPxWrbIvZvPYudWAcqlln+17U1F6ftTMXx3aY7CzHuuqKIIKEg8f3npM79M
 U9Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/lqDng+a1V5wthmlIGyTOvwnRwIUwaocc0044UXAv6k=;
 b=gh7ovm7k/+Y7vacneK5snDgFb8W46rARaEROcUH+m03K7rdfdnr29fgWjzduR8X1M6
 gOZzMej/yl+l7/PULebxXQO7CGh1LxRaPVbC7vW540EwF8OqQvSef4knzObkUc+zFXl3
 js7UKfamiEV8wURk5p0/yM21UIBU8h5UmhGieqgkbxulx1/Gj3RIac+LwLU9mdN1HGb3
 aDek065tb+kS5m7cspVenC56xepopP28VuZB+Z/VIkXdWVM1Lu0hcQSJIMZm95mlUtjH
 tJRD1xynHEfuZtIV4oDheUOuW1HqwzEkSKe3qB24GU7hYft/a3/T+Gmtp6x6nwDDdEcJ
 T9iw==
X-Gm-Message-State: APjAAAW5tnOpv6PgBWGPTAWQqxi9Te1V+4i8gXxNwS/h3xNiSg/LMgMt
 7y/0NpWlc2NN4unIL1MXQU4=
X-Google-Smtp-Source: APXvYqznlml5TsM2oJaPQk+gtt4tIbpBWdLUUfIKh6aUhUKRU7Ws0Sde/3wWVTbyCYPxaPqr/fGQaA==
X-Received: by 2002:adf:f5cc:: with SMTP id k12mr11839628wrp.278.1568999964672; 
 Fri, 20 Sep 2019 10:19:24 -0700 (PDT)
Received: from debian64.daheim (p4FD09E69.dip0.t-ipconnect.de.
 [79.208.158.105])
 by smtp.gmail.com with ESMTPSA id g185sm4932711wme.10.2019.09.20.10.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 10:19:23 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.2)
 (envelope-from <chunkeey@gmail.com>)
 id 1iBMYl-00008S-Ph; Fri, 20 Sep 2019 19:19:10 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
Date: Fri, 20 Sep 2019 19:19:06 +0200
Message-ID: <2099574.gZacamft7q@debian64>
In-Reply-To: <20190917064412.C2E0D61572@smtp.codeaurora.org>
References: <20190906215423.23589-1-chunkeey@gmail.com>
 <20190917064412.C2E0D61572@smtp.codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_101927_980450_78C1900B 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 LOTS_OF_MONEY          Huge... sums of money
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
Cc: =?utf-8?B?TWljaGHFgg==?= Kazior <kazikcz@gmail.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gVHVlc2RheSwgU2VwdGVtYmVyIDE3LCAyMDE5IDg6NDQ6MTIgQU0gQ0VTVCBLYWxsZSBWYWxv
IHdyb3RlOgo+IENocmlzdGlhbiBMYW1wYXJ0ZXIgPGNodW5rZWV5QGdtYWlsLmNvbT4gd3JvdGU6
Cj4gCj4gPiBUaGlzIHBhdGNoIHJlc3RvcmVzIHRoZSBvbGQgYmVoYXZpb3IgdGhhdCByZWFkCj4g
PiB0aGUgY2hpcF9pZCBvbiB0aGUgUUNBOTg4eCBiZWZvcmUgcmVzZXR0aW5nIHRoZQo+ID4gY2hp
cC4gVGhpcyBuZWVkcyB0byBiZSBkb25lIGluIHRoaXMgb3JkZXIgc2luY2UKPiA+IHRoZSB1bnN1
cHBvcnRlZCBRQ0E5ODh4IEFSMUEgY2hpcHMgZmFsbCBvZmYgdGhlCj4gPiBidXMgd2hlbiByZXNl
dHRlZC4gT3RoZXJ3aXNlIHRoZSBuZXh0IE1NSU8gT3AKPiA+IGFmdGVyIHRoZSByZXNldCBjYXVz
ZXMgYSBCVVMgRVJST1IgYW5kIHBhbmljLgo+ID4gCj4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVs
Lm9yZwo+ID4gRml4ZXM6IDFhN2ZlY2I3NjZjOCAoImF0aDEwazogcmVzZXQgY2hpcCBiZWZvcmUg
cmVhZGluZyBjaGlwX2lkIGluIHByb2JlIikKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBM
YW1wYXJ0ZXIgPGNodW5rZWV5QGdtYWlsLmNvbT4KPiAKPiBJJ2xsIGRyb3AgdGhpcyBhcyB0aGVy
ZSdzIG5vIHBsYW4gdG8gc3VwcG9ydCBRQ0E5ODhYIGh3MS4wLgoKS2FsbGUsCgpJJ20gc3VycHJp
c2VkIGFib3V0IHRoaXMuIEFuZCB5b3VyIGp1c3RpZmljYXRpb24KIm5vIHBsYW4gdG8gc3VwcG9y
dCBRQ0E5ODhYIGh3MS4wIiBzZWVtcyB2ZXJ5IG9kZCBpbiB0aGlzIGNvbnRleHQsCmJlY2F1c2Ug
dGhpcyBwYXRjaCBkb2VzIG5vdCBhZGQgYW55IHN1cHBvcnQgZm9yIHRoZSBRQ0E5ODhYIGh3MS4w
LgoKQnV0LCBJIGNvdWxkIHNlZSBob3cgdGhlIG1haWxzL3JlcGxpZXMgZnJvbSBUb20gUHN5Ym9y
ZyBkZXJhaWxlZCB0aGUKdG9waWMgaGVyZS4gVGhvdWdoLCBJJ20gbm90IHN1cmUgaWYgdGhpcyBp
cyB0aGUgY2FzZSBvciBub3QuCgpTbyBsZXQgc2V0IHRoZSByZWNvcmQgc3RyYWlnaHQgYW5kIHNo
b3cgeW91IHRoZSByZXN1bHQgb2YgaGF2aW5nIHRoYXQKcGF0Y2ggYXBwbGllZCBhbmQgbG9hZCBh
dGgxMGtfcGNpIHdpdGggYSBRQ0E5ODgwIHYxIEFSMUE6CgpbIDE0OTEuNjIyMjgyXSBhdGgxMGtf
cGNpIDAwMDA6MDA6MDAuMDogZGV2aWNlIDAwM2Mgd2l0aCBjaGlwX2lkIDA0MzIwMGZmIGlzbid0
IHN1cHBvcnRlZAoKKFN5c3RlbSBpcyBhbGwgZ29vZCEpCgpBbmQgd2l0aG91dCB0aGUgcGF0Y2g6
CgpbICA5MDAuMzIwMDAwXSBEYXRhIGJ1cyBlcnJvciwgZXBjID09IDg2YTlhMWIwLCByYSA9PSA4
NmE5YTRiMApbICA5MDAuMzIwMDAwXSBPb3BzWyMxXToKWyAgOTAwLjMyMDAwMF0gQ1BVOiAwIFBJ
RDogODEyNyBDb21tOiBpbnNtb2QgTm90IHRhaW50ZWQgNS4yLjE2ICMxClsgIDkwMC4zMjAwMDBd
IHRhc2s6IDg3OTBkZDUwIHRpOiA4NmEyYzAwMCB0YXNrLnRpOiA4NmEyYzAwMApbICA5MDAuMzIw
MDAwXSAkIDAgICA6IDAwMDAwMDAwIDgwMzUwMDAwIGRlYWRjMGRlIDEwMDBmYzAzClsgIDkwMC4z
MjAwMDBdICQgNCAgIDogYjIwODAwMDAgODc5MGRkNTAgMTAwMGZjMDAgZmZmZjAwZmUKWyAgOTAw
LjMyMDAwMF0gJCA4ICAgOiA4NmEyZGZlMCAwMDAwZmMwMCAwMDAwMDAwMCAwMDAwMDAwMApbICA5
MDAuMzIwMDAwXSAkMTIgICA6IDAwMDAwMDA1IDAwMDAwMDAwIDAwMDAwMDAwIDAwNDIwMDAwClsg
IDkwMC4zMjAwMDBdICQxNiAgIDogMDAwMDAwMDkgODc4OGQ0MDAgODY5ZjkwMDAgODc4MjE4MDAK
WyAgOTAwLjMyMDAwMF0gJDIwICAgOiAwMDAwMDAwOSBiMjA4MDAwOCBiMjA4MDAwMCAwMDAwMDAw
MQpbICA5MDAuMzIwMDAwXSAkMjQgICA6IDAwMDAwMDAwIDgwMDZiNzg0ICAgICAgICAgICAgICAg
ICAgClsgIDkwMC4zMjAwMDBdICQyOCAgIDogODZhMmMwMDAgODZhMmRiYTggYjIwODAwMDQgODZh
N2E1YjAKWyAgOTAwLjMyMDAwMF0gSGkgICAgOiAwMDAwMDBkMQpbICA5MDAuMzIwMDAwXSBMbyAg
ICA6IDllYTg2MTgwClsgIDkwMC4zMjAwMDBdIGVwYyAgIDogODZhN2E1YjAgYXRoMTBrX3BjaV9j
b2xkX3Jlc2V0KzB4Zjg4LzB4MWJiMCBbYXRoMTBrX3BjaV0KWyAgOTAwLjMyMDAwMF0gICAgIE5v
dCB0YWludGVkClsgIDkwMC4zMjAwMDBdIHJhICAgIDogODZhN2E1YjAgYXRoMTBrX3BjaV9jb2xk
X3Jlc2V0KzB4Zjg4LzB4MWJiMCBbYXRoMTBrX3BjaV0KWyAgOTAwLjMyMDAwMF0gU3RhdHVzOiAx
MDAwZmMwMyBLRVJORUwgRVhMIElFIApbICA5MDAuMzIwMDAwXSBDYXVzZSA6IDQwODA4MDFjClsg
IDkwMC4zMjAwMDBdIFBySWQgIDogMDAwMTk3NTAgKE1JUFMgNzRLYykKWyAgOTAwLjMyMDAwMF0g
TW9kdWxlcyBsaW5rZWQgaW46IGF0aDEwa19wY2koKykgYXRoMTBrX2NvcmUgWy4uLl0KWyAgOTAw
LjMyMDAwMF0gUHJvY2VzcyBpbnNtb2QgKHBpZDogMTEyNywgdGhyZWFkaW5mbz04NmEyYzAwMCwg
dGFzaz04NzkwZGQ1MCwgdGxzPTc3NWIxNDQwKQpbICA5MDAuMzIwMDAwXSBTdGFjayA6IDgwMzAx
ZDkwIDg3OTBkZDUwIDg3OTBkZDUwIDgwMzAxZDkwIDg3OTBjNDMwIDgwMDY3ZTc4IDAwMDAwMDAw
IDg3ODIxODAwCiAgICAgICAgICAwMDA4MDAwMCAwMDAwMDAwMCA4MDM3MzkwMCA4NmEyZGMwYyA4
MDM3MzkwMCAwMDAwZWE4MCAwMDAwMDAwOSBiMjA4MDAwOAogICAgICAgICAgYjIwODAwMDAgMDAw
MDAwMDEgODAzNzM5MDAgODAwNjY5NjQgODZhMmRjMGMgODAwODFlODAgODc5MGRkNTAgODZhNjM5
MjQKICAgICAgICAgIDAwMDAwMDAxIDAwMDAwMDAwIDAwMjAwMjAwIDAwMDBlYTgwIDgwMzczOTAw
IDgwMDgxZTgwIDg3OTBkZDUwIGZmZmZmZmZmCiAgICAgICAgICA4Nzg4ZDQwMCAwMDAwMDAwOSA4
Nzg4ZDQwMCA4NmEyZGM1OCA4NzgyMTgwMCA4MDA4MjM5OCA4NmEyZGM1YyA4NmE3ZDE0MAogICAg
ICAgICAgLi4uClsgIDkwMC4zMjAwMDBdIENhbGwgVHJhY2U6ClsgIDkwMC4zMjAwMDBdIFs8ODZh
N2E1YjA+XSBhdGgxMGtfcGNpX2NvbGRfcmVzZXQrMHhmODgvMHgxYmIwIFthdGgxMGtfcGNpXQpb
ICA5MDAuMzIwMDAwXSAKWyAgOTAwLjMyMDAwMF0gCkNvZGU6IDI0MTAwMDBhICAwYzA2MjFkMyAg
MDJjMDIwMjEgPDMwNDIwNDAwPiAxMDQwMDAwNiAgMDAwMDIwMjEgIDI0MDQwMDAxICAwYzAyMDhk
ZSAgMjYxMGZmZmYgClsgIDkwMC41NzAwMDBdIC0tLVsgZW5kIHRyYWNlIDFlNGUyYjdmZDRhYzll
YjggXS0tLQpTZWdtZW50YXRpb24gZmF1bHQKCk5vdGljZSB0aGUgREFUQSBCVVMgRXJyb3IhIFRo
ZSByb3V0ZXIgaXMgdW51c2FibGUgYXQgdGhhdCBwb2ludCBhbmQgbm8gbG9uZ2VyICJ3b3JraW5n
Ii4KCgpBcyBmb3Igd2h5IHRoaXMgcGF0Y2ggd2FzIGNvZGVkIHRoaXMgd2F5LiBJdCdzIGJlY2F1
c2UgdGhpcyBwYXRjaCBmb2xsb3dzIE1pY2hhxYIgS2F6aW9yCnJlY29tbWVuZGF0aW9uIG9mIGhv
dyB0byBoYW5kbGUgdGhpcyBjYXJkIGluIGhpcyByZXBseSB0byBhIHByZXZpb3VzIHRocmVhZCAK
ImF0aDEwazogcmVzZXQgY2hpcCBhZnRlciBzdXBwb3J0ZWQgY2hlY2siIHJlZ2FyZGluZyB0aGUg
c2FtZSBpc3N1ZS4gSGUgZGlkIGNoZWNrIGZvciBhClFDQTk4OFggSGFyZHdhcmUgYW5kIG9ubHkg
dGhlbiBwZXJmb3JtIHRoZSBTT0NfQ0hJUF9JRF9BRERSRVNTIHJlYWQuCgo8aHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDg2NjQxNy8jMjI1NDkwMTE+CnxUaGF0IG1ha2VzIHNl
bnNlLCBidXQgSSBkb24ndCBzZWUgaG93IGJsYWNrbGlzdGluZyBwY2kgc2xvdHMgd291bGQKfGhl
bHAgc29tZW9uZSBwdXR0aW5nIHYyIG5pYyBpbnRvIEM3djEgbW9ibz8gV29uJ3QgdGhlIHNsb3Qg
YmUgdGhlIHNhbWUKfHJlZ2FyZGxlc3Mgd2hhdCBuaWMgaXMgcHV0Pwp8CnxUaGUgYmVzdCB0aGlu
ZyBJIGNhbiBjb21lIHVwIHdpdGggaXMgc29tZXRoaW5nIGxpa2UgdGhpczoKfAp8LS0tIGEvZHJp
dmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9wY2kuYwp8KysrIGIvZHJpdmVycy9uZXQvd2ly
ZWxlc3MvYXRoL2F0aDEway9wY2kuYwp8QEAgLTM2MjksNiArMzYyOSwxOSBAQCBzdGF0aWMgaW50
IGF0aDEwa19wY2lfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCnwgICAgICAgICAgICAgICAg
Z290byBlcnJfZGVpbml0X2lycTsKfCAgICAgICAgfQp8CnwrICAgICAgIGlmIChod19yZXYgPT0g
QVRIMTBLX0hXX1FDQTk4OFgpIHsKfCsgICAgICAgICAgICAgICAvKiB2MSBjYW4gY3Jhc2ggdGhl
IHN5c3RlbSBvbiBjaGlwX3Jlc2V0KCkKfCsgICAgICAgICAgICAgICAgKiBzbyBhbGwgd2UgY2Fu
IGRvIGlzIGtlZXAgb3VyIGZpbmdlcnMKfCsgICAgICAgICAgICAgICAgKiBjcm9zc2VkIHYyIG5l
dmVyIHJlcG9ydHMgMCB3aXRob3V0IGEKfCsgICAgICAgICAgICAgICAgKiBjaGlwX3Jlc2V0KCkK
fCsgICAgICAgICAgICAgICAgKi8KfCsgICAgICAgICAgICAgICBpZiAoYXRoMTBrX3BjaV9zb2Nf
cmVhZDMyKGFyLCBTT0NfQ0hJUF9JRF9BRERSRVNTKSA9PSAwKSB7CnwrICAgICAgICAgICAgICAg
ICAgICAgICBhdGgxMGtfZXJyKGFyLCAicWNhOTg4MCB2MSBpcyBjaGlwIG5vdCBzdXBwb3J0ZWQi
KTsKfCsgICAgICAgICAgICAgICAgICAgICAgIHJldCA9IC1FTk9UU1VQOwp8KyAgICAgICAgICAg
ICAgICAgICAgICAgZ290byBlcnJfZnJlZV9pcnE7CnwrICAgICAgICAgICAgICAgfQp8KyAgICAg
ICB9CnwrCnwgICAgICAgIHJldCA9IGF0aDEwa19wY2lfY2hpcF9yZXNldChhcik7CnwgICAgICAg
IGlmIChyZXQpIHsKfCAgICAgICAgICAgICAgICBhdGgxMGtfZXJyKGFyLCAiZmFpbGVkIHRvIHJl
c2V0IGNoaXA6ICVkXG4iLCByZXQpOwp8CnxJIGRpZG4ndCB0ZXN0IGl0LiBTb21lb25lIG5lZWRz
IHRvIGNvbXBpbGUgYW5kIHRlc3QgYW5kIG1ha2Ugc3VyZSB2Mgp8ZG9lc24ndCByZWdyZXNzIHdo
ZW4gZncgaGFuZ3MgYW5kIGNvbGQgJiB3YXJtIGhvc3QgY3B1IHJlc2V0cyBhcmUKfG1peGVkIGlu
LgoKSSBkbyBob3BlIHRoaXMgaGVscGVkICJ0byBjbGVhciB0aGluZ3MgdXAiIHNpbmNlIEkgZGlk
IG5vdCBhZGQgc3VwcG9ydApmb3IgdGhlIFFDQTk4ODAgdjEgQVIxQSBoZXJlIGFuZCBkb24ndCBw
bGFuIHRvIGRvIHNvLgoKUmVnYXJkcywKQ2hyaXN0aWFuCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9hdGgxMGsK
