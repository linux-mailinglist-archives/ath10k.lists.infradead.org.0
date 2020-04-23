Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0A11B52A8
	for <lists+ath10k@lfdr.de>; Thu, 23 Apr 2020 04:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ya9qVLzgx9GIPntaF5j5E/hbVoWbvqs4/fa3c7ZcaLE=; b=omFUon+++bW8SS
	MmTsDRoTOpgywlMWRYkY1OPdRpiXlCRHLAsVEVwWfr636ynSNGb8ZlLXoG2RI+yvbBazCScQWZphK
	j9UJfe49bhIEouNah/lRB3YY3Be0PC6YiGhaZbDTsCqyfsEU6z9ILxfWoPHgZyH4sV41svrewaKo2
	U17Gru11cM4+Uji3x5ieaQNNQY4T5SIYpFc9dJRxUTV+OpzZ1lSfAd0rDY6/SzROmBrymAyGfzH2R
	4Z/9D4xwD4VPxGnCZ3dQXdfxYRzaIiyU0SmkFVS0kYNkVGoA4Ej4HtLl0IzIkkXj21kFlPcoMchv/
	RCdjTqPVW2kkKkRR5HAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRRov-00045k-BN; Thu, 23 Apr 2020 02:42:33 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRRon-00044J-2X
 for ath10k@lists.infradead.org; Thu, 23 Apr 2020 02:42:31 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587609747; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=tbRyexWXSxZmHkkyvkQyQ6qIGrWlODsLIlrE1ItUoRo=;
 b=kfOEA8085C4s6zCLlP4LbJW2aXKXWaBgnOlQQUG+vyQdxY7siA1nmsJPTChph6k2PilwLncY
 GqRpG3rLdvt8EB/q1uqaP7CRr50RKn1UcM/H8FClfc+NmBXet+PEMargHf4bkPolS3H4/hW+
 IRcWm9cXeebVAGuGn5b1agVw7pI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea10083.7f6bc6d4cf10-smtp-out-n05;
 Thu, 23 Apr 2020 02:42:11 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D545DC433F2; Thu, 23 Apr 2020 02:42:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 64345C433CB;
 Thu, 23 Apr 2020 02:42:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 64345C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: add statistics of tx retries and tx failed when tx
 complete disable
Date: Thu, 23 Apr 2020 10:41:34 +0800
Message-Id: <20200423024134.10601-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_194227_448973_CACB6568 
X-CRM114-Status: GOOD (  10.96  )
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
Cc: linux-wireless@vger.kernel.org, wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

When tx complete is disabled, all tx status will be set with status
HTT_TX_COMPL_STATE_ACK and indicate to mac80211 by ieee80211_tx_status,
then it does not have the statistics for retries and failed packets.
count of tx retries and tx failed of command "iw wlan0 station dump"
are both 0. If tx complete is not disabled, then firmware report the
tx status and ath10k indicate the status to mac80211, then mac80211
save the statistics and command "iw wlan0 station dump" show them.

for example:
localhost ~ # iw dev wlan0 station dump
Station 3c:28:6d:96:fd:69 (on wlan0)
	inactive time:	5 ms
	rx bytes:	1325012
	rx packets:	6477
	tx bytes:	85264
	tx packets:	518
	tx retries:	0
	tx failed:	0

This patch only effect chips with tx complete disabled, e.g. SDIO.

with this patch, output of command "iw dev wlan0 station dump":
Station c4:04:15:5d:97:22 (on wlan0)
        inactive time:  608 ms
        rx bytes:       180366
        rx packets:     991
        tx bytes:       98765577
        tx packets:     64624
        tx retries:     14682
        tx failed:      47086

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/core.h   | 2 ++
 drivers/net/wireless/ath/ath10k/htt_rx.c | 7 +++++++
 drivers/net/wireless/ath/ath10k/mac.c    | 7 +++++++
 3 files changed, 16 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
index d6adcbaf9616..07935d39d6d6 100644
--- a/drivers/net/wireless/ath/ath10k/core.h
+++ b/drivers/net/wireless/ath/ath10k/core.h
@@ -500,6 +500,8 @@ struct ath10k_sta {
 	u16 peer_id;
 	struct rate_info txrate;
 	struct ieee80211_tx_info tx_info;
+	u32 tx_retries;
+	u32 tx_failed;
 	u32 last_tx_bitrate;
 
 	struct work_struct update_wk;
diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index 816af1a8ad69..d787cbead56a 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -3574,6 +3574,13 @@ ath10k_update_per_peer_tx_stats(struct ath10k *ar,
 		ieee80211_tx_rate_update(ar->hw, sta, &arsta->tx_info);
 	}
 
+	if (ar->htt.disable_tx_comp) {
+		arsta->tx_retries += peer_stats->retry_pkts;
+		arsta->tx_failed += peer_stats->failed_pkts;
+		ath10k_dbg(ar, ATH10K_DBG_HTT, "htt tx retries %d tx failed %d\n",
+			   arsta->tx_retries, arsta->tx_failed);
+	}
+
 	if (ath10k_debug_is_extd_tx_stats_enabled(ar))
 		ath10k_accumulate_per_peer_tx_stats(ar, arsta, peer_stats,
 						    rate_idx);
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 6791c0035be0..842ae5a529ad 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -8321,6 +8321,13 @@ static void ath10k_sta_statistics(struct ieee80211_hw *hw,
 	}
 	sinfo->txrate.flags = arsta->txrate.flags;
 	sinfo->filled |= BIT_ULL(NL80211_STA_INFO_TX_BITRATE);
+
+	if (ar->htt.disable_tx_comp) {
+		sinfo->tx_retries = arsta->tx_retries;
+		sinfo->filled |= BIT_ULL(NL80211_STA_INFO_TX_RETRIES);
+		sinfo->tx_failed = arsta->tx_failed;
+		sinfo->filled |= BIT_ULL(NL80211_STA_INFO_TX_FAILED);
+	}
 }
 
 static const struct ieee80211_ops ath10k_ops = {
-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
