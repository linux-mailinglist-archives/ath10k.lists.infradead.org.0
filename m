Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A11A9FE7
	for <lists+ath10k@lfdr.de>; Thu,  5 Sep 2019 12:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xsGwrYArIamnM1K88xpEASx+ZaLAxDgMR0R29zH2Hog=; b=IdEhFvUP/zC/apayhLFR3Qr5nF
	IEc41ENVOSxthqciO4DY9F4ynpv3kNL00RMubONJ1kUMoFt6Yg6kwk7gcEJffcR72ydEDQmJkWItl
	0457wdr57ZvN15KovRiToAnEIFRzesbt9mQRTXunaYIzqpsLAQS/4/YwHPv/oqWiJamxq657zK+J5
	knIOIxAzkuTl3YE81nNKHzjoczRtwZ99mLOin6yygE+3BgfXUNjtrv/bG4ksEQ1EoafgvisiTNINi
	PGXO26ErTGh2KsbDLZbc+l5ibCPpxPmGxlcbeSAdSIDv4W4gK6FJRQNUCsznR5Tie7tYC0F85wm6M
	v9vuCGdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pAf-0006Zf-IO; Thu, 05 Sep 2019 10:39:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pAF-0006CN-Uk
 for ath10k@lists.infradead.org; Thu, 05 Sep 2019 10:38:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9849A611DC; Thu,  5 Sep 2019 10:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567679935;
 bh=VZ84yOB8y6PwipP/kqFeHq8JvHmFyBpEYj6N2+wwtv8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CwimGWn5ZQgMIUUrCns/GKOAFaS560tnRt2uoYHyxpk9uW9u6qzuP/OWdqMrtV+69
 yX7NM/zPTaUsqGHnJhUUFgt9/SnTghuPg/81a+t9H5eEVU1DmQjFmVt4phpkFvcLYE
 xHZOKiKInBeXR5wIMra516d5CYZ8lxxoHupF4a0I=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5354C61197;
 Thu,  5 Sep 2019 10:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567679935;
 bh=VZ84yOB8y6PwipP/kqFeHq8JvHmFyBpEYj6N2+wwtv8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CwimGWn5ZQgMIUUrCns/GKOAFaS560tnRt2uoYHyxpk9uW9u6qzuP/OWdqMrtV+69
 yX7NM/zPTaUsqGHnJhUUFgt9/SnTghuPg/81a+t9H5eEVU1DmQjFmVt4phpkFvcLYE
 xHZOKiKInBeXR5wIMra516d5CYZ8lxxoHupF4a0I=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5354C61197
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v5 7/8] ath10k: enable alt data of TX path for sdio
Date: Thu,  5 Sep 2019 18:38:12 +0800
Message-Id: <1567679893-14029-8-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_033856_129364_B7D4609B 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The default credit size is 1792 bytes, but the IP mtu is 1500 bytes,
then it has about 290 bytes's waste for each data packet on sdio
transfer path for TX bundle, it will reduce the transmission utilization
ratio for data packet.

This patch enable the small credit size in firmware, firmware will use
the new credit size 1556 bytes, it will increase the transmission
utilization ratio for data packet on TX patch. It results in significant
performance improvement on TX path.

This patch only effect sdio chip, it will not effect PCI, SNOC etc.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00017-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
v2: no change
v3: change some code style
v4: add macro ATH10K_HTC_MSG_READY_EXT_ALT_DATA_MASK
v5: no change
 drivers/net/wireless/ath/ath10k/core.c | 19 +++++++++++++++++--
 drivers/net/wireless/ath/ath10k/htc.c  | 12 ++++++++++--
 drivers/net/wireless/ath/ath10k/htc.h  | 13 +++++++++++--
 3 files changed, 38 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 9841533..9fd07c7 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -31,6 +31,7 @@
 static unsigned int ath10k_cryptmode_param;
 static bool uart_print;
 static bool disable_tx_comp = true;
+static bool alt_data = true;
 static bool skip_otp;
 static bool rawmode;
 static bool fw_diag_log;
@@ -45,6 +46,15 @@
 
 /* If upper layer need the TX complete status, it can enable tx complete */
 module_param(disable_tx_comp, bool, 0644);
+
+/* alt_data is only used for sdio chip, for previous version of firmware, its
+ * alt data size is 1544 which is not enough for native wifi, so it need to
+ * alt_data for the firmware.
+ * If the firmware has changed alt data size to 1556, then it can enable
+ * alt_data for the firmware.
+ * alt_data will not effect PCI, SNOC etc.
+ */
+module_param(alt_data, bool, 0644);
 module_param(skip_otp, bool, 0644);
 module_param(rawmode, bool, 0644);
 module_param(fw_diag_log, bool, 0644);
@@ -698,9 +708,14 @@ static void ath10k_init_sdio(struct ath10k *ar, enum ath10k_firmware_mode mode)
 		param &= ~HI_ACS_FLAGS_SDIO_REDUCE_TX_COMPL_SET;
 
 	/* Alternate credit size of 1544 as used by SDIO firmware is
-	 * not big enough for mac80211 / native wifi frames. disable it
+	 * not big enough for mac80211 / native wifi frames. disable it.
+	 * If alternate credit size of 1556 as used by SDIO firmware is
+	 * big enough for mac80211 / native wifi frames. enable it
 	 */
-	param &= ~HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE;
+	if (alt_data && mode == ATH10K_FIRMWARE_MODE_NORMAL)
+		param |= HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE;
+	else
+		param &= ~HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE;
 
 	if (mode == ATH10K_FIRMWARE_MODE_UTF)
 		param &= ~HI_ACS_FLAGS_SDIO_SWAP_MAILBOX_SET;
diff --git a/drivers/net/wireless/ath/ath10k/htc.c b/drivers/net/wireless/ath/ath10k/htc.c
index 3e551e4..3bf5722 100644
--- a/drivers/net/wireless/ath/ath10k/htc.c
+++ b/drivers/net/wireless/ath/ath10k/htc.c
@@ -941,12 +941,16 @@ int ath10k_htc_wait_target(struct ath10k_htc *htc)
 	 */
 	if (htc->control_resp_len >=
 	    sizeof(msg->hdr) + sizeof(msg->ready_ext)) {
+		htc->alt_data_credit_size =
+			__le16_to_cpu(msg->ready_ext.reserved) &
+			ATH10K_HTC_MSG_READY_EXT_ALT_DATA_MASK;
 		htc->max_msgs_per_htc_bundle =
 			min_t(u8, msg->ready_ext.max_msgs_per_htc_bundle,
 			      HTC_HOST_MAX_MSG_PER_RX_BUNDLE);
 		ath10k_dbg(ar, ATH10K_DBG_HTC,
-			   "Extended ready message. RX bundle size: %d\n",
-			   htc->max_msgs_per_htc_bundle);
+			   "Extended ready message. RX bundle size: %d, alt size:%d\n",
+			   htc->max_msgs_per_htc_bundle,
+			   htc->alt_data_credit_size);
 	}
 
 	INIT_WORK(&ar->bundle_tx_work, ath10k_htc_bundle_tx_work);
@@ -1098,6 +1102,10 @@ int ath10k_htc_connect_service(struct ath10k_htc *htc,
 	ep->tx_credits = tx_alloc;
 	ep->tx_credit_size = htc->target_credit_size;
 
+	if (conn_req->service_id == ATH10K_HTC_SVC_ID_HTT_DATA_MSG &&
+	    htc->alt_data_credit_size != 0)
+		ep->tx_credit_size = htc->alt_data_credit_size;
+
 	/* copy all the callbacks */
 	ep->ep_ops = conn_req->ep_ops;
 
diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
index ec4957a..5c21ec7 100644
--- a/drivers/net/wireless/ath/ath10k/htc.h
+++ b/drivers/net/wireless/ath/ath10k/htc.h
@@ -109,6 +109,8 @@ enum ath10k_htc_conn_flags {
 #define ATH10K_HTC_CONN_FLAGS_RECV_ALLOC_LSB  8
 };
 
+#define ATH10K_HTC_MSG_READY_EXT_ALT_DATA_MASK 0xFFF
+
 enum ath10k_htc_conn_svc_status {
 	ATH10K_HTC_CONN_SVC_STATUS_SUCCESS      = 0,
 	ATH10K_HTC_CONN_SVC_STATUS_NOT_FOUND    = 1,
@@ -141,8 +143,14 @@ struct ath10k_htc_ready_extended {
 	struct ath10k_htc_ready base;
 	u8 htc_version; /* @enum ath10k_htc_version */
 	u8 max_msgs_per_htc_bundle;
-	u8 pad0;
-	u8 pad1;
+	union {
+		__le16 reserved;
+		struct {
+			u8 pad0;
+			u8 pad1;
+		} __packed;
+	} __packed;
+
 } __packed;
 
 struct ath10k_htc_conn_svc {
@@ -379,6 +387,7 @@ struct ath10k_htc {
 	int total_transmit_credits;
 	int target_credit_size;
 	u8 max_msgs_per_htc_bundle;
+	int alt_data_credit_size;
 };
 
 int ath10k_htc_init(struct ath10k *ar);
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
