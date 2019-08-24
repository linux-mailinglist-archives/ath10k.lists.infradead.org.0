Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 527239BE10
	for <lists+ath10k@lfdr.de>; Sat, 24 Aug 2019 15:49:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SfgYKwFv8MW6ziJkmw6y2j93ElJK+4tXQcdOT+9EdXM=; b=N2lhCLxMP7KLkI
	A7kwVDRh/WA3S2jnbh/72zcUvUqQcvrZndKG3ztVEQT/8k/ANrI0cy8cQCrYXyqS6LwnIS50ebXZS
	ZMDXH7stG55NOOK0hWbCTV7qqtSQr360Nos40FHGuoNRJF9EDt173HqjHD/1v9LIgTBbXb+pGn5WT
	jbVmwWrYcwZ0bqOZ/RrixmwzlQ0lzRkU7fi3fN8FLkGh9D6bM1YoXIRQ8nM8/Za8oACQPnjS7Irbl
	uk+f/c3HkswkfetXkeTBDRC+1XQHMJ4Pqt9fXkWejjCexUq9Ly/WhGZP+1v6zSFvylkFRgUQHH2uu
	Zqz3tlQpBiFQ6ZD11uJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1WPv-0006V6-61; Sat, 24 Aug 2019 13:49:19 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1WPm-0006Un-Fa
 for ath10k@lists.infradead.org; Sat, 24 Aug 2019 13:49:11 +0000
Received: by mail-lj1-x241.google.com with SMTP id h15so11278807ljg.10
 for <ath10k@lists.infradead.org>; Sat, 24 Aug 2019 06:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y4ckJfUXdxYeBz+7wUqFbJD/Jfd+wV+ceQz91vng7WE=;
 b=pL5AguciFr7X2gsSdc3TNpb1ed6bl+g7M4AAddaaY9xi2KpWXdDnoQgeep9RrZa5x5
 rOmwuZz3Yr0tJc6ezrCliHytRDTDp5WPlSCHGgnmUGuoutPhtPiTd5h+ZQ9EBv5Pl1lV
 nbb45ze9jgw6Yn04I8wS96RfzKTkI2Xi2MvovewXFM8XDGXG0BPthUVU+L07TxEy7a+v
 bZ7sYu790IFyDqtPcECPqIDgZhzQ7dQoeAbfVIYz5nA2Hszge2I2AYIKe2rjHpLvVjSh
 rExFNHzMe7oGlUS2lTqEl3VRwHq/HS4CVB1qQf7KFQ9MC9wtobUU3FTguBPHYGO+JP0G
 dy2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y4ckJfUXdxYeBz+7wUqFbJD/Jfd+wV+ceQz91vng7WE=;
 b=NW+Pg6Fyexl4qObq7FKXhA1e5U2fu+wzeK35IA+dtP17xhOhzwEP+Lp0dvKj7DLvoE
 WJMRh8d+jPY415QFNeY0oWLfNYE7NWRmH9cPxOm6fvFLCI9sX4sPIC5YkLD3SeyX0cqq
 XjvbrKsNA408zl+E3wTf0XhQljNPBhk3ksRHQ5jXnLCV+x0qbcE2vO+wVxuaDeTYp35k
 Oz6S6s7DRUUt4QTYddw1uAPgamMJyrkfMi3x4s5Hvl2UnhJGCD2on9y5e1CoqRGHAn1b
 I+Hreqgukvxw9J/xx7TclQz919Bsf2ATLsPJQdvTa9safKagv4zy3n9xg1sy5rqoS/ix
 Wxmg==
X-Gm-Message-State: APjAAAXDLLX62mh0LLb+skHVj+AhPW6JIAc98dKB80wwVk16FHgbfddQ
 ZM9bKWTSdMyHB5saobGEDyU=
X-Google-Smtp-Source: APXvYqzr60mv7xW7ASDmfqWZlIngrlE4CousXz3jEzXHAASMbLtBMj2SVsJBfe3nyVQ1KgCzEZFuJg==
X-Received: by 2002:a2e:2f0d:: with SMTP id v13mr5561854ljv.198.1566654546588; 
 Sat, 24 Aug 2019 06:49:06 -0700 (PDT)
Received: from localhost.localdomain (81-233-89-221-no75.tbcn.telia.com.
 [81.233.89.221])
 by smtp.gmail.com with ESMTPSA id s7sm1115950lji.26.2019.08.24.06.49.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 06:49:06 -0700 (PDT)
From: Erik Stromdahl <erik.stromdahl@gmail.com>
To: kvalo@qca.qualcomm.com, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Subject: [PATCH] ath10k: remove TX lock from ath10k_htt_tx_inc_pending
Date: Sat, 24 Aug 2019 15:48:57 +0200
Message-Id: <20190824134857.4094-1-erik.stromdahl@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_064910_559322_6E132765 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (erik.stromdahl[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This commit removes the call to ath10k_mac_tx_lock() from
ath10k_htt_tx_inc_pending() in case the high water mark is reached.

ath10k_mac_tx_lock() calls ieee80211_stop_queues() in order to stop
mac80211 from pushing more TX data to the driver (this is the TX lock).

If a driver is trying to fetch an skb from a queue while the queue is
stopped, ieee80211_tx_dequeue() will return NULL.

So, in ath10k_mac_tx_push_txq(), there is a risk that the call to
ath10k_htt_tx_inc_pending() results in a stop of the mac80211 TX queues
just before the skb is fetched.

This will cause ieee80211_tx_dequeue() to return NULL and
ath10k_mac_tx_push_txq() to exit prematurely and return -ENOENT.
Before the function returns ath10k_htt_tx_dec_pending() will be called.
This call will re-enable the TX queues through ath10k_mac_tx_unlock().
When ath10k_mac_tx_push_txq() has returned, the TX queue will be
returned back to mac80211 with ieee80211_return_txq() without the skb
being properly consumed.

Since the TX queues were re-enabled in the error exit path of
ath10k_mac_tx_push_txq(), mac80211 can continue pushing data to the
driver. If the hardware does not consume the data, the above mentioned
case will be repeated over and over.

A case when the hardware is not able to transmit the data from the host
is when a STA has been dis-associated from an AP and has not yet been
able to re-associate. In this case there will be no TX_COMPL_INDs from
the hardware, resulting in the TX counter not be decremented.

This phenomenon has been observed in both a real and a test setup.

In order to fix this, the actual TX locking (the call to
ath10k_mac_tx_lock()) was removed from ath10k_htt_tx_inc_pending().
Instead, ath10k_mac_tx_lock() is called separately after the skb has
been fetched (after the call to ieee80211_tx_dequeue()). At this point
it is OK to stop the queues.

Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>
---
 drivers/net/wireless/ath/ath10k/htt_tx.c | 2 --
 drivers/net/wireless/ath/ath10k/mac.c    | 8 ++++++++
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c b/drivers/net/wireless/ath/ath10k/htt_tx.c
index 2ef717f18795..32fd71f28ef9 100644
--- a/drivers/net/wireless/ath/ath10k/htt_tx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
@@ -157,8 +157,6 @@ int ath10k_htt_tx_inc_pending(struct ath10k_htt *htt)
 		return -EBUSY;
 
 	htt->num_pending_tx++;
-	if (htt->num_pending_tx == htt->max_num_pending_tx)
-		ath10k_mac_tx_lock(htt->ar, ATH10K_TX_PAUSE_Q_FULL);
 
 	return 0;
 }
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index c1bf1167a2ce..8d357c79ca59 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -4078,6 +4078,11 @@ int ath10k_mac_tx_push_txq(struct ieee80211_hw *hw,
 		return -ENOENT;
 	}
 
+	spin_lock_bh(&ar->htt.tx_lock);
+	if (htt->num_pending_tx == htt->max_num_pending_tx)
+		ath10k_mac_tx_lock(ar, ATH10K_TX_PAUSE_Q_FULL);
+	spin_unlock_bh(&ar->htt.tx_lock);
+
 	airtime = ath10k_mac_update_airtime(ar, txq, skb);
 	ath10k_mac_tx_h_fill_cb(ar, vif, txq, skb, airtime);
 
@@ -4370,6 +4375,9 @@ static void ath10k_mac_op_tx(struct ieee80211_hw *hw,
 			return;
 		}
 
+		if (htt->num_pending_tx == htt->max_num_pending_tx)
+			ath10k_mac_tx_lock(ar, ATH10K_TX_PAUSE_Q_FULL);
+
 		ret = ath10k_htt_tx_mgmt_inc_pending(htt, is_mgmt, is_presp);
 		if (ret) {
 			ath10k_dbg(ar, ATH10K_DBG_MAC, "failed to increase tx mgmt pending count: %d, dropping\n",
-- 
2.22.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
