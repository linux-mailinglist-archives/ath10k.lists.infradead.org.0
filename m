Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311319E65F
	for <lists+ath10k@lfdr.de>; Tue, 27 Aug 2019 13:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XwkBKy2A3BZJSOC3nsBt0p9/rHKGE+OM9bMbfiv3+ec=; b=uanHtLSB9d4KBTdq7QVXr0Iux5
	KmkElacJxyJ38Yg0VVa1XOVYZbnrSOwg1mCMyy/S/y4g2NMSdALqK+sRorh/hDN4JX8z6vKChzmp0
	jbNW1yeE2EjBl1x7Cz/W4NB9QzRCXAimY+oP4mt4g0+32Z6DPRMeIIPiSp+zKGCVXXsi25jiBaFKl
	Xz3a1hYIDj3VqjG/sXAAXAaKHA0UUsQdWV5rLFaIXqz4hFhPweRaUNte56BlHPAlmsatpkOl1k+bw
	ZAGflTIOduo2dAvEE2E8XNrMZHEkDwoirIbXZWgpdnfFnVFEuaB7MkZtY3mdWtYmW5wzM2efUVXc4
	qqq3CEAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ZFq-0003E5-D9; Tue, 27 Aug 2019 11:03:14 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ZFJ-0002ts-Bz
 for ath10k@lists.infradead.org; Tue, 27 Aug 2019 11:02:44 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DF0AB61C7B; Tue, 27 Aug 2019 11:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566903761;
 bh=oo2yYBlsfOIEAr5iwkcfyaH2VRCvDep518TdPipJnRg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y/JOzch8TuHI7Uh7gSfLTUilHkgZcAhdfLIcD2Viz2NkpWLxgq2dbjIRmnDTyYVzx
 pTTv+k858UhWWCYxZXEPzxBqOoovw8IfHpRt8GXZ9mEyRbd0EfvlUvssjVto7b3si9
 NWPDPizhI041XzJObU2s+TUehiXTDp9ubqjTphCg=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A5EFC61C9F;
 Tue, 27 Aug 2019 11:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566903746;
 bh=oo2yYBlsfOIEAr5iwkcfyaH2VRCvDep518TdPipJnRg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YNPmzokMLw59+3nhXItYwyzhRuIvBhAKmRPOzBb9MaipKVGrV6f1OK+zpTKO1dzjR
 8q5dt8HjTxXoQYXI95ZVUEcAsFv/nUfM34z/lElpVNRjH2dr6B2himmc9frJRaTP/n
 PxWqM6j8lGScLksGwc+XUArzHULKMa3Pnb3rxuuo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A5EFC61C9F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 7/7] ath10k: enable napi on RX path for sdio
Date: Tue, 27 Aug 2019 19:01:47 +0800
Message-Id: <1566903707-27536-8-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_040241_591851_7D38BBFB 
X-CRM114-Status: GOOD (  16.97  )
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

For tcp RX, the quantity of tcp acks to remote is 1/2 of the quantity
of tcp data from remote, then it will have many small length packets
on TX path of sdio bus, then it reduce the RX packets's bandwidth of
tcp.

This patch enable napi on RX path, then the RX packet of tcp will not
feed to tcp stack immeditely from mac80211 since GRO is enabled by
default, it will feed to tcp stack after napi complete, if rx bundle
is enabled, then it will feed to tcp stack one time for each bundle
of RX. For example, RX bundle size is 32, then tcp stack will receive
one large length packet, its length is neary 1500*32, then tcp stack
will send a tcp ack for this large packet, this will reduce the tcp
acks ratio from 1/2 to 1/32. This results in significant performance
improvement for tcp RX.

Tcp rx throughout is 240Mbps without this patch, and it arrive 390Mbps
with this patch. The cpu usage has no obvious difference with and
without NAPI.

call stack for each RX packet on GRO path:
(skb length is about 1500 bytes)
  skb_gro_receive ([kernel.kallsyms])
  tcp4_gro_receive ([kernel.kallsyms])
  inet_gro_receive ([kernel.kallsyms])
  dev_gro_receive ([kernel.kallsyms])
  napi_gro_receive ([kernel.kallsyms])
  ieee80211_deliver_skb ([mac80211])
  ieee80211_rx_handlers ([mac80211])
  ieee80211_prepare_and_rx_handle ([mac80211])
  ieee80211_rx_napi ([mac80211])
  ath10k_htt_rx_proc_rx_ind_hl ([ath10k_core])
  ath10k_htt_rx_pktlog_completion_handler ([ath10k_core])
  ath10k_sdio_napi_poll ([ath10k_sdio])
  net_rx_action ([kernel.kallsyms])
  softirqentry_text_start ([kernel.kallsyms])
  do_softirq ([kernel.kallsyms])

call stack for napi complete and send tcp ack from tcp stack:
(skb length is about 1500*32 bytes)
 _tcp_ack_snd_check ([kernel.kallsyms])
 tcp_v4_do_rcv ([kernel.kallsyms])
 tcp_v4_rcv ([kernel.kallsyms])
 local_deliver_finish ([kernel.kallsyms])
 ip_local_deliver ([kernel.kallsyms])
 ip_rcv_finish ([kernel.kallsyms])
 ip_rcv ([kernel.kallsyms])
 netif_receive_skb_core ([kernel.kallsyms])
 netif_receive_skb_one_core([kernel.kallsyms])
 netif_receive_skb ([kernel.kallsyms])
 netif_receive_skb_internal ([kernel.kallsyms])
 napi_gro_complete ([kernel.kallsyms])
 napi_gro_flush ([kernel.kallsyms])
 napi_complete_done ([kernel.kallsyms])
 ath10k_sdio_napi_poll ([ath10k_sdio])
 net_rx_action ([kernel.kallsyms])
 __softirqentry_text_start ([kernel.kallsyms])
 do_softirq ([kernel.kallsyms])

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htt.c    |  2 ++
 drivers/net/wireless/ath/ath10k/htt.h    |  3 +++
 drivers/net/wireless/ath/ath10k/htt_rx.c | 46 ++++++++++++++++++++++++++------
 drivers/net/wireless/ath/ath10k/sdio.c   | 33 +++++++++++++++++++++++
 4 files changed, 76 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt.c b/drivers/net/wireless/ath/ath10k/htt.c
index 127b4e4..f69346f 100644
--- a/drivers/net/wireless/ath/ath10k/htt.c
+++ b/drivers/net/wireless/ath/ath10k/htt.c
@@ -157,6 +157,8 @@ int ath10k_htt_connect(struct ath10k_htt *htt)
 
 	htt->eid = conn_resp.eid;
 
+	skb_queue_head_init(&htt->rx_indication_head);
+
 	if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL) {
 		ep = &ar->htc.endpoint[htt->eid];
 		ath10k_htc_setup_tx_req(ep);
diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
index 4851a2e..462a25b 100644
--- a/drivers/net/wireless/ath/ath10k/htt.h
+++ b/drivers/net/wireless/ath/ath10k/htt.h
@@ -1879,6 +1879,8 @@ struct ath10k_htt {
 	struct ath10k *ar;
 	enum ath10k_htc_ep_id eid;
 
+	struct sk_buff_head rx_indication_head;
+
 	u8 target_version_major;
 	u8 target_version_minor;
 	struct completion target_version_received;
@@ -2298,6 +2300,7 @@ int ath10k_htt_tx_mgmt_inc_pending(struct ath10k_htt *htt, bool is_mgmt,
 void ath10k_htt_rx_pktlog_completion_handler(struct ath10k *ar,
 					     struct sk_buff *skb);
 int ath10k_htt_txrx_compl_task(struct ath10k *ar, int budget);
+int ath10k_htt_rx_hl_indication(struct ath10k *ar, int budget);
 void ath10k_htt_set_tx_ops(struct ath10k_htt *htt);
 void ath10k_htt_set_rx_ops(struct ath10k_htt *htt);
 #endif
diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index e2d8b51..9340ae3 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -2263,7 +2263,7 @@ static bool ath10k_htt_rx_proc_rx_ind_hl(struct ath10k_htt *htt,
 	if (mpdu_ranges->mpdu_range_status == HTT_RX_IND_MPDU_STATUS_TKIP_MIC_ERR)
 		rx_status->flag |= RX_FLAG_MMIC_ERROR;
 
-	ieee80211_rx_ni(ar->hw, skb);
+	ieee80211_rx_napi(ar->hw, NULL, skb, &ar->napi);
 
 	/* We have delivered the skb to the upper layers (mac80211) so we
 	 * must not free it.
@@ -3664,14 +3664,12 @@ bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
 		break;
 	}
 	case HTT_T2H_MSG_TYPE_RX_IND:
-		if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL)
-			return ath10k_htt_rx_proc_rx_ind_hl(htt,
-							    &resp->rx_ind_hl,
-							    skb,
-							    HTT_RX_PN_CHECK,
-							    HTT_RX_NON_TKIP_MIC);
-		else
+		if (ar->bus_param.dev_type != ATH10K_DEV_TYPE_HL) {
 			ath10k_htt_rx_proc_rx_ind_ll(htt, &resp->rx_ind);
+		} else {
+			skb_queue_tail(&htt->rx_indication_head, skb);
+			return false;
+		}
 		break;
 	case HTT_T2H_MSG_TYPE_PEER_MAP: {
 		struct htt_peer_map_event ev = {
@@ -3895,6 +3893,38 @@ static int ath10k_htt_rx_deliver_msdu(struct ath10k *ar, int quota, int budget)
 	return quota;
 }
 
+int ath10k_htt_rx_hl_indication(struct ath10k *ar, int budget)
+{
+	struct htt_resp *resp;
+	struct ath10k_htt *htt = &ar->htt;
+	struct sk_buff *skb;
+	bool release;
+	int quota = 0;
+
+	while (quota < budget) {
+		skb = skb_dequeue(&htt->rx_indication_head);
+		if (!skb)
+			break;
+
+		resp = (struct htt_resp *)skb->data;
+
+		release = ath10k_htt_rx_proc_rx_ind_hl(htt,
+						       &resp->rx_ind_hl,
+						       skb,
+						       HTT_RX_PN_CHECK,
+						       HTT_RX_NON_TKIP_MIC);
+
+		if (release)
+			dev_kfree_skb_any(skb);
+
+		ath10k_dbg(ar, ATH10K_DBG_HTT, "rx indication poll pending count:%d\n",
+			   skb_queue_len(&htt->rx_indication_head));
+		quota++;
+	}
+	return quota;
+}
+EXPORT_SYMBOL(ath10k_htt_rx_hl_indication);
+
 int ath10k_htt_txrx_compl_task(struct ath10k *ar, int budget)
 {
 	struct ath10k_htt *htt = &ar->htt;
diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index a302eda..a1ef31e 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -1406,6 +1406,9 @@ static void ath10k_rx_indication_async_work(struct work_struct *work)
 		spin_lock_bh(&ar_sdio->wr_async_lock_rx);
 	}
 
+	if (test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
+		napi_schedule(&ar->napi);
+
 	spin_unlock_bh(&ar_sdio->wr_async_lock_rx);
 }
 
@@ -1824,6 +1827,8 @@ static int ath10k_sdio_hif_start(struct ath10k *ar)
 	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 	int ret;
 
+	napi_enable(&ar->napi);
+
 	/* Sleep 20 ms before HIF interrupts are disabled.
 	 * This will give target plenty of time to process the BMI done
 	 * request before interrupts are disabled.
@@ -1962,6 +1967,9 @@ static void ath10k_sdio_hif_stop(struct ath10k *ar)
 	}
 
 	spin_unlock_bh(&ar_sdio->wr_async_lock);
+
+	napi_synchronize(&ar->napi);
+	napi_disable(&ar->napi);
 }
 
 #ifdef CONFIG_PM
@@ -2138,6 +2146,26 @@ static SIMPLE_DEV_PM_OPS(ath10k_sdio_pm_ops, ath10k_sdio_pm_suspend,
 
 #endif /* CONFIG_PM_SLEEP */
 
+static int ath10k_sdio_napi_poll(struct napi_struct *ctx, int budget)
+{
+	struct ath10k *ar = container_of(ctx, struct ath10k, napi);
+	int done = 0;
+
+	done = ath10k_htt_rx_hl_indication(ar, budget);
+	ath10k_dbg(ar, ATH10K_DBG_SDIO, "napi poll: done: %d,budget:%d\n", done, budget);
+
+	if (done < budget)
+		napi_complete_done(ctx, done);
+
+	return done;
+}
+
+void ath10k_sdio_init_napi(struct ath10k *ar)
+{
+	netif_napi_add(&ar->napi_dev, &ar->napi, ath10k_sdio_napi_poll,
+		       ATH10K_NAPI_BUDGET);
+}
+
 static int ath10k_sdio_probe(struct sdio_func *func,
 			     const struct sdio_device_id *id)
 {
@@ -2163,6 +2191,8 @@ static int ath10k_sdio_probe(struct sdio_func *func,
 		return -ENOMEM;
 	}
 
+	ath10k_sdio_init_napi(ar);
+
 	ath10k_dbg(ar, ATH10K_DBG_BOOT,
 		   "sdio new func %d vendor 0x%x device 0x%x block 0x%x/0x%x\n",
 		   func->num, func->vendor, func->device,
@@ -2283,6 +2313,9 @@ static void ath10k_sdio_remove(struct sdio_func *func)
 		   func->num, func->vendor, func->device);
 
 	ath10k_core_unregister(ar);
+
+	netif_napi_del(&ar->napi);
+
 	ath10k_core_destroy(ar);
 
 	flush_workqueue(ar_sdio->workqueue);
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
