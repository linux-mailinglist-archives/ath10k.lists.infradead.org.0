Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2072D114B4A
	for <lists+ath10k@lfdr.de>; Fri,  6 Dec 2019 03:57:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V0gW4Ryq2jj4lr8yUd36DhiO77VUg6iLNVpqotCCif0=; b=YsVDVDF5bWyxdN
	nXEdHFe8BQrLKRfcxuCUBQqiSJ0iId3KsiiHMt91pwW+xwz0eUD06W9Svd7aO4fnaVE+DniYlMSze
	VG9UtMNvM/o2HO/aT5vfS1oLtjejaDsjuUDL811n8itOLZrlUMvGKMzI2Iy9/d3D3VxV3VsUGIViV
	uyKvvv7FHn0tsBtDI1sqgikqr3dtTOd+wP6fT+sSHcI8we6iRLL6LwEommaQ0FMSQLpKJfcFdwP4k
	HLbJCSheSUvw0Lpldz6+LZ7wesEVRFU8VQQMs4dj6/FITaMCF3E5QB8QJpcCS6pOWa0uiAud+6iJb
	LmSweGL1FY/Xc4Y82Sig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id3oG-00011E-M4; Fri, 06 Dec 2019 02:57:36 +0000
Received: from a27-56.smtp-out.us-west-2.amazonses.com ([54.240.27.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id3oD-00010v-6T
 for ath10k@lists.infradead.org; Fri, 06 Dec 2019 02:57:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575601050;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
 bh=ajIPpI6TmxHB+qgQOu8/fIjZ6+AiD1umfrdmLEZHOo0=;
 b=bo9cL1rOKTjn+KqLEQ0xocSNqJT6XrcvtvtqwHBH18KzYOKpBy9wTB7J6/zKyXkQ
 3C/fdE1lRj16HVwkEYyIIWcAaF0RGpbs0NZurqyGslB66Dmtbo1d1LXLO2avz0V1xKr
 OEBOZU6XQU7S2WZdpyFoI1gcARBpajzjiItBKP3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575601050;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
 bh=ajIPpI6TmxHB+qgQOu8/fIjZ6+AiD1umfrdmLEZHOo0=;
 b=bX3/w6LdH6wRtfGnoUR83V890YFAgMwz7vgIoDI74cLrsBfG7T4TANqgFOU7zDsb
 RqjPx50WzgXyjPg9AsGXmyglDd33pv4A7d7K2CJ4+gVdQx6dFYNuIYb/j6s6xjCWhWo
 dTou0HSw+D+YsdGWgakvehJEKy8wtXYCQMHkh6uo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C9BA6C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: improve power save performance for sdio
Date: Fri, 6 Dec 2019 02:57:30 +0000
Message-ID: <0101016ed9241282-73dd8b35-e2e5-4f37-9b50-cf2fb6524dfc-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SES-Outgoing: 2019.12.06-54.240.27.56
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_185733_299839_81D369A2 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.56 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This patch is to set register to allow the mbox enter sleep status
if it does not have tx traffic and wakeup it if tx traffic arrive.
After mbox enter sleep status, the soc will enter sleep status by
firmware, this will save power. The power consume drops from about
90mW to about 10mW with this patch.

This patch only effect sdio chip.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/core.c |   6 ++
 drivers/net/wireless/ath/ath10k/hif.h  |   9 ++
 drivers/net/wireless/ath/ath10k/sdio.c | 129 +++++++++++++++++++------
 drivers/net/wireless/ath/ath10k/sdio.h |  16 +++
 4 files changed, 133 insertions(+), 27 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 91f131b87efc..2a9597cbf445 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -2650,6 +2650,12 @@ int ath10k_core_start(struct ath10k *ar, enum ath10k_firmware_mode mode,
 		goto err_hif_stop;
 	}
 
+	status = ath10k_hif_set_mbox_sleep(ar, true);
+	if (status) {
+		ath10k_err(ar, "failed to enable mbox sleep: %d\n", status);
+		goto err_hif_stop;
+	}
+
 	if (mode == ATH10K_FIRMWARE_MODE_NORMAL) {
 		status = ath10k_htt_connect(&ar->htt);
 		if (status) {
diff --git a/drivers/net/wireless/ath/ath10k/hif.h b/drivers/net/wireless/ath/ath10k/hif.h
index 0dd8973d0acf..8f6eb1682eb4 100644
--- a/drivers/net/wireless/ath/ath10k/hif.h
+++ b/drivers/net/wireless/ath/ath10k/hif.h
@@ -56,6 +56,8 @@ struct ath10k_hif_ops {
 
 	int (*swap_mailbox)(struct ath10k *ar);
 
+	int (*set_mbox_sleep)(struct ath10k *ar, bool enable_sleep);
+
 	int (*get_htt_tx_complete)(struct ath10k *ar);
 
 	int (*map_service_to_pipe)(struct ath10k *ar, u16 service_id,
@@ -146,6 +148,13 @@ static inline int ath10k_hif_swap_mailbox(struct ath10k *ar)
 	return 0;
 }
 
+static inline int ath10k_hif_set_mbox_sleep(struct ath10k *ar, bool enable_sleep)
+{
+	if (ar->hif.ops->set_mbox_sleep)
+		return ar->hif.ops->set_mbox_sleep(ar, enable_sleep);
+	return 0;
+}
+
 static inline int ath10k_hif_get_htt_tx_complete(struct ath10k *ar)
 {
 	if (ar->hif.ops->get_htt_tx_complete)
diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 7b894dcaad2e..af3755db7445 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -1346,23 +1346,117 @@ static void ath10k_rx_indication_async_work(struct work_struct *work)
 		napi_schedule(&ar->napi);
 }
 
+static int ath10k_sdio_read_rtc_state(struct ath10k_sdio *ar_sdio, unsigned char *state)
+{
+	struct ath10k *ar = ar_sdio->ar;
+	unsigned char rtc_state = 0;
+	int ret = 0;
+
+	rtc_state = sdio_f0_readb(ar_sdio->func, ATH10K_CIS_RTC_STATE_ADDR, &ret);
+	if (ret) {
+		ath10k_warn(ar, "failed to read rtc state: %d\n", ret);
+		return ret;
+	}
+
+	*state = rtc_state & 0x3;
+
+	return ret;
+}
+
+static int ath10k_sdio_hif_set_mbox_sleep(struct ath10k *ar, bool enable_sleep)
+{
+	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
+	u32 val;
+	int retry = ATH10K_CIS_READ_RETRY, ret = 0;
+	unsigned char rtc_state = 0;
+
+	sdio_claim_host(ar_sdio->func);
+
+	ret = ath10k_sdio_read32(ar, ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL, &val);
+	if (ret) {
+		ath10k_warn(ar, "failed to read fifo/chip control register: %d\n",
+			    ret);
+		goto release;
+	}
+
+	if (enable_sleep) {
+		val &= ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_OFF;
+		ar_sdio->mbox_state = SDIO_MBOX_SLEEP_STATE;
+	} else {
+		val |= ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_ON;
+		ar_sdio->mbox_state = SDIO_MBOX_AWAKE_STATE;
+	}
+
+	ret = ath10k_sdio_write32(ar, ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL, val);
+	if (ret) {
+		ath10k_warn(ar, "failed to write to FIFO_TIMEOUT_AND_CHIP_CONTROL: %d",
+			    ret);
+	}
+
+	if (!enable_sleep) {
+		do {
+			udelay(ATH10K_CIS_READ_WAIT_4_RTC_CYCLE_IN_US);
+			ret = ath10k_sdio_read_rtc_state(ar_sdio, &rtc_state);
+
+			if (ret) {
+				ath10k_warn(ar, "failed to disable mbox sleep: %d", ret);
+				break;
+			}
+
+			ath10k_dbg(ar, ATH10K_DBG_SDIO, "sdio read rtc state: %d\n",
+				   rtc_state);
+
+			if (rtc_state == ATH10K_CIS_RTC_STATE_ON)
+				break;
+
+			udelay(ATH10K_CIS_XTAL_SETTLE_DURATION_IN_US);
+			retry--;
+		} while (retry > 0);
+	}
+
+release:
+	sdio_release_host(ar_sdio->func);
+
+	return ret;
+}
+
+static void ath10k_sdio_sleep_timer_handler(struct timer_list *t)
+{
+	struct ath10k_sdio *ar_sdio = from_timer(ar_sdio, t, sleep_timer);
+
+	ar_sdio->mbox_state = SDIO_MBOX_REQUEST_TO_SLEEP_STATE;
+	queue_work(ar_sdio->workqueue, &ar_sdio->wr_async_work);
+}
+
 static void ath10k_sdio_write_async_work(struct work_struct *work)
 {
 	struct ath10k_sdio *ar_sdio = container_of(work, struct ath10k_sdio,
 						   wr_async_work);
 	struct ath10k *ar = ar_sdio->ar;
 	struct ath10k_sdio_bus_request *req, *tmp_req;
+	struct ath10k_mbox_info *mbox_info = &ar_sdio->mbox_info;
 
 	spin_lock_bh(&ar_sdio->wr_async_lock);
 
 	list_for_each_entry_safe(req, tmp_req, &ar_sdio->wr_asyncq, list) {
 		list_del(&req->list);
 		spin_unlock_bh(&ar_sdio->wr_async_lock);
+
+		if (req->address >= mbox_info->htc_addr &&
+		    ar_sdio->mbox_state == SDIO_MBOX_SLEEP_STATE) {
+			ath10k_sdio_hif_set_mbox_sleep(ar, false);
+			mod_timer(&ar_sdio->sleep_timer, jiffies +
+				  msecs_to_jiffies(ATH10K_MIN_SLEEP_INACTIVITY_TIME_MS));
+		}
+
 		__ath10k_sdio_write_async(ar, req);
 		spin_lock_bh(&ar_sdio->wr_async_lock);
 	}
 
 	spin_unlock_bh(&ar_sdio->wr_async_lock);
+
+	if (ar_sdio->mbox_state == SDIO_MBOX_REQUEST_TO_SLEEP_STATE)
+		ath10k_sdio_hif_set_mbox_sleep(ar, true);
 }
 
 static int ath10k_sdio_prep_async_req(struct ath10k *ar, u32 addr,
@@ -1502,6 +1596,9 @@ static void ath10k_sdio_hif_power_down(struct ath10k *ar)
 
 	ath10k_dbg(ar, ATH10K_DBG_BOOT, "sdio power off\n");
 
+	del_timer_sync(&ar_sdio->sleep_timer);
+	ath10k_sdio_hif_set_mbox_sleep(ar, true);
+
 	/* Disable the card */
 	sdio_claim_host(ar_sdio->func);
 
@@ -1602,33 +1699,6 @@ static int ath10k_sdio_hif_enable_intrs(struct ath10k *ar)
 	return ret;
 }
 
-static int ath10k_sdio_hif_set_mbox_sleep(struct ath10k *ar, bool enable_sleep)
-{
-	u32 val;
-	int ret;
-
-	ret = ath10k_sdio_read32(ar, ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL, &val);
-	if (ret) {
-		ath10k_warn(ar, "failed to read fifo/chip control register: %d\n",
-			    ret);
-		return ret;
-	}
-
-	if (enable_sleep)
-		val &= ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_OFF;
-	else
-		val |= ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_ON;
-
-	ret = ath10k_sdio_write32(ar, ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL, val);
-	if (ret) {
-		ath10k_warn(ar, "failed to write to FIFO_TIMEOUT_AND_CHIP_CONTROL: %d",
-			    ret);
-		return ret;
-	}
-
-	return 0;
-}
-
 /* HIF diagnostics */
 
 static int ath10k_sdio_hif_diag_read(struct ath10k *ar, u32 address, void *buf,
@@ -2023,6 +2093,7 @@ static const struct ath10k_hif_ops ath10k_sdio_hif_ops = {
 	.start			= ath10k_sdio_hif_start,
 	.stop			= ath10k_sdio_hif_stop,
 	.swap_mailbox		= ath10k_sdio_hif_swap_mailbox,
+	.set_mbox_sleep		= ath10k_sdio_hif_set_mbox_sleep,
 	.get_htt_tx_complete	= ath10k_sdio_get_htt_tx_complete,
 	.map_service_to_pipe	= ath10k_sdio_hif_map_service_to_pipe,
 	.get_default_pipe	= ath10k_sdio_hif_get_default_pipe,
@@ -2051,6 +2122,8 @@ static int ath10k_sdio_pm_suspend(struct device *device)
 	if (!device_may_wakeup(ar->dev))
 		return 0;
 
+	ath10k_sdio_hif_set_mbox_sleep(ar, true);
+
 	pm_flag = MMC_PM_KEEP_POWER;
 
 	ret = sdio_set_host_pm_flags(func, pm_flag);
@@ -2214,6 +2287,8 @@ static int ath10k_sdio_probe(struct sdio_func *func,
 		goto err_free_wq;
 	}
 
+	timer_setup(&ar_sdio->sleep_timer, ath10k_sdio_sleep_timer_handler, 0);
+
 	return 0;
 
 err_free_wq:
diff --git a/drivers/net/wireless/ath/ath10k/sdio.h b/drivers/net/wireless/ath/ath10k/sdio.h
index 1c987494ad22..2637e1f72d3b 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.h
+++ b/drivers/net/wireless/ath/ath10k/sdio.h
@@ -98,6 +98,20 @@
 #define ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_OFF 0xFFFEFFFF
 #define ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_ON 0x10000
 
+enum sdio_mbox_state {
+	SDIO_MBOX_UNKNOWN_STATE = 0,
+	SDIO_MBOX_REQUEST_TO_SLEEP_STATE = 1,
+	SDIO_MBOX_SLEEP_STATE = 2,
+	SDIO_MBOX_AWAKE_STATE = 3,
+};
+
+#define ATH10K_CIS_READ_WAIT_4_RTC_CYCLE_IN_US 125
+#define ATH10K_CIS_RTC_STATE_ADDR 0x1138
+#define ATH10K_CIS_RTC_STATE_ON 0x01
+#define ATH10K_CIS_XTAL_SETTLE_DURATION_IN_US 1500
+#define ATH10K_CIS_READ_RETRY 10
+#define ATH10K_MIN_SLEEP_INACTIVITY_TIME_MS 50
+
 /* TODO: remove this and use skb->cb instead, much cleaner approach */
 struct ath10k_sdio_bus_request {
 	struct list_head list;
@@ -218,6 +232,8 @@ struct ath10k_sdio {
 	spinlock_t wr_async_lock;
 
 	struct work_struct async_work_rx;
+	struct timer_list sleep_timer;
+	enum sdio_mbox_state mbox_state;
 };
 
 static inline struct ath10k_sdio *ath10k_sdio_priv(struct ath10k *ar)
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
