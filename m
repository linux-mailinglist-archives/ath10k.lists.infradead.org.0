Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CBB15A2B6
	for <lists+ath10k@lfdr.de>; Wed, 12 Feb 2020 09:04:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4F8am82mVBVTOdJ8OQW28hp9Xoh7Y/gweh01/v057ZE=; b=Rw3b27j0fKE3s+
	NvTPsuka/w9bc1ETtVCJbdoNpzrutjD0CTSgHGTSLtyZqizigbZu8tDBGk1xZRQc5NQlh14hguTiT
	WRmI5UHUSkZMELQfm9FQ49Xs1u3R2TLpE//wIJ2dETDbYXdD8ed537S7kn5TY3BtzplV/g/9V+XNN
	kHX8+xi6DBBFbZBCybo4i+eVv6O5ndn/uZaZ33Ha91a6glUNWKTPBch8cN+Tsr+0EMZrQVKbC/RZW
	ikt1xfw/VvcXPpgZ+zoNV0mZhts77rm8Gy0nEyKv0c7ydUy/fj4M2kFwi56FZoEDBU3+tuMWuwv74
	9Ki85Vww4j9mkoTn61IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1n0u-0000Z5-V1; Wed, 12 Feb 2020 08:04:52 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1n0f-0000Qh-7s
 for ath10k@lists.infradead.org; Wed, 12 Feb 2020 08:04:39 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581494676; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=rnZMWKRJJBJG6a3AfAufzIvKsFW6TVBj8QI108OV98o=;
 b=gODwcO64X8KHKEFOsRXw7/1U3wf+v6BAHT20HTrp9rP47yGrIXIeTg5xZ8y/69mFAJFpF+83
 tlRhPUIsJlr5vhjBAyZJdNcgfrIH2PrzH3ntn/2D2785Rkrnnuqag26NiqwTbcNmOpDHji8O
 eiPeu1d5t/nBYkJh8OjZAxnsVFA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e43b194.7f8564b9a810-smtp-out-n02;
 Wed, 12 Feb 2020 08:04:36 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E64DCC433A2; Wed, 12 Feb 2020 08:04:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0D09BC447A2;
 Wed, 12 Feb 2020 08:04:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0D09BC447A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v9 1/4] ath10k: disable TX complete indication of htt for sdio
Date: Wed, 12 Feb 2020 16:04:12 +0800
Message-Id: <20200212080415.31265-2-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200212080415.31265-1-wgong@codeaurora.org>
References: <20200212080415.31265-1-wgong@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_000437_404760_FBD5FAFD 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org, wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

For sdio chip, it is high latency bus, all the TX packet's content will
be tranferred from HOST memory to firmware memory via sdio bus, then it
need much more memory in firmware than low latency bus chip, for low
latency chip, such as PCI-E, it only need to transfer the TX descriptor
via PCI-E bus to firmware memory. For sdio chip, reduce the complexity of
TX logic will help TX efficiency since its memory is limited, and it will
reduce the TX circle's time of each packet and then firmware will have more
memory for TX since TX complete also need memeory.

This patch disable TX complete indication from firmware for htt data
packet, it will not have TX complete indication from firmware to ath10k.
It will cut the cost of bus bandwidth of TX complete and make the TX
logic of firmware simpler, it results in significant performance
improvement on TX path.

Udp TX throughout is 130Mbps without this patch, and it arrives
400Mbps with this patch.

The downside of this patch is the command "iw wlan0 station dump" will
show 0 for "tx retries" and "tx failed" since all tx packet's status
is success.

This patch only effect sdio chip, it will not effect PCI, SNOC etc.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00017-QCARMSWPZ-1

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/core.c   |  5 +---
 drivers/net/wireless/ath/ath10k/hif.h    |  9 ++++++
 drivers/net/wireless/ath/ath10k/htc.c    | 10 +++++++
 drivers/net/wireless/ath/ath10k/htc.h    |  3 ++
 drivers/net/wireless/ath/ath10k/htt.c    |  5 ++++
 drivers/net/wireless/ath/ath10k/htt.h    | 13 ++++++++-
 drivers/net/wireless/ath/ath10k/htt_rx.c | 34 ++++++++++++++++++++++-
 drivers/net/wireless/ath/ath10k/htt_tx.c | 35 ++++++++++++++++++++++++
 drivers/net/wireless/ath/ath10k/hw.h     |  2 +-
 drivers/net/wireless/ath/ath10k/sdio.c   | 23 ++++++++++++++++
 10 files changed, 132 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 5ec16ce19b69..b21c5f2fa04b 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -696,10 +696,7 @@ static int ath10k_init_sdio(struct ath10k *ar, enum ath10k_firmware_mode mode)
 	if (ret)
 		return ret;
 
-	/* Data transfer is not initiated, when reduced Tx completion
-	 * is used for SDIO. disable it until fixed
-	 */
-	param &= ~HI_ACS_FLAGS_SDIO_REDUCE_TX_COMPL_SET;
+	param |= HI_ACS_FLAGS_SDIO_REDUCE_TX_COMPL_SET;
 
 	/* Alternate credit size of 1544 as used by SDIO firmware is
 	 * not big enough for mac80211 / native wifi frames. disable it
diff --git a/drivers/net/wireless/ath/ath10k/hif.h b/drivers/net/wireless/ath/ath10k/hif.h
index 496ee34a4d78..0dd8973d0acf 100644
--- a/drivers/net/wireless/ath/ath10k/hif.h
+++ b/drivers/net/wireless/ath/ath10k/hif.h
@@ -56,6 +56,8 @@ struct ath10k_hif_ops {
 
 	int (*swap_mailbox)(struct ath10k *ar);
 
+	int (*get_htt_tx_complete)(struct ath10k *ar);
+
 	int (*map_service_to_pipe)(struct ath10k *ar, u16 service_id,
 				   u8 *ul_pipe, u8 *dl_pipe);
 
@@ -144,6 +146,13 @@ static inline int ath10k_hif_swap_mailbox(struct ath10k *ar)
 	return 0;
 }
 
+static inline int ath10k_hif_get_htt_tx_complete(struct ath10k *ar)
+{
+	if (ar->hif.ops->get_htt_tx_complete)
+		return ar->hif.ops->get_htt_tx_complete(ar);
+	return 0;
+}
+
 static inline int ath10k_hif_map_service_to_pipe(struct ath10k *ar,
 						 u16 service_id,
 						 u8 *ul_pipe, u8 *dl_pipe)
diff --git a/drivers/net/wireless/ath/ath10k/htc.c b/drivers/net/wireless/ath/ath10k/htc.c
index 2248d6c022f4..61ee413d902a 100644
--- a/drivers/net/wireless/ath/ath10k/htc.c
+++ b/drivers/net/wireless/ath/ath10k/htc.c
@@ -660,6 +660,16 @@ int ath10k_htc_wait_target(struct ath10k_htc *htc)
 	return 0;
 }
 
+void ath10k_htc_change_tx_credit_flow(struct ath10k_htc *htc,
+				      enum ath10k_htc_ep_id eid,
+				      bool enable)
+{
+	struct ath10k *ar = htc->ar;
+	struct ath10k_htc_ep *ep = &ar->htc.endpoint[eid];
+
+	ep->tx_credit_flow_enabled = enable;
+}
+
 int ath10k_htc_connect_service(struct ath10k_htc *htc,
 			       struct ath10k_htc_svc_conn_req *conn_req,
 			       struct ath10k_htc_svc_conn_resp *conn_resp)
diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
index 065c82d9d689..14e5c3f712c1 100644
--- a/drivers/net/wireless/ath/ath10k/htc.h
+++ b/drivers/net/wireless/ath/ath10k/htc.h
@@ -386,6 +386,9 @@ int ath10k_htc_start(struct ath10k_htc *htc);
 int ath10k_htc_connect_service(struct ath10k_htc *htc,
 			       struct ath10k_htc_svc_conn_req  *conn_req,
 			       struct ath10k_htc_svc_conn_resp *conn_resp);
+void ath10k_htc_change_tx_credit_flow(struct ath10k_htc *htc,
+				      enum ath10k_htc_ep_id eid,
+				      bool enable);
 int ath10k_htc_send(struct ath10k_htc *htc, enum ath10k_htc_ep_id eid,
 		    struct sk_buff *packet);
 struct sk_buff *ath10k_htc_alloc_skb(struct ath10k *ar, int size);
diff --git a/drivers/net/wireless/ath/ath10k/htt.c b/drivers/net/wireless/ath/ath10k/htt.c
index c32ab07d2586..b07f14b53e72 100644
--- a/drivers/net/wireless/ath/ath10k/htt.c
+++ b/drivers/net/wireless/ath/ath10k/htt.c
@@ -10,6 +10,7 @@
 #include "htt.h"
 #include "core.h"
 #include "debug.h"
+#include "hif.h"
 
 static const enum htt_t2h_msg_type htt_main_t2h_msg_types[] = {
 	[HTT_MAIN_T2H_MSG_TYPE_VERSION_CONF] = HTT_T2H_MSG_TYPE_VERSION_CONF,
@@ -155,6 +156,10 @@ int ath10k_htt_connect(struct ath10k_htt *htt)
 
 	htt->eid = conn_resp.eid;
 
+	htt->disable_tx_comp = ath10k_hif_get_htt_tx_complete(htt->ar);
+	if (htt->disable_tx_comp)
+		ath10k_htc_change_tx_credit_flow(&htt->ar->htc, htt->eid, true);
+
 	return 0;
 }
 
diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
index d09ba4a550cc..2b3f32c929d1 100644
--- a/drivers/net/wireless/ath/ath10k/htt.h
+++ b/drivers/net/wireless/ath/ath10k/htt.h
@@ -150,9 +150,19 @@ enum htt_data_tx_desc_flags1 {
 	HTT_DATA_TX_DESC_FLAGS1_MORE_IN_BATCH    = 1 << 12,
 	HTT_DATA_TX_DESC_FLAGS1_CKSUM_L3_OFFLOAD = 1 << 13,
 	HTT_DATA_TX_DESC_FLAGS1_CKSUM_L4_OFFLOAD = 1 << 14,
-	HTT_DATA_TX_DESC_FLAGS1_RSVD1            = 1 << 15
+	HTT_DATA_TX_DESC_FLAGS1_TX_COMPLETE      = 1 << 15
 };
 
+#define HTT_TX_CREDIT_DELTA_ABS_M      0xffff0000
+#define HTT_TX_CREDIT_DELTA_ABS_S      16
+#define HTT_TX_CREDIT_DELTA_ABS_GET(word) \
+	    (((word) & HTT_TX_CREDIT_DELTA_ABS_M) >> HTT_TX_CREDIT_DELTA_ABS_S)
+
+#define HTT_TX_CREDIT_SIGN_BIT_M       0x00000100
+#define HTT_TX_CREDIT_SIGN_BIT_S       8
+#define HTT_TX_CREDIT_SIGN_BIT_GET(word) \
+	    (((word) & HTT_TX_CREDIT_SIGN_BIT_M) >> HTT_TX_CREDIT_SIGN_BIT_S)
+
 enum htt_data_tx_ext_tid {
 	HTT_DATA_TX_EXT_TID_NON_QOS_MCAST_BCAST = 16,
 	HTT_DATA_TX_EXT_TID_MGMT                = 17,
@@ -2051,6 +2061,7 @@ struct ath10k_htt {
 	bool tx_mem_allocated;
 	const struct ath10k_htt_tx_ops *tx_ops;
 	const struct ath10k_htt_rx_ops *rx_ops;
+	bool disable_tx_comp;
 };
 
 struct ath10k_htt_tx_ops {
diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index 22e78413fd44..2427adda4d9a 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -3929,6 +3929,9 @@ bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
 	}
 	case HTT_T2H_MSG_TYPE_MGMT_TX_COMPLETION: {
 		struct htt_tx_done tx_done = {};
+		struct ath10k_htt *htt = &ar->htt;
+		struct ath10k_htc *htc = &ar->htc;
+		struct ath10k_htc_ep *ep = &ar->htc.endpoint[htt->eid];
 		int status = __le32_to_cpu(resp->mgmt_tx_completion.status);
 		int info = __le32_to_cpu(resp->mgmt_tx_completion.info);
 
@@ -3954,6 +3957,12 @@ bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
 			break;
 		}
 
+		if (htt->disable_tx_comp) {
+			spin_lock_bh(&htc->tx_lock);
+			ep->tx_credits++;
+			spin_unlock_bh(&htc->tx_lock);
+		}
+
 		status = ath10k_txrx_tx_unref(htt, &tx_done);
 		if (!status) {
 			spin_lock_bh(&htt->tx_lock);
@@ -4028,8 +4037,31 @@ bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
 		skb_queue_tail(&htt->rx_in_ord_compl_q, skb);
 		return false;
 	}
-	case HTT_T2H_MSG_TYPE_TX_CREDIT_UPDATE_IND:
+	case HTT_T2H_MSG_TYPE_TX_CREDIT_UPDATE_IND: {
+		struct ath10k_htt *htt = &ar->htt;
+		struct ath10k_htc *htc = &ar->htc;
+		struct ath10k_htc_ep *ep = &ar->htc.endpoint[htt->eid];
+		u32 msg_word = __le32_to_cpu(*(__le32 *)resp);
+		int htt_credit_delta;
+
+		htt_credit_delta = HTT_TX_CREDIT_DELTA_ABS_GET(msg_word);
+		if (HTT_TX_CREDIT_SIGN_BIT_GET(msg_word))
+			htt_credit_delta = -htt_credit_delta;
+
+		ath10k_dbg(ar, ATH10K_DBG_HTT,
+			   "credit update: delta:%d\n",
+			   htt_credit_delta);
+
+		if (htt->disable_tx_comp) {
+			spin_lock_bh(&htc->tx_lock);
+			ep->tx_credits += htt_credit_delta;
+			spin_unlock_bh(&htc->tx_lock);
+			ath10k_dbg(ar, ATH10K_DBG_HTT,
+				   "credit total:%d\n",
+				   ep->tx_credits);
+		}
 		break;
+	}
 	case HTT_T2H_MSG_TYPE_CHAN_CHANGE: {
 		u32 phymode = __le32_to_cpu(resp->chan_change.phymode);
 		u32 freq = __le32_to_cpu(resp->chan_change.freq);
diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c b/drivers/net/wireless/ath/ath10k/htt_tx.c
index a182c0944cc7..8f2fda382b6b 100644
--- a/drivers/net/wireless/ath/ath10k/htt_tx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
@@ -543,7 +543,39 @@ void ath10k_htt_tx_free(struct ath10k_htt *htt)
 
 void ath10k_htt_htc_tx_complete(struct ath10k *ar, struct sk_buff *skb)
 {
+	struct ath10k_htt *htt = &ar->htt;
+	struct htt_tx_done tx_done = {0};
+	struct htt_cmd_hdr *htt_hdr;
+	struct htt_data_tx_desc *desc_hdr;
+	u16 flags1;
+	u8 msg_type;
+
+	if (htt->disable_tx_comp) {
+		htt_hdr = (struct htt_cmd_hdr *)skb->data;
+		msg_type = htt_hdr->msg_type;
+
+		if (msg_type == HTT_H2T_MSG_TYPE_TX_FRM) {
+			desc_hdr = (struct htt_data_tx_desc *)
+				(skb->data + sizeof(*htt_hdr));
+			flags1 = __le16_to_cpu(desc_hdr->flags1);
+		}
+	}
+
 	dev_kfree_skb_any(skb);
+
+	if ((!htt->disable_tx_comp) || (msg_type != HTT_H2T_MSG_TYPE_TX_FRM))
+		return;
+
+	ath10k_dbg(ar, ATH10K_DBG_HTT,
+		   "htt tx complete msdu id:%u ,flags1:%x\n",
+		   __le16_to_cpu(desc_hdr->id), flags1);
+
+	if (flags1 & HTT_DATA_TX_DESC_FLAGS1_TX_COMPLETE)
+		return;
+
+	tx_done.status = HTT_TX_COMPL_STATE_ACK;
+	tx_done.msdu_id = __le16_to_cpu(desc_hdr->id);
+	ath10k_txrx_tx_unref(&ar->htt, &tx_done);
 }
 
 void ath10k_htt_hif_tx_complete(struct ath10k *ar, struct sk_buff *skb)
@@ -1269,6 +1301,9 @@ static int ath10k_htt_tx_hl(struct ath10k_htt *htt, enum ath10k_hw_txrx_mode txm
 		flags0 |= SM(ATH10K_HW_TXRX_MGMT,
 			     HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE);
 		flags0 |= HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT;
+
+		if (htt->disable_tx_comp)
+			flags1 |= HTT_DATA_TX_DESC_FLAGS1_TX_COMPLETE;
 		break;
 	}
 
diff --git a/drivers/net/wireless/ath/ath10k/hw.h b/drivers/net/wireless/ath/ath10k/hw.h
index 21b7a2a873b0..54176a0c0479 100644
--- a/drivers/net/wireless/ath/ath10k/hw.h
+++ b/drivers/net/wireless/ath/ath10k/hw.h
@@ -765,7 +765,7 @@ ath10k_is_rssi_enable(struct ath10k_hw_params *hw,
 #define TARGET_TLV_NUM_TDLS_VDEVS		1
 #define TARGET_TLV_NUM_TIDS			((TARGET_TLV_NUM_PEERS) * 2)
 #define TARGET_TLV_NUM_MSDU_DESC		(1024 + 32)
-#define TARGET_TLV_NUM_MSDU_DESC_HL		64
+#define TARGET_TLV_NUM_MSDU_DESC_HL		1024
 #define TARGET_TLV_NUM_WOW_PATTERNS		22
 #define TARGET_TLV_MGMT_NUM_MSDU_DESC		(50)
 
diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 6fdf71b8b676..7b894dcaad2e 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -1727,6 +1727,28 @@ static int ath10k_sdio_hif_swap_mailbox(struct ath10k *ar)
 	return 0;
 }
 
+static int ath10k_sdio_get_htt_tx_complete(struct ath10k *ar)
+{
+	u32 addr, val;
+	int ret;
+
+	addr = host_interest_item_address(HI_ITEM(hi_acs_flags));
+
+	ret = ath10k_sdio_hif_diag_read32(ar, addr, &val);
+	if (ret) {
+		ath10k_warn(ar,
+			    "unable to read hi_acs_flags for htt tx comple : %d\n", ret);
+		return ret;
+	}
+
+	ret = (val & HI_ACS_FLAGS_SDIO_REDUCE_TX_COMPL_FW_ACK);
+
+	ath10k_dbg(ar, ATH10K_DBG_SDIO, "sdio reduce tx complete fw%sack\n",
+		   ret ? " " : " not ");
+
+	return ret;
+}
+
 /* HIF start/stop */
 
 static int ath10k_sdio_hif_start(struct ath10k *ar)
@@ -2001,6 +2023,7 @@ static const struct ath10k_hif_ops ath10k_sdio_hif_ops = {
 	.start			= ath10k_sdio_hif_start,
 	.stop			= ath10k_sdio_hif_stop,
 	.swap_mailbox		= ath10k_sdio_hif_swap_mailbox,
+	.get_htt_tx_complete	= ath10k_sdio_get_htt_tx_complete,
 	.map_service_to_pipe	= ath10k_sdio_hif_map_service_to_pipe,
 	.get_default_pipe	= ath10k_sdio_hif_get_default_pipe,
 	.send_complete_check	= ath10k_sdio_hif_send_complete_check,
-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
