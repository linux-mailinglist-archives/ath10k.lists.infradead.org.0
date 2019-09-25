Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415ADBDAA4
	for <lists+ath10k@lfdr.de>; Wed, 25 Sep 2019 11:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uhlF/d8A1SDAmH22xd/3g+zPdVj0JOzq7k6M72os/VM=; b=Plzk4wnF7YdXVWhY3Hl0qOwo3x
	yJn59IGR4F1rjA+OahDqKgPBpVHix0Q0j/Vs1lxBGimcVvx5XEgZvk3oP2ft1W9FiQTXgCRQbXhpu
	iDhhspS6tbl2zVYBY5dH3qfpDE/HnmBfLOgI2lUodW7izm9c8baYtpKyzgS+sk5lnwBBmrvfsNxRN
	WSFLo7OsKBLt4k+GYX2pW67SpecKnVBozyMECPvMb6+9UzDo+mZjUslNm/XP4kWEKWhkMRiwLsNgn
	FrEBlCkhJn6aOWfL0HDY/J1jPUAhRk+DDift5B4Iekrzw2st8YAQ5GFrVAeicLKUzkVgz7A2JUCLb
	l6QUnJaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3Kf-0001xA-5G; Wed, 25 Sep 2019 09:11:33 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3K0-0001jC-LB
 for ath10k@lists.infradead.org; Wed, 25 Sep 2019 09:10:54 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5C2E761197; Wed, 25 Sep 2019 09:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569402652;
 bh=28HjTg107xudXWilP3f2TOc5WYDSsZ6Rmykw7iVlDPk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jorIhOxZaKDA0MH+G1vEM98l42BK/Im7HQ/VQ1kFg/0P9tcM9fGfH3Wt6zDaGJIiV
 VW98bF1kQOWlrKK8m6Yh8SMVOkneuJB6uUM9Rzh6QHkW0SjvoHMvnvEObChyUtd+FD
 ApEGq1abMcYUPOqT4MVxXg/XjDJYdJw/1GJjRHLs=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 15A01611BF;
 Wed, 25 Sep 2019 09:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569402651;
 bh=28HjTg107xudXWilP3f2TOc5WYDSsZ6Rmykw7iVlDPk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OYEFjpaoK9Ba/iJHXZOrlSVJZMYMqqDwViS/7YKe7yCfU59hLlGiwAkA/irQ8lFpy
 gmpwRA6ZRiFRmf2tv2M+Zeff1Ss61c9i+u1pQHRHqUQ/kz6TudW9MUHqTbivE9SUse
 e9cx7lZ8Snqz4x4JP5HNH4S/F0iTK+BRDOrQh2HI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 15A01611BF
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v6 3/3] ath10k: add workqueue for RX path of sdio
Date: Wed, 25 Sep 2019 17:10:39 +0800
Message-Id: <1569402639-31720-4-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_021052_760896_D22513EC 
X-CRM114-Status: GOOD (  14.72  )
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

For RX, it has two parts, one is to read data from sdio, another
is to indicate the packets to upper stack. Recently it has only
one thread to do all RX things, it results that it is sequential
for RX and low throughout, change RX to parallel for the two parts
will increase throughout.

This patch move the indication to a workqueue, it results in
significant performance improvement on RX path.

Udp rx throughout is 200Mbps without this patch, and it arrives
400Mbps with this patch.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00017-QCARMSWPZ-1

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 35 +++++++++++++++++++++++++++++++---
 drivers/net/wireless/ath/ath10k/sdio.h | 11 +++++++++++
 2 files changed, 43 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index a510101..ff02833 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -419,6 +419,7 @@ static int ath10k_sdio_mbox_rx_process_packets(struct ath10k *ar,
 	struct ath10k_htc *htc = &ar->htc;
 	struct ath10k_sdio_rx_data *pkt;
 	struct ath10k_htc_ep *ep;
+	struct ath10k_skb_cb *cb;
 	enum ath10k_htc_ep_id id;
 	int ret, i, *n_lookahead_local;
 	u32 *lookaheads_local;
@@ -464,10 +465,16 @@ static int ath10k_sdio_mbox_rx_process_packets(struct ath10k *ar,
 		if (ret)
 			goto out;
 
-		if (!pkt->trailer_only)
-			ep->ep_ops.ep_rx_complete(ar_sdio->ar, pkt->skb);
-		else
+		if (!pkt->trailer_only) {
+			cb = ATH10K_SKB_CB(pkt->skb);
+			cb->eid = id;
+
+			skb_queue_tail(&ar_sdio->rx_head, pkt->skb);
+			queue_work(ar->workqueue_aux,
+				   &ar_sdio->async_work_rx);
+		} else {
 			kfree_skb(pkt->skb);
+		}
 
 		/* The RX complete handler now owns the skb...*/
 		pkt->skb = NULL;
@@ -1317,6 +1324,25 @@ static void __ath10k_sdio_write_async(struct ath10k *ar,
 	ath10k_sdio_free_bus_req(ar, req);
 }
 
+static void ath10k_rx_indication_async_work(struct work_struct *work)
+{
+	struct ath10k_sdio *ar_sdio = container_of(work, struct ath10k_sdio,
+						   async_work_rx);
+	struct ath10k *ar = ar_sdio->ar;
+	struct ath10k_htc_ep *ep;
+	struct ath10k_skb_cb *cb;
+	struct sk_buff *skb;
+
+	while (true) {
+		skb = skb_dequeue(&ar_sdio->rx_head);
+		if (!skb)
+			break;
+		cb = ATH10K_SKB_CB(skb);
+		ep = &ar->htc.endpoint[cb->eid];
+		ep->ep_ops.ep_rx_complete(ar, skb);
+	}
+}
+
 static void ath10k_sdio_write_async_work(struct work_struct *work)
 {
 	struct ath10k_sdio *ar_sdio = container_of(work, struct ath10k_sdio,
@@ -2087,6 +2113,9 @@ static int ath10k_sdio_probe(struct sdio_func *func,
 	for (i = 0; i < ATH10K_SDIO_BUS_REQUEST_MAX_NUM; i++)
 		ath10k_sdio_free_bus_req(ar, &ar_sdio->bus_req[i]);
 
+	skb_queue_head_init(&ar_sdio->rx_head);
+	INIT_WORK(&ar_sdio->async_work_rx, ath10k_rx_indication_async_work);
+
 	dev_id_base = FIELD_GET(QCA_MANUFACTURER_ID_BASE, id->device);
 	switch (dev_id_base) {
 	case QCA_MANUFACTURER_ID_AR6005_BASE:
diff --git a/drivers/net/wireless/ath/ath10k/sdio.h b/drivers/net/wireless/ath/ath10k/sdio.h
index 00bd4ca..8aa0dbc 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.h
+++ b/drivers/net/wireless/ath/ath10k/sdio.h
@@ -98,6 +98,12 @@
 #define ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_OFF 0xFFFEFFFF
 #define ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_ON 0x10000
 
+struct ath10k_sdio_rx_request {
+	struct list_head list;
+	struct sk_buff *skb;
+	struct ath10k_htc_ep *ep;
+};
+
 struct ath10k_sdio_bus_request {
 	struct list_head list;
 
@@ -187,6 +193,9 @@ struct ath10k_sdio {
 	struct ath10k_sdio_bus_request bus_req[ATH10K_SDIO_BUS_REQUEST_MAX_NUM];
 	/* free list of bus requests */
 	struct list_head bus_req_freeq;
+
+	struct sk_buff_head rx_head;
+
 	/* protects access to bus_req_freeq */
 	spinlock_t lock;
 
@@ -213,6 +222,8 @@ struct ath10k_sdio {
 	struct list_head wr_asyncq;
 	/* protects access to wr_asyncq */
 	spinlock_t wr_async_lock;
+
+	struct work_struct async_work_rx;
 };
 
 static inline struct ath10k_sdio *ath10k_sdio_priv(struct ath10k *ar)
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
