Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA513101A43
	for <lists+ath10k@lfdr.de>; Tue, 19 Nov 2019 08:20:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iBLJsdQLkhjEQ+5j/WNiRuQblMG4rxuAoPYTGn8gQHM=; b=rbmQNDpsGSf4+mOvSB3vIux+Ha
	JiMDuTtIHl0yJf/x6LVfrZJwcie5difcyF1G7e6zonOKW+UrLh8435/aFswczv0vn+1yubmlELyQ6
	XtxyyPMKsEb1sr5TV7FBkfKIHh/Fn+ItjjMgQfZWesOQ9WJ8yIuQtXYAHHCbya7Mqd4So6Ml01xQ8
	dCnA2c13l1jHE7qBfRr3ZrNTBeKaBWcwZfcgW83O2epiz0T4UOcejNe7g1AqNNn0M+56o05LpHjIU
	g86AfAFl49NEGu2V5CkVfZV9WV//AKbwaK8DlK7NNhjNukL89P25F19rjhYHz5+k4NZzI068aaqXB
	/siIDiFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWxo8-0004Fp-9e; Tue, 19 Nov 2019 07:20:16 +0000
Received: from a27-55.smtp-out.us-west-2.amazonses.com ([54.240.27.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWxnr-0002vI-Iw
 for ath10k@lists.infradead.org; Tue, 19 Nov 2019 07:20:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574147996;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References;
 bh=QfWMUb0yyAVE/pQJIGr9kj7ihaPp/0bU19kE5RFsRVY=;
 b=QB6lT2SDBxbescosqSpMQ+SIBfSHDEz2Q7oLlNya1fWYDta4pA0pYP3J55ahxiEo
 NH8XCmN6VY8gV7e4BQSwi2jf1lsVlLu4R+Xcl5W4by3WUkQygG2odLt8omV75G9x0eg
 paZKdDv0MiVSAyh70Ztr8ECbRfK6dZ5PxJM9GEGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574147996;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:Feedback-ID;
 bh=QfWMUb0yyAVE/pQJIGr9kj7ihaPp/0bU19kE5RFsRVY=;
 b=FU+buCxlyP2DIGidup2wtbEI6NfwiQSg5s2puyrhy+h/C52mazsoo55en7UWa2fP
 N0/UZ/DAsVpYeAUdB3VxOkYxTHNsWUVINDRoC5bOIcsdh3UnquZwEGdbf1mzCOB5TRp
 LURz5MLWLIMoA8vOAi3ypQ+/6WM2Y/isqYlM4nmg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6699CC447A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=yyuwang@codeaurora.org
From: Yu Wang <yyuwang@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 1/2] ath10k: add ppdu stats support for QCA6174/QCA9377
Date: Tue, 19 Nov 2019 07:19:56 +0000
Message-ID: <0101016e82883c8e-27fd83a1-fe29-4d6d-9720-c9ca52ea23c2-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574147982-3956-1-git-send-email-yyuwang@codeaurora.org>
References: <1574147982-3956-1-git-send-email-yyuwang@codeaurora.org>
X-SES-Outgoing: 2019.11.19-54.240.27.55
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_231959_682933_E5406491 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.55 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.240.27.55 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

When QCA6174/QCA9377 working in station mode, after connected
to AP, tx bitrate is always '1.0 MBit/s' in output of command
'iw wlan0 link'.

That's because the parameters to calculate the tx bitrate are
not well updated for QCA6174/QCA9377.

To fix this issue:
1. Add processing for HTT_T2H_MSG_TYPE_PPDU_STATS_IND which includes
   the peer tx stats;
2. Map WMI_TLV_SERVICE_PEER_STATS_INFO to WMI_SERVICE_PEER_STATS to
   enable the feature.

Tested with QCA6174 PCIe with firmware WLAN.RM.4.4.1.c3-00031.
Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.

Signed-off-by: Yu Wang <yyuwang@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htt.c     |  2 +
 drivers/net/wireless/ath/ath10k/htt.h     | 30 ++++++++++++++
 drivers/net/wireless/ath/ath10k/htt_rx.c  | 65 +++++++++++++++++++++++++++++++
 drivers/net/wireless/ath/ath10k/wmi-tlv.c |  4 ++
 drivers/net/wireless/ath/ath10k/wmi-tlv.h |  3 ++
 5 files changed, 104 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/htt.c b/drivers/net/wireless/ath/ath10k/htt.c
index 7b75200..c32ab07 100644
--- a/drivers/net/wireless/ath/ath10k/htt.c
+++ b/drivers/net/wireless/ath/ath10k/htt.c
@@ -89,6 +89,8 @@ static const enum htt_t2h_msg_type htt_tlv_t2h_msg_types[] = {
 	[HTT_TLV_T2H_MSG_TYPE_RX_OFLD_PKT_ERR] =
 		HTT_T2H_MSG_TYPE_RX_OFLD_PKT_ERR,
 	[HTT_TLV_T2H_MSG_TYPE_TEST] = HTT_T2H_MSG_TYPE_TEST,
+	[HTT_TLV_T2H_MSG_TYPE_PPDU_STATS_IND] =
+		HTT_T2H_MSG_TYPE_PPDU_STATS_IND,
 };
 
 static const enum htt_t2h_msg_type htt_10_4_t2h_msg_types[] = {
diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
index 30c0800..e2aae263 100644
--- a/drivers/net/wireless/ath/ath10k/htt.h
+++ b/drivers/net/wireless/ath/ath10k/htt.h
@@ -450,6 +450,13 @@ enum htt_tlv_t2h_msg_type {
 	HTT_TLV_T2H_MSG_TYPE_WDI_IPA_OP_RESPONSE       = 0x14,
 	HTT_TLV_T2H_MSG_TYPE_CHAN_CHANGE               = 0x15,
 	HTT_TLV_T2H_MSG_TYPE_RX_OFLD_PKT_ERR           = 0x16,
+	HTT_TLV_T2H_MSG_TYPE_RATE_REPORT               = 0x17,
+	HTT_TLV_T2H_MSG_TYPE_FLOW_POOL_MAP             = 0x18,
+	HTT_TLV_T2H_MSG_TYPE_FLOW_POOL_UNMAP           = 0x19,
+	HTT_TLV_T2H_MSG_TYPE_SRING_SETUP_DONE          = 0x1a,
+	HTT_TLV_T2H_MSG_TYPE_MAP_FLOW_INFO             = 0x1b,
+	HTT_TLV_T2H_MSG_TYPE_EXT_STATS_CONF            = 0x1c,
+	HTT_TLV_T2H_MSG_TYPE_PPDU_STATS_IND            = 0x1d,
 	HTT_TLV_T2H_MSG_TYPE_TEST,
 	/* keep this last */
 	HTT_TLV_T2H_NUM_MSGS
@@ -519,6 +526,7 @@ enum htt_t2h_msg_type {
 	HTT_T2H_MSG_TYPE_TX_FETCH_CONFIRM,
 	HTT_T2H_MSG_TYPE_TX_MODE_SWITCH_IND,
 	HTT_T2H_MSG_TYPE_PEER_STATS,
+	HTT_T2H_MSG_TYPE_PPDU_STATS_IND,
 	/* keep this last */
 	HTT_T2H_NUM_MSGS
 };
@@ -1750,6 +1758,27 @@ struct htt_peer_tx_stats {
 	u8 payload[0];
 } __packed;
 
+struct htt_tx_ppdu_stats_info {
+	__le32 tlv_hdr;
+	__le32 tx_success_bytes;
+	__le32 tx_retry_bytes;
+	__le32 tx_failed_bytes;
+	u8 tx_ratecode;
+	u8 flags;
+	__le16 peer_id;
+	__le16 tx_success_msdus;
+	__le16 tx_retry_msdus;
+	__le16 tx_failed_msdus;
+	__le16 tx_duration;
+} __packed;
+
+struct htt_ppdu_stats {
+	u8 pad[3];
+	__le32 tlv_hdr;
+	__le32 num_ppdu;
+	struct htt_tx_ppdu_stats_info tx_ppdu_stats[0];
+} __packed;
+
 #define ATH10K_10_2_TX_STATS_OFFSET	136
 #define PEER_STATS_FOR_NO_OF_PPDUS	4
 
@@ -1823,6 +1852,7 @@ struct htt_resp {
 		struct htt_tx_mode_switch_ind tx_mode_switch_ind;
 		struct htt_channel_change chan_change;
 		struct htt_peer_tx_stats peer_tx_stats;
+		struct htt_ppdu_stats ppdu_stats;
 	};
 } __packed;
 
diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index d95b63f..cde2d9b 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -3723,6 +3723,68 @@ static void ath10k_htt_rx_sec_ind_handler(struct ath10k *ar,
 	spin_unlock_bh(&ar->data_lock);
 }
 
+static void
+ath10k_htt_process_ppdu_stats(struct ath10k *ar, struct sk_buff *skb)
+{
+	struct htt_resp *resp = (struct htt_resp *)skb->data;
+	struct ath10k_per_peer_tx_stats *p_tx_stats = &ar->peer_tx_stats;
+	struct htt_tx_ppdu_stats_info *tx_stats;
+	struct ieee80211_sta *sta;
+	struct ath10k_sta *arsta;
+	struct ath10k_peer *peer;
+	u32 peer_id, i;
+	u8 num_ppdu;
+
+	num_ppdu = resp->ppdu_stats.num_ppdu;
+	tx_stats = &resp->ppdu_stats.tx_ppdu_stats[0];
+	peer_id = __le16_to_cpu(tx_stats->peer_id);
+
+	rcu_read_lock();
+	spin_lock_bh(&ar->data_lock);
+
+	peer = ath10k_peer_find_by_id(ar, peer_id);
+	if (!peer)
+		goto err;
+
+	sta = peer->sta;
+	if (!sta)
+		goto err;
+
+	for (i = 0; i < num_ppdu; i++) {
+		tx_stats = &resp->ppdu_stats.tx_ppdu_stats[i];
+		arsta = (struct ath10k_sta *)sta->drv_priv;
+
+		p_tx_stats->succ_bytes =
+			__le32_to_cpu(tx_stats->tx_success_bytes);
+		p_tx_stats->retry_bytes =
+			__le32_to_cpu(tx_stats->tx_retry_bytes);
+		p_tx_stats->failed_bytes =
+			__le32_to_cpu(tx_stats->tx_failed_bytes);
+		p_tx_stats->ratecode = tx_stats->tx_ratecode;
+		p_tx_stats->flags = tx_stats->flags;
+		p_tx_stats->succ_pkts =
+			__le16_to_cpu(tx_stats->tx_success_msdus);
+		p_tx_stats->retry_pkts =
+			__le16_to_cpu(tx_stats->tx_retry_msdus);
+		p_tx_stats->failed_pkts =
+			__le16_to_cpu(tx_stats->tx_failed_msdus);
+		p_tx_stats->duration =
+			__le16_to_cpu(tx_stats->tx_duration);
+
+		ath10k_update_per_peer_tx_stats(ar, sta, p_tx_stats);
+	}
+
+	spin_unlock_bh(&ar->data_lock);
+	rcu_read_unlock();
+
+	return;
+
+err:
+	spin_unlock_bh(&ar->data_lock);
+	rcu_read_unlock();
+	ath10k_warn(ar, "invalid ppdu stats received\n");
+}
+
 bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
 {
 	struct ath10k_htt *htt = &ar->htt;
@@ -3910,6 +3972,9 @@ bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
 	case HTT_T2H_MSG_TYPE_PEER_STATS:
 		ath10k_htt_fetch_peer_stats(ar, skb);
 		break;
+	case HTT_T2H_MSG_TYPE_PPDU_STATS_IND:
+		ath10k_htt_process_ppdu_stats(ar, skb);
+		break;
 	case HTT_T2H_MSG_TYPE_EN_STATS:
 	default:
 		ath10k_warn(ar, "htt event (%d) not handled\n",
diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.c b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
index 69a1ec5..ae12a58 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.c
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
@@ -1849,6 +1849,10 @@ static struct sk_buff *ath10k_wmi_tlv_op_gen_init(struct ath10k *ar)
 	if (test_bit(WMI_SERVICE_TX_DATA_ACK_RSSI, ar->wmi.svc_map))
 		cfg->host_capab |= __cpu_to_le32(WMI_RSRC_CFG_FLAG_TX_ACK_RSSI);
 
+	if (ath10k_peer_stats_enabled(ar))
+		cfg->host_capab |=
+			__cpu_to_le32(WMI_RSRC_CFG_FLAG_TX_PPDU_STATS);
+
 	ath10k_wmi_tlv_put_host_mem_chunks(ar, chunks);
 
 	ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv init\n");
diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.h b/drivers/net/wireless/ath/ath10k/wmi-tlv.h
index 4972dc1..6635d96 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.h
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.h
@@ -16,6 +16,7 @@
 #define WMI_TLV_VDEV_PARAM_UNSUPPORTED 0
 #define WMI_TLV_MGMT_TX_FRAME_MAX_LEN	64
 
+#define WMI_RSRC_CFG_FLAG_TX_PPDU_STATS		BIT(11)
 #define WMI_RSRC_CFG_FLAG_TX_ACK_RSSI		BIT(18)
 
 enum wmi_tlv_grp_id {
@@ -1600,6 +1601,8 @@ wmi_tlv_svc_map(const __le32 *in, unsigned long *out, size_t len)
 	       WMI_SERVICE_MESH_11S, len);
 	SVCMAP(WMI_TLV_SERVICE_SYNC_DELETE_CMDS,
 	       WMI_SERVICE_SYNC_DELETE_CMDS, len);
+	SVCMAP(WMI_TLV_SERVICE_PEER_STATS_INFO,
+	       WMI_SERVICE_PEER_STATS, len);
 }
 
 static inline void
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
