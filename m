Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C81DEC193
	for <lists+ath10k@lfdr.de>; Fri,  1 Nov 2019 12:12:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3m8KarzUUNxNnfxtrOYP8B1816YAkdCtdVSKJUpuccc=; b=UDhT/j1mSFOK30
	lgPpQt8KOEjq6wJpaI8F3wjQC872N6ic/t5svCUqTt3IKQ7lwfufbwQed6SQwbtcjEnhSP+mZoMH2
	8aX55VAoXOOqbHM9RsRpbgI6FVNEgu0XJZSxApEm8ZCGDbcDiX1EAAXnzzo5qSJfrj5WizdO4xT5l
	16siohgHtgcEDuHQ1fQa0JK21uue5iYhItkzWyHwqshR4VffgO4hn2SZ++ZMVSDNDPRrJmSjDxAyn
	cNIuWJtnNTp/wzY4xz7jeWreM1JDO+yzpzoSEv4gLU5tIvZ2g34fakYQx5EFWbSZ1HnKEhH3DvRqE
	8MjUqmynYkQcfi0IRy+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQUqT-0008VK-7i; Fri, 01 Nov 2019 11:11:57 +0000
Received: from mail.aperture-lab.de ([2a01:4f8:171:314c::100:a1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQUqP-0008U1-2C
 for ath10k@lists.infradead.org; Fri, 01 Nov 2019 11:11:55 +0000
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1572606705;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Oeilr/v60IUH+v4nJU3swyG8i/es5QRl2RumVH9+VoI=;
 b=Diosam2ExOu4kg+DsdPbSrTiUOlzMH/WShPtt51TamqMehqhDxfZgBAVW17tr/UBZNGz08
 XTwA8MeXhASPpHvpz17zcwT9yuvu1RqdQDYodTqn4Lqvewjzf/Sit1K38lfq6IciqjS8AL
 ojpDu5N1wCnqQWDchWlYHK8KWb7HAzRJ11XojfpFcDK5hk+9vBUQrF76NMdDY54x007di+
 SMy3Dja22F73vq4NcQbMAfGJPd1jxfCJRi3xbLK2t+LEiNfHCvgdZ0q09EhQi2h8Ic2h/j
 W1RdnnvYUpmiPQdk6HyGACa6NNHmPsKQhFeUWoV5dKeCySm0ryw65zQr5vv7VA==
To: ath10k@lists.infradead.org
Subject: [RFC PATCH] ath10k: fix RX of frames with broken FCS in monitor mode
Date: Fri,  1 Nov 2019 12:11:38 +0100
Message-Id: <20191101111138.9086-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1572606705;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Oeilr/v60IUH+v4nJU3swyG8i/es5QRl2RumVH9+VoI=;
 b=hR7/wWp+H2YlsNuD1sw/f8CKSnWLwx9+j3sGX7gOyF9qwuG4yOqnZyzxqDM6iKj/+fQoFf
 mXsfT+xC8TM7hRQ1H3aAcxHdJFZ6rIn+g3B5NJprFmh5yi1eq7BaFX71vt9gdniZOJwF7n
 u12SB2TvQmyOOd46T2CFF0hIMtBlWzNdxB5OqLhRTTg16oc636kNjlqAAtYnm5EYF/CQDC
 4Mfm2QEJUcva3epoEr7Rni3chpMl2YdHua9Mlo7ArfrPp6PH8F5V3MXJ7Gz7ukym1a3foE
 hnDnYyEw9q4Sfh6sR5Y9yFlyhksXA0oWh+jCw+uNw7KfJUon6Br7fjafoAUKBQ==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1572606705; a=rsa-sha256; cv=none;
 b=haQYVenNgSKVb+X3GLQrNF987/86uKV4VJMl62Y2btvU1Gt308jIFbdvJ0T82lMy61DDyl
 M/qu3mks5jn8pahLtyl2b8Wae6yDMhas4bCrAhchbYomVPsMDbRhJQ7r1sSdRvUIUsCf0N
 WoeIYQmtXWtLw/C2W9UjWKiMDC2eFjG10xIBOnBBxu+xVTRZyyII2KRr0m2K5QfFtG0HwX
 oPhkj8lg+Ay3fBFSUlBy8ykWUEWDc8tf3bGt+pN6xpNT2v6bznhGK/1rwhaQh5T3vXXkL4
 7jUxsTBv+VchkTSbTQDK/R2cbCZQS5mI83dSTQmPQp5kpGJJAGxJYnf6J1O4hQ==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_041153_445817_E3706168 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:171:314c:0:0:100:a1 listed in]
 [list.dnswl.org]
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
 Simon Wunderlich <sw@simonwunderlich.de>
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
bCBmbGFnIGlzIHRha2VuIGludG8gYWNjb3VudCBjb3JyZWN0bHkuCgpTaWduZWQtb2ZmLWJ5OiBM
aW51cyBMw7xzc2luZyA8bGxAc2ltb253dW5kZXJsaWNoLmRlPgotLS0KVGhpcyB3YXMgdGVzdGVk
IG9uIGFuIE9wZW4gTWVzaCBBNDEgZGV2aWNlLCBmZWF0dXJpbmcgYSBRQ0E0MDE5LiBBbmQKd2l0
aCB0aGlzIGZpcm13YXJlOgoKaHR0cHM6Ly93d3cuY2FuZGVsYXRlY2guY29tL2Rvd25sb2Fkcy9h
dGgxMGstNDAxOS0xMC00Yi9maXJtd2FyZS01LWN0LWZ1bGwtY29tbXVuaXR5LTEyLmJpbi1sZWRl
LjAxMQoKQnV0IGZyb20gbG9va2luZyBhdCB0aGUgY29kZSBpdCBzZWVtcyB0aGF0IHRoZSB2YW5p
bGxhIGF0aDEwayBoYXMgdGhlCnNhbWUgaXNzdWUsIHRoZXJlZm9yZSBzdWJtaXR0aW5nIGl0IGhl
cmUuCgpJJ20gYWxzbyBub3QgdGhhdCBmYW1pbGlhciB3aXRoIHRoZSBhdGgxMGsgY29kZSB5ZXQu
IFNvIG5vdCAxMDAlIHN1cmUgaWYKaXQncyB0aGUgcmlnaHQgcGxhY2UgZm9yIHRoaXMgY2hlY2su
IFRoZXJlZm9yZSBzZW5kaW5nIGFzIFJGQy4KLS0tCiBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgv
YXRoMTBrL2h0dF9yeC5jIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2h0dF9yeC5j
IGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9odHRfcnguYwppbmRleCA1M2YxMDk1
ZGU4ZmYuLmNlMGExNmViYjhiYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRo
L2F0aDEway9odHRfcnguYworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2h0
dF9yeC5jCkBAIC0xMjg1LDYgKzEyODUsMTIgQEAgc3RhdGljIHZvaWQgYXRoMTBrX3Byb2Nlc3Nf
cngoc3RydWN0IGF0aDEwayAqYXIsIHN0cnVjdCBza19idWZmICpza2IpCiAKIAlzdGF0dXMgPSBJ
RUVFODAyMTFfU0tCX1JYQ0Ioc2tiKTsKIAorCWlmIChhci0+bW9uaXRvciAmJiAhKGFyLT5maWx0
ZXJfZmxhZ3MgJiBGSUZfRkNTRkFJTCkgJiYKKwkgICAgc3RhdHVzLT5mbGFnICYgUlhfRkxBR19G
QUlMRURfRkNTX0NSQykgeworCQlkZXZfa2ZyZWVfc2tiX2FueShza2IpOworCQlyZXR1cm47CisJ
fQorCiAJYXRoMTBrX2RiZyhhciwgQVRIMTBLX0RCR19EQVRBLAogCQkgICAicnggc2tiICVwSyBs
ZW4gJXUgcGVlciAlcE0gJXMgJXMgc24gJXUgJXMlcyVzJXMlcyVzICVzcmF0ZV9pZHggJXUgdmh0
X25zcyAldSBmcmVxICV1IGJhbmQgJXUgZmxhZyAweCV4IGZjcy1lcnIgJWkgbWljLWVyciAlaSBh
bXNkdS1tb3JlICVpXG4iLAogCQkgICBza2IsCi0tIAoyLjI0LjAucmMyCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAph
dGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2F0aDEwawo=
