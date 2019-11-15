Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0832FDBD0
	for <lists+ath10k@lfdr.de>; Fri, 15 Nov 2019 11:56:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xp1nzwNQpjZAzchj73t+TSB2LtVTWFn+XTY1ma3cmqk=; b=IOP2put3fWzFob
	f0Qd6llnRlDmpkLT/Fr6ogaFeCxntkltNSHXpFYYMu16dCB7ld4eKaaV3XlWbQxOcVWcC9ZgKzb9D
	PiY37eMwMoQUZ+aGNUlfmAhk3OfK3LE41hH2LWFKseHSwZtH7hKE2fRN21DfWJhjxKrhNl7JwmgG2
	ALJWbH8O7Iq329wPXy9nkaQd4tPW+ZFtu/HwFPUMIi8NmjGIPhJxPo6qu7K3dhEkyGVgbk+mw+0xy
	n6k/B2uGFLTVRd1pn/KxQE9hgHmBUSAiwiNYscTFnqt0d6vdhkVwlDLYOYn0h1ynJ2xOQVGFA/gKj
	5L5CjAIEF560ZpjZlGqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZHX-0000X4-Nk; Fri, 15 Nov 2019 10:56:51 +0000
Received: from mail.aperture-lab.de ([138.201.29.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZHS-0000Ue-8i
 for ath10k@lists.infradead.org; Fri, 15 Nov 2019 10:56:48 +0000
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1573815392;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=uBJc7hcajP8FEHgdeBWBaFOQbOLebSdyenmlOi0uYxA=;
 b=O8JtRdntbEJURgpdD6MrUYkKYQYwyHbUNpMTSGs9rE8JbGfernDCI6mD8fKb2qukSC1FV+
 ZBXt7Q/srnvMlQgQjZJgpve874drG5Y+k+G4+PVDhmURl/Jo+jaSTMbMrD0KjtuUDHEYHh
 ZKetoahkmkKWGOetJK43EZreuRZdLVY11wn4wRwkDOllSrY9PB1JiuwiqcSNLiiOUskzQX
 rMLmWk488ReuJm3Pd94UBJO6jGQxQU+IPi/pZvXUcujJHMd975fmw/U8JCBCyFsOZTta1S
 s4AqP3D9GqvllPahTJ5SjYTu8+2trJeD+SfM4rbfGhKFPwgy6uqwDqLIhUZAiw==
To: ath10k@lists.infradead.org
Subject: [PATCH net-next v2] ath10k: fix RX of frames with broken FCS in
 monitor mode
Date: Fri, 15 Nov 2019 11:56:12 +0100
Message-Id: <20191115105612.8531-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1573815392;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=uBJc7hcajP8FEHgdeBWBaFOQbOLebSdyenmlOi0uYxA=;
 b=MMfU0F89mh6EF+HRdjK7Qm9SsszXQXVQH8OEu8xiT+nDw+d9FYqeftHJDPdGVEAMmGhtXn
 DYZYpjaQBlvZQOq2ue58DttUqGzKqsRIzNVf/lhFFxwBO3OCfbJQ2MgyCPeS+OqRLEvINB
 q6b9N+hiNtFCKSZBAeMZDqgwkskCfB818bY/9SpdlaWg7m3CEmOXde+8CPyGqgGv5Alfwh
 2kxFDq4STya73izPJ4XvnJTDwvpE8X/dTpQgYT9EmlGbwWknIJHDg3NATzVGwI6KdVnt1C
 ImvCic5cn0NWp9LGRtcwkGcOt9QwEmR7dCPqu/ciBtlxnU3q8enPdY7NliXA6Q==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1573815392; a=rsa-sha256; cv=none;
 b=KUUWM6vRn3AtzkRE3UM7xMjLNEdf9BrkiLXVJ5fDdPnyYR20R+KkU3mtbapdbMrLqKNQ+A
 rrKNIglcXVdWorWhmSnuQExegzNsHXPerTiTBPPkBxgvieE5NtfSCVRwMua7qRYMf2iapg
 M2xPM2k46UdQvoNDdSpT6DOLj+d7RD7wRlwrRGKjbaglBmUiGKwGfHrtLPsnK07nPvY/BI
 ChcGcHcCDTRAawEBP1Y1hl5I2CI0K3dj0m3xwFsmAKyocvesfLDAwROkvcozB0I0KYVLsS
 qxp6SrGcWbPYl1J1jpTveKCJ6wkVR9D4tmtvghVtEw69M8HxfE4rLzpenq5GHQ==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_025646_608658_367B6612 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.201.29.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
b2cgdjI6CgoqIHJlbW92ZWQgdGhlIHNwaW5sb2NrIGFzIG9ubHkgYSAzMiBiaXQgc3RhdGlzdGlj
cyBjb3VudGVyIGlzCiAgaW5jcmVtZW50ZWQKCkNoYW5nZWxvZyBSRkMtPnYxOgoKKiByZW1vdmVk
ICJhci0+bW9uaXRvciIgY2hlY2sKKiBhZGRlZCBhIGRlYnVnIGNvdW50ZXIKCi0tLQoKIGRyaXZl
cnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvY29yZS5oICAgfCAxICsKIGRyaXZlcnMvbmV0L3dp
cmVsZXNzL2F0aC9hdGgxMGsvZGVidWcuYyAgfCAyICsrCiBkcml2ZXJzL25ldC93aXJlbGVzcy9h
dGgvYXRoMTBrL2h0dF9yeC5jIHwgNyArKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2Nv
cmUuaCBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvY29yZS5oCmluZGV4IGFmNjhl
YjVkMDc3Ni4uZDQ0NTQ4MmZhOTQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9h
dGgvYXRoMTBrL2NvcmUuaAorKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2Nv
cmUuaApAQCAtMTE4MCw2ICsxMTgwLDcgQEAgc3RydWN0IGF0aDEwayB7CiAKIAlzdHJ1Y3Qgewog
CQkvKiBwcm90ZWN0ZWQgYnkgZGF0YV9sb2NrICovCisJCXUzMiByeF9jcmNfZXJyX2Ryb3A7CiAJ
CXUzMiBmd19jcmFzaF9jb3VudGVyOwogCQl1MzIgZndfd2FybV9yZXNldF9jb3VudGVyOwogCQl1
MzIgZndfY29sZF9yZXNldF9jb3VudGVyOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxl
c3MvYXRoL2F0aDEway9kZWJ1Zy5jIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9k
ZWJ1Zy5jCmluZGV4IGJkMmI1NjI4Zjg1MC4uNWU0Y2QyOTY2ZTZmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2RlYnVnLmMKKysrIGIvZHJpdmVycy9uZXQvd2ly
ZWxlc3MvYXRoL2F0aDEway9kZWJ1Zy5jCkBAIC0xMDk0LDYgKzEwOTQsNyBAQCBzdGF0aWMgY29u
c3QgY2hhciBhdGgxMGtfZ3N0cmluZ3Nfc3RhdHNbXVtFVEhfR1NUUklOR19MRU5dID0gewogCSJk
X3J0c19nb29kIiwKIAkiZF90eF9wb3dlciIsIC8qIGluIC41IGRiTSBJIHRoaW5rICovCiAJImRf
cnhfY3JjX2VyciIsIC8qIGZjc19iYWQgKi8KKwkiZF9yeF9jcmNfZXJyX2Ryb3AiLCAvKiBmcmFt
ZSB3aXRoIEZDUyBlcnJvciwgZHJvcHBlZCBsYXRlIGluIGtlcm5lbCAqLwogCSJkX25vX2JlYWNv
biIsCiAJImRfdHhfbXBkdXNfcXVldWVkIiwKIAkiZF90eF9tc2R1X3F1ZXVlZCIsCkBAIC0xMTkz
LDYgKzExOTQsNyBAQCB2b2lkIGF0aDEwa19kZWJ1Z19nZXRfZXRfc3RhdHMoc3RydWN0IGllZWU4
MDIxMV9odyAqaHcsCiAJZGF0YVtpKytdID0gcGRldl9zdGF0cy0+cnRzX2dvb2Q7CiAJZGF0YVtp
KytdID0gcGRldl9zdGF0cy0+Y2hhbl90eF9wb3dlcjsKIAlkYXRhW2krK10gPSBwZGV2X3N0YXRz
LT5mY3NfYmFkOworCWRhdGFbaSsrXSA9IGFyLT5zdGF0cy5yeF9jcmNfZXJyX2Ryb3A7CiAJZGF0
YVtpKytdID0gcGRldl9zdGF0cy0+bm9fYmVhY29uczsKIAlkYXRhW2krK10gPSBwZGV2X3N0YXRz
LT5tcGR1X2VucXVlZDsKIAlkYXRhW2krK10gPSBwZGV2X3N0YXRzLT5tc2R1X2VucXVlZDsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvaHR0X3J4LmMgYi9kcml2
ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2h0dF9yeC5jCmluZGV4IDlmMGU3YjQ5NDNlYy4u
ODEzOWM5Y2VhMWQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBr
L2h0dF9yeC5jCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvaHR0X3J4LmMK
QEAgLTEyODUsNiArMTI4NSwxMyBAQCBzdGF0aWMgdm9pZCBhdGgxMGtfcHJvY2Vzc19yeChzdHJ1
Y3QgYXRoMTBrICphciwgc3RydWN0IHNrX2J1ZmYgKnNrYikKIAogCXN0YXR1cyA9IElFRUU4MDIx
MV9TS0JfUlhDQihza2IpOwogCisJaWYgKCEoYXItPmZpbHRlcl9mbGFncyAmIEZJRl9GQ1NGQUlM
KSAmJgorCSAgICBzdGF0dXMtPmZsYWcgJiBSWF9GTEFHX0ZBSUxFRF9GQ1NfQ1JDKSB7CisJCWFy
LT5zdGF0cy5yeF9jcmNfZXJyX2Ryb3ArKzsKKwkJZGV2X2tmcmVlX3NrYl9hbnkoc2tiKTsKKwkJ
cmV0dXJuOworCX0KKwogCWF0aDEwa19kYmcoYXIsIEFUSDEwS19EQkdfREFUQSwKIAkJICAgInJ4
IHNrYiAlcEsgbGVuICV1IHBlZXIgJXBNICVzICVzIHNuICV1ICVzJXMlcyVzJXMlcyAlc3JhdGVf
aWR4ICV1IHZodF9uc3MgJXUgZnJlcSAldSBiYW5kICV1IGZsYWcgMHgleCBmY3MtZXJyICVpIG1p
Yy1lcnIgJWkgYW1zZHUtbW9yZSAlaVxuIiwKIAkJICAgc2tiLAotLSAKMi4yNC4wLnJjMgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWls
aW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
