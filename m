Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02391EAC57
	for <lists+ath10k@lfdr.de>; Thu, 31 Oct 2019 10:08:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3vVJmwDvfHX/aDtvIW7Hr9rlcsFcWE5MRtMDeObwPQ=; b=P82iRlzL2pvMR8
	EMmw2/nKfLYutrQv3B1WNoswlrmeS0OI/h/mLZ1JyKqvyaTBGiSFNgKuFJX78g/EPFQL2+brXgPHj
	9VsAcI2VXtft7Rd+gTk19PJR6ZxBb6NPOy124kfmqsQi8A2fr4P8qfAsdAnMFfBVU1FtXgPEvO8GT
	1hLr6UnSfwdulgK+IO+U8RK9vXEoK8qqtZX899XJ5olK+8TgBXnNiopibPUTxgVUIpmzvnmFB3OqO
	ZulyW+BN8fWw8NlPI2l0fdrSPGXVzjrYjwnez8szaOTu0tOsEuRGLdEllJz7Y3r1wXaRK0eAkO6bW
	KWVE7DtbOmFUBt6zGMIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ6RV-0002Xu-3G; Thu, 31 Oct 2019 09:08:33 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ6RK-0002PU-To
 for ath10k@lists.infradead.org; Thu, 31 Oct 2019 09:08:24 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1D2236083E; Thu, 31 Oct 2019 09:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572512902;
 bh=j3G5XDKojh3EkWpKdPoVwJcpf4Ab2nMDbcYHAvYEDh4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ch2eDcQyPErAf3I/V9dQb1EvbrmBAP8r9rYmYet7OHzzmgkR524nY9fb3iExhVkri
 qDjX+YjKU9WUbk96PwIkzbBoiwX507vgNqlYQRUJERnXnTBK+MJsbpc9sbIumMm7Y9
 rH0b5MF4HZYW7JHs5ivP9S/AeQTc9UiMStnWFElE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9A34760112;
 Thu, 31 Oct 2019 09:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572512901;
 bh=j3G5XDKojh3EkWpKdPoVwJcpf4Ab2nMDbcYHAvYEDh4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=OMI0bkdW4Fyzvb+PC8IxL9HNwHu0auLHeGU5JUrup1voV+7AwcqJk1REtfP+9gcX4
 0syA90MxSuzFv9i2ZkfC3YYGDfzCsKwM4t6FPPPOfGYGUv8EzYJxEzMwSi3h1C3KI8
 Abm0u3pH2U+HT9GdPFCbCjW41MQdNwd/okg6c93w=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9A34760112
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v6 3/3] ath10k: add workqueue for RX path of sdio
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-4-git-send-email-wgong@codeaurora.org>
Date: Thu, 31 Oct 2019 11:08:18 +0200
In-Reply-To: <1569402639-31720-4-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Wed, 25 Sep 2019 17:10:39 +0800")
Message-ID: <8736f92sfx.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_020823_010373_1668BC20 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> For RX, it has two parts, one is to read data from sdio, another
> is to indicate the packets to upper stack. Recently it has only
> one thread to do all RX things, it results that it is sequential
> for RX and low throughout, change RX to parallel for the two parts
> will increase throughout.
>
> This patch move the indication to a workqueue, it results in
> significant performance improvement on RX path.
>
> Udp rx throughout is 200Mbps without this patch, and it arrives
> 400Mbps with this patch.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWPZ-1
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> +static void ath10k_rx_indication_async_work(struct work_struct *work)
> +{
> +	struct ath10k_sdio *ar_sdio = container_of(work, struct ath10k_sdio,
> +						   async_work_rx);
> +	struct ath10k *ar = ar_sdio->ar;
> +	struct ath10k_htc_ep *ep;
> +	struct ath10k_skb_cb *cb;
> +	struct sk_buff *skb;
> +
> +	while (true) {
> +		skb = skb_dequeue(&ar_sdio->rx_head);
> +		if (!skb)
> +			break;
> +		cb = ATH10K_SKB_CB(skb);
> +		ep = &ar->htc.endpoint[cb->eid];
> +		ep->ep_ops.ep_rx_complete(ar, skb);
> +	}
> +}

I just realised that this is RX path so we should use ATH10K_SKB_RXCB()
instead. I made the change below to this commit in pending branch:

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=28da1fe7a3ffa5c55c52328c21165d9efdf2e94c

diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
index af68eb5d0776..c5407f5080b2 100644
--- a/drivers/net/wireless/ath/ath10k/core.h
+++ b/drivers/net/wireless/ath/ath10k/core.h
@@ -124,6 +124,7 @@ struct ath10k_skb_cb {
 struct ath10k_skb_rxcb {
 	dma_addr_t paddr;
 	struct hlist_node hlist;
+	u8 eid;
 };
 
 static inline struct ath10k_skb_cb *ATH10K_SKB_CB(struct sk_buff *skb)
diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index c34637881219..c7d09b07a382 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -419,7 +419,7 @@ static int ath10k_sdio_mbox_rx_process_packets(struct ath10k *ar,
 	struct ath10k_htc *htc = &ar->htc;
 	struct ath10k_sdio_rx_data *pkt;
 	struct ath10k_htc_ep *ep;
-	struct ath10k_skb_cb *cb;
+	struct ath10k_skb_rxcb *cb;
 	enum ath10k_htc_ep_id id;
 	int ret, i, *n_lookahead_local;
 	u32 *lookaheads_local;
@@ -466,7 +466,7 @@ static int ath10k_sdio_mbox_rx_process_packets(struct ath10k *ar,
 			goto out;
 
 		if (!pkt->trailer_only) {
-			cb = ATH10K_SKB_CB(pkt->skb);
+			cb = ATH10K_SKB_RXCB(pkt->skb);
 			cb->eid = id;
 
 			skb_queue_tail(&ar_sdio->rx_head, pkt->skb);
@@ -1333,14 +1333,14 @@ static void ath10k_rx_indication_async_work(struct work_struct *work)
 						   async_work_rx);
 	struct ath10k *ar = ar_sdio->ar;
 	struct ath10k_htc_ep *ep;
-	struct ath10k_skb_cb *cb;
+	struct ath10k_skb_rxcb *cb;
 	struct sk_buff *skb;
 
 	while (true) {
 		skb = skb_dequeue(&ar_sdio->rx_head);
 		if (!skb)
 			break;
-		cb = ATH10K_SKB_CB(skb);
+		cb = ATH10K_SKB_RXCB(skb);
 		ep = &ar->htc.endpoint[cb->eid];
 		ep->ep_ops.ep_rx_complete(ar, skb);
 	}

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
