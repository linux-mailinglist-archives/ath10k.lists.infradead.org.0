Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB994D32F2
	for <lists+ath10k@lfdr.de>; Thu, 10 Oct 2019 22:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tMJerA27leNB6OwLMyBQO0H9ECvOO4Xg/Z6pG0WlN40=; b=aiA8RoxRoAUmLb
	o/W1Q0G10F9twt1s8fmnM7biV7Dbh8hHU0iwaMb/1Clrfwb2yDm0qREyZ5av8Ngqfy65unCbzZFJc
	PQK7oU4D5q5KG8J/psZNI6MufYfOks5zdmLxiozAjKCEG089aKKpiRaQc8XRtMsMBfq/PeZws6pVO
	ZpOWUKPDQ+COa+fo+kvXpprozSncps7W/OJH8lp4Up/l9JT76y+/lAre4P+Jy3kK60g7ydyi9ujOZ
	Jgd2LNDSqW91QdwBmQVLPUIXNnZUwJFh8r53M3LN6Gk8n7fE3zd8J22VEI1KydCLUD06OH0NHnohr
	FCdRtOjzqOPmbLJWnjvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfR7-0000Pc-C5; Thu, 10 Oct 2019 20:53:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfR3-0000P5-5W
 for ath10k@lists.infradead.org; Thu, 10 Oct 2019 20:53:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id r5so9442212wrm.12
 for <ath10k@lists.infradead.org>; Thu, 10 Oct 2019 13:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zbWsOyqaUaMHm6xbSII/Hh4r9T9pk6P3FHSekk7NLFU=;
 b=lC2l7cvBPfIl4Gq/l8GvzR3FxvmfuhHxOkkKNG+Nzv3wKCi4kplrEMVe2j6TbVpk/l
 SdZTvDG/1zbVLm4dJaCnG8Xy8+ghhrToYzKyFegOnQtjEi1OWRlueKewQLjqt25tXr4i
 hnYHONPrQN02siE1dX1miH07uqVW4gXOub1dICHKpO5wb3vQbxc/qxuSNwWiYQJj6pTp
 ir9tudAC5vFJgsOPCCgxkHEDOWlWjP+LKRk9IAA+6DM6ASTNUezOEhQxwPKVqvB+J1lJ
 9EGxl6y9CDKsSjJwDyv0c5BqqWtYNW8s4Kkr/kjtkjj5GIg7NkT1OoNVKROhl2Fur2z/
 Y+cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zbWsOyqaUaMHm6xbSII/Hh4r9T9pk6P3FHSekk7NLFU=;
 b=mbEQOuDhDnC8cR1wGqoUpf+8Ijo7SBNGfMKkXxwX/ItJgkc2c9J5hKgyf0y9n/+fD0
 eY3a8B98Pi83Gwx59Ab3m+fgvp/B68Y5x2Shnobg1gmkASVgniI/wUacshQIckfEDMMo
 cOoRklColSICIQIq4L9uGibNbyRwRnhrtw4AXwoygjuTDi4TjlEmyJau+SbgQfTYESKJ
 JRR6vXz67tTjm5tnUQqOmlPMQppXrpCwsDlIufO0aoiXOJHLF3gkKwD+8f7PObaJwALx
 hbHioXW1qW68IChMDZqFeeakbS07h+6XsHYDJOyx92dFrQwEbpC27rbpEJFk2Sx3K/8c
 VxIg==
X-Gm-Message-State: APjAAAXyFUBMRi2ZEK140gwaB2BF+vRHN+6tdjViWstMq1mjzT6BlU7n
 rZZShHAboqB7ZKMjj10lc8s=
X-Google-Smtp-Source: APXvYqwAVP4Sirp8uMbLsyEKE2RUSL0NVI9HK5gNpEZC2jXRuM8qAOBVr6co12geF+Z0ocycj3RI6Q==
X-Received: by 2002:a5d:4901:: with SMTP id x1mr2092059wrq.28.1570740799141;
 Thu, 10 Oct 2019 13:53:19 -0700 (PDT)
Received: from localhost.localdomain ([31.147.208.18])
 by smtp.googlemail.com with ESMTPSA id y18sm5179081wrs.6.2019.10.10.13.53.18
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Thu, 10 Oct 2019 13:53:18 -0700 (PDT)
From: =?UTF-8?q?Tomislav=20Po=C5=BEega?= <pozega.tomislav@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH] ath: rename regulatory rules
Date: Thu, 10 Oct 2019 22:53:15 +0200
Message-Id: <1570740795-12522-1-git-send-email-pozega.tomislav@gmail.com>
X-Mailer: git-send-email 1.7.0.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_135321_236641_B674E078 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ath10k@lists.infradead.org, kvalo@codeaurora.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

UmVndWxhdG9yeSBydWxlIGRlZmluZXMgaW4gcmVnZC5jIGFyZSB1c2VkIG5vdCBvbmx5IGJ5IGF0
aDlrIGJ1dCBhbHNvCmF0aDEwayBkcml2ZXIgKGhhdmVuJ3QgdGVzdCBvdGhlciBkcml2ZXJzKSBh
bmQgdGh1cyBzaG91bGQgYmUKcmVuYW1lZCBmcm9tIEFUSDlLKiB0byBBVEgqLgoKU2lnbmVkLW9m
Zi1ieTogVG9taXNsYXYgUG/FvmVnYSA8cG96ZWdhLnRvbWlzbGF2QGdtYWlsLmNvbT4KLS0tCiBk
cml2ZXJzL25ldC93aXJlbGVzcy9hdGgvcmVnZC5jIHwgICA1MCArKysrKysrKysrKysrKysrKysr
LS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAy
NSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvcmVn
ZC5jIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL3JlZ2QuYwppbmRleCBlMjViZmRmLi4yMGY0
ZjhlIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvcmVnZC5jCisrKyBiL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9yZWdkLmMKQEAgLTMzLDMzICszMywzMyBAQAogICovCiAK
IC8qIE9ubHkgdGhlc2UgY2hhbm5lbHMgYWxsIGFsbG93IGFjdGl2ZSBzY2FuIG9uIGFsbCB3b3Js
ZCByZWd1bGF0b3J5IGRvbWFpbnMgKi8KLSNkZWZpbmUgQVRIOUtfMkdIWl9DSDAxXzExCVJFR19S
VUxFKDI0MTItMTAsIDI0NjIrMTAsIDQwLCAwLCAyMCwgMCkKKyNkZWZpbmUgQVRIXzJHSFpfQ0gw
MV8xMQlSRUdfUlVMRSgyNDEyLTEwLCAyNDYyKzEwLCA0MCwgMCwgMjAsIDApCiAKIC8qIFdlIGVu
YWJsZSBhY3RpdmUgc2NhbiBvbiB0aGVzZSBhIGNhc2UgYnkgY2FzZSBiYXNpcyBieSByZWd1bGF0
b3J5IGRvbWFpbiAqLwotI2RlZmluZSBBVEg5S18yR0haX0NIMTJfMTMJUkVHX1JVTEUoMjQ2Ny0x
MCwgMjQ3MisxMCwgNDAsIDAsIDIwLFwKKyNkZWZpbmUgQVRIXzJHSFpfQ0gxMl8xMwlSRUdfUlVM
RSgyNDY3LTEwLCAyNDcyKzEwLCA0MCwgMCwgMjAsXAogCQkJCQkgTkw4MDIxMV9SUkZfTk9fSVIp
Ci0jZGVmaW5lIEFUSDlLXzJHSFpfQ0gxNAkJUkVHX1JVTEUoMjQ4NC0xMCwgMjQ4NCsxMCwgNDAs
IDAsIDIwLFwKKyNkZWZpbmUgQVRIXzJHSFpfQ0gxNAkJUkVHX1JVTEUoMjQ4NC0xMCwgMjQ4NCsx
MCwgNDAsIDAsIDIwLFwKIAkJCQkJIE5MODAyMTFfUlJGX05PX0lSIHwgXAogCQkJCQkgTkw4MDIx
MV9SUkZfTk9fT0ZETSkKIAogLyogV2UgYWxsb3cgSUJTUyBvbiB0aGVzZSBvbiBhIGNhc2UgYnkg
Y2FzZSBiYXNpcyBieSByZWd1bGF0b3J5IGRvbWFpbiAqLwotI2RlZmluZSBBVEg5S181R0haXzUx
NTBfNTM1MAlSRUdfUlVMRSg1MTUwLTEwLCA1MzUwKzEwLCA4MCwgMCwgMzAsXAorI2RlZmluZSBB
VEhfNUdIWl81MTUwXzUzNTAJUkVHX1JVTEUoNTE1MC0xMCwgNTM1MCsxMCwgODAsIDAsIDMwLFwK
IAkJCQkJIE5MODAyMTFfUlJGX05PX0lSKQotI2RlZmluZSBBVEg5S181R0haXzU0NzBfNTg1MAlS
RUdfUlVMRSg1NDcwLTEwLCA1ODUwKzEwLCA4MCwgMCwgMzAsXAorI2RlZmluZSBBVEhfNUdIWl81
NDcwXzU4NTAJUkVHX1JVTEUoNTQ3MC0xMCwgNTg1MCsxMCwgODAsIDAsIDMwLFwKIAkJCQkJIE5M
ODAyMTFfUlJGX05PX0lSKQotI2RlZmluZSBBVEg5S181R0haXzU3MjVfNTg1MAlSRUdfUlVMRSg1
NzI1LTEwLCA1ODUwKzEwLCA4MCwgMCwgMzAsXAorI2RlZmluZSBBVEhfNUdIWl81NzI1XzU4NTAJ
UkVHX1JVTEUoNTcyNS0xMCwgNTg1MCsxMCwgODAsIDAsIDMwLFwKIAkJCQkJIE5MODAyMTFfUlJG
X05PX0lSKQogCi0jZGVmaW5lIEFUSDlLXzJHSFpfQUxMCQlBVEg5S18yR0haX0NIMDFfMTEsIFwK
LQkJCQlBVEg5S18yR0haX0NIMTJfMTMsIFwKLQkJCQlBVEg5S18yR0haX0NIMTQKKyNkZWZpbmUg
QVRIXzJHSFpfQUxMCQlBVEhfMkdIWl9DSDAxXzExLCBcCisJCQkJQVRIXzJHSFpfQ0gxMl8xMywg
XAorCQkJCUFUSF8yR0haX0NIMTQKIAotI2RlZmluZSBBVEg5S181R0haX0FMTAkJQVRIOUtfNUdI
Wl81MTUwXzUzNTAsIFwKLQkJCQlBVEg5S181R0haXzU0NzBfNTg1MAorI2RlZmluZSBBVEhfNUdI
Wl9BTEwJCUFUSF81R0haXzUxNTBfNTM1MCwgXAorCQkJCUFUSF81R0haXzU0NzBfNTg1MAogCiAv
KiBUaGlzIG9uZSBza2lwcyB3aGF0IHdlIGNhbGwgIm1pZCBiYW5kIiAqLwotI2RlZmluZSBBVEg5
S181R0haX05PX01JREJBTkQJQVRIOUtfNUdIWl81MTUwXzUzNTAsIFwKLQkJCQlBVEg5S181R0ha
XzU3MjVfNTg1MAorI2RlZmluZSBBVEhfNUdIWl9OT19NSURCQU5ECUFUSF81R0haXzUxNTBfNTM1
MCwgXAorCQkJCUFUSF81R0haXzU3MjVfNTg1MAogCiAvKiBDYW4gYmUgdXNlZCBmb3I6CiAgKiAw
eDYwLCAweDYxLCAweDYyICovCkBAIC02Nyw4ICs2Nyw4IEBACiAJLm5fcmVnX3J1bGVzID0gNSwK
IAkuYWxwaGEyID0gICI5OSIsCiAJLnJlZ19ydWxlcyA9IHsKLQkJQVRIOUtfMkdIWl9BTEwsCi0J
CUFUSDlLXzVHSFpfQUxMLAorCQlBVEhfMkdIWl9BTEwsCisJCUFUSF81R0haX0FMTCwKIAl9CiB9
OwogCkBAIC03Nyw5ICs3Nyw5IEBACiAJLm5fcmVnX3J1bGVzID0gNCwKIAkuYWxwaGEyID0gICI5
OSIsCiAJLnJlZ19ydWxlcyA9IHsKLQkJQVRIOUtfMkdIWl9DSDAxXzExLAotCQlBVEg5S18yR0ha
X0NIMTJfMTMsCi0JCUFUSDlLXzVHSFpfTk9fTUlEQkFORCwKKwkJQVRIXzJHSFpfQ0gwMV8xMSwK
KwkJQVRIXzJHSFpfQ0gxMl8xMywKKwkJQVRIXzVHSFpfTk9fTUlEQkFORCwKIAl9CiB9OwogCkBA
IC04OCw4ICs4OCw4IEBACiAJLm5fcmVnX3J1bGVzID0gMywKIAkuYWxwaGEyID0gICI5OSIsCiAJ
LnJlZ19ydWxlcyA9IHsKLQkJQVRIOUtfMkdIWl9DSDAxXzExLAotCQlBVEg5S181R0haX05PX01J
REJBTkQsCisJCUFUSF8yR0haX0NIMDFfMTEsCisJCUFUSF81R0haX05PX01JREJBTkQsCiAJfQog
fTsKIApAQCAtOTgsOCArOTgsOCBAQAogCS5uX3JlZ19ydWxlcyA9IDMsCiAJLmFscGhhMiA9ICAi
OTkiLAogCS5yZWdfcnVsZXMgPSB7Ci0JCUFUSDlLXzJHSFpfQ0gwMV8xMSwKLQkJQVRIOUtfNUdI
Wl9BTEwsCisJCUFUSF8yR0haX0NIMDFfMTEsCisJCUFUSF81R0haX0FMTCwKIAl9CiB9OwogCkBA
IC0xMDgsOSArMTA4LDkgQEAKIAkubl9yZWdfcnVsZXMgPSA0LAogCS5hbHBoYTIgPSAgIjk5IiwK
IAkucmVnX3J1bGVzID0gewotCQlBVEg5S18yR0haX0NIMDFfMTEsCi0JCUFUSDlLXzJHSFpfQ0gx
Ml8xMywKLQkJQVRIOUtfNUdIWl9BTEwsCisJCUFUSF8yR0haX0NIMDFfMTEsCisJCUFUSF8yR0ha
X0NIMTJfMTMsCisJCUFUSF81R0haX0FMTCwKIAl9CiB9OwogCi0tIAoxLjcuMC40CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcg
bGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
