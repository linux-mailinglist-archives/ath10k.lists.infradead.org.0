Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9F9E83F0
	for <lists+ath10k@lfdr.de>; Tue, 29 Oct 2019 10:13:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TV1Wl+CoKm4ZD/hF9TRZrcNWbDeE9mk2z8/ybvvRVOQ=; b=LT3mrDfFmIPfu7
	c23rrlSDoV2FXuwURHzg8KO1z6Ub9U4eDy5IbfQ3alcZf++tAR8DIXeO2h/3FadqINt+UQxIZuoT+
	2RNzc/t2eLDFu1WkmKkrYX62/Xz3UBCK7YB3VpIjFu7m4Ze7m7BXWIJBPSs1Jus1KISNofaxpJD4w
	p38TdT++J4D29eX1Tkb2AH0V1sxqqu0BXyoJ5m2JPbS7DoOdFqy54Hluw0nWmjo7C3za2ZJlDDR4u
	vkqLs5obnWxVn+VZVCcATSViWwfkNcB5X+SnAl5A7Ei6iZa01hUdOFCWQ9UBzf6rKdqOhNnAcmxsB
	gn3vuHTPzND4KhHSIubg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPNZ5-0000bn-85; Tue, 29 Oct 2019 09:13:23 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNYw-0000Yr-Ti
 for ath10k@lists.infradead.org; Tue, 29 Oct 2019 09:13:16 +0000
Received: from p5dcfbe82.dip0.t-ipconnect.de ([93.207.190.130] helo=bertha.lan)
 by ds12 with esmtpa (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iPNYt-0005ZW-7E; Tue, 29 Oct 2019 10:13:11 +0100
From: John Crispin <john@phrozen.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH V9 1/3] mac80211: move store skb ack code to its own function
Date: Tue, 29 Oct 2019 10:13:02 +0100
Message-Id: <20191029091304.7330-2-john@phrozen.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029091304.7330-1-john@phrozen.org>
References: <20191029091304.7330-1-john@phrozen.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_021315_117124_E1233088 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This patch moves the code handling SKBTX_WIFI_STATUS inside the TX path
into an extra function. This allows us to reuse it inside the 802.11 encap
offloading datapath.

Signed-off-by: John Crispin <john@phrozen.org>
---
 net/mac80211/tx.c | 49 ++++++++++++++++++++++++++++-------------------
 1 file changed, 29 insertions(+), 20 deletions(-)

diff --git a/net/mac80211/tx.c b/net/mac80211/tx.c
index 235c6377a203..be3ce5e5a1c3 100644
--- a/net/mac80211/tx.c
+++ b/net/mac80211/tx.c
@@ -2423,6 +2423,33 @@ static int ieee80211_lookup_ra_sta(struct ieee80211_sub_if_data *sdata,
 	return 0;
 }
 
+static int ieee80211_store_ack_skb(struct ieee80211_local *local,
+				   struct sk_buff *skb,
+				   u32 *info_flags)
+{
+	struct sk_buff *ack_skb = skb_clone_sk(skb);
+	u16 info_id = 0;
+
+	if (ack_skb) {
+		unsigned long flags;
+		int id;
+
+		spin_lock_irqsave(&local->ack_status_lock, flags);
+		id = idr_alloc(&local->ack_status_frames, ack_skb,
+			       1, 0x10000, GFP_ATOMIC);
+		spin_unlock_irqrestore(&local->ack_status_lock, flags);
+
+		if (id >= 0) {
+			info_id = id;
+			*info_flags |= IEEE80211_TX_CTL_REQ_TX_STATUS;
+		} else {
+			kfree_skb(ack_skb);
+		}
+	}
+
+	return info_id;
+}
+
 /**
  * ieee80211_build_hdr - build 802.11 header in the given frame
  * @sdata: virtual interface to build the header for
@@ -2716,26 +2743,8 @@ static struct sk_buff *ieee80211_build_hdr(struct ieee80211_sub_if_data *sdata,
 	}
 
 	if (unlikely(!multicast && skb->sk &&
-		     skb_shinfo(skb)->tx_flags & SKBTX_WIFI_STATUS)) {
-		struct sk_buff *ack_skb = skb_clone_sk(skb);
-
-		if (ack_skb) {
-			unsigned long flags;
-			int id;
-
-			spin_lock_irqsave(&local->ack_status_lock, flags);
-			id = idr_alloc(&local->ack_status_frames, ack_skb,
-				       1, 0x10000, GFP_ATOMIC);
-			spin_unlock_irqrestore(&local->ack_status_lock, flags);
-
-			if (id >= 0) {
-				info_id = id;
-				info_flags |= IEEE80211_TX_CTL_REQ_TX_STATUS;
-			} else {
-				kfree_skb(ack_skb);
-			}
-		}
-	}
+		     skb_shinfo(skb)->tx_flags & SKBTX_WIFI_STATUS))
+		info_id = ieee80211_store_ack_skb(local, skb, &info_flags);
 
 	/*
 	 * If the skb is shared we need to obtain our own copy.
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
