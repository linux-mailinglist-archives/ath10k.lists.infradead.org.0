Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E35EBDAA0
	for <lists+ath10k@lfdr.de>; Wed, 25 Sep 2019 11:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IMur4fEVMflFWbr8cE+RiXAXDGYmRhCRSqGEeKpfISg=; b=MuTSB2goXWqrUSRp++VnQJE3gl
	DxTxwd7v8y88Qgm1SgHkXDzUT/BqyYd7kIruIQrAHkWYYsWIsJFF0ALbEDBUQ37lfHT8+mi0EtvpG
	kgz+CmIe1i+AWb00qhYN8TnUZjE/gzpwoqp5dgeJOTLV4i3DnfWT3VRk7Q4NGUPGbFFfB4Y3n3jnC
	Nkfeb6rNHF0j4r65H5p5/lZa7jHfIR0AA0DDE7FrJABsY6fa0R99WEueEACat/Dx3J6S5B+wsJz+E
	WWz1b9eUxzjWhZ2kN3isKfYN6yOMxe4qxLZlcW5h1vlfHvCQ4hXB5o7BzJi14swC9By9eY3HXvKIT
	8yizCldg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3KH-0001kq-KX; Wed, 25 Sep 2019 09:11:09 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3Jx-0001iT-VG
 for ath10k@lists.infradead.org; Wed, 25 Sep 2019 09:10:51 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A905D6118E; Wed, 25 Sep 2019 09:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569402649;
 bh=XLSEUZQg6S0xlxQVgKfDf179f7z6fuBB28MvOOtDP3c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iX+D50RZosZumO15mS9hmVXU3aWgbJqKeUCWf3vs2I76r+oZLm5XYs+gc7wYODf/v
 WQKJXY8eLqbsTzclRQ4kfN3nlwDI+bgYfnlrYv/4plT6/qgrPQMPFnmTt4fmosCSQg
 jl0P3Fspa2sfP9F7Vr2XPWpKVXNlmA848Z6c4xMY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1CF326118E;
 Wed, 25 Sep 2019 09:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569402649;
 bh=XLSEUZQg6S0xlxQVgKfDf179f7z6fuBB28MvOOtDP3c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iX+D50RZosZumO15mS9hmVXU3aWgbJqKeUCWf3vs2I76r+oZLm5XYs+gc7wYODf/v
 WQKJXY8eLqbsTzclRQ4kfN3nlwDI+bgYfnlrYv/4plT6/qgrPQMPFnmTt4fmosCSQg
 jl0P3Fspa2sfP9F7Vr2XPWpKVXNlmA848Z6c4xMY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1CF326118E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v6 1/3] ath10k: enable RX bundle receive for sdio
Date: Wed, 25 Sep 2019 17:10:37 +0800
Message-Id: <1569402639-31720-2-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_021050_048292_4E8CFF18 
X-CRM114-Status: GOOD (  18.33  )
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

From: Alagu Sankar <alagusankar@silex-india.com>

The existing implementation of initiating multiple sdio transfers for
receive bundling is slowing down the receive speed. Combining the
transfers using a bundle method would be ideal.

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

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00017-QCARMSWPZ-1

Signed-off-by: Alagu Sankar <alagusankar@silex-india.com>
Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 110 +++++++++++++++++++++------------
 drivers/net/wireless/ath/ath10k/sdio.h |  11 +++-
 2 files changed, 79 insertions(+), 42 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 120200a..f545626 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -24,6 +24,8 @@
 #include "trace.h"
 #include "sdio.h"
 
+#define ATH10K_SDIO_VSG_BUF_SIZE	(32 * 1024)
+
 /* inlined helper functions */
 
 static inline int ath10k_sdio_calc_txrx_padded_len(struct ath10k_sdio *ar_sdio,
@@ -484,11 +486,11 @@ static int ath10k_sdio_mbox_rx_process_packets(struct ath10k *ar,
 	return ret;
 }
 
-static int ath10k_sdio_mbox_alloc_pkt_bundle(struct ath10k *ar,
-					     struct ath10k_sdio_rx_data *rx_pkts,
-					     struct ath10k_htc_hdr *htc_hdr,
-					     size_t full_len, size_t act_len,
-					     size_t *bndl_cnt)
+static int ath10k_sdio_mbox_alloc_bundle(struct ath10k *ar,
+					 struct ath10k_sdio_rx_data *rx_pkts,
+					 struct ath10k_htc_hdr *htc_hdr,
+					 size_t full_len, size_t act_len,
+					 size_t *bndl_cnt)
 {
 	int ret, i;
 
@@ -529,6 +531,7 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 	size_t full_len, act_len;
 	bool last_in_bundle;
 	int ret, i;
+	int pkt_cnt = 0;
 
 	if (n_lookaheads > ATH10K_SDIO_MAX_RX_MSGS) {
 		ath10k_warn(ar,
@@ -572,20 +575,19 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 			 */
 			size_t bndl_cnt;
 
-			ret = ath10k_sdio_mbox_alloc_pkt_bundle(ar,
-								&ar_sdio->rx_pkts[i],
-								htc_hdr,
-								full_len,
-								act_len,
-								&bndl_cnt);
+			ret = ath10k_sdio_mbox_alloc_bundle(ar,
+							    &ar_sdio->rx_pkts[pkt_cnt],
+							    htc_hdr,
+							    full_len,
+							    act_len,
+							    &bndl_cnt);
 
 			if (ret) {
 				ath10k_warn(ar, "alloc_bundle error %d\n", ret);
 				goto err;
 			}
 
-			n_lookaheads += bndl_cnt;
-			i += bndl_cnt;
+			pkt_cnt += bndl_cnt;
 			/*Next buffer will be the last in the bundle */
 			last_in_bundle = true;
 		}
@@ -597,7 +599,7 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 		if (htc_hdr->flags & ATH10K_HTC_FLAGS_RECV_1MORE_BLOCK)
 			full_len += ATH10K_HIF_MBOX_BLOCK_SIZE;
 
-		ret = ath10k_sdio_mbox_alloc_rx_pkt(&ar_sdio->rx_pkts[i],
+		ret = ath10k_sdio_mbox_alloc_rx_pkt(&ar_sdio->rx_pkts[pkt_cnt],
 						    act_len,
 						    full_len,
 						    last_in_bundle,
@@ -606,9 +608,11 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 			ath10k_warn(ar, "alloc_rx_pkt error %d\n", ret);
 			goto err;
 		}
+
+		pkt_cnt++;
 	}
 
-	ar_sdio->n_rx_pkts = i;
+	ar_sdio->n_rx_pkts = pkt_cnt;
 
 	return 0;
 
@@ -622,59 +626,76 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 	return ret;
 }
 
-static int ath10k_sdio_mbox_rx_packet(struct ath10k *ar,
-				      struct ath10k_sdio_rx_data *pkt)
+static int ath10k_sdio_mbox_rx_fetch(struct ath10k *ar)
 {
 	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
+	struct ath10k_sdio_rx_data *pkt = &ar_sdio->rx_pkts[0];
 	struct sk_buff *skb = pkt->skb;
 	struct ath10k_htc_hdr *htc_hdr;
 	int ret;
 
 	ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
 				 skb->data, pkt->alloc_len);
-	if (ret)
-		goto out;
 
-	/* Update actual length. The original length may be incorrect,
-	 * as the FW will bundle multiple packets as long as their sizes
-	 * fit within the same aligned length (pkt->alloc_len).
-	 */
-	htc_hdr = (struct ath10k_htc_hdr *)skb->data;
-	pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
-	if (pkt->act_len > pkt->alloc_len) {
-		ath10k_warn(ar, "rx packet too large (%zu > %zu)\n",
-			    pkt->act_len, pkt->alloc_len);
-		ret = -EMSGSIZE;
-		goto out;
+	if (ret) {
+		ar_sdio->n_rx_pkts = 0;
+		ath10k_sdio_mbox_free_rx_pkt(pkt);
+		return ret;
 	}
 
-	skb_put(skb, pkt->act_len);
-
-out:
+	htc_hdr = (struct ath10k_htc_hdr *)skb->data;
+	pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
 	pkt->status = ret;
+	skb_put(skb, pkt->act_len);
 
 	return ret;
 }
 
-static int ath10k_sdio_mbox_rx_fetch(struct ath10k *ar)
+static int ath10k_sdio_mbox_rx_fetch_bundle(struct ath10k *ar)
 {
 	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
+	struct ath10k_sdio_rx_data *pkt;
+	struct ath10k_htc_hdr *htc_hdr;
 	int ret, i;
+	u32 pkt_offset, virt_pkt_len;
 
+	virt_pkt_len = 0;
+	for (i = 0; i < ar_sdio->n_rx_pkts; i++)
+		virt_pkt_len += ar_sdio->rx_pkts[i].alloc_len;
+
+	if (virt_pkt_len > ATH10K_SDIO_VSG_BUF_SIZE) {
+		ath10k_err(ar, "size exceeding limit %d\n", virt_pkt_len);
+		ret = -E2BIG;
+		goto err;
+	}
+
+	ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
+				 ar_sdio->vsg_buffer, virt_pkt_len);
+	if (ret) {
+		ath10k_warn(ar, "failed to read bundle packets: %d", ret);
+		goto err;
+	}
+
+	pkt_offset = 0;
 	for (i = 0; i < ar_sdio->n_rx_pkts; i++) {
-		ret = ath10k_sdio_mbox_rx_packet(ar,
-						 &ar_sdio->rx_pkts[i]);
-		if (ret)
-			goto err;
+		pkt = &ar_sdio->rx_pkts[i];
+		htc_hdr = (struct ath10k_htc_hdr *)(ar_sdio->vsg_buffer + pkt_offset);
+		pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
+
+		skb_put_data(pkt->skb, htc_hdr, pkt->act_len);
+		pkt->status = 0;
+		pkt_offset += pkt->alloc_len;
 	}
 
 	return 0;
 
 err:
 	/* Free all packets that was not successfully fetched. */
-	for (; i < ar_sdio->n_rx_pkts; i++)
+	for (i = 0; i < ar_sdio->n_rx_pkts; i++)
 		ath10k_sdio_mbox_free_rx_pkt(&ar_sdio->rx_pkts[i]);
 
+	ar_sdio->n_rx_pkts = 0;
+
 	return ret;
 }
 
@@ -717,7 +738,10 @@ static int ath10k_sdio_mbox_rxmsg_pending_handler(struct ath10k *ar,
 			 */
 			*done = false;
 
-		ret = ath10k_sdio_mbox_rx_fetch(ar);
+		if (ar_sdio->n_rx_pkts > 1)
+			ret = ath10k_sdio_mbox_rx_fetch_bundle(ar);
+		else
+			ret = ath10k_sdio_mbox_rx_fetch(ar);
 
 		/* Process fetched packets. This will potentially update
 		 * n_lookaheads depending on if the packets contain lookahead
@@ -2020,6 +2044,12 @@ static int ath10k_sdio_probe(struct sdio_func *func,
 		goto err_core_destroy;
 	}
 
+	ar_sdio->vsg_buffer = devm_kmalloc(ar->dev, ATH10K_SDIO_VSG_BUF_SIZE, GFP_KERNEL);
+	if (!ar_sdio->vsg_buffer) {
+		ret = -ENOMEM;
+		goto err_core_destroy;
+	}
+
 	ar_sdio->irq_data.irq_en_reg =
 		devm_kzalloc(ar->dev, sizeof(struct ath10k_sdio_irq_enable_regs),
 			     GFP_KERNEL);
diff --git a/drivers/net/wireless/ath/ath10k/sdio.h b/drivers/net/wireless/ath/ath10k/sdio.h
index b8c7ac0..8d5b09f 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.h
+++ b/drivers/net/wireless/ath/ath10k/sdio.h
@@ -138,8 +138,8 @@ struct ath10k_sdio_irq_proc_regs {
 	u8 rx_lookahead_valid;
 	u8 host_int_status2;
 	u8 gmbox_rx_avail;
-	__le32 rx_lookahead[2];
-	__le32 rx_gmbox_lookahead_alias[2];
+	__le32 rx_lookahead[2 * ATH10K_HIF_MBOX_NUM_MAX];
+	__le32 int_status_enable;
 };
 
 struct ath10k_sdio_irq_enable_regs {
@@ -196,6 +196,13 @@ struct ath10k_sdio {
 	struct ath10k *ar;
 	struct ath10k_sdio_irq_data irq_data;
 
+	/* temporary buffer for sdio read.
+	 * It is allocated when probe, and used for receive bundled packets,
+	 * the read for bundled packets is not parallel, so it does not need
+	 * protected.
+	 */
+	u8 *vsg_buffer;
+
 	/* temporary buffer for BMI requests */
 	u8 *bmi_buf;
 
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
