Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFA71F27B7
	for <lists+ath10k@lfdr.de>; Tue,  9 Jun 2020 01:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dQdeaEdlsu0hkCbsWpuEfkgyTfLst+/Ut56+WxpDGU=; b=Yqj8yxkMYh4lTy
	5FG/OMsWLawHhtHVe6Dwd3G7ett70EC8wZUzML7H/jGbdmIO9EaOO6xtb4xVLV1L7CrmxXIcHlB3t
	7IuvHVDkeUNxi9A0GQvxraCdejbOId9T5KeKzvCet+g95L0Rat9PcXWjoMWgTYcoMOjNKATGRWBxP
	ll44uVHbvhgPbnTHCf/gOdhFyvKF0DmDJKyesxLeg2fEVWrixexSNubhWIu3ARhSRrbSJYxphvcbS
	OzbVpq/4vQ/jEvm+AigB/HGglHb30IY54JP3kTVhoRyCkP6/3mrW2w8ezxUM0Apif8gxbmtUMrrhY
	DoW6m4YldGgackJ1Njzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRX5-0006uh-6z; Mon, 08 Jun 2020 23:50:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR7h-0003Ih-0X
 for ath10k@lists.infradead.org; Mon, 08 Jun 2020 23:24:12 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A1CE20B80;
 Mon,  8 Jun 2020 23:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658648;
 bh=kG9t7AnTnL9Y93YN+7mvClU3moEy9xDxPacmFdvK0/w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rKbS3RFuzSJjzPaVpZBiSAxvixZj7Tc825KXZ3aeIJYXYtTu/W87XmdCDV4fGgdQt
 hQArhcm9Xkv0SIriiojJVx8bkVZia/r8Bb5hQ+qnsPGX/+ITrwCSUOVn7146PwBQPi
 e0Rby6vssq50+VgOWlH9VVyYGNwrcxU6jIB95YDI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 068/106] ath10k: Remove msdu from idr when
 management pkt send fails
Date: Mon,  8 Jun 2020 19:22:00 -0400
Message-Id: <20200608232238.3368589-68-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232238.3368589-1-sashal@kernel.org>
References: <20200608232238.3368589-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_162409_100669_6FDA69B7 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Rakesh Pillai <pillair@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Rakesh Pillai <pillair@codeaurora.org>

[ Upstream commit c730c477176ad4af86d9aae4d360a7ad840b073a ]

Currently when the sending of any management pkt
via wmi command fails, the packet is being unmapped
freed in the error handling. But the idr entry added,
which is used to track these packet is not getting removed.

Hence, during unload, in wmi cleanup, all the entries
in IDR are removed and the corresponding buffer is
attempted to be freed. This can cause a situation where
one packet is attempted to be freed twice.

Fix this error by rmeoving the msdu from the idr
list when the sending of a management packet over
wmi fails.

Tested HW: WCN3990
Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1

Fixes: 1807da49733e ("ath10k: wmi: add management tx by reference support over wmi")
Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Link: https://lore.kernel.org/r/1588667015-25490-1-git-send-email-pillair@codeaurora.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/mac.c     |  3 +++
 drivers/net/wireless/ath/ath10k/wmi-ops.h | 10 ++++++++++
 drivers/net/wireless/ath/ath10k/wmi-tlv.c | 15 +++++++++++++++
 3 files changed, 28 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index a09d7a07e90a..81af403c19c2 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -3852,6 +3852,9 @@ void ath10k_mgmt_over_wmi_tx_work(struct work_struct *work)
 			if (ret) {
 				ath10k_warn(ar, "failed to transmit management frame by ref via WMI: %d\n",
 					    ret);
+				/* remove this msdu from idr tracking */
+				ath10k_wmi_cleanup_mgmt_tx_send(ar, skb);
+
 				dma_unmap_single(ar->dev, paddr, skb->len,
 						 DMA_TO_DEVICE);
 				ieee80211_free_txskb(ar->hw, skb);
diff --git a/drivers/net/wireless/ath/ath10k/wmi-ops.h b/drivers/net/wireless/ath/ath10k/wmi-ops.h
index 7fd63bbf8e24..b6cd33fa79f8 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-ops.h
+++ b/drivers/net/wireless/ath/ath10k/wmi-ops.h
@@ -139,6 +139,7 @@ struct wmi_ops {
 	struct sk_buff *(*gen_mgmt_tx_send)(struct ath10k *ar,
 					    struct sk_buff *skb,
 					    dma_addr_t paddr);
+	int (*cleanup_mgmt_tx_send)(struct ath10k *ar, struct sk_buff *msdu);
 	struct sk_buff *(*gen_dbglog_cfg)(struct ath10k *ar, u64 module_enable,
 					  u32 log_level);
 	struct sk_buff *(*gen_pktlog_enable)(struct ath10k *ar, u32 filter);
@@ -431,6 +432,15 @@ ath10k_wmi_get_txbf_conf_scheme(struct ath10k *ar)
 	return ar->wmi.ops->get_txbf_conf_scheme(ar);
 }
 
+static inline int
+ath10k_wmi_cleanup_mgmt_tx_send(struct ath10k *ar, struct sk_buff *msdu)
+{
+	if (!ar->wmi.ops->cleanup_mgmt_tx_send)
+		return -EOPNOTSUPP;
+
+	return ar->wmi.ops->cleanup_mgmt_tx_send(ar, msdu);
+}
+
 static inline int
 ath10k_wmi_mgmt_tx_send(struct ath10k *ar, struct sk_buff *msdu,
 			dma_addr_t paddr)
diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.c b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
index 248decb494c2..7f435fa29f75 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.c
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
@@ -2638,6 +2638,18 @@ ath10k_wmi_tlv_op_gen_request_stats(struct ath10k *ar, u32 stats_mask)
 	return skb;
 }
 
+static int
+ath10k_wmi_tlv_op_cleanup_mgmt_tx_send(struct ath10k *ar,
+				       struct sk_buff *msdu)
+{
+	struct ath10k_skb_cb *cb = ATH10K_SKB_CB(msdu);
+	struct ath10k_wmi *wmi = &ar->wmi;
+
+	idr_remove(&wmi->mgmt_pending_tx, cb->msdu_id);
+
+	return 0;
+}
+
 static int
 ath10k_wmi_mgmt_tx_alloc_msdu_id(struct ath10k *ar, struct sk_buff *skb,
 				 dma_addr_t paddr)
@@ -2710,6 +2722,8 @@ ath10k_wmi_tlv_op_gen_mgmt_tx_send(struct ath10k *ar, struct sk_buff *msdu,
 	if (desc_id < 0)
 		goto err_free_skb;
 
+	cb->msdu_id = desc_id;
+
 	ptr = (void *)skb->data;
 	tlv = ptr;
 	tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_MGMT_TX_CMD);
@@ -3949,6 +3963,7 @@ static const struct wmi_ops wmi_tlv_ops = {
 	.gen_force_fw_hang = ath10k_wmi_tlv_op_gen_force_fw_hang,
 	/* .gen_mgmt_tx = not implemented; HTT is used */
 	.gen_mgmt_tx_send = ath10k_wmi_tlv_op_gen_mgmt_tx_send,
+	.cleanup_mgmt_tx_send = ath10k_wmi_tlv_op_cleanup_mgmt_tx_send,
 	.gen_dbglog_cfg = ath10k_wmi_tlv_op_gen_dbglog_cfg,
 	.gen_pktlog_enable = ath10k_wmi_tlv_op_gen_pktlog_enable,
 	.gen_pktlog_disable = ath10k_wmi_tlv_op_gen_pktlog_disable,
-- 
2.25.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
