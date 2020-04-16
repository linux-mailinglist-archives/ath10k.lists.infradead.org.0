Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBE51AC037
	for <lists+ath10k@lfdr.de>; Thu, 16 Apr 2020 13:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xLKAyhYt2EN3yz4wYs8ydqmg1a1Nd/Iq6QAufMrM4Nw=; b=GIVYenUi7vetFHysMF2JPJygvL
	PMStMDOxSk/zwnZZ+0Dx5PmUXMZgjZac2tJzPsr/w8SlZ+/Gat9Kz4DdYnSmebDc2K+46jihiLGUD
	kv8HaiQ1m+q+Z8Irz2ONxb+7v5f7wKSNUJLpzrSlR5+4QmG6ILoJczGbkW4JecGLBu5fR6GUBtaVj
	Rbz+HLVtgQgokpM5jw+Q9igQlh/pFi5Tn0nbObXv2d4NyhaA/YLnxeAXhqnhcrmKsZJjsnRSWoAES
	mmDlYwTYao8/QYLnZyo8aodZjod+astj/Qw++/zVZkkX3wnOwIqKo8mSB8Bhf1ygbEvnvwzpo8g5U
	dztGYkxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP33K-0004I4-0j; Thu, 16 Apr 2020 11:51:30 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP336-000493-IX
 for ath10k@lists.infradead.org; Thu, 16 Apr 2020 11:51:20 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587037879; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=xBqt5RcZppdhxknGy1uHkrWIYwkP+aBuPRN+Y85Daho=;
 b=gbdSpPcvwWJQcLKLPgUtUmcKdAgYqRV9zoJ8coPwgHGhhiiNRN1/HHpK0Hf9JIhS5lvY8Y8L
 YdJwP1WSKLh0qWCoaG8OkXk5QC4YVTUnit5WllgUOshz5u4IwjtpyJJ4+8tH61uGz9uqhE3+
 aNZJxXyMFXg4cfQ4jRAC7GYR7HY=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9846ac.7fe1d567f180-smtp-out-n04;
 Thu, 16 Apr 2020 11:51:08 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 663F1C433CB; Thu, 16 Apr 2020 11:51:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 34BEBC43636;
 Thu, 16 Apr 2020 11:51:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 34BEBC43636
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 3/4] ath10k: sdio: remove _hif_ prefix from functions not
 part of hif interface
Date: Thu, 16 Apr 2020 14:50:58 +0300
Message-Id: <1587037859-28873-4-git-send-email-kvalo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587037859-28873-1-git-send-email-kvalo@codeaurora.org>
References: <1587037859-28873-1-git-send-email-kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_045119_373317_37173182 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The _hif_ prefix should be used only on functions part of ath10k_hif_ops, so
remove it from functions which should not have it.

No functional changes, compile tested only.

Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 1626976293c7..884e1a85e29f 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -1378,7 +1378,7 @@ static int ath10k_sdio_read_rtc_state(struct ath10k_sdio *ar_sdio, unsigned char
 	return ret;
 }
 
-static int ath10k_sdio_hif_set_mbox_sleep(struct ath10k *ar, bool enable_sleep)
+static int ath10k_sdio_set_mbox_sleep(struct ath10k *ar, bool enable_sleep)
 {
 	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 	u32 val;
@@ -1459,7 +1459,7 @@ static void ath10k_sdio_write_async_work(struct work_struct *work)
 
 		if (req->address >= mbox_info->htc_addr &&
 		    ar_sdio->mbox_state == SDIO_MBOX_SLEEP_STATE) {
-			ath10k_sdio_hif_set_mbox_sleep(ar, false);
+			ath10k_sdio_set_mbox_sleep(ar, false);
 			mod_timer(&ar_sdio->sleep_timer, jiffies +
 				  msecs_to_jiffies(ATH10K_MIN_SLEEP_INACTIVITY_TIME_MS));
 		}
@@ -1471,7 +1471,7 @@ static void ath10k_sdio_write_async_work(struct work_struct *work)
 	spin_unlock_bh(&ar_sdio->wr_async_lock);
 
 	if (ar_sdio->mbox_state == SDIO_MBOX_REQUEST_TO_SLEEP_STATE)
-		ath10k_sdio_hif_set_mbox_sleep(ar, true);
+		ath10k_sdio_set_mbox_sleep(ar, true);
 }
 
 static int ath10k_sdio_prep_async_req(struct ath10k *ar, u32 addr,
@@ -1538,7 +1538,7 @@ static void ath10k_sdio_irq_handler(struct sdio_func *func)
 
 /* sdio HIF functions */
 
-static int ath10k_sdio_hif_disable_intrs(struct ath10k *ar)
+static int ath10k_sdio_disable_intrs(struct ath10k *ar)
 {
 	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 	struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
@@ -1594,7 +1594,7 @@ static int ath10k_sdio_hif_power_up(struct ath10k *ar,
 
 	ar_sdio->is_disabled = false;
 
-	ret = ath10k_sdio_hif_disable_intrs(ar);
+	ret = ath10k_sdio_disable_intrs(ar);
 	if (ret)
 		return ret;
 
@@ -1612,7 +1612,7 @@ static void ath10k_sdio_hif_power_down(struct ath10k *ar)
 	ath10k_dbg(ar, ATH10K_DBG_BOOT, "sdio power off\n");
 
 	del_timer_sync(&ar_sdio->sleep_timer);
-	ath10k_sdio_hif_set_mbox_sleep(ar, true);
+	ath10k_sdio_set_mbox_sleep(ar, true);
 
 	/* Disable the card */
 	sdio_claim_host(ar_sdio->func);
@@ -1666,7 +1666,7 @@ static int ath10k_sdio_hif_tx_sg(struct ath10k *ar, u8 pipe_id,
 	return 0;
 }
 
-static int ath10k_sdio_hif_enable_intrs(struct ath10k *ar)
+static int ath10k_sdio_enable_intrs(struct ath10k *ar)
 {
 	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 	struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
@@ -1749,8 +1749,8 @@ static int ath10k_sdio_hif_diag_read(struct ath10k *ar, u32 address, void *buf,
 	return ret;
 }
 
-static int ath10k_sdio_hif_diag_read32(struct ath10k *ar, u32 address,
-				       u32 *value)
+static int ath10k_sdio_diag_read32(struct ath10k *ar, u32 address,
+				   u32 *value)
 {
 	__le32 *val;
 	int ret;
@@ -1803,7 +1803,7 @@ static int ath10k_sdio_hif_start_post(struct ath10k *ar)
 
 	addr = host_interest_item_address(HI_ITEM(hi_acs_flags));
 
-	ret = ath10k_sdio_hif_diag_read32(ar, addr, &val);
+	ret = ath10k_sdio_diag_read32(ar, addr, &val);
 	if (ret) {
 		ath10k_warn(ar, "unable to read hi_acs_flags : %d\n", ret);
 		return ret;
@@ -1819,7 +1819,7 @@ static int ath10k_sdio_hif_start_post(struct ath10k *ar)
 		ar_sdio->swap_mbox = false;
 	}
 
-	ath10k_sdio_hif_set_mbox_sleep(ar, true);
+	ath10k_sdio_set_mbox_sleep(ar, true);
 
 	return 0;
 }
@@ -1831,7 +1831,7 @@ static int ath10k_sdio_get_htt_tx_complete(struct ath10k *ar)
 
 	addr = host_interest_item_address(HI_ITEM(hi_acs_flags));
 
-	ret = ath10k_sdio_hif_diag_read32(ar, addr, &val);
+	ret = ath10k_sdio_diag_read32(ar, addr, &val);
 	if (ret) {
 		ath10k_warn(ar,
 			    "unable to read hi_acs_flags for htt tx comple : %d\n", ret);
@@ -1860,7 +1860,7 @@ static int ath10k_sdio_hif_start(struct ath10k *ar)
 	 * request before interrupts are disabled.
 	 */
 	msleep(20);
-	ret = ath10k_sdio_hif_disable_intrs(ar);
+	ret = ath10k_sdio_disable_intrs(ar);
 	if (ret)
 		return ret;
 
@@ -1882,19 +1882,19 @@ static int ath10k_sdio_hif_start(struct ath10k *ar)
 
 	sdio_release_host(ar_sdio->func);
 
-	ret = ath10k_sdio_hif_enable_intrs(ar);
+	ret = ath10k_sdio_enable_intrs(ar);
 	if (ret)
 		ath10k_warn(ar, "failed to enable sdio interrupts: %d\n", ret);
 
 	/* Enable sleep and then disable it again */
-	ret = ath10k_sdio_hif_set_mbox_sleep(ar, true);
+	ret = ath10k_sdio_set_mbox_sleep(ar, true);
 	if (ret)
 		return ret;
 
 	/* Wait for 20ms for the written value to take effect */
 	msleep(20);
 
-	ret = ath10k_sdio_hif_set_mbox_sleep(ar, false);
+	ret = ath10k_sdio_set_mbox_sleep(ar, false);
 	if (ret)
 		return ret;
 
@@ -2148,7 +2148,7 @@ static int ath10k_sdio_pm_suspend(struct device *device)
 	if (!device_may_wakeup(ar->dev))
 		return 0;
 
-	ath10k_sdio_hif_set_mbox_sleep(ar, true);
+	ath10k_sdio_set_mbox_sleep(ar, true);
 
 	pm_flag = MMC_PM_KEEP_POWER;
 
-- 
2.7.4

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
