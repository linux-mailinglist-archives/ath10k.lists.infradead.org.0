Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0823811DE86
	for <lists+ath10k@lfdr.de>; Fri, 13 Dec 2019 08:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lYUDC9qx9DohC4EX7VZ8kUrRJoFMBXCgz495n3KyLfo=; b=cs2jToHsQj6PJnrqxvHZkl4oxJ
	1nsvyZacb0JZ7g2jvXcBysIDkqICerONJaxIV2NoH1esCRTKUjVgTey0pXtPvUC8q8WIx4LhHdclf
	JkgQtcBfN7qLjVD6YH2tt0RfxPH/4TBPlCLpfPQ1S5Drk7TqDJWYZnyXnQSHP/cL/EF6ia0A+mlXE
	h+zKaXmIVDWBIOS9X3waifz+cvNSod1uKECJFt1o6kS3bc1zGk5axA174DMWpk2zJeqjeZzDu1AFP
	QyjMMKp/bFthojebXeH1Remg83xW0LPemm/oiz96ot1aFX20DcC7ZeaoprNH0EeptqcorroxaJgJP
	hu/NP7PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffEa-0002fP-4O; Fri, 13 Dec 2019 07:19:32 +0000
Received: from m228-5.mailgun.net ([159.135.228.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffEP-0002Xj-Lm
 for ath10k@lists.infradead.org; Fri, 13 Dec 2019 07:19:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576221561; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=YXtkS+WCDRchtLlhZcdIFPjO82KlbppU6JgdHQbzzmE=;
 b=AJ6p2hYAhaCVHw+b7ibgS/TStr8ujVmTTtqsrI30Q6tMJObuEH59eCEvValge2Z7wdqI6JBt
 bTD21ZikTcxsq4rhEubavDEpYWtR5G9xrtH5ptETUye/Gts6cvOF6eMaYRPcexdrLy/KG6Pf
 I1cd283QRTq1E/fDT22nk4il1vs=
X-Mailgun-Sending-Ip: 159.135.228.5
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df33b77.7f132bbdb0a0-smtp-out-n02;
 Fri, 13 Dec 2019 07:19:19 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E3CC7C4479F; Fri, 13 Dec 2019 07:19:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from ybzhao-HP-Z230-SFF-Workstation.ap.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: yiboz)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E0E0AC43383;
 Fri, 13 Dec 2019 07:19:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E0E0AC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: linux-wireless@vger.kernel.org
Subject: [PATCH 2/4] mac80211: fix issue in loop scenario
Date: Fri, 13 Dec 2019 15:19:51 +0800
Message-Id: <1576221593-1086-3-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_231921_833859_02EE0D27 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.135.228.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

In a loop txqs dequeue scenario, if the first txq in the rbtree gets
removed from rbtree immediately in the ieee80211_return_txq(), the
loop will break soon in the ieee80211_next_txq() due to schedule_pos
not leading to the second txq in the rbtree. Thus update schedule_pos
to previous node once the node of schedule_pos is either removed from
rbtree or move to other location in rbtree due to airtime update.

Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
---
 net/mac80211/ieee80211_i.h |  2 ++
 net/mac80211/tx.c          | 14 +++++++++++++-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/net/mac80211/ieee80211_i.h b/net/mac80211/ieee80211_i.h
index a4556f9..ed85400 100644
--- a/net/mac80211/ieee80211_i.h
+++ b/net/mac80211/ieee80211_i.h
@@ -847,6 +847,7 @@ struct txq_info {
 	struct codel_stats cstats;
 	struct sk_buff_head frags;
 	struct rb_node schedule_order;
+	u16 schedule_round;
 	unsigned long flags;
 
 	/* keep last! */
@@ -1144,6 +1145,7 @@ struct ieee80211_local {
 	struct rb_node *schedule_pos[IEEE80211_NUM_ACS];
 	u64 airtime_v_t[IEEE80211_NUM_ACS];
 	u64 airtime_weight_sum[IEEE80211_NUM_ACS];
+	u16 schedule_round[IEEE80211_NUM_ACS];
 
 	u16 airtime_flags;
 
diff --git a/net/mac80211/tx.c b/net/mac80211/tx.c
index d00baaa..c1444e7 100644
--- a/net/mac80211/tx.c
+++ b/net/mac80211/tx.c
@@ -3644,6 +3644,7 @@ struct ieee80211_txq *ieee80211_next_txq(struct ieee80211_hw *hw, u8 ac)
 
 	lockdep_assert_held(&local->active_txq_lock[ac]);
 
+begin:
 	if (!node) {
 		node = rb_first_cached(&local->active_txqs[ac]);
 		first = true;
@@ -3668,7 +3669,10 @@ struct ieee80211_txq *ieee80211_next_txq(struct ieee80211_hw *hw, u8 ac)
 		}
 	}
 
+	if (txqi->schedule_round == local->schedule_round[ac])
+		goto begin;
 
+	txqi->schedule_round = local->schedule_round[ac];
 	local->schedule_pos[ac] = node;
 	return &txqi->txq;
 }
@@ -3752,6 +3756,9 @@ void ieee80211_resort_txq(struct ieee80211_hw *hw,
 	u8 ac = txq->ac;
 
 	if (!RB_EMPTY_NODE(&txqi->schedule_order)) {
+		if (local->schedule_pos[ac] == &txqi->schedule_order)
+			local->schedule_pos[ac] = rb_prev(&txqi->schedule_order);
+
 		rb_erase_cached(&txqi->schedule_order,
 				&local->active_txqs[ac]);
 		RB_CLEAR_NODE(&txqi->schedule_order);
@@ -3771,6 +3778,9 @@ static void __ieee80211_unschedule_txq(struct ieee80211_hw *hw,
 	if (RB_EMPTY_NODE(&txqi->schedule_order))
 		return;
 
+	if (local->schedule_pos[ac] == &txqi->schedule_order)
+		local->schedule_pos[ac] = rb_prev(&txqi->schedule_order);
+
 	if (txq->sta) {
 		struct sta_info *sta = container_of(txq->sta,
 						    struct sta_info, sta);
@@ -3803,7 +3813,7 @@ void ieee80211_return_txq(struct ieee80211_hw *hw,
 	lockdep_assert_held(&local->active_txq_lock[txq->ac]);
 
 	if (!RB_EMPTY_NODE(&txqi->schedule_order) &&
-	    (skb_queue_empty(&txqi->frags) && !txqi->tin.backlog_packets))
+	    !txq_has_queue(&txqi->txq))
 		__ieee80211_unschedule_txq(hw, txq);
 }
 EXPORT_SYMBOL(ieee80211_return_txq);
@@ -3832,6 +3842,8 @@ void ieee80211_txq_schedule_start(struct ieee80211_hw *hw, u8 ac)
 	struct ieee80211_local *local = hw_to_local(hw);
 
 	spin_lock_bh(&local->active_txq_lock[ac]);
+	local->schedule_round[ac]++;
+
 }
 EXPORT_SYMBOL(ieee80211_txq_schedule_start);
 
-- 
1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
