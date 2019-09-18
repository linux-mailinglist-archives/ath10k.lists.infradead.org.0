Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6519AB60AC
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 11:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eq4AieeEyGbZImTtqPubxFOlHoOR+o3TiJm4D6SVbcM=; b=bcSTC3+xAkuU1ItAe8zs9i5GGp
	rIOakqSiezkc9I60N8unEq4T1WfmJjGy6ddXCGT0sYwu2wDRsodAbNU7e/wx8Y4Es7dTGJGPLB1H8
	Na1eISZfQBmIGzpFVCXOPCWdP9AGzrOe/oiul0DdvKAGYgZEJcAPDxUfVrP+MzWJtgqcyqaKaTeWe
	8vN9Kn1puE+1rOzsPK7ZrmAiNKNp12ZO5xNuwK+ZbB4bCqwB7Bhw1gdqNMfDPPwCt5KPFT0Zkr7RE
	PDrBwScfpbWx+1Phqc9X32bTLJ0Ik1uyu2g2Ekcadrav41rr05xpch3gF3Kc8BWNvOZx/hl4CgIOE
	Ux6qOhVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWYs-0003QW-3r; Wed, 18 Sep 2019 09:47:46 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWYi-0003L5-Ra
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 09:47:38 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 85542615BF; Wed, 18 Sep 2019 09:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568800056;
 bh=5JX1lmW17g+qL2td3nPo8cfxcZfFp8VfKyS13RecPRY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XagH7bk2TRI/rh1Phyvi2AUP7GHmLeWu1w8QVwXeVE4jl4+NpI3gEp4rDUsTLhKZW
 ghjNrukk9OXuwM/RVpuIhjnxlQv6Zl6+Fh2VzwwwW7Cqj6g1KK1TCpsqtqBti1Pcxe
 ISRvjLRsjgT/SNloST3ZjWOl8mo7rI9VAULu87oU=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C0BCF6155C;
 Wed, 18 Sep 2019 09:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568800055;
 bh=5JX1lmW17g+qL2td3nPo8cfxcZfFp8VfKyS13RecPRY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GQWakng+ZnJoXt9IQBtU8JtQREK9c5gI5KNdcnqT9Pr6cYER7ak6EFiVxwi+jfZAk
 GuARZtSzmbCzPgTxJNURQJxOOh4nr44B9sSGoRsfHKRG36y6lf+Ecc6hhCzhJEF2Ys
 pxZYc5j8jQ1eVZhP2epcVWpUI7dRlId6WF8izSfI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C0BCF6155C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH V2 4/4] mac80211: Sync airtime weight sum with per AC synced
 sta airtime weight together
Date: Wed, 18 Sep 2019 17:47:13 +0800
Message-Id: <1568800033-17297-4-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568800033-17297-1-git-send-email-yiboz@codeaurora.org>
References: <1568800033-17297-1-git-send-email-yiboz@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_024737_113124_474A4B92 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
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
 net/mac80211/cfg.c      | 27 +++++++++++++++++++++++++--
 net/mac80211/sta_info.c |  6 ++++--
 net/mac80211/sta_info.h |  3 +++
 net/mac80211/tx.c       |  4 ++--
 4 files changed, 34 insertions(+), 6 deletions(-)

diff --git a/net/mac80211/cfg.c b/net/mac80211/cfg.c
index d65aa01..4b420bb 100644
--- a/net/mac80211/cfg.c
+++ b/net/mac80211/cfg.c
@@ -1284,7 +1284,8 @@ static int sta_apply_parameters(struct ieee80211_local *local,
 	int ret = 0;
 	struct ieee80211_supported_band *sband;
 	struct ieee80211_sub_if_data *sdata = sta->sdata;
-	u32 mask, set;
+	u32 mask, set, tid, ac;
+	struct txq_info *txqi;
 
 	sband = ieee80211_get_sband(sdata);
 	if (!sband)
@@ -1452,8 +1453,30 @@ static int sta_apply_parameters(struct ieee80211_local *local,
 	if (ieee80211_vif_is_mesh(&sdata->vif))
 		sta_apply_mesh_params(local, sta, params);
 
-	if (params->airtime_weight)
+	if (params->airtime_weight &&
+	    params->airtime_weight != sta->airtime_weight) {
+		for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
+			spin_lock_bh(&local->active_txq_lock[ac]);
+			for (tid = 0; tid < IEEE80211_NUM_TIDS + 1; tid++) {
+				if (!sta->sta.txq[tid] ||
+				    ac != ieee80211_ac_from_tid(tid))
+					continue;
+
+				sta->airtime_weight_synced[ac] =
+							params->airtime_weight;
+
+				txqi = to_txq_info(sta->sta.txq[tid]);
+				if (RB_EMPTY_NODE(&txqi->schedule_order))
+					continue;
+
+				local->airtime_weight_sum[ac] = local->airtime_weight_sum[ac] +
+								params->airtime_weight -
+								sta->airtime_weight;
+			}
+			spin_unlock_bh(&local->active_txq_lock[ac]);
+		}
 		sta->airtime_weight = params->airtime_weight;
+	}
 
 	/* set the STA state after all sta info from usermode has been set */
 	if (test_sta_flag(sta, WLAN_STA_TDLS_PEER) ||
diff --git a/net/mac80211/sta_info.c b/net/mac80211/sta_info.c
index feac975..b00812f 100644
--- a/net/mac80211/sta_info.c
+++ b/net/mac80211/sta_info.c
@@ -389,6 +389,7 @@ struct sta_info *sta_info_alloc(struct ieee80211_sub_if_data *sdata,
 	for (i = 0; i < IEEE80211_NUM_ACS; i++) {
 		skb_queue_head_init(&sta->ps_tx_buf[i]);
 		skb_queue_head_init(&sta->tx_filtered[i]);
+		sta->airtime_weight_synced[i] = sta->airtime_weight;
 	}
 
 	for (i = 0; i < IEEE80211_NUM_TIDS; i++)
@@ -1850,11 +1851,12 @@ void ieee80211_sta_register_airtime(struct ieee80211_sta *pubsta, u8 tid,
 	sta->airtime[ac].tx_airtime += tx_airtime;
 	sta->airtime[ac].rx_airtime += rx_airtime;
 
-	weight_sum = local->airtime_weight_sum[ac] ?: sta->airtime_weight;
+	weight_sum = local->airtime_weight_sum[ac] ?
+					: sta->airtime_weight_synced[ac];
 
 	/* Round the calculation of global vt */
 	local->airtime_v_t[ac] += (airtime + (weight_sum >> 1)) / weight_sum;
-	sta->airtime[ac].v_t += airtime / sta->airtime_weight;
+	sta->airtime[ac].v_t += airtime / sta->airtime_weight_synced[ac];
 	ieee80211_resort_txq(&local->hw, txq);
 
 	spin_unlock_bh(&local->active_txq_lock[ac]);
diff --git a/net/mac80211/sta_info.h b/net/mac80211/sta_info.h
index 5055f94..1298902 100644
--- a/net/mac80211/sta_info.h
+++ b/net/mac80211/sta_info.h
@@ -476,6 +476,8 @@ struct ieee80211_sta_rx_stats {
  * @tid_seq: per-TID sequence numbers for sending to this STA
  * @airtime: per-AC struct airtime_info describing airtime statistics for this
  *	station
+ * @airtime_weight_synced: station per-AC airtime weight for sync and
+ *  calculation
  * @airtime_weight: station weight for airtime fairness calculation purposes
  * @ampdu_mlme: A-MPDU state machine state
  * @mesh: mesh STA information
@@ -602,6 +604,7 @@ struct sta_info {
 	u16 tid_seq[IEEE80211_QOS_CTL_TID_MASK + 1];
 
 	struct airtime_info airtime[IEEE80211_NUM_ACS];
+	u16 airtime_weight_synced[IEEE80211_NUM_ACS];
 	u16 airtime_weight;
 
 	/*
diff --git a/net/mac80211/tx.c b/net/mac80211/tx.c
index 60cf569..3592d49 100644
--- a/net/mac80211/tx.c
+++ b/net/mac80211/tx.c
@@ -3735,7 +3735,7 @@ void ieee80211_schedule_txq(struct ieee80211_hw *hw,
 		struct sta_info *sta = container_of(txq->sta,
 						    struct sta_info, sta);
 
-		local->airtime_weight_sum[ac] += sta->airtime_weight;
+		local->airtime_weight_sum[ac] += sta->airtime_weight_synced[ac];
 		if (local->airtime_v_t[ac] > AIRTIME_GRACE)
 			sta->airtime[ac].v_t = max(local->airtime_v_t[ac] - AIRTIME_GRACE,
 						   sta->airtime[ac].v_t);
@@ -3779,7 +3779,7 @@ static void __ieee80211_unschedule_txq(struct ieee80211_hw *hw,
 		struct sta_info *sta = container_of(txq->sta,
 						    struct sta_info, sta);
 
-		local->airtime_weight_sum[ac] -= sta->airtime_weight;
+		local->airtime_weight_sum[ac] -= sta->airtime_weight_synced[ac];
 	}
 
 	rb_erase_cached(&txqi->schedule_order,
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
