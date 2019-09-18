Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCAAB6381
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 14:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0PCuhqd2trEhAcai6pGsvtkuhnp2Y5RITBq57sflFDo=; b=AOkOal/J2L4vjp
	ztPtbHDpusXjKOyGgyoNDILWRsEr0iz5cmjCzy2eXDXUm6QZFJKpTxXPP5sVqHhFADVZuEi79qOQq
	r0BFmNi3dbW6WH4H3zEC44PTCLNIBQ/a0rRQ1eM9B6ci6XmUty0OfJCnLEb3RRmIV/uIODPOF2uNX
	sStdKO6hsQoc9awx45WhrDuzsiOL71aOlQXq7pzflMXYteTDTgQEgNW225xut7ZXrPE3JPeZS+u9Z
	2y12hY6OQj/u+1OwpZEEFS9P1VzA1whk6p1SbtIvNdD1fDH8CPvidk8NcMuJmHfcNZgrTWByL6KeK
	5TeVAO1cYfJNy+Du1gvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZJc-0006Kr-4W; Wed, 18 Sep 2019 12:44:12 +0000
Received: from dvalin.narfation.org ([213.160.73.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZJI-0006Bx-Fs
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 12:43:54 +0000
Received: from sven-desktop.home.narfation.org
 (p200300C5971113F0000000000000063E.dip0.t-ipconnect.de
 [IPv6:2003:c5:9711:13f0::63e])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 2E7271FEDA;
 Wed, 18 Sep 2019 12:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1568808866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZYlMLvNVkEdea6KljDpM49pT17zHd2GAuc1qQAd7Ev0=;
 b=ieQaAvz2q0astjy1XkJIxsgrcdz/UzA7vZjV/iPEfgXh22ecTFOp0D6c3daOIPtEptfIkv
 kZGeXXOs0dOxjY2MAwb8pG3U4iXtGOQahvulfWXAozJeUkQFu2YAHA6Zj8xz0zaQh2yZ1V
 AqFM52yfnsAcDhHTCwFtiPujEyAlWfg=
From: Sven Eckelmann <sven@narfation.org>
To: ath10k@lists.infradead.org
Subject: [RFC PATCH 2/2] ath10k: regularly fetch survey counters
Date: Wed, 18 Sep 2019 14:42:59 +0200
Message-Id: <20190918124259.17804-3-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190918124259.17804-1-sven@narfation.org>
References: <20190918124259.17804-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1568808866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZYlMLvNVkEdea6KljDpM49pT17zHd2GAuc1qQAd7Ev0=;
 b=RrzJc/Xr1r9wTeIP1eR+Wa0yqZjCu914wNV07TTtvkk5OOQSymCzn46s4foK3Vo5Dt7Gw0
 shMl9ZUCe7jtJeb+yoW3EuwsqN91I99wa+ni7BqJ3WcD514BkIm6ZwZ81dxL5bXBHutZhd
 sB0ojwf6KP5NZIniLBW3VesEMnTd9DE=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1568808866; a=rsa-sha256; cv=none;
 b=XzaHrEAlhDWbX7BZpGe+omo1j2YLJbXYg3Zu4hNYKTRfMZLrhbd8GxZhT3KaE1enM0ODL7
 aeTwPFxwtWuN1bAvfY084pBOQ8b5FQsL7Yl/HGTN4qjfIlWkMLLXdZlxVppe/TMy83cRC5
 rXmYPBzvE8pB7qQ2jNeurDiy1mEqSXA=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_054353_106987_F44F0CC3 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [213.160.73.56 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vnaralas@codeaurora.org, linux-wireless@vger.kernel.org,
 Sven Eckelmann <seckelmann@datto.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Sven Eckelmann <seckelmann@datto.com>

The survey counters from firmwares like 10.2.4 are not actually using the
full 64 bit. Instead, they only use the lower 31 bit and overflow ever
14-30s. The driver must frequently fetch the survey data and add it to the
survey data storage to avoid this problem and to present meaningful values
to the caller of .get_survey.

It is assumed for now that only the current rx_channel retrieves relevant
updates for the survey data. This should avoid that the bss channel survey
request times out too often.

Tested on QCA988x hw2.0 10.2.4-1.0-00043

Signed-off-by: Sven Eckelmann <seckelmann@datto.com>
---
 drivers/net/wireless/ath/ath10k/core.c |  8 ++++
 drivers/net/wireless/ath/ath10k/core.h |  1 +
 drivers/net/wireless/ath/ath10k/mac.c  | 52 ++++++++++++++++++++++++++
 drivers/net/wireless/ath/ath10k/mac.h  |  3 ++
 4 files changed, 64 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index dc45d16e8d21..754c46047b15 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -2788,8 +2788,14 @@ int ath10k_core_start(struct ath10k *ar, enum ath10k_firmware_mode mode,
 		goto err_hif_stop;
 	}
 
+	status = ath10k_survey_start(ar);
+	if (status)
+		goto err_debug_stop;
+
 	return 0;
 
+err_debug_stop:
+	ath10k_debug_stop(ar);
 err_hif_stop:
 	ath10k_hif_stop(ar);
 err_htt_rx_detach:
@@ -2829,6 +2835,7 @@ int ath10k_wait_for_suspend(struct ath10k *ar, u32 suspend_opt)
 void ath10k_core_stop(struct ath10k *ar)
 {
 	lockdep_assert_held(&ar->conf_mutex);
+	ath10k_survey_stop(ar);
 	ath10k_debug_stop(ar);
 
 	/* try to suspend target */
@@ -3179,6 +3186,7 @@ struct ath10k *ath10k_core_create(size_t priv_size, struct device *dev,
 	init_completion(&ar->peer_delete_done);
 
 	INIT_DELAYED_WORK(&ar->scan.timeout, ath10k_scan_timeout_work);
+	INIT_DELAYED_WORK(&ar->survey_dwork, ath10k_survey_dwork);
 
 	ar->workqueue = create_singlethread_workqueue("ath10k_wq");
 	if (!ar->workqueue)
diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
index 25c699f3a73b..66d2a1263898 100644
--- a/drivers/net/wireless/ath/ath10k/core.h
+++ b/drivers/net/wireless/ath/ath10k/core.h
@@ -1129,6 +1129,7 @@ struct ath10k {
 	struct survey_info survey[ATH10K_NUM_CHANS];
 	u64 survey_last_total_cc[ATH10K_NUM_CHANS];
 	u64 survey_last_busy_cc[ATH10K_NUM_CHANS];
+	struct delayed_work survey_dwork;
 
 	/* Channel info events are expected to come in pairs without and with
 	 * COMPLETE flag set respectively for each channel visit during scan.
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 12dad659bf68..4190b0148e97 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -24,6 +24,9 @@
 #include "wmi-ops.h"
 #include "wow.h"
 
+/* ms */
+#define ATH10K_SURVEY_INTERVAL 10000
+
 /*********/
 /* Rates */
 /*********/
@@ -7152,6 +7155,55 @@ ath10k_mac_update_bss_chan_survey(struct ath10k *ar,
 	}
 }
 
+static void ath10k_request_survey(struct ath10k *ar)
+{
+	lockdep_assert_held(&ar->conf_mutex);
+
+	if (ar->state != ATH10K_STATE_ON)
+		return;
+
+	if (!ar->rx_channel)
+		return;
+
+	ath10k_mac_update_bss_chan_survey(ar, ar->rx_channel);
+}
+
+void ath10k_survey_dwork(struct work_struct *work)
+{
+	struct ath10k *ar = container_of(work, struct ath10k,
+					 survey_dwork.work);
+
+	mutex_lock(&ar->conf_mutex);
+	ath10k_request_survey(ar);
+	mutex_unlock(&ar->conf_mutex);
+
+	queue_delayed_work(ar->workqueue, &ar->survey_dwork,
+			   msecs_to_jiffies(ATH10K_SURVEY_INTERVAL));
+}
+
+int ath10k_survey_start(struct ath10k *ar)
+{
+	lockdep_assert_held(&ar->conf_mutex);
+
+	if (ar->hw_params.cc_wraparound_type != ATH10K_HW_CC_WRAP_SHIFTED_ALL)
+		return 0;
+
+	queue_delayed_work(ar->workqueue, &ar->survey_dwork,
+			   msecs_to_jiffies(ATH10K_SURVEY_INTERVAL));
+
+	return 0;
+}
+
+void ath10k_survey_stop(struct ath10k *ar)
+{
+	lockdep_assert_held(&ar->conf_mutex);
+
+	if (ar->hw_params.cc_wraparound_type != ATH10K_HW_CC_WRAP_SHIFTED_ALL)
+		return;
+
+	cancel_delayed_work_sync(&ar->survey_dwork);
+}
+
 static int ath10k_get_survey(struct ieee80211_hw *hw, int idx,
 			     struct survey_info *survey)
 {
diff --git a/drivers/net/wireless/ath/ath10k/mac.h b/drivers/net/wireless/ath/ath10k/mac.h
index 1fe84948b868..17e4d65edbe0 100644
--- a/drivers/net/wireless/ath/ath10k/mac.h
+++ b/drivers/net/wireless/ath/ath10k/mac.h
@@ -40,6 +40,9 @@ void ath10k_offchan_tx_purge(struct ath10k *ar);
 void ath10k_offchan_tx_work(struct work_struct *work);
 void ath10k_mgmt_over_wmi_tx_purge(struct ath10k *ar);
 void ath10k_mgmt_over_wmi_tx_work(struct work_struct *work);
+void ath10k_survey_dwork(struct work_struct *work);
+int ath10k_survey_start(struct ath10k *ar);
+void ath10k_survey_stop(struct ath10k *ar);
 void ath10k_halt(struct ath10k *ar);
 void ath10k_mac_vif_beacon_free(struct ath10k_vif *arvif);
 void ath10k_drain_tx(struct ath10k *ar);
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
