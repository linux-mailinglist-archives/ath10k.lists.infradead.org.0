Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 555ED1FC1D4
	for <lists+ath10k@lfdr.de>; Wed, 17 Jun 2020 00:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wj2HrvvXKoQml1e2bgg3NvsPJtHKeeDfefpoL8wfOo4=; b=GMJOa3EBg+KUz+
	rB4iVkd4LNuO5BUdEVCsK87bY+FafSDsVOZF3VtTbtslwBVo3oRRTnXu1jUFxzyU4lUN7pr6I+a8k
	gNecDEF5I32e1cMQ0uQpLXkZi7ZM5lIUZ2FErzDgNG6msXSbhoRReub9EUq4gfr1PsWv1sedoNZku
	Z2HLxhRl+09w0lGKaIrmh+g96XzxR+ulA98iXmPehqCUZSL1VfUJ/NCbp9dYMkaHbFGJGwMzzVREF
	CQEu16W1fVCe6RgbfUkqun/gOobtkRmz+p2Jex0IoYOlkFm65CcdHGyeNAynbGGIxrHkSb7rn9NvB
	+lEAkSkB6QqN2mvQzwkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlKLR-0002Fl-6g; Tue, 16 Jun 2020 22:46:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlKLN-0002F8-Id
 for ath10k@lists.infradead.org; Tue, 16 Jun 2020 22:46:14 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7327C207E8;
 Tue, 16 Jun 2020 22:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592347573;
 bh=ZAs7GT5Hxz71cY/X1yUf6UmpNbaDaFyhGT9dvQA8WSg=;
 h=Date:From:To:Cc:Subject:From;
 b=tOtTUn6i9JsmvvjEEcLkyE+BYqlTRTvJf4uHci8yqejVU0er62cLvJj2gbUOPAzfJ
 up5vztwPIEe0amz4UFOILuMoruoFTt4kWOB+2IIa/cvjIXlldniAsFFGvq04+wnYVS
 XN6RxJJynwG497vXF3GeNuZyE8Of68agP6gaGGiI=
Date: Tue, 16 Jun 2020 17:51:32 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH][next] ath10k: wmi: Use struct_size() helper in
 ath10k_wmi_alloc_skb()
Message-ID: <20200616225132.GA19873@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_154613_655976_2728DD82 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Make use of the struct_size() helper instead of an open-coded version
in order to avoid any potential type mistakes. Also, remove unnecessary
variable _len_.

This code was detected with the help of Coccinelle and, audited and
fixed manually.

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/wireless/ath/ath10k/wmi.c | 32 +++++++--------------------
 1 file changed, 8 insertions(+), 24 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/wmi.c b/drivers/net/wireless/ath/ath10k/wmi.c
index a81a1ab2de19..b89681394a15 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.c
+++ b/drivers/net/wireless/ath/ath10k/wmi.c
@@ -6551,7 +6551,7 @@ static struct sk_buff *ath10k_wmi_op_gen_init(struct ath10k *ar)
 	struct wmi_init_cmd *cmd;
 	struct sk_buff *buf;
 	struct wmi_resource_config config = {};
-	u32 len, val;
+	u32 val;
 
 	config.num_vdevs = __cpu_to_le32(TARGET_NUM_VDEVS);
 	config.num_peers = __cpu_to_le32(TARGET_NUM_PEERS);
@@ -6603,10 +6603,7 @@ static struct sk_buff *ath10k_wmi_op_gen_init(struct ath10k *ar)
 	config.num_msdu_desc = __cpu_to_le32(TARGET_NUM_MSDU_DESC);
 	config.max_frag_entries = __cpu_to_le32(TARGET_MAX_FRAG_ENTRIES);
 
-	len = sizeof(*cmd) +
-	      (sizeof(struct host_memory_chunk) * ar->wmi.num_mem_chunks);
-
-	buf = ath10k_wmi_alloc_skb(ar, len);
+	buf = ath10k_wmi_alloc_skb(ar, struct_size(cmd, mem_chunks.items, ar->wmi.num_mem_chunks));
 	if (!buf)
 		return ERR_PTR(-ENOMEM);
 
@@ -6624,7 +6621,7 @@ static struct sk_buff *ath10k_wmi_10_1_op_gen_init(struct ath10k *ar)
 	struct wmi_init_cmd_10x *cmd;
 	struct sk_buff *buf;
 	struct wmi_resource_config_10x config = {};
-	u32 len, val;
+	u32 val;
 
 	config.num_vdevs = __cpu_to_le32(TARGET_10X_NUM_VDEVS);
 	config.num_peers = __cpu_to_le32(TARGET_10X_NUM_PEERS);
@@ -6668,10 +6665,7 @@ static struct sk_buff *ath10k_wmi_10_1_op_gen_init(struct ath10k *ar)
 	config.num_msdu_desc = __cpu_to_le32(TARGET_10X_NUM_MSDU_DESC);
 	config.max_frag_entries = __cpu_to_le32(TARGET_10X_MAX_FRAG_ENTRIES);
 
-	len = sizeof(*cmd) +
-	      (sizeof(struct host_memory_chunk) * ar->wmi.num_mem_chunks);
-
-	buf = ath10k_wmi_alloc_skb(ar, len);
+	buf = ath10k_wmi_alloc_skb(ar, struct_size(cmd, mem_chunks.items, ar->wmi.num_mem_chunks));
 	if (!buf)
 		return ERR_PTR(-ENOMEM);
 
@@ -6689,7 +6683,7 @@ static struct sk_buff *ath10k_wmi_10_2_op_gen_init(struct ath10k *ar)
 	struct wmi_init_cmd_10_2 *cmd;
 	struct sk_buff *buf;
 	struct wmi_resource_config_10x config = {};
-	u32 len, val, features;
+	u32 val, features;
 
 	config.num_vdevs = __cpu_to_le32(TARGET_10X_NUM_VDEVS);
 	config.num_peer_keys = __cpu_to_le32(TARGET_10X_NUM_PEER_KEYS);
@@ -6741,10 +6735,7 @@ static struct sk_buff *ath10k_wmi_10_2_op_gen_init(struct ath10k *ar)
 	config.num_msdu_desc = __cpu_to_le32(TARGET_10X_NUM_MSDU_DESC);
 	config.max_frag_entries = __cpu_to_le32(TARGET_10X_MAX_FRAG_ENTRIES);
 
-	len = sizeof(*cmd) +
-	      (sizeof(struct host_memory_chunk) * ar->wmi.num_mem_chunks);
-
-	buf = ath10k_wmi_alloc_skb(ar, len);
+	buf = ath10k_wmi_alloc_skb(ar, struct_size(cmd, mem_chunks.items, ar->wmi.num_mem_chunks));
 	if (!buf)
 		return ERR_PTR(-ENOMEM);
 
@@ -6776,7 +6767,6 @@ static struct sk_buff *ath10k_wmi_10_4_op_gen_init(struct ath10k *ar)
 	struct wmi_init_cmd_10_4 *cmd;
 	struct sk_buff *buf;
 	struct wmi_resource_config_10_4 config = {};
-	u32 len;
 
 	config.num_vdevs = __cpu_to_le32(ar->max_num_vdevs);
 	config.num_peers = __cpu_to_le32(ar->max_num_peers);
@@ -6838,10 +6828,7 @@ static struct sk_buff *ath10k_wmi_10_4_op_gen_init(struct ath10k *ar)
 	config.iphdr_pad_config = __cpu_to_le32(TARGET_10_4_IPHDR_PAD_CONFIG);
 	config.qwrap_config = __cpu_to_le32(TARGET_10_4_QWRAP_CONFIG);
 
-	len = sizeof(*cmd) +
-	      (sizeof(struct host_memory_chunk) * ar->wmi.num_mem_chunks);
-
-	buf = ath10k_wmi_alloc_skb(ar, len);
+	buf = ath10k_wmi_alloc_skb(ar, struct_size(cmd, mem_chunks.items, ar->wmi.num_mem_chunks));
 	if (!buf)
 		return ERR_PTR(-ENOMEM);
 
@@ -7549,12 +7536,9 @@ ath10k_wmi_op_gen_scan_chan_list(struct ath10k *ar,
 	struct sk_buff *skb;
 	struct wmi_channel_arg *ch;
 	struct wmi_channel *ci;
-	int len;
 	int i;
 
-	len = sizeof(*cmd) + arg->n_channels * sizeof(struct wmi_channel);
-
-	skb = ath10k_wmi_alloc_skb(ar, len);
+	skb = ath10k_wmi_alloc_skb(ar, struct_size(cmd, chan_info, arg->n_channels));
 	if (!skb)
 		return ERR_PTR(-EINVAL);
 
-- 
2.27.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
