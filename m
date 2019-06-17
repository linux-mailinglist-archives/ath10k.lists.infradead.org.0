Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6A8490B5
	for <lists+ath10k@lfdr.de>; Mon, 17 Jun 2019 22:02:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=adMlMu+1GS2r/EZB3jLjVbp1sL+MQe5qvNA3TUX+FWQ=; b=ZXMU4tVjIorsoj
	uaVKfp8bxW8BzcUotnVz+FDgDJyCzwNIvMtw4HLLh5aXz+6ywjcQLhX4HJVjGPYBQ9B0v7WlxObFC
	C0ToGZQZTGYoO51GVyiqFjbR+eQkgMjO8cb4qKvc0ZiZ2k91DNGt8e5gMIZVejvr4G4dRJVwqKNpU
	vTPP0lxOTJDIJyicWhKb5yoXdP32yT5kA8ckOVqkn1Hfy0uY9y06yJnzgNAb9UihQSt0LhyUIEyJK
	r8pWinwsDZfVzCJhAgb5vWvP+FxUKqOgg/N+RKV1i54seYKV2nAI/oJ5a7wjasxlHnbrjd0+JQm6j
	QI87ZIq0/JV2z44gZmUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxpk-0004L2-Hs; Mon, 17 Jun 2019 20:02:28 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxpg-0004KV-Kf
 for ath10k@lists.infradead.org; Mon, 17 Jun 2019 20:02:25 +0000
Received: by mail-lf1-x141.google.com with SMTP id y17so7515476lfe.0
 for <ath10k@lists.infradead.org>; Mon, 17 Jun 2019 13:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B4P8y1ay39d+E4yB3whFfRjMbB7BKe2MvBm/2WeUpIM=;
 b=of2v7ANgL9ex0bkfxQas0p6u4QAhgHfu5y1Y/3T039pKxnMxEKpETvUBNF+8c1SwzE
 6jM+sSE/03uQiaK5khEyZjMn2Ut7hPZRVxfcfuB5s8/czVUudhGS8uBNby58nmRYHg69
 jn8kPcsad2kZqqBr1UrtE+dhV6vvELpupT3ZxTaA8dppC/XbeeaIzyWX9rxSinYJr/AP
 VuwG/cZSBh4kCIVhDAUFubuU7NFQ5//HE1i5I30jy3VIVYvNes3Ea6emUDfNfZbnW9gS
 coS2IUV+LeoGPjZ/uwVAQAvVVDy6x/tYs5jZx5qfrHDh+buF7MNVzMCuWil7YJPZqgus
 iXPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B4P8y1ay39d+E4yB3whFfRjMbB7BKe2MvBm/2WeUpIM=;
 b=fsCWJGhIvVraMN4aMIuxr6yIxMcFfRmLmZbcdLpZYyLOSL0RodCNyHsdRFy59y1WLV
 4KkIr9AYRRS6OA62bNCV4brXZlZCAe2vuN5ZtaPrOrwpO0v2WYzTdm2XfdWH+tcn9TVb
 wqhg6vB/YrE0mu9vbqdjDOpzKe8bw0RjcnEWznOyghPvqjXG0Gz7BKfBj9W3F/OhPhD5
 se326Std3IriGVrA2KkmUSd8P9Lg6YtsJtvEtj317Hp3lBls+CrXEvhzGy6TRQLVuorO
 3yfX2/tP1sJHOwvC9AuTL2pnIqYhSMm5bteTk0irNWphPh8UXGHPfl3tyrjVED6bQnm9
 MSJw==
X-Gm-Message-State: APjAAAXpMlt7Dc4CW0R2Wzl8HRrPXBLMkwaDtPM2jiR1waeF6XKP/LmS
 9ZoedSXiwDnfbxRNKC+OKm8=
X-Google-Smtp-Source: APXvYqzALujpPOG2xk/DqMQhHr3m6lA+WF68otalfSbL7+uhlJM7kYppPXRpUxk4fkH0Eui/GOj7vg==
X-Received: by 2002:a19:5007:: with SMTP id e7mr60072377lfb.76.1560801742672; 
 Mon, 17 Jun 2019 13:02:22 -0700 (PDT)
Received: from localhost.localdomain (81-233-89-221-no75.tbcn.telia.com.
 [81.233.89.221])
 by smtp.gmail.com with ESMTPSA id j90sm2245780ljb.29.2019.06.17.13.02.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 13:02:22 -0700 (PDT)
From: Erik Stromdahl <erik.stromdahl@gmail.com>
To: johannes@sipsolutions.net, kvalo@codeaurora.org, davem@davemloft.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] mac80211: add tx dequeue function for process context
Date: Mon, 17 Jun 2019 22:01:39 +0200
Message-Id: <20190617200140.6189-1-erik.stromdahl@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_130224_680742_4C8C63B4 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (erik.stromdahl[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Erik Stromdahl <erik.stromdahl@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Since ieee80211_tx_dequeue() must not be called with softirqs enabled
(i.e. from process context without proper disable of bottom halves),
we add a wrapper that disables bottom halves before calling
ieee80211_tx_dequeue()

The new function is named ieee80211_tx_dequeue_ni() just as all other
from-process-context versions found in mac80211.

The documentation of ieee80211_tx_dequeue() is also updated so it
mentions that the function should not be called from process context.

Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>
---
 include/net/mac80211.h | 26 ++++++++++++++++++++++++++
 net/mac80211/tx.c      |  2 ++
 2 files changed, 28 insertions(+)

diff --git a/include/net/mac80211.h b/include/net/mac80211.h
index 72080d9d617e..c47990d8db79 100644
--- a/include/net/mac80211.h
+++ b/include/net/mac80211.h
@@ -6251,10 +6251,36 @@ void ieee80211_unreserve_tid(struct ieee80211_sta *sta, u8 tid);
  * but for the duration of the frame handling.
  * However, also note that while in the wake_tx_queue() method,
  * rcu_read_lock() is already held.
+ *
+ * softirqs must also be disabled when this function is called.
+ * In process context, use ieee80211_tx_dequeue_ni() instead.
  */
 struct sk_buff *ieee80211_tx_dequeue(struct ieee80211_hw *hw,
 				     struct ieee80211_txq *txq);
 
+/**
+ * ieee80211_tx_dequeue_ni - dequeue a packet from a software tx queue
+ * (in process context)
+ *
+ * Like ieee80211_tx_dequeue() but can be called in process context
+ * (internally disables bottom halves).
+ *
+ * @hw: pointer as obtained from ieee80211_alloc_hw()
+ * @txq: pointer obtained from station or virtual interface, or from
+ *	ieee80211_next_txq()
+ */
+static inline struct sk_buff *ieee80211_tx_dequeue_ni(struct ieee80211_hw *hw,
+						      struct ieee80211_txq *txq)
+{
+	struct sk_buff *skb;
+
+	local_bh_disable();
+	skb = ieee80211_tx_dequeue(hw, txq);
+	local_bh_enable();
+
+	return skb;
+}
+
 /**
  * ieee80211_next_txq - get next tx queue to pull packets from
  *
diff --git a/net/mac80211/tx.c b/net/mac80211/tx.c
index dd220b977025..4bd0066ea7cd 100644
--- a/net/mac80211/tx.c
+++ b/net/mac80211/tx.c
@@ -3550,6 +3550,8 @@ struct sk_buff *ieee80211_tx_dequeue(struct ieee80211_hw *hw,
 	ieee80211_tx_result r;
 	struct ieee80211_vif *vif = txq->vif;
 
+	WARN_ON_ONCE(softirq_count() == 0);
+
 begin:
 	spin_lock_bh(&fq->lock);
 
-- 
2.22.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
