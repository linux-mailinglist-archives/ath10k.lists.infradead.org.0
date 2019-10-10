Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2E8D1E69
	for <lists+ath10k@lfdr.de>; Thu, 10 Oct 2019 04:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13vIqTjCEnYriCM7nGdl7MliffpiNpgaBhYyVtsd3HI=; b=CzPpobVqGwX3Vl
	AuNpsSzb+5x1Jul0mpTd71OZvzZt5d4ayZmP8U3h1lwlbKENQMeSjRhsBrbSOQR1TpDILBk4ZoAM6
	SxqM7QaKjzdnldiyVphwlIqaNzONDVYh4ualf5Yawp9gFkGCjz4eHewJ2ik1PRk2soaF67V+cfTYY
	zzxSqFYP6pdA4jPPriQc+U6NXMiBejqulu2TF0Unnt95/8C3KPJ1BzuulCbn6Pn2uHvGjWXvYqeIC
	D7Tcs4N4U1oSRbAaLKNslpvAy5xjjk4TQxvmpXSEUl8DenxAG/aOD36EZDHBM/MOrHTwKFWWy4OUz
	vEeLDoevwaJm3B/krRjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIO92-0005su-UG; Thu, 10 Oct 2019 02:25:36 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIO8p-0005mn-8H
 for ath10k@lists.infradead.org; Thu, 10 Oct 2019 02:25:24 +0000
Received: by mail-pl1-x64a.google.com with SMTP id x8so2867405plr.23
 for <ath10k@lists.infradead.org>; Wed, 09 Oct 2019 19:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=kGk/7KejGkDZxzehqIVr9iG/CJHtXnwr5jx9nytWH0I=;
 b=kbC/KmHukXc1r/7vG59UBTp6xFJZnPdTQp+YRg2PvaBXk2vz9kJKMFbHpTNrh7n5/L
 ArdMvvvU4Zk8+WKvTeLAD6UTrvbMGUjtF7a4/myn7sulc0Zv0YcnSa2autoqg+ttdXcI
 cfAov0OnR/1oUP7r1ZUK6f8DmmSONBeMvPLvNLaF1ujghOUank/z8OCr5ZMbYlqext6w
 911RRavOiIAi4XyOpoWJSQaRuqU5GTKle52Sv6VnQysbbkmcN1qu+k+MNfFjaFXLHp7J
 TWDTmczO/l/6hjXDMh16XIlFox+UgLEXgvqoazZIU3Jb/Q730tkYpRp/n0DMl4cq+vfy
 C2iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=kGk/7KejGkDZxzehqIVr9iG/CJHtXnwr5jx9nytWH0I=;
 b=CJN/F0m3PuJrDE7pmednpMTGXpTzRYu4sF3+dUiBYjI3URQABvQP2TFX9Qaoei9E9E
 EBbu9tQT/aD0SqiAkBKKGB4+TNrmtEPpG83AwgNAusLT5nW518F1XPuUYGd4ifGIpAz8
 AlecI4w0ioS1gbgt99I2bRTorZRW/joPjenozpDT1w8U9vEJAd6OyJaLBMmUG+QZh8XC
 aY0ikL4d0J2IE4yqnbcK5JOVQ2tCHYAnuyZcofGVjoqLKwKG1i+ZL8v49PwD5RXEKLky
 8COfokvpO3GerNojvxqFUZ1IfHgk6kAaqWZ+TYWZJbyCdn4hA/85+tQFshR6cubx0uFb
 aySQ==
X-Gm-Message-State: APjAAAUSz1pTIe7q/G33y+05Z6coKA5oz/pVRULmheW0Gqy7rPzkGYDV
 K8Ep/YlDynP+RqA7Ryn3YFkoE4F9
X-Google-Smtp-Source: APXvYqygGfbjespKmHgXgHBuOcQEh8edbha1EHCUFKHMydLFWheu7apHsV0cCqj3DbH/NLYOFV1n1q0Q
X-Received: by 2002:a63:c045:: with SMTP id z5mr7831822pgi.69.1570674321965;
 Wed, 09 Oct 2019 19:25:21 -0700 (PDT)
Date: Wed,  9 Oct 2019 19:25:02 -0700
In-Reply-To: <20191010022502.141862-1-kyan@google.com>
Message-Id: <20191010022502.141862-3-kyan@google.com>
Mime-Version: 1.0
References: <20191010022502.141862-1-kyan@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH v3 2/2] ath10k: Enable Airtime-based Queue Limit (AQL)
From: Kan Yan <kyan@google.com>
To: johannes@sipsolutions.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_192523_299971_DCBB0F88 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/net/wireless/ath/ath10k/mac.c    |  8 +++++---
 drivers/net/wireless/ath/ath10k/txrx.c   | 11 ++++++++---
 3 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index 83a7fb68fd24..f2115b940964 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -3053,6 +3053,7 @@ static void ath10k_htt_rx_tx_fetch_ind(struct ath10k *ar, struct sk_buff *skb)
 
 			num_msdus++;
 			num_bytes += ret;
+			may_tx = ieee80211_txq_aql_check(hw, txq);
 		}
 		ieee80211_return_txq(hw, txq, false);
 		ieee80211_txq_schedule_end(hw, txq->ac);
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 0606416dc971..b300a3c506b2 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -3983,6 +3983,9 @@ static bool ath10k_mac_tx_can_push(struct ieee80211_hw *hw,
 	struct ath10k_txq *artxq = (void *)txq->drv_priv;
 
 	/* No need to get locks */
+	if (!ieee80211_txq_aql_check(hw, txq))
+		return false;
+
 	if (ar->htt.tx_q_state.mode == HTT_TX_MODE_SWITCH_PUSH)
 		return true;
 
@@ -4009,13 +4012,11 @@ static u16 ath10k_mac_update_airtime(struct ath10k *ar,
 {
 	struct ath10k_sta *arsta;
 	u32 pktlen;
-	u16 airtime = 0;
+	s32 airtime = 0;
 
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
2.23.0.581.g78d2f28ef7-goog


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
