Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4869011CC43
	for <lists+ath10k@lfdr.de>; Thu, 12 Dec 2019 12:32:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7cKanIIx8POxdwRHtjykgw85VJ1kH6WHhwo4OxQCYu4=; b=j4WiDHrkw/pryH
	ssD7KVmbHGq8Zxbbn0GJRbtQx/u2Dd7FILRYdyGf4cLMyOUsTAwD/en2L5yy3/kcIyyUSQvy5+C0e
	xBvQs8F6kZVfJQYRMELvIbzFrFcadWTDtea6+AgSM8lUwmZ/Knqf198dqvGSb/7js3XtJr4d1So3w
	5ioq/ieN1WPf9nA8/JTDGOLlD6EN2qBa+0zSuD9PwKvin/n1yAXlQ8GChhfYT7mlt0dQ5KSZoOlIO
	+/jIrvBYAwyIcRyzK7pUmNUWNJrDqtKKqzY/g0tQ0hfWiUnRDTvMTFpDnCtwoB0IgT3WozSjauG/z
	AQX4lY/BRuUTctJWZDZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifMi1-00017p-Dq; Thu, 12 Dec 2019 11:32:41 +0000
Received: from mail.codm.de ([185.95.212.174] helo=tera.codm.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifMhx-00017K-Gs
 for ath10k@lists.infradead.org; Thu, 12 Dec 2019 11:32:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by tera.codm.de (Postfix) with ESMTP id E151F374A7F
 for <ath10k@lists.infradead.org>; Thu, 12 Dec 2019 12:22:37 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at tera.codm.de
Received: from tera.codm.de ([127.0.0.1])
 by localhost (tera.codm.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id qXHWxq7DBfPn for <ath10k@lists.infradead.org>;
 Thu, 12 Dec 2019 12:22:37 +0100 (CET)
Received: from dustins-mbp.codm.de (b2b-130-180-91-5.unitymedia.biz
 [130.180.91.5]) (Authenticated sender: dustin.utecht@codm.de)
 by tera.codm.de (Postfix) with ESMTPSA id 97CA2374A7E
 for <ath10k@lists.infradead.org>; Thu, 12 Dec 2019 12:22:37 +0100 (CET)
From: Dustin Utecht <dustin.utecht@codm.de>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: ath10k: wmi service ready event not received using QCA 9377
Message-Id: <3E3A6515-856C-42F5-ACC6-F526B8A0E69C@codm.de>
Date: Thu, 12 Dec 2019 12:22:37 +0100
To: ath10k@lists.infradead.org
X-Mailer: Apple Mail (2.3601.0.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_033238_090673_015B4994 
X-CRM114-Status: UNSURE (   3.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 LOCALPART_IN_SUBJECT   Local part of To: address appears in
 Subject
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SGVsbG8sCgpmaXJzdCBvZiBhbGwgaSBoYXZlIHRvIHNheSB0aGFuayB5b3UgZm9yIHlvdXIgZ3Jl
YXQgam9iIGFuZCB0aGUgc3VwcG9ydCEKCkl0IHNlZW1zIHdlIGhhdmUgdGhlIHNhbWUgYnVnIGFz
IGFscmVhZHkgZGVzY3JpYmVkIGhlcmU6IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVy
bWFpbC9hdGgxMGsvMjAxOS1NYXkvMDEzMzU4Lmh0bWwKV2Ugc2F3IHRoYXQgdGhlcmUgaXMgYSBG
aXggKGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9hdGgxMGsvMjAxOS1NYXkv
MDEzMzcwLmh0bWwpIGZvciBRQ0E2MTc0IHdoaWNoIGlzIGFscmVhZHkgcHVzaGVkIHRvIGdpdGh1
YiAoaHR0cHM6Ly9naXRodWIuY29tL2t2YWxvL2F0aDEway1maXJtd2FyZS90cmVlL21hc3Rlci9R
Q0E2MTc0L2h3My4wKS4KCklzIHRoaXMgZml4IGFsc28gaW1wbGVtZW50ZWQgaW4gUUNBOTM3NyA/
CgoKU29tZSBpbmZvcm1hdGlvbnMgYWJvdXQgb3VyIHNldHVwOgoKV2VyZSB1c2luZyBhIE9wdGlw
bGV4IDMwNjAgKGh0dHBzOi8vd3d3LmRlbGwuY29tL2VuLWVuL3dvcmsvc2hvcC9kZXNrdG9wcy1h
bGwtaW4tb25lcy1wY3Mvb3B0aXBsZXgtMzA2MC1taWNyby1mb3JtLWZhY3Rvci9zcGQvb3B0aXBs
ZXgtMzA2MC1taWNybykgd2hpY2ggdXNlIGEgIlF1YWxjb21twq4gUUNBOTM3NyBEdWFsLWJhbmQg
MXgxIDgwMi4xMWFjIFdpcmVsZXNzIHdpdGggTVUtTUlNTyArIEJsdWV0b290aCA0LjHigJwuCldl
cmUgdXNpbmcgVWJ1bnR1IDE4LjA0IHdpdGggSFdFIGVuYWJsZWQgKHVzaW5nIGtlcm5lbCA1LjAu
MC0zNy1nZW5lcmljKS4KCk91dHB1dCBvZiBldGh0b29sIC1pIHdscDJzMDoKCmRyaXZlcjogYXRo
MTBrX3BjaQp2ZXJzaW9uOiA1LjAuMC0zNy1nZW5lcmljCmZpcm13YXJlLXZlcnNpb246IFdMQU4u
VEYuMi4xLTAwMDIxLVFDQVJNU1dQLTEKZXhwYW5zaW9uLXJvbS12ZXJzaW9uOiAKYnVzLWluZm86
IDAwMDA6MDI6MDAuMApzdXBwb3J0cy1zdGF0aXN0aWNzOiB5ZXMKc3VwcG9ydHMtdGVzdDogbm8K
c3VwcG9ydHMtZWVwcm9tLWFjY2Vzczogbm8Kc3VwcG9ydHMtcmVnaXN0ZXItZHVtcDogbm8Kc3Vw
cG9ydHMtcHJpdi1mbGFnczogbm8KCkkgaG9wZSB5b3UgY2FuIGhlbHAgdXMsIHdlIGNhbiB0ZXN0
IHBhdGNoZXMgaWYgeW91IHdpc2ghCgpraW5kIHJlZ2FyZHMsCkR1c3RpbiBVdGVjaHQKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcg
bGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
