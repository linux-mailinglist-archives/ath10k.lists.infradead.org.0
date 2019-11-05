Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2C7F035F
	for <lists+ath10k@lfdr.de>; Tue,  5 Nov 2019 17:50:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XHghvdKHrbbAScRSNpAImRDjr4npAxmORhBZJlsDbh4=; b=RX1ZlmddF980BX
	W9ON4N/c1oc2gOTDeiYuPutI+GnaaLgYRAPwBr2F4+sTi9+iYzS6G+zyuhR9NrKQ4mMpesfKO14fF
	yRAByJIxfnPkITqweRkRjCYK9tSFzCTTTMgdpkyEnMsSW0KRPDG+Q27gWktBq542o1oQwGTNY4r+P
	x65A8YRdDCJoWhPzauRCre9U1BswiKCDtFmkFjCxYu8s/qKyEGmhS6MyHbdMzO6G+UMQJ4HqFCST/
	8CI50ES/k77u+Q4lRyOOY96N4ygboKUZqI+PZSCN/H9RRVtN5fc0C2mlipgHYNVt6AdiVpfrucgh2
	bxTURBZgRXjIVky31TaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS223-0002M9-62; Tue, 05 Nov 2019 16:50:15 +0000
Received: from mail.aperture-lab.de ([138.201.29.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS21y-0002KI-Tz
 for ath10k@lists.infradead.org; Tue, 05 Nov 2019 16:50:12 +0000
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1572972606;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=A4o+TvT+3DU2TuZZZ5Ukyqq2OA7OUrD/LYDeu136xXo=;
 b=eKaM8U5anTeSSbpbTfQEDsinYFx/8JXx6rrdvuxtR33xfv34H1McpU2Iwpo94Ei+126A8k
 29w3ftw7jTj4FJwskOhlMV1Zp03RS+V++a4Mui8gAhhEb9LO8ovQoNv8g/82g036QGF4Az
 ShI3CiJYa+M3ECi5fYdQf5pDH9ymPyn1nTmW+MQ0QtjP30vWFFBF59c6E3GVlsxv6HTN7L
 Zlm/LxHkvZFQPqJadbLcTUc7URlB++HU/AXmZx4pezgnrJYLegJG8orlBQ3cjT9nqFoZdS
 dt5YEzAQe87d1oGQ7tfiGnumm99LM3O3hondz8WEB8NJhgW2QDjxhojEprqQBw==
To: ath10k@lists.infradead.org
Subject: [PATCH net-next] ath10k: fix RX of frames with broken FCS in monitor
 mode
Date: Tue,  5 Nov 2019 17:49:32 +0100
Message-Id: <20191105164932.11799-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1572972606;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=A4o+TvT+3DU2TuZZZ5Ukyqq2OA7OUrD/LYDeu136xXo=;
 b=auYd3bMkXFMp2tggRSB3WRF+GpXQmASYI8pWe/jIXmf3bEcxf3hI9StYZsZZUo1s8VaG7X
 WvZ54nJJdXz/5Ewd94d9WU6RykrBkLACXE2m3fxyh/1ofJO8qyvjprMpcbeHzj2SLgqV9M
 gr0FQa5orGMeMDcRXp4Vkp6dyUqbvRx+5qruQW1wgFTp6v3LP0kV4QB32oyGnYMbdN+lDx
 HGy1YD6TTtRFMom80NKpPtmu1oraEKZR46Zv/uktMPvcXY+o6omAa6jpvXI0LWS2HVWC1s
 c4Xd3ApQ2RJp171Vae9iRLNTQUHARIxVdOd6YPoGmiV1A50A4/XoeZXTJ3dJ/g==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1572972606; a=rsa-sha256; cv=none;
 b=Qv6YtoEdX4ewk6c7mjveFfqd8SPLQ/pcDdgTLLQMxlaED05U4f0kbgHUwWWraP9psScsOV
 roaGaQ+zFVzlBtJucdQXGBjARGzHED5HdnaJPOjo7Y312D/Xa0Ua0o4pUr4LwQz5NdnIat
 2aSEhx2MiuANhK5np95uLiVzw2XK4bseBYjuNNjX6IR7NaiTO0AFDYlTevck60z48FuWxb
 4kM4c3WjdjHoKm2BW8TitacGo6H9CxnTgG1g++6j9iy73r0UoODtQ9usQ/0zXdsPcHNJHD
 ouF7nomAi3O9LDwqWSNlCwKOeb2JkEPrWFDL3F+MQERU0uCf3cM77zdW5b0sKw==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_085011_285732_EDD0FB22 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.201.29.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <ll@simonwunderlich.de>,
 Simon Wunderlich <sw@simonwunderlich.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ben Greear <greearb@candelatech.com>, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

RnJvbTogTGludXMgTMO8c3NpbmcgPGxsQHNpbW9ud3VuZGVybGljaC5kZT4KClNvIGZhciwgZnJh
bWVzIHdlcmUgZm9yd2FyZGVkIHJlZ2FyZGxlc3Mgb2YgdGhlIEZDUyBjb3JyZWN0bmVzcyBsZWFk
aW5nCnRvIHVzZXJzcGFjZSBhcHBsaWNhdGlvbnMgbGlzdGVuaW5nIG9uIHRoZSBtb25pdG9yIG1v
ZGUgaW50ZXJmYWNlIHRvCnJlY2VpdmUgcG90ZW50aWFsbHkgYnJva2VuIGZyYW1lcywgZXZlbiB3
aXRoIHRoZSAiZmNzZmFpbCIgZmxhZyB1bnNldC4KCkJ5IGRlZmF1bHQsIHdpdGggdGhlICJmY3Nm
YWlsIiBmbGFnIG9mIGEgbW9uaXRvciBtb2RlIGludGVyZmFjZQp1bnNldCwgZnJhbWVzIHdpdGgg
RkNTIGVycm9ycyBzaG91bGQgYmUgZHJvcHBlZC4gV2l0aCB0aGlzIHBhdGNoLCB0aGUKZmNzZmFp
bCBmbGFnIGlzIHRha2VuIGludG8gYWNjb3VudCBjb3JyZWN0bHkuCgpDYzogU2ltb24gV3VuZGVy
bGljaCA8c3dAc2ltb253dW5kZXJsaWNoLmRlPgpTaWduZWQtb2ZmLWJ5OiBMaW51cyBMw7xzc2lu
ZyA8bGxAc2ltb253dW5kZXJsaWNoLmRlPgotLS0KVGhpcyB3YXMgdGVzdGVkIG9uIGFuIE9wZW4g
TWVzaCBBNDEgZGV2aWNlLCBmZWF0dXJpbmcgYSBRQ0E0MDE5LiBBbmQKd2l0aCB0aGlzIGZpcm13
YXJlOgoKaHR0cHM6Ly93d3cuY2FuZGVsYXRlY2guY29tL2Rvd25sb2Fkcy9hdGgxMGstNDAxOS0x
MC00Yi9maXJtd2FyZS01LWN0LWZ1bGwtY29tbXVuaXR5LTEyLmJpbi1sZWRlLjAxMQoKQnV0IGZy
b20gbG9va2luZyBhdCB0aGUgY29kZSBpdCBzZWVtcyB0aGF0IHRoZSB2YW5pbGxhIGF0aDEwayBo
YXMgdGhlCnNhbWUgaXNzdWUsIHRoZXJlZm9yZSBzdWJtaXR0aW5nIGl0IGhlcmUuCgpDaGFuZ2Vs
b2cgUkZDLT52MToKCiogcmVtb3ZlZCAiYXItPm1vbml0b3IiIGNoZWNrCiogYWRkZWQgYSBkZWJ1
ZyBjb3VudGVyCgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvY29yZS5oICAg
fCAgMSArCiBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2RlYnVnLmMgIHwgIDIgKysK
IGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvaHR0X3J4LmMgfCAxMCArKysrKysrKysr
CiAzIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2NvcmUuaCBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0
aC9hdGgxMGsvY29yZS5oCmluZGV4IDRkN2RiMDdkYjZiYS4uNzg3MDY1YTllYjNmIDEwMDY0NAot
LS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2NvcmUuaAorKysgYi9kcml2ZXJz
L25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2NvcmUuaApAQCAtMTE3MSw2ICsxMTcxLDcgQEAgc3Ry
dWN0IGF0aDEwayB7CiAKIAlzdHJ1Y3QgewogCQkvKiBwcm90ZWN0ZWQgYnkgZGF0YV9sb2NrICov
CisJCXUzMiByeF9jcmNfZXJyX2Ryb3A7CiAJCXUzMiBmd19jcmFzaF9jb3VudGVyOwogCQl1MzIg
Zndfd2FybV9yZXNldF9jb3VudGVyOwogCQl1MzIgZndfY29sZF9yZXNldF9jb3VudGVyOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9kZWJ1Zy5jIGIvZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9kZWJ1Zy5jCmluZGV4IGJkMmI1NjI4Zjg1MC4uNWU0
Y2QyOTY2ZTZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2Rl
YnVnLmMKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9kZWJ1Zy5jCkBAIC0x
MDk0LDYgKzEwOTQsNyBAQCBzdGF0aWMgY29uc3QgY2hhciBhdGgxMGtfZ3N0cmluZ3Nfc3RhdHNb
XVtFVEhfR1NUUklOR19MRU5dID0gewogCSJkX3J0c19nb29kIiwKIAkiZF90eF9wb3dlciIsIC8q
IGluIC41IGRiTSBJIHRoaW5rICovCiAJImRfcnhfY3JjX2VyciIsIC8qIGZjc19iYWQgKi8KKwki
ZF9yeF9jcmNfZXJyX2Ryb3AiLCAvKiBmcmFtZSB3aXRoIEZDUyBlcnJvciwgZHJvcHBlZCBsYXRl
IGluIGtlcm5lbCAqLwogCSJkX25vX2JlYWNvbiIsCiAJImRfdHhfbXBkdXNfcXVldWVkIiwKIAki
ZF90eF9tc2R1X3F1ZXVlZCIsCkBAIC0xMTkzLDYgKzExOTQsNyBAQCB2b2lkIGF0aDEwa19kZWJ1
Z19nZXRfZXRfc3RhdHMoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCiAJZGF0YVtpKytdID0gcGRl
dl9zdGF0cy0+cnRzX2dvb2Q7CiAJZGF0YVtpKytdID0gcGRldl9zdGF0cy0+Y2hhbl90eF9wb3dl
cjsKIAlkYXRhW2krK10gPSBwZGV2X3N0YXRzLT5mY3NfYmFkOworCWRhdGFbaSsrXSA9IGFyLT5z
dGF0cy5yeF9jcmNfZXJyX2Ryb3A7CiAJZGF0YVtpKytdID0gcGRldl9zdGF0cy0+bm9fYmVhY29u
czsKIAlkYXRhW2krK10gPSBwZGV2X3N0YXRzLT5tcGR1X2VucXVlZDsKIAlkYXRhW2krK10gPSBw
ZGV2X3N0YXRzLT5tc2R1X2VucXVlZDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2F0aC9hdGgxMGsvaHR0X3J4LmMgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2h0
dF9yeC5jCmluZGV4IDUzZjEwOTVkZThmZi4uMTQ5NzI4NTg4ZTgwIDEwMDY0NAotLS0gYS9kcml2
ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2h0dF9yeC5jCisrKyBiL2RyaXZlcnMvbmV0L3dp
cmVsZXNzL2F0aC9hdGgxMGsvaHR0X3J4LmMKQEAgLTEyODUsNiArMTI4NSwxNiBAQCBzdGF0aWMg
dm9pZCBhdGgxMGtfcHJvY2Vzc19yeChzdHJ1Y3QgYXRoMTBrICphciwgc3RydWN0IHNrX2J1ZmYg
KnNrYikKIAogCXN0YXR1cyA9IElFRUU4MDIxMV9TS0JfUlhDQihza2IpOwogCisJaWYgKCEoYXIt
PmZpbHRlcl9mbGFncyAmIEZJRl9GQ1NGQUlMKSAmJgorCSAgICBzdGF0dXMtPmZsYWcgJiBSWF9G
TEFHX0ZBSUxFRF9GQ1NfQ1JDKSB7CisJCXNwaW5fbG9ja19iaCgmYXItPmRhdGFfbG9jayk7CisJ
CWFyLT5zdGF0cy5yeF9jcmNfZXJyX2Ryb3ArKzsKKwkJc3Bpbl91bmxvY2tfYmgoJmFyLT5kYXRh
X2xvY2spOworCisJCWRldl9rZnJlZV9za2JfYW55KHNrYik7CisJCXJldHVybjsKKwl9CisKIAlh
dGgxMGtfZGJnKGFyLCBBVEgxMEtfREJHX0RBVEEsCiAJCSAgICJyeCBza2IgJXBLIGxlbiAldSBw
ZWVyICVwTSAlcyAlcyBzbiAldSAlcyVzJXMlcyVzJXMgJXNyYXRlX2lkeCAldSB2aHRfbnNzICV1
IGZyZXEgJXUgYmFuZCAldSBmbGFnIDB4JXggZmNzLWVyciAlaSBtaWMtZXJyICVpIGFtc2R1LW1v
cmUgJWlcbiIsCiAJCSAgIHNrYiwKLS0gCjIuMjQuMC5yYzIKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0Bs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYXRoMTBrCg==
