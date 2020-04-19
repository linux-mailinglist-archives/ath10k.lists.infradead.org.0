Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D6E1AFCD7
	for <lists+ath10k@lfdr.de>; Sun, 19 Apr 2020 19:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	Subject:From:To:Date:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=W/zm+y5ef/QZwvZA6jV/m8spXiLUbXMQst3aZXCD8zI=; b=EQw
	V1eBH1Leki0u1K/D0GDAaOL3RdTycB1O1eGiKcws+1W4TFd28EhbNJJRC9GLT2uUQaEGI8MWrSIF4
	zFnOnQ8rCZOxP5eBQSmj6UUGJ+jM67MiWtkZ2qo+jbOuTb+hnJtNeMEAgGH3VTdZG5tzB7LulNgMT
	bGRDWfAXPJAfG9XTx7I3hEEYBcQYw4Nau6f3vKmwFXsqMZGEE+9a4Ie1IpWU+8wN3FkFLYWcjMIQ9
	xB0MORXsrazLv20kdSR76qBXw/SGeh9FMyPbCT4Vy98a5fgspmKlfe2Edew2j7I4nXbiDWTvXPSh2
	JB4Pu8MlGPddZk7TZObdOukERL0J0AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDuI-0008VP-6H; Sun, 19 Apr 2020 17:39:02 +0000
Received: from mail4.protonmail.ch ([185.70.40.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDuD-0008Rd-Ii
 for ath10k@lists.infradead.org; Sun, 19 Apr 2020 17:38:59 +0000
Date: Sun, 19 Apr 2020 17:38:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail; t=1587317925;
 bh=pziYG+LuJkPTvQQPVaH8h1HsRHC2sZ89duyVz1jo0NQ=;
 h=Date:To:From:Reply-To:Subject:From;
 b=VgOZhpX54K3F+QY0qCefcSzItJHX5Zwd9DFqjLwHI5V1slfALvH+rj/ESAKWjlOaR
 fhcfW8PlZA8HMkbrbbM0jpOJHdUQ2y9cZTjJlqrGlLGmDtf0agwnMnsytuipPki7cF
 5ilCktrIgfarWAbfvhY+yjZHcjpYJ9V1MxbQ5VcE=
To: "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
From: ".wav" <waveletlet@protonmail.com>
Subject: QCA6174 invalid regulatory domain/country code 0x5f
Message-ID: <L0Ph_KQQrcTNur56PzXeMPNAy127JcCZLJ7i2f2fSypD3tz7g9xQpX87Oy5zMr9g5E453svb2n31jX7rmRJSMTeqC2yytDSm9qmJ61eQnIA=@protonmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_103857_923517_3228ADBC 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.70.40.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [waveletlet[at]protonmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: ".wav" <waveletlet@protonmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SGF2aW5nIHRoZSB3aWZpLWJyZWFraW5nIGVycm9yIG1lbnRpb25lZCBpbiB0aGUgc3ViamVjdCB3
aXRoIFF1YWxjb21tIEF0aGVyb3MgUUNBNjE3NCA4MDIuMTFhYyBXaXJlbGVzcyBOZXR3b3JrIEFk
YXB0ZXIgWzE2OGM6MDAzZV0gKHJldiAzMikgKGluIGEgU2Ftc3VuZyBHYWxheHkgQm9vayBpZiB0
aGF0J3MgcmVsZXZhbnQpLgoKZG1lc2cgb3V0cHV0OgpbIDQ4NzcuOTc1NDY0XSBhdGgxMGtfcGNp
IDAwMDA6MDE6MDAuMDogcGNpIGlycSBtc2kgb3Blcl9pcnFfbW9kZSAyIGlycV9tb2RlIDAgcmVz
ZXRfbW9kZSAwClsgNDg3OC4yNTA0NDFdIGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBmaXJtd2Fy
ZTogZmFpbGVkIHRvIGxvYWQgYXRoMTBrL3ByZS1jYWwtcGNpLTAwMDA6MDE6MDAuMC5iaW4gKC0y
KQpbIDQ4NzguMjUwNDczXSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogZmlybXdhcmU6IGZhaWxl
ZCB0byBsb2FkIGF0aDEway9jYWwtcGNpLTAwMDA6MDE6MDAuMC5iaW4gKC0yKQpbIDQ4NzguMjc1
Mzc4XSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogZmlybXdhcmU6IGRpcmVjdC1sb2FkaW5nIGZp
cm13YXJlIGF0aDEway9RQ0E2MTc0L2h3My4wL2Zpcm13YXJlLTYuYmluClsgNDg3OC4yNzUzOTld
IGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBxY2E2MTc0IGh3My4yIHRhcmdldCAweDA1MDMwMDAw
IGNoaXBfaWQgMHgwMDM0MGFmZiBzdWIgMTQ0ZDpjMTUwClsgNDg3OC4yNzU0MDRdIGF0aDEwa19w
Y2kgMDAwMDowMTowMC4wOiBrY29uZmlnIGRlYnVnIDAgZGVidWdmcyAwIHRyYWNpbmcgMCBkZnMg
MCB0ZXN0bW9kZSAwClsgNDg3OC4yNzcyNjddIGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBmaXJt
d2FyZSB2ZXIgV0xBTi5STS40LjQuMS0wMDE1MS1RQ0FSTVNXUFotMiBhcGkgNiBmZWF0dXJlcyB3
b3dsYW4saWdub3JlLW90cCxtZnAgY3JjMzIgNjQxNjBkMTMKWyA0ODc4LjM3NDA3NF0gYXRoMTBr
X3BjaSAwMDAwOjAxOjAwLjA6IGZpcm13YXJlOiBkaXJlY3QtbG9hZGluZyBmaXJtd2FyZSBhdGgx
MGsvUUNBNjE3NC9odzMuMC9ib2FyZC0yLmJpbgpbIDQ4NzguMzc1NjU2XSBhdGgxMGtfcGNpIDAw
MDA6MDE6MDAuMDogYm9hcmRfZmlsZSBhcGkgMiBibWlfaWQgTi9BIGNyYzMyIGU3NDg0N2RjClsg
NDg3OC40NDgwNjVdIGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiB1bnN1cHBvcnRlZCBIVEMgc2Vy
dmljZSBpZDogMTUzNgpbIDQ4NzguNDY2OTU2XSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogaHR0
LXZlciAzLjYwIHdtaS1vcCA0IGh0dC1vcCAzIGNhbCBvdHAgbWF4LXN0YSAzMiByYXcgMCBod2Ny
eXB0byAxClsgNDg3OC41NTQxMDFdIGF0aDogRUVQUk9NIHJlZ2RvbWFpbjogMHg1ZgpbIDQ4Nzgu
NTU0MTA1XSBhdGg6IEVFUFJPTSBpbmRpY2F0ZXMgd2Ugc2hvdWxkIGV4cGVjdCBhIGRpcmVjdCBy
ZWdwYWlyIG1hcApbIDQ4NzguNTU0MTA4XSBhdGg6IGludmFsaWQgcmVndWxhdG9yeSBkb21haW4v
Y291bnRyeSBjb2RlIDB4NWYKWyA0ODc4LjU1NDExMF0gYXRoOiBJbnZhbGlkIEVFUFJPTSBjb250
ZW50cwpbIDQ4NzguNTU0MTI2XSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogZmFpbGVkIHRvIGlu
aXRpYWxpc2UgcmVndWxhdG9yeTogLTIyClsgNDg3OC41NTQxMzVdIGF0aDEwa19wY2kgMDAwMDow
MTowMC4wOiBjb3VsZCBub3QgcmVnaXN0ZXIgdG8gbWFjODAyMTEgKC0yMikKCgpXaXRoIHRoZSBm
b2xsb3dpbmcgcGF0Y2ggKHN1Z2dlc3RlZCBvbiB0aGlzIGxpc3QgaW4gMjAxNyBieSBSeWFuIEhz
dSksIHRoZSB3aWZpIHdvcmtzLgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0
aC9yZWdkX2NvbW1vbi5oIGIvcmVnZF9jb21tb24uaAppbmRleCBjNGJkMjZlLi45MDA0NTJmIDEw
MDY0NAotLS0gYS8uLi9saW51eC1rZXJuZWwtd2lmaS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgv
cmVnZF9jb21tb24uaAorKysgYi9yZWdkX2NvbW1vbi5oCkBAIC03Niw2ICs3Niw3IEBAIGVudW0g
RW51bVJkIHsKwqDCoMKgwqDCoMKgwqAgQVBMN19GQ0NBID0gMHg1QywKwqDCoMKgwqDCoMKgwqAg
QVBMOF9XT1JMRCA9IDB4NUQsCsKgwqDCoMKgwqDCoMKgIEFQTDlfV09STEQgPSAweDVFLAorwqDC
oMKgwqDCoMKgIEFQTDEwX1dPUkxEID0gMHg1RiwKCsKgwqDCoMKgwqDCoMKgIFdPUjBfV09STEQg
PSAweDYwLArCoMKgwqDCoMKgwqDCoCBXT1IxX1dPUkxEID0gMHg2MSwKQEAgLTIwNCw2ICsyMDUs
NyBAQCBzdGF0aWMgc3RydWN0IHJlZ19kbW5fcGFpcl9tYXBwaW5nIHJlZ0RvbWFpblBhaXJzW10g
PSB7CsKgwqDCoMKgwqDCoMKgIHtBUEw2X1dPUkxELCBDVExfRVRTSSwgQ1RMX0VUU0l9LArCoMKg
wqDCoMKgwqDCoCB7QVBMOF9XT1JMRCwgQ1RMX0VUU0ksIENUTF9FVFNJfSwKwqDCoMKgwqDCoMKg
wqAge0FQTDlfV09STEQsIENUTF9FVFNJLCBDVExfRVRTSX0sCivCoMKgwqDCoMKgwqAge0FQTDEw
X1dPUkxELCBDVExfRVRTSSwgQ1RMX0VUU0l9LAoKwqDCoMKgwqDCoMKgwqAge0FQTDNfRkNDQSwg
Q1RMX0ZDQywgQ1RMX0ZDQ30sCsKgwqDCoMKgwqDCoMKgIHtBUEw3X0ZDQ0EsIENUTF9GQ0MsIENU
TF9GQ0N9LApAQCAtNDIzLDcgKzQyNSw3IEBAIHN0YXRpYyBzdHJ1Y3QgY291bnRyeV9jb2RlX3Rv
X2VudW1fcmQgYWxsQ291bnRyaWVzW10gPSB7CsKgwqDCoMKgwqDCoMKgIHtDVFJZX0tBWkFLSFNU
QU4sIE5VTEwxX1dPUkxELCAiS1oifSwKwqDCoMKgwqDCoMKgwqAge0NUUllfS0VOWUEsIEFQTDFf
V09STEQsICJLRSJ9LArCoMKgwqDCoMKgwqDCoCB7Q1RSWV9LT1JFQV9OT1JUSCwgQVBMOV9XT1JM
RCwgIktQIn0sCi3CoMKgwqDCoMKgwqAge0NUUllfS09SRUFfUk9DLCBBUEw5X1dPUkxELCAiS1Ii
fSwKK8KgwqDCoMKgwqDCoCB7Q1RSWV9LT1JFQV9ST0MsIEFQTDEwX1dPUkxELCAiS1IifSwKwqDC
oMKgwqDCoMKgwqAge0NUUllfS09SRUFfUk9DMiwgQVBMMl9XT1JMRCwgIksyIn0sCsKgwqDCoMKg
wqDCoMKgIHtDVFJZX0tPUkVBX1JPQzMsIEFQTDlfV09STEQsICJLMyJ9LArCoMKgwqDCoMKgwqDC
oCB7Q1RSWV9LVVdBSVQsIEVUU0kzX1dPUkxELCAiS1cifSwKCgpBZnRlciBwYXRjaGluZyBJIHN0
aWxsIGhhdmUgdGhlICJmYWlsZWQgdG8gbG9hZCBwcmUtY2FsLXBjaS4uLi9jYWwtcGNpLi4uIiBl
cnJvcnMgYW5kIHRoZSAidW5zdXBwb3J0ZWQgSFRDIHNlcnZpY2UgaWQ6IDE1MzYiIHdhcm5pbmcs
IGJ1dCB3aWZpIHdvcmtzLgoKSXMgdGhlcmUgYW55IHJlYXNvbiB0aGlzIHBhdGNoIHdhcyBuZXZl
ciBtZXJnZWQgaW4gdG8gdGhlIGF0aDEwayBrZXJuZWwgbW9kdWxlPyBJdCdkIGJlIG5pY2UgdG8g
bm90IGhhdmUgdG8gbWFudWFsbHkgcmVidWlsZCBpdCBldmVyeSBrZXJuZWwgdXBkYXRlLgoKQ2hl
ZXJzLAoud2F2CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
