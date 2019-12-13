Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 657D311DE87
	for <lists+ath10k@lfdr.de>; Fri, 13 Dec 2019 08:19:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BNtG3Jl+Zv4FJjXMeWo9tcNyTEVUoCy/LoqMCXfWCBU=; b=jLYw02J9z8Xy3za4GLWeJHR9E+
	XRFVs61odLVk0JKAwHKktQWzfBE73YyUv9JRvF1PyIjPcxLkPCXNpdOb1NdHQu5+ZTqDXPc2xLDX+
	qzBuBhDp5UhN4pAsLMcX/mZcUk9m36k+B9UwgoCqOVnyeymqwRAAbvG0sEmOjkHDcQmws9tcvLHti
	7oRfugVwPGkDKd5Dbs5k8xTkp94qOJwYxKcbL/sOq1+Fwty11JbQDcxJ6T9M7hiKVuE+lMuEuQvFt
	UFnzd1xcC00n6wx9v8LvNqtNyJln8f4uS845pMlD/LHZl/Jv1y0EXL9U90ZyllGQK/TG0HMjWtNo8
	YOOoI6CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffEf-0002nZ-Rn; Fri, 13 Dec 2019 07:19:37 +0000
Received: from m228-4.mailgun.net ([159.135.228.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffER-0002YL-6c
 for ath10k@lists.infradead.org; Fri, 13 Dec 2019 07:19:24 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576221563; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=XNpN3pNlMo4tSut6/1EubIcb6843QC7lvbIt+YGPNIQ=;
 b=bLs5rODNLj88br4FJ2tiEAvVS8zUIAi2UFO7m4qUa0Lp9F07+3Cge9ZIAdBOQB5N+9JoE3Zy
 cd0eQqd3D5TM1LF8iFmeMb1/J6EII4SN1WpzVItfF2zFSToeEVscedkLr4gYg8TC5d3JEP+3
 xogB4pDXUg0ojBoJViaAeyAoNT8=
X-Mailgun-Sending-Ip: 159.135.228.4
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df33b7a.7f5a99eec688-smtp-out-n02;
 Fri, 13 Dec 2019 07:19:22 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 298D4C433A2; Fri, 13 Dec 2019 07:19:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from ybzhao-HP-Z230-SFF-Workstation.ap.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: yiboz)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E3A9AC43383;
 Fri, 13 Dec 2019 07:19:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E3A9AC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: linux-wireless@vger.kernel.org
Subject: [PATCH 3/4] mac80211: fix low throughput in multi-clients situation
Date: Fri, 13 Dec 2019 15:19:52 +0800
Message-Id: <1576221593-1086-4-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_231923_355890_BFF93142 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.135.228.4 listed in list.dnswl.org]
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

Not long after the start of multi-clients test, not a single station is
an eligible candidate for transmission since global virtual time(g_vt) is
smaller than the virtual airtime(s_vt) of all the stations. As a result,
the Tx has been blocked and throughput is quite low.

This may mainly due accumulative deviation from the devision calculation
of g_vt.

For example:
Suppose we have 50 clients in first round.
Round 1:
STA	weight	Tx_time_round  wt_sum	s_vt	g_vt  valid_for_next_Tx
1	256	2048		12800	2048	2000	N
2	256	2048			2048		N
.	.	.			.		.
.	.	.			.		.
.	.	.			.		.
50	256	2048			2048		N

After this round, all the stations are not valid for next transmission due to
accumulative deviation.

The real situation can be more complicate, above is one of the extremely case.

To avoid this situation to occur, the new proposal is:

- If global virtual time is less than the virtual airtime of any station,
  sync it to the airtime of first station in the red-black tree

- Round the division result

Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
---
 net/mac80211/sta_info.c |  3 ++-
 net/mac80211/tx.c       | 16 +++++++++++++++-
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/net/mac80211/sta_info.c b/net/mac80211/sta_info.c
index 9d01fdd..feac975 100644
--- a/net/mac80211/sta_info.c
+++ b/net/mac80211/sta_info.c
@@ -1852,7 +1852,8 @@ void ieee80211_sta_register_airtime(struct ieee80211_sta *pubsta, u8 tid,
 
 	weight_sum = local->airtime_weight_sum[ac] ?: sta->airtime_weight;
 
-	local->airtime_v_t[ac] += airtime / weight_sum;
+	/* Round the calculation of global vt */
+	local->airtime_v_t[ac] += (airtime + (weight_sum >> 1)) / weight_sum;
 	sta->airtime[ac].v_t += airtime / sta->airtime_weight;
 	ieee80211_resort_txq(&local->hw, txq);
 
diff --git a/net/mac80211/tx.c b/net/mac80211/tx.c
index c1444e7..b40cf91 100644
--- a/net/mac80211/tx.c
+++ b/net/mac80211/tx.c
@@ -3822,15 +3822,29 @@ bool ieee80211_txq_may_transmit(struct ieee80211_hw *hw,
 				struct ieee80211_txq *txq)
 {
 	struct ieee80211_local *local = hw_to_local(hw);
-	struct txq_info *txqi = to_txq_info(txq);
+	struct txq_info *first_txqi, *txqi = to_txq_info(txq);
+	struct rb_node *node = NULL;
 	struct sta_info *sta;
 	u8 ac = txq->ac;
+	first_txqi = NULL;
 
 	lockdep_assert_held(&local->active_txq_lock[ac]);
 
 	if (!txqi->txq.sta)
 		return true;
 
+	node = rb_first_cached(&local->active_txqs[ac]);
+	if (node) {
+		first_txqi = container_of(node, struct txq_info,
+					  schedule_order);
+		if (first_txqi->txq.sta) {
+			sta = container_of(first_txqi->txq.sta,
+					   struct sta_info, sta);
+			if (local->airtime_v_t[ac] < sta->airtime[ac].v_t)
+				local->airtime_v_t[ac] = sta->airtime[ac].v_t;
+		}
+	}
+
 	sta = container_of(txqi->txq.sta, struct sta_info, sta);
 	return (sta->airtime[ac].v_t <= local->airtime_v_t[ac]);
 }
-- 
1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
