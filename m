Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9454BAE6C
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 09:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SIdXOgHPRpZVG5XDMemeJlVtuC6LYaDKHV/DhH13qIs=; b=YXUtN6yG8OgfG6UJQSLkk28uaN
	VeTFKCN33012JKbW5Ct+kaZXX/STgH0lPj7VoGYkJeJFppZ+hbbE0FIV6YDS/8r7iBbhWZEj5n8vS
	wbn2U4fc0qCNDAS/3JFpURRa8YP4HcMMIAx2L9WpOVlbB1h46PvAS1aeaj0lLhvXlnJDE5yG84Bkq
	OMdTCyRwbPi3smD00TAb08BocfeoacNVIBHE9/k/fhIha466YOIEFCgv+vcnm7nEHer0Dfir3R0rT
	ORaFAtx396fTSCkpo+NqZEwnDoJC44oe8KDnBpArRHYJuYgs9nQ0+sF2mjh5svTnHW06KqZzfYCov
	6WvRcaAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCIeL-0004UH-9T; Mon, 23 Sep 2019 07:20:45 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIe9-0004OL-N5
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 07:20:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6A32E60A97; Mon, 23 Sep 2019 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569223233;
 bh=eMJuoELMx0uO8MB6MlLmuZe9uwvy3HKsG7301yJRfts=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YtLthnO7s3/GbbzETWD6UCKnZ57vR3kDIPX8gfUcZBOhQmPjsxzyrb3GXf7VN+A5f
 971sUFuqqmr8Njv5KzL12uR5vi0MOgpb+Z2Gp/pv9sASp4VCUm/sq3H54B84mZJl9e
 Z3Q6g5Urp4BCgaQl4AdTLYk9Bt6GSDmxvX3yg3x8=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C4261611CE;
 Mon, 23 Sep 2019 07:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569223232;
 bh=eMJuoELMx0uO8MB6MlLmuZe9uwvy3HKsG7301yJRfts=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hMZlV9zC7XcKhntZOwGFBWnEWDYn65BgbLXXSIqRFw02Z0qrldHcl6k7F/k2/gMj1
 Ux45KWi/EzjKvVWXUdGR6MsaGv0VySmhWocr/9MVggf1MBvkS6eanxtOnldAkXUuhe
 /gG4l/O91pwUI7tdhTXE2o1icxNpudL7p4Su38nE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C4261611CE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: linux-wireless@vger.kernel.org
Subject: [PATCH V3 2/4] mac80211: defer txqs removal from rbtree
Date: Mon, 23 Sep 2019 15:19:59 +0800
Message-Id: <1569223201-1490-3-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_002033_873653_8B4A2762 
X-CRM114-Status: GOOD (  15.14  )
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

In a loop txqs dequeue scenario, if the first txq in the rbtree gets
removed from rbtree immediately in the ieee80211_return_txq(), the
loop will break soon in the ieee80211_next_txq() due to schedule_pos
not leading to the second txq in the rbtree. Thus, defering the
removal right before the end of this schedule round.

Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
---
 include/net/mac80211.h     | 16 ++++++++++--
 net/mac80211/ieee80211_i.h |  3 +++
 net/mac80211/main.c        |  6 +++++
 net/mac80211/tx.c          | 63 +++++++++++++++++++++++++++++++++++++++++++---
 4 files changed, 83 insertions(+), 5 deletions(-)

diff --git a/include/net/mac80211.h b/include/net/mac80211.h
index ac2ed8e..ba5a345 100644
--- a/include/net/mac80211.h
+++ b/include/net/mac80211.h
@@ -925,6 +925,8 @@ struct ieee80211_tx_rate {
 
 #define IEEE80211_MAX_TX_RETRY		31
 
+#define IEEE80211_AIRTIME_TXQ_RM_CHK_INTV_IN_MS 100
+
 static inline void ieee80211_rate_set_vht(struct ieee80211_tx_rate *rate,
 					  u8 mcs, u8 nss)
 {
@@ -6232,7 +6234,8 @@ struct sk_buff *ieee80211_tx_dequeue(struct ieee80211_hw *hw,
  * @ac: AC number to return packets from.
  *
  * Should only be called between calls to ieee80211_txq_schedule_start()
- * and ieee80211_txq_schedule_end().
+ * and ieee80211_txq_schedule_end(). If the txq is empty, it will be added
+ * to a remove list and get removed later.
  * Returns the next txq if successful, %NULL if no queue is eligible. If a txq
  * is returned, it should be returned with ieee80211_return_txq() after the
  * driver has finished scheduling it.
@@ -6268,7 +6271,8 @@ void ieee80211_txq_schedule_start(struct ieee80211_hw *hw, u8 ac)
  * @hw: pointer as obtained from ieee80211_alloc_hw()
  * @ac: AC number to acquire locks for
  *
- * Release locks previously acquired by ieee80211_txq_schedule_end().
+ * Release locks previously acquired by ieee80211_txq_schedule_end(). Check
+ * and remove the empty txq from rb-tree.
  */
 void ieee80211_txq_schedule_end(struct ieee80211_hw *hw, u8 ac)
 	__releases(txq_lock);
@@ -6287,6 +6291,14 @@ void ieee80211_schedule_txq(struct ieee80211_hw *hw, struct ieee80211_txq *txq)
 	__acquires(txq_lock) __releases(txq_lock);
 
 /**
+ * ieee80211_txqs_check - Check txqs waiting for removal
+ *
+ * @tmr: pointer as obtained from local
+ *
+ */
+void ieee80211_txqs_check(struct timer_list *tmr);
+
+/**
  * ieee80211_txq_may_transmit - check whether TXQ is allowed to transmit
  *
  * This function is used to check whether given txq is allowed to transmit by
diff --git a/net/mac80211/ieee80211_i.h b/net/mac80211/ieee80211_i.h
index a4556f9..49aa143e 100644
--- a/net/mac80211/ieee80211_i.h
+++ b/net/mac80211/ieee80211_i.h
@@ -847,6 +847,7 @@ struct txq_info {
 	struct codel_stats cstats;
 	struct sk_buff_head frags;
 	struct rb_node schedule_order;
+	struct list_head candidate;
 	unsigned long flags;
 
 	/* keep last! */
@@ -1145,6 +1146,8 @@ struct ieee80211_local {
 	u64 airtime_v_t[IEEE80211_NUM_ACS];
 	u64 airtime_weight_sum[IEEE80211_NUM_ACS];
 
+	struct list_head remove_list[IEEE80211_NUM_ACS];
+	struct timer_list remove_timer;
 	u16 airtime_flags;
 
 	const struct ieee80211_ops *ops;
diff --git a/net/mac80211/main.c b/net/mac80211/main.c
index e9ffa8e..78fe24a 100644
--- a/net/mac80211/main.c
+++ b/net/mac80211/main.c
@@ -667,10 +667,15 @@ struct ieee80211_hw *ieee80211_alloc_hw_nm(size_t priv_data_len,
 
 	for (i = 0; i < IEEE80211_NUM_ACS; i++) {
 		local->active_txqs[i] = RB_ROOT_CACHED;
+		INIT_LIST_HEAD(&local->remove_list[i]);
 		spin_lock_init(&local->active_txq_lock[i]);
 	}
 	local->airtime_flags = AIRTIME_USE_TX | AIRTIME_USE_RX;
 
+	timer_setup(&local->remove_timer, ieee80211_txqs_check, 0);
+	mod_timer(&local->remove_timer,
+		  jiffies + msecs_to_jiffies(IEEE80211_AIRTIME_TXQ_RM_CHK_INTV_IN_MS));
+
 	INIT_LIST_HEAD(&local->chanctx_list);
 	mutex_init(&local->chanctx_mtx);
 
@@ -1305,6 +1310,7 @@ void ieee80211_unregister_hw(struct ieee80211_hw *hw)
 	tasklet_kill(&local->tx_pending_tasklet);
 	tasklet_kill(&local->tasklet);
 
+	del_timer_sync(&local->remove_timer);
 #ifdef CONFIG_INET
 	unregister_inetaddr_notifier(&local->ifa_notifier);
 #endif
diff --git a/net/mac80211/tx.c b/net/mac80211/tx.c
index d00baaa..42ca010 100644
--- a/net/mac80211/tx.c
+++ b/net/mac80211/tx.c
@@ -1450,6 +1450,7 @@ void ieee80211_txq_init(struct ieee80211_sub_if_data *sdata,
 	codel_stats_init(&txqi->cstats);
 	__skb_queue_head_init(&txqi->frags);
 	RB_CLEAR_NODE(&txqi->schedule_order);
+	INIT_LIST_HEAD(&txqi->candidate);
 
 	txqi->txq.vif = &sdata->vif;
 
@@ -3724,6 +3725,9 @@ void ieee80211_schedule_txq(struct ieee80211_hw *hw,
 
 	spin_lock_bh(&local->active_txq_lock[ac]);
 
+	if (!list_empty(&txqi->candidate))
+		list_del_init(&txqi->candidate);
+
 	if (!RB_EMPTY_NODE(&txqi->schedule_order))
 		goto out;
 
@@ -3783,6 +3787,20 @@ static void __ieee80211_unschedule_txq(struct ieee80211_hw *hw,
 	RB_CLEAR_NODE(&txqi->schedule_order);
 }
 
+void ieee80211_remove_txq(struct ieee80211_hw *hw,
+			  struct ieee80211_txq *txq)
+{
+	struct ieee80211_local *local = hw_to_local(hw);
+	struct txq_info *txqi = to_txq_info(txq);
+
+	lockdep_assert_held(&local->active_txq_lock[txq->ac]);
+
+	if (!RB_EMPTY_NODE(&txqi->schedule_order)) {
+		__ieee80211_unschedule_txq(hw, txq);
+		list_del_init(&txqi->candidate);
+	}
+}
+
 void ieee80211_unschedule_txq(struct ieee80211_hw *hw,
 			      struct ieee80211_txq *txq)
 	__acquires(txq_lock) __releases(txq_lock)
@@ -3790,7 +3808,7 @@ void ieee80211_unschedule_txq(struct ieee80211_hw *hw,
 	struct ieee80211_local *local = hw_to_local(hw);
 
 	spin_lock_bh(&local->active_txq_lock[txq->ac]);
-	__ieee80211_unschedule_txq(hw, txq);
+	ieee80211_remove_txq(hw, txq);
 	spin_unlock_bh(&local->active_txq_lock[txq->ac]);
 }
 
@@ -3803,11 +3821,48 @@ void ieee80211_return_txq(struct ieee80211_hw *hw,
 	lockdep_assert_held(&local->active_txq_lock[txq->ac]);
 
 	if (!RB_EMPTY_NODE(&txqi->schedule_order) &&
-	    (skb_queue_empty(&txqi->frags) && !txqi->tin.backlog_packets))
-		__ieee80211_unschedule_txq(hw, txq);
+		!txq_has_queue(&txqi->txq) &&
+		list_empty(&txqi->candidate))
+		list_add_tail(&txqi->candidate, &local->remove_list[txq->ac]);
+
 }
 EXPORT_SYMBOL(ieee80211_return_txq);
 
+void __ieee80211_check_txqs(struct ieee80211_local *local, int ac)
+{
+	struct txq_info *iter, *tmp;
+	struct sta_info *sta;
+
+	lockdep_assert_held(&local->active_txq_lock[ac]);
+
+	list_for_each_entry_safe(iter, tmp, &local->remove_list[ac],
+				 candidate) {
+		sta = container_of(iter->txq.sta, struct sta_info, sta);
+
+		if (txq_has_queue(&iter->txq))
+			list_del_init(&iter->candidate);
+		else
+			ieee80211_remove_txq(&local->hw, &iter->txq);
+	}
+}
+
+void ieee80211_txqs_check(struct timer_list *t)
+{
+	struct ieee80211_local *local = from_timer(local, t, remove_timer);
+	struct txq_info *iter, *tmp;
+	struct sta_info *sta;
+	int ac;
+
+	for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
+		spin_lock_bh(&local->active_txq_lock[ac]);
+		__ieee80211_check_txqs(local, ac);
+		spin_unlock_bh(&local->active_txq_lock[ac]);
+	}
+
+	mod_timer(&local->remove_timer,
+		  jiffies + msecs_to_jiffies(IEEE80211_AIRTIME_TXQ_RM_CHK_INTV_IN_MS));
+}
+
 bool ieee80211_txq_may_transmit(struct ieee80211_hw *hw,
 				struct ieee80211_txq *txq)
 {
@@ -3841,6 +3896,8 @@ void ieee80211_txq_schedule_end(struct ieee80211_hw *hw, u8 ac)
 	struct ieee80211_local *local = hw_to_local(hw);
 
 	local->schedule_pos[ac] = NULL;
+	__ieee80211_check_txqs(local, ac);
+
 	spin_unlock_bh(&local->active_txq_lock[ac]);
 }
 EXPORT_SYMBOL(ieee80211_txq_schedule_end);
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
