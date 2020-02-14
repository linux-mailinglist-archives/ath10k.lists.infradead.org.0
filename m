Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B413F15D0AF
	for <lists+ath10k@lfdr.de>; Fri, 14 Feb 2020 04:40:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RjbuQY0WVHar5VJNjtLyU22ZlizZCtoz3PwfTYsjUGA=; b=ezwCuF+Hl3E400
	jsG17Xir8Js4WWxYtF5ElbWQl/ybTkYHDIBJBvnHLw5AqcQe21umAPF/TLk1eUS0oje90V7bkFU4z
	IIrOVMtZf7qz7fwnwW54QbvZyevPJEn4QDXPVcGIsM96jy9d/ITL1T83cey1+XOpT5wkvxnXaPglA
	yqwFHe0KDwj5NNRST8Exa7JEr1RheYUtAQU+x7qk0P/Uoy3ibkicafyPE+bxG6C/lkTFoMbgxU+El
	YLb9B2gocrtWbrNRJkA3gkiJIVuKCzGm72XoJ3Bz2ex5YLNRA7P2ULtbKAAbSWuaos35EgkT/ayiR
	82auXVy5XR2TBIheQGYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2RqD-0001ay-S7; Fri, 14 Feb 2020 03:40:33 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Rq5-0001JH-2M
 for ath10k@lists.infradead.org; Fri, 14 Feb 2020 03:40:29 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581651624; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=6F6q74eRqaT7YwRMjDoofD8qMcMiA27lN8j/aAC1ZPU=;
 b=xHvbxnaXwvb8reLR2O3Cx3/HPe7O30oA6s9VgbBc6h4lFt55p90O8CVqj7Gsugp+rHrIVkZA
 r9OzTNztp/lzR/DyCrAeVT+y0E5bsFZtvNvRy3Rn37zWuqLAWXD9qUzCpg1AZxWIcNNQejiS
 0/z1Tzvpd3ar+7vBof87MIxnCAo=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4616a7.7fafa7de0fb8-smtp-out-n01;
 Fri, 14 Feb 2020 03:40:23 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1D926C4479D; Fri, 14 Feb 2020 03:40:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A2003C43383;
 Fri, 14 Feb 2020 03:40:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A2003C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: start recovery process when read int status fail for
 sdio
Date: Fri, 14 Feb 2020 11:40:07 +0800
Message-Id: <20200214034007.24512-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_194025_284443_A01A02F3 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org, wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

When running simulate crash stress test, it happened
"failed to read from address 0x800: -110".

Test steps:
1. Run command continuous
echo soft > /sys/kernel/debug/ieee80211/phy0/ath10k/simulate_fw_crash

2. error happened and it did not begin recovery for long time.
[74377.334846] ath10k_sdio mmc1:0001:1: simulating soft firmware crash
[74378.378217] ath10k_sdio mmc1:0001:1: failed to read from address 0x800: -110
[74378.378371] ath10k_sdio mmc1:0001:1: failed to process pending SDIO interrupts: -110

It has sdio errors since it can not read MBOX_HOST_INT_STATUS_ADDRESS,
then it has to do recovery process to recovery ath10k.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 7b894dcaad2e..ef389aba046d 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -941,8 +941,11 @@ static int ath10k_sdio_mbox_read_int_status(struct ath10k *ar,
 	 */
 	ret = ath10k_sdio_read(ar, MBOX_HOST_INT_STATUS_ADDRESS,
 			       irq_proc_reg, sizeof(*irq_proc_reg));
-	if (ret)
+	if (ret) {
+		queue_work(ar->workqueue, &ar->restart_work);
+		ath10k_warn(ar, "read int status fail, start recovery\n");
 		goto out;
+	}
 
 	/* Update only those registers that are enabled */
 	*host_int_status = irq_proc_reg->host_int_status &
-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
