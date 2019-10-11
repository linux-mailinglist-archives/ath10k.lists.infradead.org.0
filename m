Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A10D3781
	for <lists+ath10k@lfdr.de>; Fri, 11 Oct 2019 04:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0BXc7mK1xyRsynWTGKdF5YLAPRrA+VPGCHzfSbd3Cg=; b=mVFAEE59F3LbR2
	OBi18WB2uOxx6AnxaIF+R6JJsmZECjKRkEX/AhYPIJQuwZwvDO+fP6DY0+tPCgWq9wpQ/3Ws6+dLh
	DdedNC3hlzrOVTepwpFvxXVqyHz9GAVkhRnRYlWGudC/s/H6+hotNPktx/AQr7iCsXHi1e5VNqFeJ
	ibh0j5e6/WKU35+//+k0pWy2no8BC/k4+LdfPHWQvLhO2t7TNkp3vhd/+bRoCeuQ/bU1nRref6HZQ
	PlxNDshSpnB2GUMHZS9BB93yid8SrbUhxWDpMlPxnhnq60Frp6J4gfwB5zlArlD5NQPEo1RxPkFVv
	bPL4cwKyJQN9GJyPzcRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIkbY-0004FQ-5K; Fri, 11 Oct 2019 02:24:32 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIkbR-0004Cs-2n
 for ath10k@lists.infradead.org; Fri, 11 Oct 2019 02:24:26 +0000
Received: by mail-pf1-x44a.google.com with SMTP id w16so6295600pfj.9
 for <ath10k@lists.infradead.org>; Thu, 10 Oct 2019 19:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=HmYY0PWVAFlMRzrk7cXJ/dfio3OkuBi+GUsExcPOorQ=;
 b=q9mkOC6KaQyawkvkfk73wglKZGlIhW5WYjPuGer7egMjUfhRbWxPIF8ijxYwRchm6P
 mnTNEz2EnFR+enjjqOcon4rzi8QO2I7DYTDBoGD22H7zs42+luWzM6OIVyxuKc3Kll+K
 /0f+BwxLPTk7AzrpCdLzoUjGdOdeRIKeJRWGDlt9JHL9c7xXvCkEEacoxdxlqbpMEwuh
 EUaKbNV+NGo8QjRzLxA+i0rv1a3OdhNI4H3IOIHfgkKXMy0DxfPlu3U3G6cUxIlK67dG
 sC3oPcNM75dtuRNQSD/WLSFXY7a9jkQYIUaxgk70q/J8cJ62Vh1k6E61CSu7Laoj/d31
 wo6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=HmYY0PWVAFlMRzrk7cXJ/dfio3OkuBi+GUsExcPOorQ=;
 b=F6EXQKrM4jG3QhXij0Ssh+tpQrBxXj3EcMi65O4MKN3KkqjNDHBWYz9xORbUfafMEx
 nDEuWLKHFvgjr/u3u+4QFdjK4w8V+EVsMXaCo1x7SlImz02kK7uDedqmOU5Y0fmuUKcP
 z7bqZUppGGCYpKr6Sl3YCMbAz21EOXk4sDZ/JwP/HS/zf4FKnip/kL1aSvX1B9OX8+pD
 d7wJJ4iTzg5N0haF5gpSzhAlnCEE/vUplOo4rWvALQsoCeqBYFbOAl50XMh4yWmPulbO
 gEzpN+AVlgrkxUfDsY+ErTTukzzYBGigW64EGq0L6KY80DAEUgPre6Hz7UcDWZRsXVB5
 NwbQ==
X-Gm-Message-State: APjAAAU2j5i4QCo/ea+3e8R+jTjangd/KqqJA7Gw7/dmx+wsNI4UQCKx
 k7VlGw43PBbCqNNvwx4aXW/vDgNO
X-Google-Smtp-Source: APXvYqxY8BiQ3Fv8BLi6xeVwbFok1Wl07Ci7EYxc/1PlruwxjuKVB35a6bOxasQ7YDCHDQMs9iGlLjXI
X-Received: by 2002:a63:db15:: with SMTP id e21mr14361491pgg.21.1570760663156; 
 Thu, 10 Oct 2019 19:24:23 -0700 (PDT)
Date: Thu, 10 Oct 2019 19:24:13 -0700
In-Reply-To: <20191011022413.176208-1-kyan@google.com>
Message-Id: <20191011022413.176208-3-kyan@google.com>
Mime-Version: 1.0
References: <20191011022413.176208-1-kyan@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v4 2/2] ath10k: Enable Airtime-based Queue Limit (AQL)
From: Kan Yan <kyan@google.com>
To: johannes@sipsolutions.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_192425_152128_712BABC0 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kan Yan <kyan@google.com>, make-wifi-fast@lists.bufferbloat.net,
 toke@redhat.com, linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 yiboz@codeaurora.org, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Calculate the estimated airtime pending in the txqs and apply AQL to
prevent excessive amounts of packets being queued in the firmware queue.

Signed-off-by: Kan Yan <kyan@google.com>
---
 drivers/net/wireless/ath/ath10k/htt_rx.c |  1 +
 drivers/net/wireless/ath/ath10k/mac.c    |  6 ++++--
 drivers/net/wireless/ath/ath10k/txrx.c   | 11 ++++++++---
 3 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index 83a7fb68fd24..12d63fa02e8e 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -3053,6 +3053,7 @@ static void ath10k_htt_rx_tx_fetch_ind(struct ath10k *ar, struct sk_buff *skb)
 
 			num_msdus++;
 			num_bytes += ret;
+			may_tx = ieee80211_txq_airtime_check(hw, txq);
 		}
 		ieee80211_return_txq(hw, txq, false);
 		ieee80211_txq_schedule_end(hw, txq->ac);
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 0606416dc971..ed19a40c2c3a 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -3983,6 +3983,9 @@ static bool ath10k_mac_tx_can_push(struct ieee80211_hw *hw,
 	struct ath10k_txq *artxq = (void *)txq->drv_priv;
 
 	/* No need to get locks */
+	if (!ieee80211_txq_airtime_check(hw, txq))
+		return false;
+
 	if (ar->htt.tx_q_state.mode == HTT_TX_MODE_SWITCH_PUSH)
 		return true;
 
@@ -4014,8 +4017,6 @@ static u16 ath10k_mac_update_airtime(struct ath10k *ar,
 	if (!txq || !txq->sta)
 		return airtime;
 
-	if (test_bit(WMI_SERVICE_REPORT_AIRTIME, ar->wmi.svc_map))
-		return airtime;
 
 	spin_lock_bh(&ar->data_lock);
 	arsta = (struct ath10k_sta *)txq->sta->drv_priv;
@@ -4038,6 +4039,7 @@ static u16 ath10k_mac_update_airtime(struct ath10k *ar,
 	}
 	spin_unlock_bh(&ar->data_lock);
 
+	ieee80211_sta_register_pending_airtime(txq->sta, txq->tid, airtime);
 	return airtime;
 }
 
diff --git a/drivers/net/wireless/ath/ath10k/txrx.c b/drivers/net/wireless/ath/ath10k/txrx.c
index 4102df016931..739046b34d4b 100644
--- a/drivers/net/wireless/ath/ath10k/txrx.c
+++ b/drivers/net/wireless/ath/ath10k/txrx.c
@@ -84,9 +84,14 @@ int ath10k_txrx_tx_unref(struct ath10k_htt *htt,
 		wake_up(&htt->empty_tx_wq);
 	spin_unlock_bh(&htt->tx_lock);
 
-	if (txq && txq->sta && skb_cb->airtime_est)
-		ieee80211_sta_register_airtime(txq->sta, txq->tid,
-					       skb_cb->airtime_est, 0);
+	if (txq && txq->sta && skb_cb->airtime_est) {
+		if (!test_bit(WMI_SERVICE_REPORT_AIRTIME, ar->wmi.svc_map))
+			ieee80211_sta_register_airtime(txq->sta, txq->tid,
+						       skb_cb->airtime_est, 0);
+
+		ieee80211_sta_release_pending_airtime(txq->sta, txq->tid,
+						      skb_cb->airtime_est);
+	}
 
 	if (ar->bus_param.dev_type != ATH10K_DEV_TYPE_HL)
 		dma_unmap_single(dev, skb_cb->paddr, msdu->len, DMA_TO_DEVICE);
-- 
2.23.0.700.g56cf767bdb-goog


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
