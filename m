Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB171AC039
	for <lists+ath10k@lfdr.de>; Thu, 16 Apr 2020 13:51:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+RuXZCxTFi3xqY0Q2gYXeU+kuC6xVdH//oy2O+/BST4=; b=DQEH2ukgEr6fFd1nMVJ/IfsJ96
	QKENf7Rm8xy09f8+X8CfsXiDHCRqQxWzcU5cJRUE3rfeLxPD26LqoCXEe4JPB7at/VPg1tPMiYjI8
	8BvfbM3R88kbQGZ/JZaBeK0ZVDWKiz46nu27GMhmMQzZ6WHFvio6wJxd3rJYHRmx6qK1CH+t1ugmM
	q/1NZ3RFcnWx14lwC8tI8J99b038ksC88qbAgvtECnCNpKOpfMPh2m2DxUpMbcYBQbYEnAulS2EbQ
	PV+EJFwfcjjOly9nUJwXZ9snNCI+7bEqtYJyQ1YQLfHOhXYBZGTkCP7PmUZYvPvgFoDHVCv/OW98W
	+OKEgbng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP33O-0004Nf-He; Thu, 16 Apr 2020 11:51:34 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP338-00045K-OD
 for ath10k@lists.infradead.org; Thu, 16 Apr 2020 11:51:22 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587037880; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=tiOvxxU3A1QdpBBw9U/1WHsG6XKtJ/BGSVDZZpps8fM=;
 b=Oayvn6lYogNBPOkckeLL5ucdZ2A51078K7t53PBZX/eitljeyQ8wTt1IoSMlhAvD4G1pvCIn
 9J5r/FoveeHmxpBsPduiJW9QImyY1uupbaQphnf79KVF29dg6zSULDh2FdNIBiLLauNUkPLO
 SUCLRCcO8PGMSrjiEU0mbo/wbVM=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9846ab.7f8f47951458-smtp-out-n02;
 Thu, 16 Apr 2020 11:51:07 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5CC58C4478C; Thu, 16 Apr 2020 11:51:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B0357C433BA;
 Thu, 16 Apr 2020 11:51:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B0357C433BA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 2/4] ath10k: improve power save performance for sdio
Date: Thu, 16 Apr 2020 14:50:57 +0300
Message-Id: <1587037859-28873-3-git-send-email-kvalo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587037859-28873-1-git-send-email-kvalo@codeaurora.org>
References: <1587037859-28873-1-git-send-email-kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_045121_100020_1F10BCD1 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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

From: Wen Gong <wgong@codeaurora.org>

This patch is to set register to allow the mbox enter sleep status
if it does not have tx traffic and wakeup it if tx traffic arrive.
After mbox enter sleep status, the soc will enter sleep status by
firmware, this will save power. The power consume drops from about
90mW to about 10mW with this patch.

This patch only effect sdio chip.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 130 ++++++++++++++++++++++++++-------
 drivers/net/wireless/ath/ath10k/sdio.h |  16 ++++
 2 files changed, 119 insertions(+), 27 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 184b3545324e..1626976293c7 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -1361,23 +1361,117 @@ static void ath10k_rx_indication_async_work(struct work_struct *work)
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
@@ -1517,6 +1611,9 @@ static void ath10k_sdio_hif_power_down(struct ath10k *ar)
 
 	ath10k_dbg(ar, ATH10K_DBG_BOOT, "sdio power off\n");
 
+	del_timer_sync(&ar_sdio->sleep_timer);
+	ath10k_sdio_hif_set_mbox_sleep(ar, true);
+
 	/* Disable the card */
 	sdio_claim_host(ar_sdio->func);
 
@@ -1617,33 +1714,6 @@ static int ath10k_sdio_hif_enable_intrs(struct ath10k *ar)
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
@@ -1749,6 +1819,8 @@ static int ath10k_sdio_hif_start_post(struct ath10k *ar)
 		ar_sdio->swap_mbox = false;
 	}
 
+	ath10k_sdio_hif_set_mbox_sleep(ar, true);
+
 	return 0;
 }
 
@@ -2076,6 +2148,8 @@ static int ath10k_sdio_pm_suspend(struct device *device)
 	if (!device_may_wakeup(ar->dev))
 		return 0;
 
+	ath10k_sdio_hif_set_mbox_sleep(ar, true);
+
 	pm_flag = MMC_PM_KEEP_POWER;
 
 	ret = sdio_set_host_pm_flags(func, pm_flag);
@@ -2239,6 +2313,8 @@ static int ath10k_sdio_probe(struct sdio_func *func,
 		goto err_free_wq;
 	}
 
+	timer_setup(&ar_sdio->sleep_timer, ath10k_sdio_sleep_timer_handler, 0);
+
 	return 0;
 
 err_free_wq:
diff --git a/drivers/net/wireless/ath/ath10k/sdio.h b/drivers/net/wireless/ath/ath10k/sdio.h
index 1c987494ad22..29523600887d 100644
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
+#define ATH10K_CIS_READ_WAIT_4_RTC_CYCLE_IN_US	125
+#define ATH10K_CIS_RTC_STATE_ADDR		0x1138
+#define ATH10K_CIS_RTC_STATE_ON			0x01
+#define ATH10K_CIS_XTAL_SETTLE_DURATION_IN_US	1500
+#define ATH10K_CIS_READ_RETRY			10
+#define ATH10K_MIN_SLEEP_INACTIVITY_TIME_MS	50
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
2.7.4

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
