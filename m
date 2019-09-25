Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A771BDAA2
	for <lists+ath10k@lfdr.de>; Wed, 25 Sep 2019 11:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kVr7Ge29e12XG0KZkrULOdCK/z8kN4D5UHGkIeC0VPA=; b=VbmLRydoUxrxncdFBEnhfsBmBJ
	rHhMnoP8/PVxwWFW6p818wYkYo7fqfBIXp/Suh0/X1HxzWzCXigdGEpQd74XwqlFGeczHI0r9jTUX
	4sIWqjxtgLg/vnYsgBcg7u/KmXh+a1M0G6jbuWlpME3qf3/5D/RQkaxpbUEQSl/7F1sXOfAX4xqIC
	h0ZmfCq7s0RqEFD7/hBTQjKR7dLlEb63yoQFsEOCs9xFOzw6mQpXvEUHBC0LmuUbChAeM+lOAbQlB
	wAJHcuMKWnzVsTR+ub/NMHTzEuRmfZWSxlCeeWEI2dUmbSLDZNvbFZOfnfCVcWqRwLLCPMgXJ3ity
	9pfc5G5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3KT-0001rw-N3; Wed, 25 Sep 2019 09:11:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3Jz-0001io-9u
 for ath10k@lists.infradead.org; Wed, 25 Sep 2019 09:10:52 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 05352611CE; Wed, 25 Sep 2019 09:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569402651;
 bh=A4xpAI1LUPLBXD3eVwAwT4sM+ZsAlIBZi26VUz4gFbE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XUuGiEacjZW0gz0EL3EMDMP0VbKq7u5l+CcYTW+tTyjZbMKMtajYZ8l0RiqtYFfod
 9EXEATb74Hl3xBuNU+WYP92zh5nLzvM7ypiwR6JPDtOaJtVpP447uotrEAhN8jMYPq
 qMurCcLVSaC0XW43r1iZnciDeMkD35wd4GyjwH7A=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CFB9B61197;
 Wed, 25 Sep 2019 09:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569402650;
 bh=A4xpAI1LUPLBXD3eVwAwT4sM+ZsAlIBZi26VUz4gFbE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ihpmYu3sRIC9+NwIWTnvLn6mtVUIJ36GMTYWzGHkGjQadLVvqG0NmsTSTFGCOeeue
 xs4bb/JOUSk+8sOCvWvq5z4k6/XvH2XcjksORBxOPkCedam4JFJVQDB/TxceRrfYct
 4+u9GeTkwVlKrVikRp1xxjzhwrvHyF/wLgNNJ8uk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CFB9B61197
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v6 2/3] ath10k: change max RX bundle size from 8 to 32 for sdio
Date: Wed, 25 Sep 2019 17:10:38 +0800
Message-Id: <1569402639-31720-3-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_021051_383850_5939F6AD 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
WLAN.RMH.4.4.1-00017-QCARMSWPZ-1

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htc.h  | 12 +++++++++---
 drivers/net/wireless/ath/ath10k/sdio.c |  4 ++--
 drivers/net/wireless/ath/ath10k/sdio.h |  4 ++--
 3 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
index f55d3ca..7055156 100644
--- a/drivers/net/wireless/ath/ath10k/htc.h
+++ b/drivers/net/wireless/ath/ath10k/htc.h
@@ -39,7 +39,7 @@
  * 4-byte aligned.
  */
 
-#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        8
+#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        32
 
 enum ath10k_htc_tx_flags {
 	ATH10K_HTC_FLAG_NEED_CREDIT_UPDATE = 0x01,
@@ -48,10 +48,16 @@ enum ath10k_htc_tx_flags {
 
 enum ath10k_htc_rx_flags {
 	ATH10K_HTC_FLAGS_RECV_1MORE_BLOCK = 0x01,
-	ATH10K_HTC_FLAG_TRAILER_PRESENT = 0x02,
-	ATH10K_HTC_FLAG_BUNDLE_MASK     = 0xF0
+	ATH10K_HTC_FLAG_TRAILER_PRESENT = 0x02
 };
 
+#define ATH10K_HTC_FLAG_BUNDLE_MASK 0xF0
+#define ATH10K_HTC_BUNDLE_EXTRA_MASK GENMASK(3, 2)
+
+#define ATH10K_HTC_GET_BUNDLE_COUNT(flags) \
+	    (FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, (flags)) +  \
+	    (FIELD_GET(ATH10K_HTC_BUNDLE_EXTRA_MASK, (flags)) << 4))
+
 struct ath10k_htc_hdr {
 	u8 eid; /* @enum ath10k_htc_ep_id */
 	u8 flags; /* @enum ath10k_htc_tx_flags, ath10k_htc_rx_flags */
diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index f545626..a510101 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -24,7 +24,7 @@
 #include "trace.h"
 #include "sdio.h"
 
-#define ATH10K_SDIO_VSG_BUF_SIZE	(32 * 1024)
+#define ATH10K_SDIO_VSG_BUF_SIZE	(64 * 1024)
 
 /* inlined helper functions */
 
@@ -494,7 +494,7 @@ static int ath10k_sdio_mbox_alloc_bundle(struct ath10k *ar,
 {
 	int ret, i;
 
-	*bndl_cnt = FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, htc_hdr->flags);
+	*bndl_cnt = ATH10K_HTC_GET_BUNDLE_COUNT(htc_hdr->flags);
 
 	if (*bndl_cnt > HTC_HOST_MAX_MSG_PER_RX_BUNDLE) {
 		ath10k_warn(ar,
diff --git a/drivers/net/wireless/ath/ath10k/sdio.h b/drivers/net/wireless/ath/ath10k/sdio.h
index 8d5b09f..00bd4ca 100644
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
