Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D511879CD
	for <lists+ath10k@lfdr.de>; Tue, 17 Mar 2020 07:43:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9h50ysOLTvfv5TPKK+amfdDW+inGcGQjJ/U7eh2dkiE=; b=TmZ
	sE7MiCzzD0fgQ1qXDpyXJ7NM0mmK0Q63+KYpkiSnEb0ktC2tfDSpAuj54EhAEeunn0qrC/MpPZnKf
	Eyouwr08g2nFSnLwpkOsHefGtlT4IOhoVrLhzsfxwEWuKxkjc1WlAj8139phDh59eF6s4vrUZ8NAy
	yUXvcIsclLbo7xDNiIIXf8bvBQejG74nzo5cn5EcHnOOs3wwMajhtzlC5fUrE/GXyfQTaT03SJ3bt
	MrjekIREChVnXa3MMU5m8ADpBbyMd1ITO3y95sWozApr2xISTZpcKFAZX48W0UFzVUL3HSzm2aO0z
	s/9c0fFKxEQZblIHYDKtbPFYYDn8QuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE5wL-0000AD-Tl; Tue, 17 Mar 2020 06:43:01 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE5wG-00009h-VI
 for ath10k@lists.infradead.org; Tue, 17 Mar 2020 06:42:59 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1584427378; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=BJ3HlX1YXAjdK7A8FjZfDPEJOhT9i5FnsxFgAwqM0l8=;
 b=OsigHvJE4Bv4kyXW+1ZV6No8U5L75S3GaIvQbt/ZNkSg/xA5KxubZVIGxy+PyqEtRFXX9Naa
 2XHY/VM2gXYuuw6kFTpe+RUkKKSA51j7tOu/3eJLCyJS8K2ir9jwCEuuTg/u+qlwkRkr+1Ia
 ue+sn9j5ef+w05XrjN2j7lUfwL8=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e70716b.7f6e48967998-smtp-out-n02;
 Tue, 17 Mar 2020 06:42:51 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9B51CC432C2; Tue, 17 Mar 2020 06:42:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=2.0 tests=ALL_TRUSTED,
 LOCALPART_IN_SUBJECT,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from c-gseset-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: ssreeela)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A7D18C433CB;
 Tue, 17 Mar 2020 06:42:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A7D18C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=ssreeela@codeaurora.org
From: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: ath10k: Fill GCMP MIC length for PMF
Date: Tue, 17 Mar 2020 11:58:19 +0530
Message-Id: <1584426499-27819-1-git-send-email-ssreeela@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_234258_442809_3035BA13 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.7 LOCALPART_IN_SUBJECT   Local part of To: address appears in
 Subject
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Yingying Tang <yintang@codeaurora.org>,
 Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>,
 linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Yingying Tang <yintang@codeaurora.org>

GCMP MIC length is not filled for GCMP/GCMP-256 cipher suites in
PMF enabled case. Due to mismatch in MIC length, deauth/disassoc frames
are unencrypted.
This patch fills proper MIC length for GCMP/GCMP-256 cipher suites.

Tested HW: QCA9984, QCA9888
Tested FW: 10.4-3.6-00104

Signed-off-by: Yingying Tang <yintang@codeaurora.org>
Signed-off-by: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
---

 drivers/net/wireless/ath/ath10k/core.h   |  2 ++
 drivers/net/wireless/ath/ath10k/htt_tx.c | 12 +++++++++++-
 drivers/net/wireless/ath/ath10k/mac.c    | 19 ++++++++++++++++---
 drivers/net/wireless/ath/ath10k/wmi.c    | 17 +++++++++++++++--
 4 files changed, 44 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
index edf314e..bd8ef57 100644
--- a/drivers/net/wireless/ath/ath10k/core.h
+++ b/drivers/net/wireless/ath/ath10k/core.h
@@ -119,6 +119,7 @@ struct ath10k_skb_cb {
 	u16 airtime_est;
 	struct ieee80211_vif *vif;
 	struct ieee80211_txq *txq;
+	u32 ucast_cipher;
 } __packed;
 
 struct ath10k_skb_rxcb {
@@ -504,6 +505,7 @@ struct ath10k_sta {
 	struct work_struct update_wk;
 	u64 rx_duration;
 	struct ath10k_htt_tx_stats *tx_stats;
+	u32 ucast_cipher;
 
 #ifdef CONFIG_MAC80211_DEBUGFS
 	/* protected by conf_mutex */
diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c b/drivers/net/wireless/ath/ath10k/htt_tx.c
index a182c09..e9d12ea 100644
--- a/drivers/net/wireless/ath/ath10k/htt_tx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
@@ -1163,6 +1163,7 @@ int ath10k_htt_mgmt_tx(struct ath10k_htt *htt, struct sk_buff *msdu)
 	int len = 0;
 	int msdu_id = -1;
 	int res;
+	const u8 *peer_addr;
 	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)msdu->data;
 
 	len += sizeof(cmd->hdr);
@@ -1178,7 +1179,16 @@ int ath10k_htt_mgmt_tx(struct ath10k_htt *htt, struct sk_buff *msdu)
 	     ieee80211_is_deauth(hdr->frame_control) ||
 	     ieee80211_is_disassoc(hdr->frame_control)) &&
 	     ieee80211_has_protected(hdr->frame_control)) {
-		skb_put(msdu, IEEE80211_CCMP_MIC_LEN);
+		peer_addr = hdr->addr1;
+		if (is_multicast_ether_addr(peer_addr)) {
+			skb_put(msdu, sizeof(struct ieee80211_mmie_16));
+		} else {
+			if (skb_cb->ucast_cipher == WLAN_CIPHER_SUITE_GCMP ||
+			    skb_cb->ucast_cipher == WLAN_CIPHER_SUITE_GCMP_256)
+				skb_put(msdu, IEEE80211_GCMP_MIC_LEN);
+			else
+				skb_put(msdu, IEEE80211_CCMP_MIC_LEN);
+		}
 	}
 
 	txdesc = ath10k_htc_alloc_skb(ar, len);
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 23d9830..81e148e 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -258,6 +258,7 @@ static int ath10k_send_key(struct ath10k_vif *arvif,
 	case WLAN_CIPHER_SUITE_GCMP:
 	case WLAN_CIPHER_SUITE_GCMP_256:
 		arg.key_cipher = ar->wmi_key_cipher[WMI_CIPHER_AES_GCM];
+		key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV_MGMT;
 		break;
 	case WLAN_CIPHER_SUITE_BIP_GMAC_128:
 	case WLAN_CIPHER_SUITE_BIP_GMAC_256:
@@ -3607,6 +3608,12 @@ static void ath10k_mac_tx_h_fill_cb(struct ath10k *ar,
 	cb->vif = vif;
 	cb->txq = txq;
 	cb->airtime_est = airtime;
+	if (sta) {
+		arsta = (struct ath10k_sta *)sta->drv_priv;
+		spin_lock_bh(&ar->data_lock);
+		cb->ucast_cipher = arsta->ucast_cipher;
+		spin_unlock_bh(&ar->data_lock);
+	}
 }
 
 bool ath10k_mac_tx_frm_has_freq(struct ath10k *ar)
@@ -6197,6 +6204,7 @@ static int ath10k_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 {
 	struct ath10k *ar = hw->priv;
 	struct ath10k_vif *arvif = (void *)vif->drv_priv;
+	struct ath10k_sta *arsta;
 	struct ath10k_peer *peer;
 	const u8 *peer_addr;
 	bool is_wep = key->cipher == WLAN_CIPHER_SUITE_WEP40 ||
@@ -6221,12 +6229,17 @@ static int ath10k_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 
 	mutex_lock(&ar->conf_mutex);
 
-	if (sta)
+	if (sta) {
+		arsta = (struct ath10k_sta *)sta->drv_priv;
 		peer_addr = sta->addr;
-	else if (arvif->vdev_type == WMI_VDEV_TYPE_STA)
+		spin_lock_bh(&ar->data_lock);
+		arsta->ucast_cipher = key->cipher;
+		spin_unlock_bh(&ar->data_lock);
+	} else if (arvif->vdev_type == WMI_VDEV_TYPE_STA) {
 		peer_addr = vif->bss_conf.bssid;
-	else
+	} else {
 		peer_addr = vif->addr;
+	}
 
 	key->hw_key_idx = key->keyidx;
 
diff --git a/drivers/net/wireless/ath/ath10k/wmi.c b/drivers/net/wireless/ath/ath10k/wmi.c
index e76e365..2ea77bb 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.c
+++ b/drivers/net/wireless/ath/ath10k/wmi.c
@@ -1926,6 +1926,7 @@ int ath10k_wmi_cmd_send(struct ath10k *ar, struct sk_buff *skb, u32 cmd_id)
 	u32 vdev_id;
 	u32 buf_len = msdu->len;
 	u16 fc;
+	const u8 *peer_addr;
 
 	hdr = (struct ieee80211_hdr *)msdu->data;
 	fc = le16_to_cpu(hdr->frame_control);
@@ -1946,8 +1947,20 @@ int ath10k_wmi_cmd_send(struct ath10k *ar, struct sk_buff *skb, u32 cmd_id)
 	     ieee80211_is_deauth(hdr->frame_control) ||
 	     ieee80211_is_disassoc(hdr->frame_control)) &&
 	     ieee80211_has_protected(hdr->frame_control)) {
-		len += IEEE80211_CCMP_MIC_LEN;
-		buf_len += IEEE80211_CCMP_MIC_LEN;
+		peer_addr = hdr->addr1;
+		if (is_multicast_ether_addr(peer_addr)) {
+			len += sizeof(struct ieee80211_mmie_16);
+			buf_len += sizeof(struct ieee80211_mmie_16);
+		} else {
+			if (cb->ucast_cipher == WLAN_CIPHER_SUITE_GCMP ||
+			    cb->ucast_cipher == WLAN_CIPHER_SUITE_GCMP_256) {
+				len += IEEE80211_GCMP_MIC_LEN;
+				buf_len += IEEE80211_GCMP_MIC_LEN;
+			} else {
+				len += IEEE80211_CCMP_MIC_LEN;
+				buf_len += IEEE80211_CCMP_MIC_LEN;
+			}
+		}
 	}
 
 	len = round_up(len, 4);
-- 
1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
