Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0A3DD3A
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 09:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=X5ze1XqO9bzhMTpIoqBOqjLEIX4PFpGnfdt6QUk6U60=; b=F4H
	pecmXezzIpVrLGSZCh9KU8AeZ3SU2UHhQ7YQpWUEfSC6rs9G6rnbggf6UH/wDlU84YPdpnTVNeHR5
	9cxK4qvx5oj/h9pgLKqaxydHNEPKFuxuu6fuc+MtZRC395YN6MJZ2w6gjRStWPSOGQxAkMyauPIX1
	yAJnxiSlm/V1+7pZIPLD1NjPt7ht6YfqteowmCbCUt0rWHBMQzhlNGaCRtcaB0OR3JY2IrGFpFQGW
	/d29IEt9jjOYMFTp6n2RxmSgTeEJbldnqIwhBrGYHwhSWZHTeJ1SIab2MWQkQ9rqoxQQYBvvmY9up
	dj07QGc3Z7osPaipMNJApipNieUwcTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL17S-0007KB-1l; Mon, 29 Apr 2019 07:54:34 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL17O-0007Je-0x
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 07:54:31 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 266CE608D4; Mon, 29 Apr 2019 07:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556524469;
 bh=XktlkB+zNNoISAn1fR9+feOMjtMSyGbdO2GzL8wkjiw=;
 h=From:To:Cc:Subject:Date:From;
 b=PgjLnHTlWlA6wIjzGcI7hGmzinjNHEUJoOEqxa5iDy1tgmPZyRfbBfjYa8GO8ZQiI
 uLyBKKfrKPjdlmd6qthryRv07DqzMD9bFj7Np0gx/+3MH1Pa9zpPwXi+b6aaSGdePq
 wAK6Z/y/bvmATwE7vkBtZQa5qqkyvq0PSLNV7x/M=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from localhost.localdomain (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 82B47608FC;
 Mon, 29 Apr 2019 07:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556524468;
 bh=XktlkB+zNNoISAn1fR9+feOMjtMSyGbdO2GzL8wkjiw=;
 h=From:To:Cc:Subject:Date:From;
 b=Ea60pZ/OgDafDGch9h9ZekSzewTnxjmm4mDp+kpnGkE8ue0dpjDSQou0H8I55Z78j
 lq51Rs3i77nOan9gUlVroIhtOK5YU1IQGkHWGkLnPwFsV54EXjHdrQISv6OuQMHcvE
 D8U4GaKYtDKZr1FQ3SOnzZqqSeSA+LGU9tgulnzI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 82B47608FC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2] ath10k: add support for simulate crash on SDIO chip
Date: Mon, 29 Apr 2019 15:54:17 +0800
Message-Id: <1556524457-17469-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_005430_098920_4DC0BBDD 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The command to simulate firmware crash:
echo soft > /sys/kernel/debug/ieee80211/phy0/ath10k/simulate_fw_crash

It will send WMI_FORCE_FW_HANG_ASSERT to firmware, then it will trigger
CPU interrupt status register for SDIO chip, ath10k driver need to
configure it while enable SDIO interrupt, otherwise ath10k driver will
not get the assert error info.

After this change, it will success for simulate firmware crash.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
v2: add MBOX_CPU_STATUS_ENABLE_ASSERT_MASK for fw assert check
 drivers/net/wireless/ath/ath10k/hw.h   |  1 +
 drivers/net/wireless/ath/ath10k/sdio.c | 10 ++++++++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/hw.h b/drivers/net/wireless/ath/ath10k/hw.h
index 7131499..60521ed 100644
--- a/drivers/net/wireless/ath/ath10k/hw.h
+++ b/drivers/net/wireless/ath/ath10k/hw.h
@@ -1095,6 +1095,7 @@ struct ath10k_hw_ops {
 #define MBOX_CPU_INT_STATUS_ENABLE_ADDRESS	0x00000819
 #define MBOX_CPU_INT_STATUS_ENABLE_BIT_LSB	0
 #define MBOX_CPU_INT_STATUS_ENABLE_BIT_MASK	0x000000ff
+#define MBOX_CPU_STATUS_ENABLE_ASSERT_MASK 0x00000001
 #define MBOX_ERROR_STATUS_ENABLE_ADDRESS	0x0000081a
 #define MBOX_ERROR_STATUS_ENABLE_RX_UNDERFLOW_LSB  1
 #define MBOX_ERROR_STATUS_ENABLE_RX_UNDERFLOW_MASK 0x00000002
diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index fae56c6..1a3a7bf 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -850,6 +850,10 @@ static int ath10k_sdio_mbox_proc_cpu_intr(struct ath10k *ar)
 
 out:
 	mutex_unlock(&irq_data->mtx);
+	if (cpu_int_status & MBOX_CPU_STATUS_ENABLE_ASSERT_MASK) {
+		ath10k_err(ar, "firmware crashed!\n");
+		queue_work(ar->workqueue, &ar->restart_work);
+	}
 	return ret;
 }
 
@@ -1495,8 +1499,10 @@ static int ath10k_sdio_hif_enable_intrs(struct ath10k *ar)
 	regs->int_status_en |=
 		FIELD_PREP(MBOX_INT_STATUS_ENABLE_MBOX_DATA_MASK, 1);
 
-	/* Set up the CPU Interrupt status Register */
-	regs->cpu_int_status_en = 0;
+	/* Set up the CPU Interrupt Status Register, enable CPU sourced interrupt #0
+	 * #0 is used for report assertion from target
+	 */
+	regs->cpu_int_status_en = FIELD_PREP(MBOX_CPU_STATUS_ENABLE_ASSERT_MASK, 1);
 
 	/* Set up the Error Interrupt status Register */
 	regs->err_int_status_en =
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
