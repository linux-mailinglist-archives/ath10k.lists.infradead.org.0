Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6DB1A426F
	for <lists+ath10k@lfdr.de>; Fri, 10 Apr 2020 08:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6OQXD+ljbEVZp8Ma6NDgk3oYvEC2dFfoLVw7Bl377Q=; b=jwUU3tkGf6CwQb
	lnzonaWkmwLIVnTW9KvCHAJuR079phzs9oqenIoY5AXbZw488Svef1Fms3YBXxF2S2/SCMjWcEWBr
	Wlemln67XFtGRlgQtQw1D4DEymEhsy5de8HYQ1nmiF++Jy429OAE0uJTFp/DHOr9Aid1pq188AuZ9
	EvkuK3dzKZ1ktsmvDmrcXboZpxqqj+mdTvlUcd+Ivt75h4d3qcP4tOzntepPa2T/eZHS5UusoNbk+
	uPNZY2GCzuWFJjxaHrA1PYKxML9AEzLxIPtO19r1ZEUUNGfDEhksPThYhlOTGGx0JOne5Nhg7nPkY
	fWbABeWYEPCr+CDqg1EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMmwW-0003Tv-Qd; Fri, 10 Apr 2020 06:15:09 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMmwJ-0003Rz-45
 for ath10k@lists.infradead.org; Fri, 10 Apr 2020 06:14:59 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586499297; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=o3Q4LnMgy5dN/PQp5qHQJDDLmk56tYWaaZRKihUzXzk=;
 b=tglbhqOA7FS5yIgo3X9TA5k3KPccX1DeAAkxqlHzv1/H8HHTH67u9cK0958rqcUg6WPRKHYU
 dJQ8YoScxFc4/WhhOoF+jJbiZ0NB+eIoGGsHTlVF3mb532GtKfvZOwnQY51i3tj46rLt5kBN
 pTMgEefeTtU1P+31ktvpUvcfq0Q=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e900ed4.7f63ade3d6f8-smtp-out-n03;
 Fri, 10 Apr 2020 06:14:44 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AE837C433D2; Fri, 10 Apr 2020 06:14:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6BF0BC433D2;
 Fri, 10 Apr 2020 06:14:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6BF0BC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v10 1/2] ath10k: add htt TX bundle for sdio
Date: Fri, 10 Apr 2020 14:13:59 +0800
Message-Id: <20200410061400.14231-2-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200410061400.14231-1-wgong@codeaurora.org>
References: <20200410061400.14231-1-wgong@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_231457_379378_AE059BA1 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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

The transmission utilization ratio for sdio bus for small packet is
slow, because the space and time cost for sdio bus is same for large
length packet and small length packet. So the speed of data for large
length packet is higher than small length.

Test result of different length of data:

data packet(byte)   cost time(us)   calculated rate(Mbps)
      256               28                73
      512               33               124
     1024               35               234
     1792               45               318
    14336              168               682
    28672              333               688
    57344              660               695

This patch change the TX packet from single packet to a large length
bundle packet, max size is 32, it results in significant performance
improvement on TX path.

This patch only effect sdio chip, it will not effect PCI, SNOC etc.
It only enable bundle for sdio chip.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00017-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/core.c   |  14 +-
 drivers/net/wireless/ath/ath10k/core.h   |   4 +-
 drivers/net/wireless/ath/ath10k/htc.c    | 372 +++++++++++++++++++++--
 drivers/net/wireless/ath/ath10k/htc.h    |  24 +-
 drivers/net/wireless/ath/ath10k/htt.c    |   8 +
 drivers/net/wireless/ath/ath10k/htt.h    |   4 +
 drivers/net/wireless/ath/ath10k/htt_rx.c |   1 +
 drivers/net/wireless/ath/ath10k/htt_tx.c |   8 +-
 8 files changed, 398 insertions(+), 37 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 4cd50a353047..edb53ddfa90e 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -3288,6 +3288,11 @@ struct ath10k *ath10k_core_create(size_t priv_size, struct device *dev,
 	if (!ar->workqueue_aux)
 		goto err_free_wq;
 
+	ar->workqueue_tx_complete =
+		create_singlethread_workqueue("ath10k_tx_complete_wq");
+	if (!ar->workqueue_tx_complete)
+		goto err_free_aux_wq;
+
 	mutex_init(&ar->conf_mutex);
 	mutex_init(&ar->dump_mutex);
 	spin_lock_init(&ar->data_lock);
@@ -3315,7 +3320,7 @@ struct ath10k *ath10k_core_create(size_t priv_size, struct device *dev,
 
 	ret = ath10k_coredump_create(ar);
 	if (ret)
-		goto err_free_aux_wq;
+		goto err_free_tx_complete;
 
 	ret = ath10k_debug_create(ar);
 	if (ret)
@@ -3325,12 +3330,12 @@ struct ath10k *ath10k_core_create(size_t priv_size, struct device *dev,
 
 err_free_coredump:
 	ath10k_coredump_destroy(ar);
-
+err_free_tx_complete:
+	destroy_workqueue(ar->workqueue_tx_complete);
 err_free_aux_wq:
 	destroy_workqueue(ar->workqueue_aux);
 err_free_wq:
 	destroy_workqueue(ar->workqueue);
-
 err_free_mac:
 	ath10k_mac_destroy(ar);
 
@@ -3346,6 +3351,9 @@ void ath10k_core_destroy(struct ath10k *ar)
 	flush_workqueue(ar->workqueue_aux);
 	destroy_workqueue(ar->workqueue_aux);
 
+	flush_workqueue(ar->workqueue_tx_complete);
+	destroy_workqueue(ar->workqueue_tx_complete);
+
 	ath10k_debug_destroy(ar);
 	ath10k_coredump_destroy(ar);
 	ath10k_htt_tx_destroy(&ar->htt);
diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
index bd8ef576c590..d6adcbaf9616 100644
--- a/drivers/net/wireless/ath/ath10k/core.h
+++ b/drivers/net/wireless/ath/ath10k/core.h
@@ -1091,7 +1091,7 @@ struct ath10k {
 	struct workqueue_struct *workqueue;
 	/* Auxiliary workqueue */
 	struct workqueue_struct *workqueue_aux;
-
+	struct workqueue_struct *workqueue_tx_complete;
 	/* prevents concurrent FW reconfiguration */
 	struct mutex conf_mutex;
 
@@ -1132,6 +1132,8 @@ struct ath10k {
 
 	struct work_struct register_work;
 	struct work_struct restart_work;
+	struct work_struct bundle_tx_work;
+	struct work_struct tx_complete_work;
 
 	/* cycle count is reported twice for each visited channel during scan.
 	 * access protected by data_lock
diff --git a/drivers/net/wireless/ath/ath10k/htc.c b/drivers/net/wireless/ath/ath10k/htc.c
index 61ee413d902a..ed4e0add997e 100644
--- a/drivers/net/wireless/ath/ath10k/htc.c
+++ b/drivers/net/wireless/ath/ath10k/htc.c
@@ -51,10 +51,12 @@ void ath10k_htc_notify_tx_completion(struct ath10k_htc_ep *ep,
 				     struct sk_buff *skb)
 {
 	struct ath10k *ar = ep->htc->ar;
+	struct ath10k_htc_hdr *hdr;
 
 	ath10k_dbg(ar, ATH10K_DBG_HTC, "%s: ep %d skb %pK\n", __func__,
 		   ep->eid, skb);
 
+	hdr = (struct ath10k_htc_hdr *)skb->data;
 	ath10k_htc_restore_tx_skb(ep->htc, skb);
 
 	if (!ep->ep_ops.ep_tx_complete) {
@@ -63,6 +65,11 @@ void ath10k_htc_notify_tx_completion(struct ath10k_htc_ep *ep,
 		return;
 	}
 
+	if (hdr->flags & ATH10K_HTC_FLAG_SEND_BUNDLE) {
+		dev_kfree_skb_any(skb);
+		return;
+	}
+
 	ep->ep_ops.ep_tx_complete(ep->htc->ar, skb);
 }
 EXPORT_SYMBOL(ath10k_htc_notify_tx_completion);
@@ -78,7 +85,7 @@ static void ath10k_htc_prepare_tx_skb(struct ath10k_htc_ep *ep,
 	hdr->eid = ep->eid;
 	hdr->len = __cpu_to_le16(skb->len - sizeof(*hdr));
 	hdr->flags = 0;
-	if (ep->tx_credit_flow_enabled)
+	if (ep->tx_credit_flow_enabled && !ep->bundle_tx)
 		hdr->flags |= ATH10K_HTC_FLAG_NEED_CREDIT_UPDATE;
 
 	spin_lock_bh(&ep->htc->tx_lock);
@@ -86,6 +93,63 @@ static void ath10k_htc_prepare_tx_skb(struct ath10k_htc_ep *ep,
 	spin_unlock_bh(&ep->htc->tx_lock);
 }
 
+static int ath10k_htc_consume_credit(struct ath10k_htc_ep *ep,
+				     unsigned int len,
+				     bool consume)
+{
+	struct ath10k_htc *htc = ep->htc;
+	struct ath10k *ar = htc->ar;
+	enum ath10k_htc_ep_id eid = ep->eid;
+	int credits, ret = 0;
+
+	if (!ep->tx_credit_flow_enabled)
+		return 0;
+
+	credits = DIV_ROUND_UP(len, ep->tx_credit_size);
+	spin_lock_bh(&htc->tx_lock);
+
+	if (ep->tx_credits < credits) {
+		ath10k_dbg(ar, ATH10K_DBG_HTC,
+			   "htc insufficient credits ep %d required %d available %d consume %d\n",
+			   eid, credits, ep->tx_credits, consume);
+		ret = -EAGAIN;
+		goto unlock;
+	}
+
+	if (consume) {
+		ep->tx_credits -= credits;
+		ath10k_dbg(ar, ATH10K_DBG_HTC,
+			   "htc ep %d consumed %d credits total %d\n",
+			   eid, credits, ep->tx_credits);
+	}
+
+unlock:
+	spin_unlock_bh(&htc->tx_lock);
+	return ret;
+}
+
+static void ath10k_htc_release_credit(struct ath10k_htc_ep *ep, unsigned int len)
+{
+	struct ath10k_htc *htc = ep->htc;
+	struct ath10k *ar = htc->ar;
+	enum ath10k_htc_ep_id eid = ep->eid;
+	int credits;
+
+	if (!ep->tx_credit_flow_enabled)
+		return;
+
+	credits = DIV_ROUND_UP(len, ep->tx_credit_size);
+	spin_lock_bh(&htc->tx_lock);
+	ep->tx_credits += credits;
+	ath10k_dbg(ar, ATH10K_DBG_HTC,
+		   "htc ep %d reverted %d credits back total %d\n",
+		   eid, credits, ep->tx_credits);
+	spin_unlock_bh(&htc->tx_lock);
+
+	if (ep->ep_ops.ep_tx_credits)
+		ep->ep_ops.ep_tx_credits(htc->ar);
+}
+
 int ath10k_htc_send(struct ath10k_htc *htc,
 		    enum ath10k_htc_ep_id eid,
 		    struct sk_buff *skb)
@@ -95,8 +159,8 @@ int ath10k_htc_send(struct ath10k_htc *htc,
 	struct ath10k_skb_cb *skb_cb = ATH10K_SKB_CB(skb);
 	struct ath10k_hif_sg_item sg_item;
 	struct device *dev = htc->ar->dev;
-	int credits = 0;
 	int ret;
+	unsigned int skb_len;
 
 	if (htc->ar->state == ATH10K_STATE_WEDGED)
 		return -ECOMM;
@@ -108,23 +172,10 @@ int ath10k_htc_send(struct ath10k_htc *htc,
 
 	skb_push(skb, sizeof(struct ath10k_htc_hdr));
 
-	if (ep->tx_credit_flow_enabled) {
-		credits = DIV_ROUND_UP(skb->len, htc->target_credit_size);
-		spin_lock_bh(&htc->tx_lock);
-		if (ep->tx_credits < credits) {
-			ath10k_dbg(ar, ATH10K_DBG_HTC,
-				   "htc insufficient credits ep %d required %d available %d\n",
-				   eid, credits, ep->tx_credits);
-			spin_unlock_bh(&htc->tx_lock);
-			ret = -EAGAIN;
-			goto err_pull;
-		}
-		ep->tx_credits -= credits;
-		ath10k_dbg(ar, ATH10K_DBG_HTC,
-			   "htc ep %d consumed %d credits (total %d)\n",
-			   eid, credits, ep->tx_credits);
-		spin_unlock_bh(&htc->tx_lock);
-	}
+	skb_len = skb->len;
+	ret = ath10k_htc_consume_credit(ep, skb_len, true);
+	if (ret)
+		goto err_pull;
 
 	ath10k_htc_prepare_tx_skb(ep, skb);
 
@@ -155,17 +206,7 @@ int ath10k_htc_send(struct ath10k_htc *htc,
 	if (ar->bus_param.dev_type != ATH10K_DEV_TYPE_HL)
 		dma_unmap_single(dev, skb_cb->paddr, skb->len, DMA_TO_DEVICE);
 err_credits:
-	if (ep->tx_credit_flow_enabled) {
-		spin_lock_bh(&htc->tx_lock);
-		ep->tx_credits += credits;
-		ath10k_dbg(ar, ATH10K_DBG_HTC,
-			   "htc ep %d reverted %d credits back (total %d)\n",
-			   eid, credits, ep->tx_credits);
-		spin_unlock_bh(&htc->tx_lock);
-
-		if (ep->ep_ops.ep_tx_credits)
-			ep->ep_ops.ep_tx_credits(htc->ar);
-	}
+	ath10k_htc_release_credit(ep, skb_len);
 err_pull:
 	skb_pull(skb, sizeof(struct ath10k_htc_hdr));
 	return ret;
@@ -581,6 +622,273 @@ static u8 ath10k_htc_get_credit_allocation(struct ath10k_htc *htc,
 	return allocation;
 }
 
+static int ath10k_htc_send_bundle(struct ath10k_htc_ep *ep,
+				  struct sk_buff *bundle_skb,
+				  struct sk_buff_head *tx_save_head)
+{
+	struct ath10k_hif_sg_item sg_item;
+	struct ath10k_htc *htc = ep->htc;
+	struct ath10k *ar = htc->ar;
+	struct sk_buff *skb;
+	int ret, cn = 0;
+	unsigned int skb_len;
+
+	ath10k_dbg(ar, ATH10K_DBG_HTC, "bundle skb len %d\n", bundle_skb->len);
+	skb_len = bundle_skb->len;
+	ret = ath10k_htc_consume_credit(ep, skb_len, true);
+
+	if (!ret) {
+		sg_item.transfer_id = ep->eid;
+		sg_item.transfer_context = bundle_skb;
+		sg_item.vaddr = bundle_skb->data;
+		sg_item.len = bundle_skb->len;
+
+		ret = ath10k_hif_tx_sg(htc->ar, ep->ul_pipe_id, &sg_item, 1);
+		if (ret)
+			ath10k_htc_release_credit(ep, skb_len);
+	}
+
+	if (ret)
+		dev_kfree_skb_any(bundle_skb);
+
+	for (cn = 0; (skb = skb_dequeue_tail(tx_save_head)); cn++) {
+		if (ret) {
+			skb_pull(skb, sizeof(struct ath10k_htc_hdr));
+			skb_queue_head(&ep->tx_req_head, skb);
+		} else {
+			skb_queue_tail(&ep->tx_complete_head, skb);
+		}
+	}
+
+	if (!ret)
+		queue_work(ar->workqueue_tx_complete, &ar->tx_complete_work);
+
+	ath10k_dbg(ar, ATH10K_DBG_HTC,
+		   "bundle tx status %d eid %d req count %d count %d len %d\n",
+		   ret, ep->eid, skb_queue_len(&ep->tx_req_head), cn, bundle_skb->len);
+	return ret;
+}
+
+static void ath10k_htc_send_one_skb(struct ath10k_htc_ep *ep, struct sk_buff *skb)
+{
+	struct ath10k_htc *htc = ep->htc;
+	struct ath10k *ar = htc->ar;
+	int ret;
+
+	ret = ath10k_htc_send(htc, ep->eid, skb);
+
+	if (ret)
+		skb_queue_head(&ep->tx_req_head, skb);
+
+	ath10k_dbg(ar, ATH10K_DBG_HTC, "tx one status %d eid %d len %d pending count %d\n",
+		   ret, ep->eid, skb->len, skb_queue_len(&ep->tx_req_head));
+}
+
+static int ath10k_htc_send_bundle_skbs(struct ath10k_htc_ep *ep)
+{
+	struct ath10k_htc *htc = ep->htc;
+	struct sk_buff *bundle_skb, *skb;
+	struct sk_buff_head tx_save_head;
+	struct ath10k_htc_hdr *hdr;
+	u8 *bundle_buf;
+	int ret = 0, credit_pad, credit_remainder, trans_len, bundles_left = 0;
+
+	if (htc->ar->state == ATH10K_STATE_WEDGED)
+		return -ECOMM;
+
+	if (ep->tx_credit_flow_enabled &&
+	    ep->tx_credits < ATH10K_MIN_CREDIT_PER_HTC_TX_BUNDLE)
+		return 0;
+
+	bundles_left = ATH10K_MAX_MSG_PER_HTC_TX_BUNDLE * ep->tx_credit_size;
+	bundle_skb = dev_alloc_skb(bundles_left);
+
+	if (!bundle_skb)
+		return -ENOMEM;
+
+	bundle_buf = bundle_skb->data;
+	skb_queue_head_init(&tx_save_head);
+
+	while (true) {
+		skb = skb_dequeue(&ep->tx_req_head);
+		if (!skb)
+			break;
+
+		credit_pad = 0;
+		trans_len = skb->len + sizeof(*hdr);
+		credit_remainder = trans_len % ep->tx_credit_size;
+
+		if (credit_remainder != 0) {
+			credit_pad = ep->tx_credit_size - credit_remainder;
+			trans_len += credit_pad;
+		}
+
+		ret = ath10k_htc_consume_credit(ep,
+						bundle_buf + trans_len - bundle_skb->data,
+						false);
+		if (ret) {
+			skb_queue_head(&ep->tx_req_head, skb);
+			break;
+		}
+
+		if (bundles_left < trans_len) {
+			bundle_skb->len = bundle_buf - bundle_skb->data;
+			ret = ath10k_htc_send_bundle(ep, bundle_skb, &tx_save_head);
+
+			if (ret) {
+				skb_queue_head(&ep->tx_req_head, skb);
+				return ret;
+			}
+
+			if (skb_queue_len(&ep->tx_req_head) == 0) {
+				ath10k_htc_send_one_skb(ep, skb);
+				return ret;
+			}
+
+			if (ep->tx_credit_flow_enabled &&
+			    ep->tx_credits < ATH10K_MIN_CREDIT_PER_HTC_TX_BUNDLE) {
+				skb_queue_head(&ep->tx_req_head, skb);
+				return 0;
+			}
+
+			bundles_left =
+				ATH10K_MAX_MSG_PER_HTC_TX_BUNDLE * ep->tx_credit_size;
+			bundle_skb = dev_alloc_skb(bundles_left);
+
+			if (!bundle_skb) {
+				skb_queue_head(&ep->tx_req_head, skb);
+				return -ENOMEM;
+			}
+			bundle_buf = bundle_skb->data;
+			skb_queue_head_init(&tx_save_head);
+		}
+
+		skb_push(skb, sizeof(struct ath10k_htc_hdr));
+		ath10k_htc_prepare_tx_skb(ep, skb);
+
+		memcpy(bundle_buf, skb->data, skb->len);
+		hdr = (struct ath10k_htc_hdr *)bundle_buf;
+		hdr->flags |= ATH10K_HTC_FLAG_SEND_BUNDLE;
+		hdr->pad_len = __cpu_to_le16(credit_pad);
+		bundle_buf += trans_len;
+		bundles_left -= trans_len;
+		skb_queue_tail(&tx_save_head, skb);
+	}
+
+	if (bundle_buf != bundle_skb->data) {
+		bundle_skb->len = bundle_buf - bundle_skb->data;
+		ret = ath10k_htc_send_bundle(ep, bundle_skb, &tx_save_head);
+	} else {
+		dev_kfree_skb_any(bundle_skb);
+	}
+
+	return ret;
+}
+
+static void ath10k_htc_bundle_tx_work(struct work_struct *work)
+{
+	struct ath10k *ar = container_of(work, struct ath10k, bundle_tx_work);
+	struct ath10k_htc_ep *ep;
+	struct sk_buff *skb;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ar->htc.endpoint); i++) {
+		ep = &ar->htc.endpoint[i];
+
+		if (!ep->bundle_tx)
+			continue;
+
+		ath10k_dbg(ar, ATH10K_DBG_HTC, "bundle tx work eid %d count %d\n",
+			   ep->eid, skb_queue_len(&ep->tx_req_head));
+
+		if (skb_queue_len(&ep->tx_req_head) >=
+		    ATH10K_MIN_MSG_PER_HTC_TX_BUNDLE) {
+			ath10k_htc_send_bundle_skbs(ep);
+		} else {
+			skb = skb_dequeue(&ep->tx_req_head);
+
+			if (!skb)
+				continue;
+			ath10k_htc_send_one_skb(ep, skb);
+		}
+	}
+}
+
+static void ath10k_htc_tx_complete_work(struct work_struct *work)
+{
+	struct ath10k *ar = container_of(work, struct ath10k, tx_complete_work);
+	struct ath10k_htc_ep *ep;
+	enum ath10k_htc_ep_id eid;
+	struct sk_buff *skb;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ar->htc.endpoint); i++) {
+		ep = &ar->htc.endpoint[i];
+		eid = ep->eid;
+		if (ep->bundle_tx && eid == ar->htt.eid) {
+			ath10k_dbg(ar, ATH10K_DBG_HTC, "bundle tx complete eid %d pending complete count%d\n",
+				   ep->eid, skb_queue_len(&ep->tx_complete_head));
+
+			while (true) {
+				skb = skb_dequeue(&ep->tx_complete_head);
+				if (!skb)
+					break;
+				ath10k_htc_notify_tx_completion(ep, skb);
+			}
+		}
+	}
+}
+
+int ath10k_htc_send_hl(struct ath10k_htc *htc,
+		       enum ath10k_htc_ep_id eid,
+		       struct sk_buff *skb)
+{
+	struct ath10k_htc_ep *ep = &htc->endpoint[eid];
+	struct ath10k *ar = htc->ar;
+
+	ath10k_dbg(ar, ATH10K_DBG_HTC, "htc send hl eid %d bundle %d tx count %d len %d\n",
+		   eid, ep->bundle_tx, skb_queue_len(&ep->tx_req_head), skb->len);
+
+	if (ep->bundle_tx) {
+		skb_queue_tail(&ep->tx_req_head, skb);
+		queue_work(ar->workqueue, &ar->bundle_tx_work);
+		return 0;
+	} else {
+		return ath10k_htc_send(htc, eid, skb);
+	}
+}
+
+void ath10k_htc_setup_tx_req(struct ath10k_htc_ep *ep)
+{
+	if (ep->htc->max_msgs_per_htc_bundle >= ATH10K_MIN_MSG_PER_HTC_TX_BUNDLE &&
+	    !ep->bundle_tx) {
+		ep->bundle_tx = true;
+		skb_queue_head_init(&ep->tx_req_head);
+		skb_queue_head_init(&ep->tx_complete_head);
+	}
+}
+
+void ath10k_htc_stop_hl(struct ath10k *ar)
+{
+	struct ath10k_htc_ep *ep;
+	int i;
+
+	cancel_work_sync(&ar->bundle_tx_work);
+	cancel_work_sync(&ar->tx_complete_work);
+
+	for (i = 0; i < ARRAY_SIZE(ar->htc.endpoint); i++) {
+		ep = &ar->htc.endpoint[i];
+
+		if (!ep->bundle_tx)
+			continue;
+
+		ath10k_dbg(ar, ATH10K_DBG_HTC, "stop tx work eid %d count %d\n",
+			   ep->eid, skb_queue_len(&ep->tx_req_head));
+
+		skb_queue_purge(&ep->tx_req_head);
+	}
+}
+
 int ath10k_htc_wait_target(struct ath10k_htc *htc)
 {
 	struct ath10k *ar = htc->ar;
@@ -657,6 +965,9 @@ int ath10k_htc_wait_target(struct ath10k_htc *htc)
 			   htc->max_msgs_per_htc_bundle);
 	}
 
+	INIT_WORK(&ar->bundle_tx_work, ath10k_htc_bundle_tx_work);
+	INIT_WORK(&ar->tx_complete_work, ath10k_htc_tx_complete_work);
+
 	return 0;
 }
 
@@ -801,6 +1112,7 @@ int ath10k_htc_connect_service(struct ath10k_htc *htc,
 	ep->max_tx_queue_depth = conn_req->max_send_queue_depth;
 	ep->max_ep_message_len = __le16_to_cpu(resp_msg->max_msg_size);
 	ep->tx_credits = tx_alloc;
+	ep->tx_credit_size = htc->target_credit_size;
 
 	/* copy all the callbacks */
 	ep->ep_ops = conn_req->ep_ops;
diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
index 14e5c3f712c1..d045dbc42158 100644
--- a/drivers/net/wireless/ath/ath10k/htc.h
+++ b/drivers/net/wireless/ath/ath10k/htc.h
@@ -83,8 +83,14 @@ struct ath10k_htc_hdr {
 		u8 seq_no; /* for tx */
 		u8 control_byte1;
 	} __packed;
-	u8 pad0;
-	u8 pad1;
+	union {
+		__le16 pad_len;
+		struct {
+			u8 pad0;
+			u8 pad1;
+		} __packed;
+	} __packed;
+
 } __packed __aligned(4);
 
 enum ath10k_ath10k_htc_msg_id {
@@ -121,6 +127,10 @@ enum ath10k_htc_conn_svc_status {
 	ATH10K_HTC_CONN_SVC_STATUS_NO_MORE_EP   = 4
 };
 
+#define ATH10K_MAX_MSG_PER_HTC_TX_BUNDLE        32
+#define ATH10K_MIN_MSG_PER_HTC_TX_BUNDLE        2
+#define ATH10K_MIN_CREDIT_PER_HTC_TX_BUNDLE     2
+
 enum ath10k_htc_setup_complete_flags {
 	ATH10K_HTC_SETUP_COMPLETE_FLAGS_RX_BNDL_EN = 1
 };
@@ -353,7 +363,12 @@ struct ath10k_htc_ep {
 
 	u8 seq_no; /* for debugging */
 	int tx_credits;
+	int tx_credit_size;
 	bool tx_credit_flow_enabled;
+	bool bundle_tx;
+	struct sk_buff_head tx_req_head;
+	struct sk_buff_head tx_complete_head;
+
 };
 
 struct ath10k_htc_svc_tx_credits {
@@ -382,6 +397,7 @@ struct ath10k_htc {
 
 int ath10k_htc_init(struct ath10k *ar);
 int ath10k_htc_wait_target(struct ath10k_htc *htc);
+void ath10k_htc_setup_tx_req(struct ath10k_htc_ep *ep);
 int ath10k_htc_start(struct ath10k_htc *htc);
 int ath10k_htc_connect_service(struct ath10k_htc *htc,
 			       struct ath10k_htc_svc_conn_req  *conn_req,
@@ -391,6 +407,10 @@ void ath10k_htc_change_tx_credit_flow(struct ath10k_htc *htc,
 				      bool enable);
 int ath10k_htc_send(struct ath10k_htc *htc, enum ath10k_htc_ep_id eid,
 		    struct sk_buff *packet);
+void ath10k_htc_stop_hl(struct ath10k *ar);
+
+int ath10k_htc_send_hl(struct ath10k_htc *htc, enum ath10k_htc_ep_id eid,
+		       struct sk_buff *packet);
 struct sk_buff *ath10k_htc_alloc_skb(struct ath10k *ar, int size);
 void ath10k_htc_tx_completion_handler(struct ath10k *ar, struct sk_buff *skb);
 void ath10k_htc_rx_completion_handler(struct ath10k *ar, struct sk_buff *skb);
diff --git a/drivers/net/wireless/ath/ath10k/htt.c b/drivers/net/wireless/ath/ath10k/htt.c
index 4354bf285ff1..127b4e4980ef 100644
--- a/drivers/net/wireless/ath/ath10k/htt.c
+++ b/drivers/net/wireless/ath/ath10k/htt.c
@@ -135,6 +135,8 @@ int ath10k_htt_connect(struct ath10k_htt *htt)
 {
 	struct ath10k_htc_svc_conn_req conn_req;
 	struct ath10k_htc_svc_conn_resp conn_resp;
+	struct ath10k *ar = htt->ar;
+	struct ath10k_htc_ep *ep;
 	int status;
 
 	memset(&conn_req, 0, sizeof(conn_req));
@@ -142,6 +144,7 @@ int ath10k_htt_connect(struct ath10k_htt *htt)
 
 	conn_req.ep_ops.ep_tx_complete = ath10k_htt_htc_tx_complete;
 	conn_req.ep_ops.ep_rx_complete = ath10k_htt_htc_t2h_msg_handler;
+	conn_req.ep_ops.ep_tx_credits = ath10k_htt_op_ep_tx_credits;
 
 	/* connect to control service */
 	conn_req.service_id = ATH10K_HTC_SVC_ID_HTT_DATA_MSG;
@@ -154,6 +157,11 @@ int ath10k_htt_connect(struct ath10k_htt *htt)
 
 	htt->eid = conn_resp.eid;
 
+	if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL) {
+		ep = &ar->htc.endpoint[htt->eid];
+		ath10k_htc_setup_tx_req(ep);
+	}
+
 	htt->disable_tx_comp = ath10k_hif_get_htt_tx_complete(htt->ar);
 	if (htt->disable_tx_comp)
 		ath10k_htc_change_tx_credit_flow(&htt->ar->htc, htt->eid, true);
diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
index b88c2f3787d8..462a25b3056d 100644
--- a/drivers/net/wireless/ath/ath10k/htt.h
+++ b/drivers/net/wireless/ath/ath10k/htt.h
@@ -2032,6 +2032,9 @@ struct ath10k_htt {
 	const struct ath10k_htt_tx_ops *tx_ops;
 	const struct ath10k_htt_rx_ops *rx_ops;
 	bool disable_tx_comp;
+	bool bundle_tx;
+	struct sk_buff_head tx_req_head;
+	struct sk_buff_head tx_complete_head;
 };
 
 struct ath10k_htt_tx_ops {
@@ -2278,6 +2281,7 @@ int ath10k_htt_tx_fetch_resp(struct ath10k *ar,
 			     __le16 fetch_seq_num,
 			     struct htt_tx_fetch_record *records,
 			     size_t num_records);
+void ath10k_htt_op_ep_tx_credits(struct ath10k *ar);
 
 void ath10k_htt_tx_txq_update(struct ieee80211_hw *hw,
 			      struct ieee80211_txq *txq);
diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index 64e45bfa5d05..816af1a8ad69 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -3919,6 +3919,7 @@ bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
 			ath10k_dbg(ar, ATH10K_DBG_HTT,
 				   "htt credit total %d\n",
 				   ep->tx_credits);
+			ep->ep_ops.ep_tx_credits(htc->ar);
 		}
 		break;
 	}
diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c b/drivers/net/wireless/ath/ath10k/htt_tx.c
index bcecf05fe2fd..ff044426c337 100644
--- a/drivers/net/wireless/ath/ath10k/htt_tx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
@@ -531,6 +531,7 @@ void ath10k_htt_tx_destroy(struct ath10k_htt *htt)
 
 void ath10k_htt_tx_stop(struct ath10k_htt *htt)
 {
+	ath10k_htc_stop_hl(htt->ar);
 	idr_for_each(&htt->pending_tx, ath10k_htt_tx_clean_up_pending, htt->ar);
 	idr_destroy(&htt->pending_tx);
 }
@@ -541,6 +542,11 @@ void ath10k_htt_tx_free(struct ath10k_htt *htt)
 	ath10k_htt_tx_destroy(htt);
 }
 
+void ath10k_htt_op_ep_tx_credits(struct ath10k *ar)
+{
+	queue_work(ar->workqueue, &ar->bundle_tx_work);
+}
+
 void ath10k_htt_htc_tx_complete(struct ath10k *ar, struct sk_buff *skb)
 {
 	struct ath10k_htt *htt = &ar->htt;
@@ -1379,7 +1385,7 @@ static int ath10k_htt_tx_hl(struct ath10k_htt *htt, enum ath10k_hw_txrx_mode txm
 	 */
 	tx_desc->peerid = __cpu_to_le32(HTT_INVALID_PEERID);
 
-	res = ath10k_htc_send(&htt->ar->htc, htt->eid, msdu);
+	res = ath10k_htc_send_hl(&htt->ar->htc, htt->eid, msdu);
 
 out:
 	return res;
-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
