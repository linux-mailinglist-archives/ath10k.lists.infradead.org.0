Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC1295E02
	for <lists+ath10k@lfdr.de>; Tue, 20 Aug 2019 13:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+qhCZgEzW38FG5TqJpJ5uLlC51T9988RL8EfBT5bmKk=; b=bX4RcBXQUVoZQLZy1QP0QR7Vef
	0geWDYnPJtJcGsvK3WBTWYCskd9wSHBJ0CSA8K9IRDcpv/AwZGMBogJ8JeaYw7JJ7Qs9DTTQA95FE
	bJQzkoqxG7u7kXcJP6hcGJZGVhTvpJ5jlFPncbRIY/3SJ3jkPdOOTCpTn93CWCxUYNlTpuckalWD+
	wNihfODOmnyaU6wNaPnugTqXF273mWNfW1uf103jeSSLoM+zCWDTVdzXRJWW1A+93iuFzqFxAqe3S
	hJGhiJfL+hWoGar9HcMeYwpPIX+tJvdBT7imINtnHC6MCpBZ4cU86onSKjmwqTuJ9cLNKPItAoWRF
	owbwVmnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02ks-0007Uj-3v; Tue, 20 Aug 2019 11:56:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02jf-0006tn-DE
 for ath10k@lists.infradead.org; Tue, 20 Aug 2019 11:55:39 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C947460AD1; Tue, 20 Aug 2019 11:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566302135;
 bh=9eBgOcG6XpiT/bdPh3BYQbcUfYhOfM5hGsxJGvegzfc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BRR/vLneR4bqsswY9IRnmQ9PamruX82es9gU2BckdRomKIshybRpjyrp6yU5rSN4q
 7Gxnezdle0nevfIj2CTpjcQQVJguqWt0ayyg5tXBa9KVIq0lIWHz1dj4rTVG0YwoRt
 HepWuWE43stjlsqAW7u13VI01PRyzteKwQRBfkz0=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 20D5860E40;
 Tue, 20 Aug 2019 11:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566302133;
 bh=9eBgOcG6XpiT/bdPh3BYQbcUfYhOfM5hGsxJGvegzfc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bA5VbGiv87DaKhMZCA/m++8DCWMorsw1UEVhzoZPXxTCRAYfhWZRaOJrzh/qJqoyk
 UxuB5Kmn76zVo6QfUcQCJK6AsjcjbyKPgDdwcAlXynvERpQzPklNV0uS1Ox9BLHnDi
 tRpzI1UIkO6/qO3oLS2Zlts21IyVz0UTe0gD50A8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 20D5860E40
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 6/7] ath10k: enable alt data of TX path for sdio
Date: Tue, 20 Aug 2019 19:55:07 +0800
Message-Id: <1566302108-18219-7-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_045537_718491_AFCD18F3 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/net/wireless/ath/ath10k/core.c | 16 ++++++++++++++++
 drivers/net/wireless/ath/ath10k/htc.c  | 11 +++++++++--
 drivers/net/wireless/ath/ath10k/htc.h  | 11 +++++++++--
 3 files changed, 34 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 351f4ed..7593d19 100644
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
@@ -701,6 +711,12 @@ static void ath10k_init_sdio(struct ath10k *ar, enum ath10k_firmware_mode mode)
 	 */
 	param &= ~HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE;
 
+	/* If alternate credit size of 1556 as used by SDIO firmware is
+	 * big enough for mac80211 / native wifi frames. enable it
+	 */
+	if (alt_data && mode == ATH10K_FIRMWARE_MODE_NORMAL)
+		param |= HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE;
+
 	if (mode == ATH10K_FIRMWARE_MODE_UTF)
 		param &= ~HI_ACS_FLAGS_SDIO_SWAP_MAILBOX_SET;
 	else
diff --git a/drivers/net/wireless/ath/ath10k/htc.c b/drivers/net/wireless/ath/ath10k/htc.c
index 96b620f..2db7f1a 100644
--- a/drivers/net/wireless/ath/ath10k/htc.c
+++ b/drivers/net/wireless/ath/ath10k/htc.c
@@ -938,12 +938,15 @@ int ath10k_htc_wait_target(struct ath10k_htc *htc)
 	 */
 	if (htc->control_resp_len >=
 	    sizeof(msg->hdr) + sizeof(msg->ready_ext)) {
+		htc->alt_data_credit_size =
+			__le16_to_cpu(msg->ready_ext.reserved) & 0x0fff;
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
@@ -1096,6 +1099,10 @@ int ath10k_htc_connect_service(struct ath10k_htc *htc,
 	ep->tx_credits = tx_alloc;
 	ep->tx_credit_size = htc->target_credit_size;
 
+	if (conn_req->service_id == ATH10K_HTC_SVC_ID_HTT_DATA_MSG &&
+	    htc->alt_data_credit_size != 0)
+		ep->tx_credit_size = htc->alt_data_credit_size;
+
 	/* copy all the callbacks */
 	ep->ep_ops = conn_req->ep_ops;
 
diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
index 621ac89..f965b5b 100644
--- a/drivers/net/wireless/ath/ath10k/htc.h
+++ b/drivers/net/wireless/ath/ath10k/htc.h
@@ -135,8 +135,14 @@ struct ath10k_htc_ready_extended {
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
@@ -373,6 +379,7 @@ struct ath10k_htc {
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
