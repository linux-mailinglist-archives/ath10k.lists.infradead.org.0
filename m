Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB4B9E65D
	for <lists+ath10k@lfdr.de>; Tue, 27 Aug 2019 13:02:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kGP+KksJ8OdOqt+jVChNA0MwXCmeegkYoY2p6PP6vhU=; b=Mr03e3NN0vLddEBjsbc2dB3pto
	zcRHouBkTuGwzM23CRXAqbKCGgC2jIaI7xaEkYur7ql9+ax9+5dlelRvehhdBXwFSCLvD3VHAiEy0
	t7OGtvbAgUfK1r+c5v/GqN1EtFu9Cqf4iNf1PyXRvZQu2EmdZV+VOnW0CAuU9dL3Xrcs0uKba/2QG
	RfkXv+d06bTx8UADjY2zQCp1n0mESFy5ERZSgRoLOaUuTuysCV0gXbW0WZHaGFNifuubId2QXjq/T
	qe+nRwKOfbGMqLt5QfuNyF+W/8ICC8hPfew5c8VRiSD9fGnQWqGNu2fFWQxOVvcLqQLTyXrLzXP2W
	TWTevddg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ZFS-0002x9-M0; Tue, 27 Aug 2019 11:02:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ZFJ-0002tg-Aq
 for ath10k@lists.infradead.org; Tue, 27 Aug 2019 11:02:42 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C341361CB0; Tue, 27 Aug 2019 11:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566903759;
 bh=vd0RTaYYfBKa1FaQDgVuXPzggY28jmRtCE8XaakNWtQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kKbs3G3nCR4NCQBEV79ICpRtvgDNX+cMrMf1iRmRPk8VmMPqpHm4UCkII6d8AR7Xk
 xOUuGSgHyg4cTOgHYVQqrxvI0FXIdKkJnz7foFZ49tHd6VVcG2UTupmPGCLiPQXeOq
 93bCI57giUif1A2ayFCto6biooGokaqrTVU3TTxQ=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AEAFE61C35;
 Tue, 27 Aug 2019 11:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566903738;
 bh=vd0RTaYYfBKa1FaQDgVuXPzggY28jmRtCE8XaakNWtQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jxMt0tOb5w4ZwIk8vsVsLoQGfbZ48vENb+CHX82obu4ZkmMK2v9dVMMVlmWzv6PpE
 /zEkCVVSUVbjVOs98U78gdaJEvRut13fSOkaKSUttpt9cl/RCyBrQR+p5zh0+KDK8R
 H9uKpr0q6o0c0L6tmI/57UaBUDvZxf7AAcW0xp/4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AEAFE61C35
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 2/7] ath10k: change max RX bundle size from 8 to 32 for sdio
Date: Tue, 27 Aug 2019 19:01:42 +0800
Message-Id: <1566903707-27536-3-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_040241_590814_11E36496 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The max bundle size support by firmware is 32, change it from 8 to 32
will help performance. This results in significant performance
improvement on RX path.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htc.h  | 6 +++++-
 drivers/net/wireless/ath/ath10k/sdio.c | 6 +++---
 drivers/net/wireless/ath/ath10k/sdio.h | 4 ++--
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
index f55d3ca..8a07da0 100644
--- a/drivers/net/wireless/ath/ath10k/htc.h
+++ b/drivers/net/wireless/ath/ath10k/htc.h
@@ -39,7 +39,7 @@
  * 4-byte aligned.
  */
 
-#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        8
+#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        32
 
 enum ath10k_htc_tx_flags {
 	ATH10K_HTC_FLAG_NEED_CREDIT_UPDATE = 0x01,
@@ -52,6 +52,10 @@ enum ath10k_htc_rx_flags {
 	ATH10K_HTC_FLAG_BUNDLE_MASK     = 0xF0
 };
 
+#define HTC_GET_BUNDLE_COUNT(flags) \
+	    (FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, (flags)) +  \
+	    (FIELD_GET(GENMASK(3, 2), (flags)) << 4))
+
 struct ath10k_htc_hdr {
 	u8 eid; /* @enum ath10k_htc_ep_id */
 	u8 flags; /* @enum ath10k_htc_tx_flags, ath10k_htc_rx_flags */
diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index eacb4d5..e5c365e 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -24,8 +24,8 @@
 #include "trace.h"
 #include "sdio.h"
 
-#define ATH10K_SDIO_DMA_BUF_SIZE	(32 * 1024)
-#define ATH10K_SDIO_VSG_BUF_SIZE	(32 * 1024)
+#define ATH10K_SDIO_DMA_BUF_SIZE	(64 * 1024)
+#define ATH10K_SDIO_VSG_BUF_SIZE	(64 * 1024)
 
 /* inlined helper functions */
 
@@ -495,7 +495,7 @@ static int ath10k_sdio_mbox_alloc_bundle(struct ath10k *ar,
 {
 	int ret, i;
 
-	*bndl_cnt = FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, htc_hdr->flags);
+	*bndl_cnt = HTC_GET_BUNDLE_COUNT(htc_hdr->flags);
 
 	if (*bndl_cnt > HTC_HOST_MAX_MSG_PER_RX_BUNDLE) {
 		ath10k_warn(ar,
diff --git a/drivers/net/wireless/ath/ath10k/sdio.h b/drivers/net/wireless/ath/ath10k/sdio.h
index 4896eca..3ca76c7 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.h
+++ b/drivers/net/wireless/ath/ath10k/sdio.h
@@ -89,10 +89,10 @@
  * to the maximum value (HTC_HOST_MAX_MSG_PER_RX_BUNDLE).
  *
  * in this case the driver must allocate
- * (HTC_HOST_MAX_MSG_PER_RX_BUNDLE * HTC_HOST_MAX_MSG_PER_RX_BUNDLE) skb's.
+ * (HTC_HOST_MAX_MSG_PER_RX_BUNDLE * 2) skb's.
  */
 #define ATH10K_SDIO_MAX_RX_MSGS \
-	(HTC_HOST_MAX_MSG_PER_RX_BUNDLE * HTC_HOST_MAX_MSG_PER_RX_BUNDLE)
+	(HTC_HOST_MAX_MSG_PER_RX_BUNDLE * 2)
 
 #define ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL   0x00000868u
 #define ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_OFF 0xFFFEFFFF
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
