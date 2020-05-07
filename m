Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0F61C81E2
	for <lists+ath10k@lfdr.de>; Thu,  7 May 2020 07:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mTR2QsuBojZIQ2ZGndXNUj1SVdcC5lTBDk8r0vTUFvk=; b=H1rdUjYBKB58Z5
	EHQGjaJeh5/SAah5O3xXJ1iyqZwQbKP+M3XmsoGcMjIn8Jg2RZIvcvneovTEYNZXOjse7u7XJgX2w
	YjcXG6r3LwZ2M762XuPmoFGHEOLcWl8890Jt7lPp1+rxB9o5iEMXwZgumieh1D0X+vR8er0tt8pda
	JGGh2ESgp4ZKzWdACirXhNwYHeLJi+waL1guvXRDKpAh38MFpH4860w/mfUn4a/qVB3tk6m7gn/UE
	ThlYMIBXw73HUJIM9Z1MVdKGPrtI2S/fLA+XaZeYfO4aUVyAwjUG1sQYlqX7vqPZNApU5K8Laze3r
	q4YZL8z0A24ejSHQim4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZTc-00033g-Il; Thu, 07 May 2020 05:53:44 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZTW-00033E-0r
 for ath10k@lists.infradead.org; Thu, 07 May 2020 05:53:42 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588830820; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=PH/1SM3VfOcjwxZHWjLJ4XuFcgxUfiT6neS3TaZZk98=;
 b=fv0IA1vupZRIZXvqgHMJ2JsvFlzHIjY/QlZ/cLDToHgjNEzJ+lpbfAHjgzP1FucmXDALKfbG
 2x0T4yohxwIxjDBRlqjoa2aKPx9A6f+ayl3AThvxfJ3HR1JXi3fb+GURu1TpjtqifSiaJQ/W
 emyjF5uLUD2rQZ/ipisFgKlrkwM=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb3a25b.7f7767ebad18-smtp-out-n02;
 Thu, 07 May 2020 05:53:31 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7B13EC433F2; Thu,  7 May 2020 05:53:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from govinds-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: govinds)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 42F10C433BA;
 Thu,  7 May 2020 05:53:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 42F10C433BA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: Remove experimental tag from ath10k Kconfig
Date: Thu,  7 May 2020 11:23:24 +0530
Message-Id: <20200507055324.15564-1-govinds@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_225340_212605_05E1CB0C 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

ath10k(sdio/snoc) is no longer experimental.
Remove experimental tag for SDIO/SNOC from ath10k Kconfig.

Signed-off-by: Govind Singh <govinds@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/Kconfig | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/Kconfig b/drivers/net/wireless/ath/ath10k/Kconfig
index 6b3ff02a373d..b99fd0eff994 100644
--- a/drivers/net/wireless/ath/ath10k/Kconfig
+++ b/drivers/net/wireless/ath/ath10k/Kconfig
@@ -28,11 +28,10 @@ config ATH10K_AHB
 	  This module adds support for AHB bus
 
 config ATH10K_SDIO
-	tristate "Atheros ath10k SDIO support (EXPERIMENTAL)"
+	tristate "Atheros ath10k SDIO support"
 	depends on ATH10K && MMC
 	---help---
-	  This module adds experimental support for SDIO/MMC bus. Currently
-	  work in progress and will not fully work.
+	  This module adds support for SDIO/MMC bus.
 
 config ATH10K_USB
 	tristate "Atheros ath10k USB support (EXPERIMENTAL)"
@@ -42,7 +41,7 @@ config ATH10K_USB
 	  work in progress and will not fully work.
 
 config ATH10K_SNOC
-	tristate "Qualcomm ath10k SNOC support (EXPERIMENTAL)"
+	tristate "Qualcomm ath10k SNOC support"
 	depends on ATH10K
 	depends on ARCH_QCOM || COMPILE_TEST
 	select QCOM_QMI_HELPERS
-- 
2.22.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
