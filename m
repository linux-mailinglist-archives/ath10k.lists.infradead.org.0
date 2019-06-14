Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0476D45B0A
	for <lists+ath10k@lfdr.de>; Fri, 14 Jun 2019 13:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u/HKtdt3/QyQuR435q8ux7eM2aEWXQfWPP3XZXYwaTk=; b=QT0
	1cEU89ZT3uZ0vB0Sf9na20/WXHq1XN0V9RgOBFOAnKehxdlO2y8BuV9F2/FJFt59AAMLBc7M4qdna
	Zs062jRiqoqYFMzcj1EnPVzmv8eawHi/HWwFxef8gGRhR1H0FvbdtcXHJHfe3wENoDy1Ky9z7k1Ef
	E8Mhn/MAPyMvZ/f/nZ09vgKhz6N1DfDh+bNC1QSvwVVKTk+oAmD02DmrFWXRSGAes5A96GSF3IlE8
	f1QB6G1qY6yGom1jj0ZHRXFFhamAds8zAi8KgZvKmo0a4II45aouMO0D0crti3gxeWtXqxKOPHF3j
	/oWcWpMLAHbU4zEAPHv3dIR+FOuoanw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjyB-0003Xu-Tn; Fri, 14 Jun 2019 11:02:07 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjy8-0003Vo-Of
 for ath10k@lists.infradead.org; Fri, 14 Jun 2019 11:02:06 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E23FE60795; Fri, 14 Jun 2019 11:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560510123;
 bh=1IlAp9jSvQzTQdWzKxGBiN0r8rhi5HJLVRfcaggg3Ok=;
 h=From:To:Cc:Subject:Date:From;
 b=E+uxoPv8OBm4o1XlolNELLSu/mf7GW2fuTHrac1c66n5W5BE8Zau4eaGY6hk2XneZ
 o57V8uBg3vmuGEbfz6WZBPvOPLf9a0RbdumBNJGsXkxJWVVWEh6dkZwpYPf3IpM/W5
 go7Ifkx7erVDle8rSxh2zaBR+yaAwU4H1GdLttlA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from ybzhao-HP-Z230-SFF-Workstation.ap.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: yiboz@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3CDB260240;
 Fri, 14 Jun 2019 11:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560510123;
 bh=1IlAp9jSvQzTQdWzKxGBiN0r8rhi5HJLVRfcaggg3Ok=;
 h=From:To:Cc:Subject:Date:From;
 b=E+uxoPv8OBm4o1XlolNELLSu/mf7GW2fuTHrac1c66n5W5BE8Zau4eaGY6hk2XneZ
 o57V8uBg3vmuGEbfz6WZBPvOPLf9a0RbdumBNJGsXkxJWVVWEh6dkZwpYPf3IpM/W5
 go7Ifkx7erVDle8rSxh2zaBR+yaAwU4H1GdLttlA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3CDB260240
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] mac80211: suppress kernel warning message
Date: Fri, 14 Jun 2019 19:01:52 +0800
Message-Id: <1560510112-21613-1-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_040204_825437_2B125511 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Zhi Chen <zhichen@codeaurora.org>, Yibo Zhao <yiboz@codeaurora.org>,
 linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

In multiple SSID cases, it takes time to prepare every AP interface
to be ready in initializing phase. If a sta already knows everything it
needs to join one of the APs and sends authentication to the AP which
is not fully prepared at this point of time, AP's channel context
could be NULL. As a result, warning message occurs.

Even worse, if the AP is under attack via tools such as MDK3 and massive
authentication requests are received in a very short time, console will
be hung due to kernel warning messages.

WARN_ON_ONCE() could be a better way for indicating warning messages
without duplicate messages to flood the console.

Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
---
 net/mac80211/ieee80211_i.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/mac80211/ieee80211_i.h b/net/mac80211/ieee80211_i.h
index a8af4aa..682d0ab 100644
--- a/net/mac80211/ieee80211_i.h
+++ b/net/mac80211/ieee80211_i.h
@@ -1435,7 +1435,7 @@ struct ieee80211_local {
 	rcu_read_lock();
 	chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);
 
-	if (WARN_ON(!chanctx_conf)) {
+	if (WARN_ON_ONCE(!chanctx_conf)) {
 		rcu_read_unlock();
 		return NULL;
 	}
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
