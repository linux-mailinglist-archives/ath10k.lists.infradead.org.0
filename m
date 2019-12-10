Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53D9119A92
	for <lists+ath10k@lfdr.de>; Tue, 10 Dec 2019 23:03:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRwOgLLu23fOeAR30Jgd33nobLUWX7Ptt0qBZb2JLSM=; b=LaHdaGdlzLGw0s
	kxpAROI15lS6l206xOtHJlDIPFTkWFQnmVTo64VqYvxC9fhRG8NDh5iNmhup7eSq3+g2XYlXnEFn9
	m3+nt15B91fYRzN5ya7byvUcAKp+ZRPR8E1hgjO4Ci6huKF8+LG20J8xntZNkADS+z5TtHxurStqj
	GwhFDMecrwQqIToYBYlGAMJvVhVjeJGEC0ZLxdt4XuE5iYvzSa61TFb30CRd6J7eGr9WWiibzZTSn
	obuiyVHJC6cBadj8XR1hXuCujQv/HHJZEmrsaWBsh6kPkPPz7lTe7MXSm27myWJLPVdmL0g+eIVw0
	oLrOoyVySldHCUyyXZiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ienbN-00006A-Vb; Tue, 10 Dec 2019 22:03:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienbK-00005N-7H
 for ath10k@lists.infradead.org; Tue, 10 Dec 2019 22:03:27 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04C502053B;
 Tue, 10 Dec 2019 22:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576015405;
 bh=p7iUVenM+yNQ++dCCN//VeOqt5C6ZTQcLd/gzMH7Sns=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pNofXOAfhVK/Q8by02fxvb0SXE2yoZ4NyldexpKTpEa698qCj7nZNL+S3kd7ey4OV
 d7ou/fvdgC4l5ryUrUCYcZrt2WfBL0j6ktr5h+LfyHlFGCdQZZ74c3zrYN1Jh7FF3C
 rRi6SM9Ishy7LQLU+Nt5QmPfCG9sqMW1jEUGz2Z4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 020/130] ath10k: fix offchannel tx failure when
 no ath10k_mac_tx_frm_has_freq
Date: Tue, 10 Dec 2019 17:01:11 -0500
Message-Id: <20191210220301.13262-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210220301.13262-1-sashal@kernel.org>
References: <20191210220301.13262-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_140326_305794_60FBE857 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Antonio Quartulli <antonio.quartulli@kaiwoo.ai>,
 Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Ben Greear <greearb@candelatech.com>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Ben Greear <greearb@candelatech.com>

[ Upstream commit cc6df017e55764ffef9819dd9554053182535ffd ]

Offchannel management frames were failing:

[18099.253732] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e3780
[18102.293686] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e3780
[18105.333653] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e3780
[18108.373712] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e3780
[18111.413687] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e36c0
[18114.453726] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e3f00
[18117.493773] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e36c0
[18120.533631] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e3f00

This bug appears to have been added between 4.0 (which works for us),
and 4.4, which does not work.

I think this is because the tx-offchannel logic gets in a loop when
ath10k_mac_tx_frm_has_freq(ar) is false, so pkt is never actually
sent to the firmware for transmit.

This patch fixes the problem on 4.9 for me, and now HS20 clients
can work again with my firmware.

Antonio: tested with 10.4-3.5.3-00057 on QCA4019 and QCA9888

Signed-off-by: Ben Greear <greearb@candelatech.com>
Tested-by: Antonio Quartulli <antonio.quartulli@kaiwoo.ai>
[kvalo@codeaurora.org: improve commit log, remove unneeded parenthesis]
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/mac.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index dff34448588f0..ea47ad4b2343b 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -3627,7 +3627,7 @@ static int ath10k_mac_tx(struct ath10k *ar,
 			 struct ieee80211_vif *vif,
 			 enum ath10k_hw_txrx_mode txmode,
 			 enum ath10k_mac_tx_path txpath,
-			 struct sk_buff *skb)
+			 struct sk_buff *skb, bool noque_offchan)
 {
 	struct ieee80211_hw *hw = ar->hw;
 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
@@ -3655,10 +3655,10 @@ static int ath10k_mac_tx(struct ath10k *ar,
 		}
 	}
 
-	if (info->flags & IEEE80211_TX_CTL_TX_OFFCHAN) {
+	if (!noque_offchan && info->flags & IEEE80211_TX_CTL_TX_OFFCHAN) {
 		if (!ath10k_mac_tx_frm_has_freq(ar)) {
-			ath10k_dbg(ar, ATH10K_DBG_MAC, "queued offchannel skb %pK\n",
-				   skb);
+			ath10k_dbg(ar, ATH10K_DBG_MAC, "mac queued offchannel skb %pK len %d\n",
+				   skb, skb->len);
 
 			skb_queue_tail(&ar->offchan_tx_queue, skb);
 			ieee80211_queue_work(hw, &ar->offchan_tx_work);
@@ -3720,8 +3720,8 @@ void ath10k_offchan_tx_work(struct work_struct *work)
 
 		mutex_lock(&ar->conf_mutex);
 
-		ath10k_dbg(ar, ATH10K_DBG_MAC, "mac offchannel skb %pK\n",
-			   skb);
+		ath10k_dbg(ar, ATH10K_DBG_MAC, "mac offchannel skb %pK len %d\n",
+			   skb, skb->len);
 
 		hdr = (struct ieee80211_hdr *)skb->data;
 		peer_addr = ieee80211_get_DA(hdr);
@@ -3767,7 +3767,7 @@ void ath10k_offchan_tx_work(struct work_struct *work)
 		txmode = ath10k_mac_tx_h_get_txmode(ar, vif, sta, skb);
 		txpath = ath10k_mac_tx_h_get_txpath(ar, skb, txmode);
 
-		ret = ath10k_mac_tx(ar, vif, txmode, txpath, skb);
+		ret = ath10k_mac_tx(ar, vif, txmode, txpath, skb, true);
 		if (ret) {
 			ath10k_warn(ar, "failed to transmit offchannel frame: %d\n",
 				    ret);
@@ -3777,8 +3777,8 @@ void ath10k_offchan_tx_work(struct work_struct *work)
 		time_left =
 		wait_for_completion_timeout(&ar->offchan_tx_completed, 3 * HZ);
 		if (time_left == 0)
-			ath10k_warn(ar, "timed out waiting for offchannel skb %pK\n",
-				    skb);
+			ath10k_warn(ar, "timed out waiting for offchannel skb %pK, len: %d\n",
+				    skb, skb->len);
 
 		if (!peer && tmp_peer_created) {
 			ret = ath10k_peer_delete(ar, vdev_id, peer_addr);
@@ -3957,7 +3957,7 @@ int ath10k_mac_tx_push_txq(struct ieee80211_hw *hw,
 		spin_unlock_bh(&ar->htt.tx_lock);
 	}
 
-	ret = ath10k_mac_tx(ar, vif, txmode, txpath, skb);
+	ret = ath10k_mac_tx(ar, vif, txmode, txpath, skb, false);
 	if (unlikely(ret)) {
 		ath10k_warn(ar, "failed to push frame: %d\n", ret);
 
@@ -4239,7 +4239,7 @@ static void ath10k_mac_op_tx(struct ieee80211_hw *hw,
 		spin_unlock_bh(&ar->htt.tx_lock);
 	}
 
-	ret = ath10k_mac_tx(ar, vif, txmode, txpath, skb);
+	ret = ath10k_mac_tx(ar, vif, txmode, txpath, skb, false);
 	if (ret) {
 		ath10k_warn(ar, "failed to transmit frame: %d\n", ret);
 		if (is_htt) {
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
