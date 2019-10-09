Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1EFD0972
	for <lists+ath10k@lfdr.de>; Wed,  9 Oct 2019 10:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mtiVGChKQqrVy1f01QCIAP5ul0LlB0FQOl5GuLbH1mc=; b=BW5
	JnuwAPHqzQf3/RfjTyIq72pTUl+cuRXVsR6RNVzVEFSCh3JijJv/y9YBsf0srlxakwwRcZMl1yWdW
	CjclV4EwLDp1qv6R3cuXYbkXFgxAbQsU2t8E96RSqnLVjzd44Iu6RzEgBSRMJtySUPiaVSKW0XUj8
	k7ucfy5pfKSZabWp8uyofki59wTwC03h8RwWgR+w3y1FATVbWLYZ187KwsRnctSoIZSrzeORK6DxH
	71hYZ4iUWm2beCWrWQvGPvejwE5zew5B8iV36oIHrKmuSJzNRv3G60lAQnba2TzjyLnXI6TngufL5
	v2zaD3qVmOsgW6cndy864KbO8B7jL9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7B1-0006gO-6H; Wed, 09 Oct 2019 08:18:31 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7Aw-0006fr-CW
 for ath10k@lists.infradead.org; Wed, 09 Oct 2019 08:18:27 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8933461AF3; Wed,  9 Oct 2019 08:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570609105;
 bh=fRlz7tw4YQKX5yIPcojrc6u4Ge2rc8wPk0N36qvbVIM=;
 h=From:To:Cc:Subject:Date:From;
 b=CySRCJjlxGc4zn4Vv6VmXxuPkj4q45h4GwIgVkyi8uWOWjeQd6ZX04MKVGl5l27ij
 pTC0Axp8g/Z5EDkGJAc77yOj27TUALD06T9eD53QrATLI8KVc0ZwqV8qnq3HrJUJaH
 bkSb8CPi0lLCYLXIaQb6NNMiHnbeT/z05mkfUG4g=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from smtp.codeaurora.org (unknown [180.166.53.21])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: miaoqing@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 12DC361A1B;
 Wed,  9 Oct 2019 08:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570609104;
 bh=fRlz7tw4YQKX5yIPcojrc6u4Ge2rc8wPk0N36qvbVIM=;
 h=From:To:Cc:Subject:Date:From;
 b=jZyx0nBW3UFDv/+FquMqXvMlJC2B56+k5tD9YYAPrRt6uaVtZHDPaEFPtx3Hfyt7J
 Y6tvt8gihNnyg88VwAOvhbjZsjR412ux9gthPYTj1UQ/V0LE8gLx84ouuhE74p3JJc
 zmu0Z94HsHygEqw90bRYS33rFOexMdeMeKUQMsJQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 12DC361A1B
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=miaoqing@codeaurora.org
Received: by smtp.codeaurora.org (sSMTP sendmail emulation);
 Wed, 09 Oct 2019 16:18:17 +0800
From: Miaoqing Pan <miaoqing@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 1/2] ath10k: fix array out-of-bounds access
Date: Wed,  9 Oct 2019 16:18:08 +0800
Message-Id: <1570609089-22071-1-git-send-email-miaoqing@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_011826_463987_9DB96893 
X-CRM114-Status: GOOD (  12.31  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, Miaoqing Pan <miaoqing@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

If firmware reports rate_max > WMI_TPC_RATE_MAX(WMI_TPC_FINAL_RATE_MAX)
or num_tx_chain > WMI_TPC_TX_N_CHAIN, it will cause array out-of-bounds
access, so print a warning and reset to avoid memory corruption.

Tested HW: QCA9984
Tested FW: 10.4-3.9.0.2-00035

Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/debug.c |  2 +-
 drivers/net/wireless/ath/ath10k/wmi.c   | 49 +++++++++++++++++++++------------
 2 files changed, 32 insertions(+), 19 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/debug.c b/drivers/net/wireless/ath/ath10k/debug.c
index bd2b562..40baf25 100644
--- a/drivers/net/wireless/ath/ath10k/debug.c
+++ b/drivers/net/wireless/ath/ath10k/debug.c
@@ -1516,7 +1516,7 @@ static void ath10k_tpc_stats_print(struct ath10k_tpc_stats *tpc_stats,
 	*len += scnprintf(buf + *len, buf_len - *len,
 			  "No.  Preamble Rate_code ");
 
-	for (i = 0; i < WMI_TPC_TX_N_CHAIN; i++)
+	for (i = 0; i < tpc_stats->num_tx_chain; i++)
 		*len += scnprintf(buf + *len, buf_len - *len,
 				  "tpc_value%d ", i);
 
diff --git a/drivers/net/wireless/ath/ath10k/wmi.c b/drivers/net/wireless/ath/ath10k/wmi.c
index f0ab115..4473b13 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.c
+++ b/drivers/net/wireless/ath/ath10k/wmi.c
@@ -4681,16 +4681,13 @@ static void ath10k_tpc_config_disp_tables(struct ath10k *ar,
 	}
 
 	pream_idx = 0;
-	for (i = 0; i < __le32_to_cpu(ev->rate_max); i++) {
+	for (i = 0; i < tpc_stats->rate_max; i++) {
 		memset(tpc_value, 0, sizeof(tpc_value));
 		memset(buff, 0, sizeof(buff));
 		if (i == pream_table[pream_idx])
 			pream_idx++;
 
-		for (j = 0; j < WMI_TPC_TX_N_CHAIN; j++) {
-			if (j >= __le32_to_cpu(ev->num_tx_chain))
-				break;
-
+		for (j = 0; j < tpc_stats->num_tx_chain; j++) {
 			tpc[j] = ath10k_tpc_config_get_rate(ar, ev, i, j + 1,
 							    rate_code[i],
 							    type);
@@ -4803,7 +4800,7 @@ void ath10k_wmi_tpc_config_get_rate_code(u8 *rate_code, u16 *pream_table,
 
 void ath10k_wmi_event_pdev_tpc_config(struct ath10k *ar, struct sk_buff *skb)
 {
-	u32 num_tx_chain;
+	u32 num_tx_chain, rate_max;
 	u8 rate_code[WMI_TPC_RATE_MAX];
 	u16 pream_table[WMI_TPC_PREAM_TABLE_MAX];
 	struct wmi_pdev_tpc_config_event *ev;
@@ -4819,6 +4816,13 @@ void ath10k_wmi_event_pdev_tpc_config(struct ath10k *ar, struct sk_buff *skb)
 		return;
 	}
 
+	rate_max = __le32_to_cpu(ev->rate_max);
+	if (rate_max > WMI_TPC_RATE_MAX) {
+		ath10k_warn(ar, "number of rate is %d greater than TPC configured rate %d\n",
+			    rate_max, WMI_TPC_RATE_MAX);
+		rate_max = WMI_TPC_RATE_MAX;
+	}
+
 	tpc_stats = kzalloc(sizeof(*tpc_stats), GFP_ATOMIC);
 	if (!tpc_stats)
 		return;
@@ -4835,8 +4839,8 @@ void ath10k_wmi_event_pdev_tpc_config(struct ath10k *ar, struct sk_buff *skb)
 		__le32_to_cpu(ev->twice_antenna_reduction);
 	tpc_stats->power_limit = __le32_to_cpu(ev->power_limit);
 	tpc_stats->twice_max_rd_power = __le32_to_cpu(ev->twice_max_rd_power);
-	tpc_stats->num_tx_chain = __le32_to_cpu(ev->num_tx_chain);
-	tpc_stats->rate_max = __le32_to_cpu(ev->rate_max);
+	tpc_stats->num_tx_chain = num_tx_chain;
+	tpc_stats->rate_max = rate_max;
 
 	ath10k_tpc_config_disp_tables(ar, ev, tpc_stats,
 				      rate_code, pream_table,
@@ -5031,16 +5035,13 @@ void ath10k_wmi_event_pdev_tpc_config(struct ath10k *ar, struct sk_buff *skb)
 	}
 
 	pream_idx = 0;
-	for (i = 0; i < __le32_to_cpu(ev->rate_max); i++) {
+	for (i = 0; i < tpc_stats->rate_max; i++) {
 		memset(tpc_value, 0, sizeof(tpc_value));
 		memset(buff, 0, sizeof(buff));
 		if (i == pream_table[pream_idx])
 			pream_idx++;
 
-		for (j = 0; j < WMI_TPC_TX_N_CHAIN; j++) {
-			if (j >= __le32_to_cpu(ev->num_tx_chain))
-				break;
-
+		for (j = 0; j < tpc_stats->num_tx_chain; j++) {
 			tpc[j] = ath10k_wmi_tpc_final_get_rate(ar, ev, i, j + 1,
 							       rate_code[i],
 							       type, pream_idx);
@@ -5056,7 +5057,7 @@ void ath10k_wmi_event_pdev_tpc_config(struct ath10k *ar, struct sk_buff *skb)
 
 void ath10k_wmi_event_tpc_final_table(struct ath10k *ar, struct sk_buff *skb)
 {
-	u32 num_tx_chain;
+	u32 num_tx_chain, rate_max;
 	u8 rate_code[WMI_TPC_FINAL_RATE_MAX];
 	u16 pream_table[WMI_TPC_PREAM_TABLE_MAX];
 	struct wmi_pdev_tpc_final_table_event *ev;
@@ -5064,12 +5065,24 @@ void ath10k_wmi_event_tpc_final_table(struct ath10k *ar, struct sk_buff *skb)
 
 	ev = (struct wmi_pdev_tpc_final_table_event *)skb->data;
 
+	num_tx_chain = __le32_to_cpu(ev->num_tx_chain);
+	if (num_tx_chain > WMI_TPC_TX_N_CHAIN) {
+		ath10k_warn(ar, "number of tx chain is %d greater than TPC final configured tx chain %d\n",
+			    num_tx_chain, WMI_TPC_TX_N_CHAIN);
+		return;
+	}
+
+	rate_max = __le32_to_cpu(ev->rate_max);
+	if (rate_max > WMI_TPC_FINAL_RATE_MAX) {
+		ath10k_warn(ar, "number of rate is %d greater than TPC final configured rate %d\n",
+			    rate_max, WMI_TPC_FINAL_RATE_MAX);
+		rate_max = WMI_TPC_FINAL_RATE_MAX;
+	}
+
 	tpc_stats = kzalloc(sizeof(*tpc_stats), GFP_ATOMIC);
 	if (!tpc_stats)
 		return;
 
-	num_tx_chain = __le32_to_cpu(ev->num_tx_chain);
-
 	ath10k_wmi_tpc_config_get_rate_code(rate_code, pream_table,
 					    num_tx_chain);
 
@@ -5082,8 +5095,8 @@ void ath10k_wmi_event_tpc_final_table(struct ath10k *ar, struct sk_buff *skb)
 		__le32_to_cpu(ev->twice_antenna_reduction);
 	tpc_stats->power_limit = __le32_to_cpu(ev->power_limit);
 	tpc_stats->twice_max_rd_power = __le32_to_cpu(ev->twice_max_rd_power);
-	tpc_stats->num_tx_chain = __le32_to_cpu(ev->num_tx_chain);
-	tpc_stats->rate_max = __le32_to_cpu(ev->rate_max);
+	tpc_stats->num_tx_chain = num_tx_chain;
+	tpc_stats->rate_max = rate_max;
 
 	ath10k_wmi_tpc_stats_final_disp_tables(ar, ev, tpc_stats,
 					       rate_code, pream_table,
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
