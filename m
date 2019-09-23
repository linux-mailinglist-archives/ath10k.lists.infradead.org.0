Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBECBAE70
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 09:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5cJeoBOjpHQgcP3lGHxDhSudN8xdLz63QV2hl2hiy1U=; b=lwIqKOY8gLQ39yykxqQWxjRiGA
	qIZO3BOIE+QWgc5a4N7/jGS/d6mumzbtkmq+wLT1HAb1kbehiLphb9xsvhn1HpbvhnL6dmMzniUqd
	UasGNd71C7ISKhsJl7THG7ZZjLq8kvb1vKlcMB2ZYO4HocmR6RWMzlwViJlkrCGjroto1iQaWHxdw
	e530yfZOm93w7QTvAtX342GDLmhQonFvF8hUOsWT1ohmYp0ifolyYQUSS2ZmME3pWZ1SbfLGQwGcg
	QB4HbQ4/Tp6QNZVDy9fGJooK50ccZhDa3DEbKM8/fPx5JRdBoiUAfka8ZO7kvBhhZL6VQx/X+mfXd
	jHYn6Zhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCIf3-0004n2-Pw; Mon, 23 Sep 2019 07:21:29 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIey-0004mf-Cx
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 07:21:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 181236119D; Mon, 23 Sep 2019 07:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569223284;
 bh=QOr1xtTvRdl959k+VuKolAIFQ7BtsUhs68ifiIiIPjY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UzAWkR+TF1tZe+g3XEjfZLI/Bc+Jo0lfNXHdsvxYrwgW9oHyn4kTJq0HB5Ckhvtt+
 ek8jP8m75OsH8HySmvtsv488acqkxMCe21dShDly2QosHU4DKMLwyHmU5eA61rkEMP
 e7y5IomPa71lYbc0yqEZyzhQVBW1RdngJE3+K3DI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from ybzhao-HP-Z230-SFF-Workstation.ap.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: yiboz@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4B32B60274;
 Mon, 23 Sep 2019 07:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569223283;
 bh=QOr1xtTvRdl959k+VuKolAIFQ7BtsUhs68ifiIiIPjY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CSCHa5Dj2Zl3Spd9inCm3XR+kNkY4Mp2nZuJgcdI1+tIgL7SvIgnzUIRWtqsUDmAM
 NvX+yrkCvzbZ7GdAXAJCtXCTmWHlD+SAb5D8mAGzKdAd0JGgDBmMD7xhmV/K3JIglY
 UtSrQlZ7MEKQR1P8Ws0ar5HNStmjpIWansp/sctE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4B32B60274
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: linux-wireless@vger.kernel.org
Subject: [PATCH V3 4/4] mac80211: Sync airtime weight sum with per AC synced
 sta airtime weight together
Date: Mon, 23 Sep 2019 15:20:01 +0800
Message-Id: <1569223201-1490-5-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_002124_475391_5719D727 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Global airtime weight sum is updated only when txq is added/removed
from rbtree. If upper layer configures sta weight during high load,
airtime weight sum will not be updated since txq is most likely on the
tree. It could a little late for upper layer to reconfigure sta weight
when txq is already in the rbtree. And thus, incorrect airtime weight sum
will lead to incorrect global virtual time calculation as well as overflow
of airtime weight sum during txq removed.

Hence, need to update airtime weight sum upon receiving event for
configuring sta weight once sta's txq is on the rbtree.

Besides, if airtime weight sum of ACs and sta weight is synced under the
same per AC lock protection, there can be a very short window causing
incorrct airtime weight sum calculation as below:

    active_txq_lock_VO                          .
    VO weight sum is syncd			.
    sta airtime weight sum is synced		.
    active_txq_unlock_VO			.
    .						.
    active_txq_lock_VI    			.
    VI weight sum is syncd			.
    sta airtime weight sum		active_txq_lock_BE
    active_txq_unlock_VI	      Remove txq and thus sum
    .				      is calculated with synced
    .				      sta airtime weight
    .					active_txq_unlock_BE

So introduce a per ac synced station airtime weight synced with per
AC synced weight sum together. And the per-AC station airtime weight
is used to calculate weight sum.

Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
---
 net/mac80211/cfg.c         | 29 ++++++++++++++++++++++++++---
 net/mac80211/debugfs_sta.c |  2 +-
 net/mac80211/sta_info.c    |  9 ++++-----
 net/mac80211/sta_info.h    |  5 +++--
 net/mac80211/tx.c          |  4 ++--
 5 files changed, 36 insertions(+), 13 deletions(-)

diff --git a/net/mac80211/cfg.c b/net/mac80211/cfg.c
index d65aa01..c8a0683 100644
--- a/net/mac80211/cfg.c
+++ b/net/mac80211/cfg.c
@@ -1284,7 +1284,8 @@ static int sta_apply_parameters(struct ieee80211_local *local,
 	int ret = 0;
 	struct ieee80211_supported_band *sband;
 	struct ieee80211_sub_if_data *sdata = sta->sdata;
-	u32 mask, set;
+	u32 mask, set, tid, ac, pre_weight;
+	struct txq_info *txqi;
 
 	sband = ieee80211_get_sband(sdata);
 	if (!sband)
@@ -1452,8 +1453,30 @@ static int sta_apply_parameters(struct ieee80211_local *local,
 	if (ieee80211_vif_is_mesh(&sdata->vif))
 		sta_apply_mesh_params(local, sta, params);
 
-	if (params->airtime_weight)
-		sta->airtime_weight = params->airtime_weight;
+	if (params->airtime_weight &&
+	    params->airtime_weight != sta->airtime_weight) {
+		for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
+			spin_lock_bh(&local->active_txq_lock[ac]);
+			for (tid = 0; tid < IEEE80211_NUM_TIDS + 1; tid++) {
+				if (!sta->sta.txq[tid] ||
+				    ac != ieee80211_ac_from_tid(tid))
+					continue;
+
+				pre_weight = sta->airtime_weight[ac];
+				sta->airtime_weight[ac] =
+						params->airtime_weight;
+
+				txqi = to_txq_info(sta->sta.txq[tid]);
+				if (RB_EMPTY_NODE(&txqi->schedule_order))
+					continue;
+
+				local->airtime_weight_sum[ac] = local->airtime_weight_sum[ac] +
+								params->airtime_weight -
+								pre_weight;
+			}
+			spin_unlock_bh(&local->active_txq_lock[ac]);
+		}
+	}
 
 	/* set the STA state after all sta info from usermode has been set */
 	if (test_sta_flag(sta, WLAN_STA_TDLS_PEER) ||
diff --git a/net/mac80211/debugfs_sta.c b/net/mac80211/debugfs_sta.c
index 80028da..43a7e6a 100644
--- a/net/mac80211/debugfs_sta.c
+++ b/net/mac80211/debugfs_sta.c
@@ -223,7 +223,7 @@ static ssize_t sta_airtime_read(struct file *file, char __user *userbuf,
 		"Virt-T: VO: %lld us VI: %lld us BE: %lld us BK: %lld us\n",
 		rx_airtime,
 		tx_airtime,
-		sta->airtime_weight,
+		sta->airtime_weight[0],
 		v_t[0],
 		v_t[1],
 		v_t[2],
diff --git a/net/mac80211/sta_info.c b/net/mac80211/sta_info.c
index feac975..e599cf1 100644
--- a/net/mac80211/sta_info.c
+++ b/net/mac80211/sta_info.c
@@ -384,11 +384,10 @@ struct sta_info *sta_info_alloc(struct ieee80211_sub_if_data *sdata,
 	if (sta_prepare_rate_control(local, sta, gfp))
 		goto free_txq;
 
-	sta->airtime_weight = IEEE80211_DEFAULT_AIRTIME_WEIGHT;
-
 	for (i = 0; i < IEEE80211_NUM_ACS; i++) {
 		skb_queue_head_init(&sta->ps_tx_buf[i]);
 		skb_queue_head_init(&sta->tx_filtered[i]);
+		sta->airtime_weight[i] = IEEE80211_DEFAULT_AIRTIME_WEIGHT;
 	}
 
 	for (i = 0; i < IEEE80211_NUM_TIDS; i++)
@@ -1850,11 +1849,11 @@ void ieee80211_sta_register_airtime(struct ieee80211_sta *pubsta, u8 tid,
 	sta->airtime[ac].tx_airtime += tx_airtime;
 	sta->airtime[ac].rx_airtime += rx_airtime;
 
-	weight_sum = local->airtime_weight_sum[ac] ?: sta->airtime_weight;
+	weight_sum = local->airtime_weight_sum[ac] ?: sta->airtime_weight[ac];
 
 	/* Round the calculation of global vt */
 	local->airtime_v_t[ac] += (airtime + (weight_sum >> 1)) / weight_sum;
-	sta->airtime[ac].v_t += airtime / sta->airtime_weight;
+	sta->airtime[ac].v_t += airtime / sta->airtime_weight[ac];
 	ieee80211_resort_txq(&local->hw, txq);
 
 	spin_unlock_bh(&local->active_txq_lock[ac]);
@@ -2236,7 +2235,7 @@ void sta_set_sinfo(struct sta_info *sta, struct station_info *sinfo,
 	}
 
 	if (!(sinfo->filled & BIT_ULL(NL80211_STA_INFO_AIRTIME_WEIGHT))) {
-		sinfo->airtime_weight = sta->airtime_weight;
+		sinfo->airtime_weight = sta->airtime_weight[0];
 		sinfo->filled |= BIT_ULL(NL80211_STA_INFO_AIRTIME_WEIGHT);
 	}
 
diff --git a/net/mac80211/sta_info.h b/net/mac80211/sta_info.h
index 5055f94..2697343 100644
--- a/net/mac80211/sta_info.h
+++ b/net/mac80211/sta_info.h
@@ -476,7 +476,8 @@ struct ieee80211_sta_rx_stats {
  * @tid_seq: per-TID sequence numbers for sending to this STA
  * @airtime: per-AC struct airtime_info describing airtime statistics for this
  *	station
- * @airtime_weight: station weight for airtime fairness calculation purposes
+ * @airtime_weight: station per-AC weight for airtime fairness calculation
+ * purposes
  * @ampdu_mlme: A-MPDU state machine state
  * @mesh: mesh STA information
  * @debugfs_dir: debug filesystem directory dentry
@@ -602,7 +603,7 @@ struct sta_info {
 	u16 tid_seq[IEEE80211_QOS_CTL_TID_MASK + 1];
 
 	struct airtime_info airtime[IEEE80211_NUM_ACS];
-	u16 airtime_weight;
+	u16 airtime_weight[IEEE80211_NUM_ACS];
 
 	/*
 	 * Aggregation information, locked with lock.
diff --git a/net/mac80211/tx.c b/net/mac80211/tx.c
index 60cf569..286cf14 100644
--- a/net/mac80211/tx.c
+++ b/net/mac80211/tx.c
@@ -3735,7 +3735,7 @@ void ieee80211_schedule_txq(struct ieee80211_hw *hw,
 		struct sta_info *sta = container_of(txq->sta,
 						    struct sta_info, sta);
 
-		local->airtime_weight_sum[ac] += sta->airtime_weight;
+		local->airtime_weight_sum[ac] += sta->airtime_weight[ac];
 		if (local->airtime_v_t[ac] > AIRTIME_GRACE)
 			sta->airtime[ac].v_t = max(local->airtime_v_t[ac] - AIRTIME_GRACE,
 						   sta->airtime[ac].v_t);
@@ -3779,7 +3779,7 @@ static void __ieee80211_unschedule_txq(struct ieee80211_hw *hw,
 		struct sta_info *sta = container_of(txq->sta,
 						    struct sta_info, sta);
 
-		local->airtime_weight_sum[ac] -= sta->airtime_weight;
+		local->airtime_weight_sum[ac] -= sta->airtime_weight[ac];
 	}
 
 	rb_erase_cached(&txqi->schedule_order,
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
