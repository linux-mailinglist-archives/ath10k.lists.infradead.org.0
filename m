Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6AA1C3D26
	for <lists+ath10k@lfdr.de>; Mon,  4 May 2020 16:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=c8NwowIxWP8thIzw60M0Vmd6onhhCZ39Pmyryr/f/y0=; b=D2p
	zitIosdXrTrW/esn0pzMWF2ZV2CxpQ1RsAxcrboadaUTWUMDakkh/i7phvFUwfuVw30eF5fizoDjR
	dTe5iwKx4PF0b+kzNUz3kO+pvnJeY5H325Dnt5vIRvh7mV+HBZoCRykYkAOfXllN25TTKKLUWTP1p
	Vj4QahGCFwIjekfAWeTS+JL0ID1b2C4aQeCOzveOZRO/vIWPXOuuGOZ5MqhyibkvS4Rt6j22cJD3B
	/HTE1J3gTWFIaKmg3NLD5ITEzbXtcyHaNiOamZKoFZKjU92aYEDBM0O1VyMa6+4X6QA7/huvD/qEH
	pXjVXVHj/cgvHpiw0uveNaKQhtYFF4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcBV-0000Qz-0J; Mon, 04 May 2020 14:35:05 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcBN-0000PS-7T
 for ath10k@lists.infradead.org; Mon, 04 May 2020 14:35:00 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588602898; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=4OlRcGETyCmH3CyivLm0F5Fs+YC/4OSoLg+kCNZVH5w=;
 b=m9+0hLHRFRR22RvHLvfKy2JO9P1wt+CFAuOza8lBY0+nx4CUbfBce8V0EhxOsiV700jKr11i
 62AVr2lEU4fK8SuOhJcfVdmEVS91jgFcauQsJf4UxM6Q4Q5s0fQgUzVk05bp+FhfAtzHXYko
 otGRIRm2V3Q/KShLOoy8sAlqJzw=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb02806.7f221521ed88-smtp-out-n01;
 Mon, 04 May 2020 14:34:46 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 06E8EC433F2; Mon,  4 May 2020 14:34:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from pillair-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CA1A7C433D2;
 Mon,  4 May 2020 14:34:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CA1A7C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: Rakesh Pillai <pillair@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: Remove msdu from idr when management pkt send fails
Date: Mon,  4 May 2020 20:04:39 +0530
Message-Id: <1588602879-14098-1-git-send-email-pillair@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_073458_730543_19694AD0 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rakesh Pillai <pillair@codeaurora.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

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
---
 drivers/net/wireless/ath/ath10k/wmi-ops.h |  7 ++++++-
 drivers/net/wireless/ath/ath10k/wmi-tlv.c | 15 +++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/wmi-ops.h b/drivers/net/wireless/ath/ath10k/wmi-ops.h
index 1491c25..de15e62 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-ops.h
+++ b/drivers/net/wireless/ath/ath10k/wmi-ops.h
@@ -216,6 +216,7 @@ struct wmi_ops {
 	struct sk_buff *(*gen_bb_timing)
 			(struct ath10k *ar,
 			 const struct wmi_bb_timing_cfg_arg *arg);
+	int (*cleanup_mgmt_tx_send)(struct ath10k *ar, struct sk_buff *msdu);
 
 };
 
@@ -457,8 +458,12 @@ ath10k_wmi_mgmt_tx_send(struct ath10k *ar, struct sk_buff *msdu,
 
 	ret = ath10k_wmi_cmd_send(ar, skb,
 				  ar->wmi.cmd->mgmt_tx_send_cmdid);
-	if (ret)
+	if (ret) {
+		/* remove this msdu from idr tracking */
+		if (ar->wmi.ops->cleanup_mgmt_tx_send)
+			ar->wmi.ops->cleanup_mgmt_tx_send(ar, msdu);
 		return ret;
+	}
 
 	return 0;
 }
diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.c b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
index e1ab900f..b2a4a44 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.c
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
@@ -2898,6 +2898,18 @@ ath10k_wmi_tlv_op_gen_request_stats(struct ath10k *ar, u32 stats_mask)
 }
 
 static int
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
+static int
 ath10k_wmi_mgmt_tx_alloc_msdu_id(struct ath10k *ar, struct sk_buff *skb,
 				 dma_addr_t paddr)
 {
@@ -2971,6 +2983,8 @@ ath10k_wmi_tlv_op_gen_mgmt_tx_send(struct ath10k *ar, struct sk_buff *msdu,
 	if (desc_id < 0)
 		goto err_free_skb;
 
+	cb->msdu_id = desc_id;
+
 	ptr = (void *)skb->data;
 	tlv = ptr;
 	tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_MGMT_TX_CMD);
@@ -4447,6 +4461,7 @@ static const struct wmi_ops wmi_tlv_ops = {
 	.gen_echo = ath10k_wmi_tlv_op_gen_echo,
 	.gen_vdev_spectral_conf = ath10k_wmi_tlv_op_gen_vdev_spectral_conf,
 	.gen_vdev_spectral_enable = ath10k_wmi_tlv_op_gen_vdev_spectral_enable,
+	.cleanup_mgmt_tx_send = ath10k_wmi_tlv_op_cleanup_mgmt_tx_send,
 };
 
 static const struct wmi_peer_flags_map wmi_tlv_peer_flags_map = {
-- 
2.7.4

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
