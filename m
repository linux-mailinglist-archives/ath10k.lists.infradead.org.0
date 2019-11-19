Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D07101A41
	for <lists+ath10k@lfdr.de>; Tue, 19 Nov 2019 08:20:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+lOChqri6zw4fEPEAEydMx1fG6dY64+b3XRJBuVt4uE=; b=jBDkgspXW52aBlb8Z8eeX3bsAJ
	+++J2a2b2S+AAuZxB3TFRV0zNxw0YaK2z8Rc88H8rIYH7Crb8WsaUJRtY4kZMWuoQu7mcPnEAF6Q/
	YqTwvi9DaF1rmAfSujGIw7hnokbbH/KWBriuJWIllM51oZlSoa8YSpZRrrTbJz9zpKxDZNaBbkjIw
	WzdXeM+2JY7u+tSyCiyueJu5bFE5G5N2W69XoQSBqygaahDAS+yHrF0r6LTEfCv0WpDw6deVFknwt
	bOke6Cq6lds56Iev02bVImVh9+8IZEtWuBT3Cx5nObVWnNCvNI4gbqsxQQa3HjlpwX4K/1nlA1w/t
	rarUz/0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWxny-0002zw-CC; Tue, 19 Nov 2019 07:20:06 +0000
Received: from a27-11.smtp-out.us-west-2.amazonses.com ([54.240.27.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWxno-0002ur-H6
 for ath10k@lists.infradead.org; Tue, 19 Nov 2019 07:20:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574147990;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References;
 bh=KYloWsTPGdQLD0Tf+q0SDm58ZbipgjaBsKqgn8JKwD0=;
 b=kxYde340IuT/8ybCllMZyTxW82K5x4bXzghwkmvlZPJC6dCO6OOJdsLEEE9GVlBK
 JlpATQWkcDIrTYKDTgtlOmFIRLFsE622WbA4zkC/lLKZTwB2MDgRKs3kIFE8Q9SciE6
 pDPO/cDwkZobkyEqJf9fTXWMvpksIuMlfj6duMqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574147990;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:Feedback-ID;
 bh=KYloWsTPGdQLD0Tf+q0SDm58ZbipgjaBsKqgn8JKwD0=;
 b=L4uN/1gxkPaYvY618LOrkM44EfP201GRDQR0YhSfsRGCiaGydKH/ExbndDnIdBCr
 CrFHy3d1Myl8Jtiqrsuq5xThXZNSTjqIUDsh0Bx1UletZtjiPCnkxllcr2r3Ije1hNG
 SVHiD/7SDYiRHwRvOnHjjNTRLSvfWalsFJmn5AlI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BC321C447A6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=yyuwang@codeaurora.org
From: Yu Wang <yyuwang@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 2/2] ath10k: correct legacy rate in tx stats
Date: Tue, 19 Nov 2019 07:19:50 +0000
Message-ID: <0101016e82882548-361b3da4-fd9b-4ba9-95b6-a5d782d4a1c8-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574147982-3956-1-git-send-email-yyuwang@codeaurora.org>
References: <1574147982-3956-1-git-send-email-yyuwang@codeaurora.org>
X-SES-Outgoing: 2019.11.19-54.240.27.11
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_231956_591168_F222BFC4 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.11 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

When working in station mode, after connected to a legacy
AP, 11g only, for example, the tx bitrate is incorrect in
output of command 'iw wlan0 link'.

That's because the legacy tx bitrate value reported by
firmware is not well handled:
For QCA6174, the value represents rate index, but treated
as a real rate;
For QCA9888, the value is real rate, with unit 'Mbps', but
treated as '100kbps'.

To fix this issue:
1. Translate the rate index to real rate for QCA6174;
2. Translate the rate from 'Mbps' to 'kbps' for QCA9888.

Tested with:
QCA6174 PCIe with firmware WLAN.RM.4.4.1.c3-00031.
QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
QCA9888 PCIe with firmware 10.4-3.9.0.2-00040.

Signed-off-by: Yu Wang <yyuwang@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htt_rx.c | 83 +++++++++++++++++++++++++++++++-
 drivers/net/wireless/ath/ath10k/mac.c    |  2 +-
 drivers/net/wireless/ath/ath10k/mac.h    |  1 +
 3 files changed, 83 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index cde2d9b..796c8c0 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -3455,7 +3455,7 @@ ath10k_update_per_peer_tx_stats(struct ath10k *ar,
 	struct ath10k_sta *arsta = (struct ath10k_sta *)sta->drv_priv;
 	struct ieee80211_chanctx_conf *conf = NULL;
 	u8 rate = 0, sgi;
-	s8 rate_idx = 0;
+	s8 rate_idx = -1;
 	bool skip_auto_rate;
 	struct rate_info txrate;
 
@@ -3497,6 +3497,12 @@ ath10k_update_per_peer_tx_stats(struct ath10k *ar,
 		rate_idx = ath10k_get_legacy_rate_idx(ar, rate);
 		if (rate_idx < 0)
 			return;
+
+		/* from 1Mbps to 100Kbps */
+		rate = rate * 10;
+		if (rate == 50)
+			rate = 55;
+
 		arsta->txrate.legacy = rate;
 	} else if (txrate.flags == WMI_RATE_PREAMBLE_HT) {
 		arsta->txrate.flags = RATE_INFO_FLAGS_MCS;
@@ -3723,6 +3729,74 @@ static void ath10k_htt_rx_sec_ind_handler(struct ath10k *ar,
 	spin_unlock_bh(&ar->data_lock);
 }
 
+static int
+ath10k_htt_update_ratecode(struct ath10k *ar, struct ath10k_sta *arsta,
+			   u8 *ratecode)
+{
+	u8 hw_rate, preamble;
+	u16 bitrate;
+	int i;
+	const struct ieee80211_rate *bitrates;
+	bool cck;
+	struct ieee80211_chanctx_conf *conf = NULL;
+	enum nl80211_band band;
+	struct ieee80211_supported_band *sband;
+
+	if (!ratecode)
+		return -EINVAL;
+
+	/* only for legacy ratecode */
+	preamble = ATH10K_HW_PREAMBLE(*ratecode);
+	if (preamble != WMI_RATE_PREAMBLE_CCK &&
+	    preamble != WMI_RATE_PREAMBLE_OFDM)
+		return 0;
+
+	if (!arsta->arvif || !arsta->arvif->vif)
+		return -EINVAL;
+
+	WARN_ON(!rcu_read_lock_held());
+	conf = rcu_dereference(arsta->arvif->vif->chanctx_conf);
+	if (!conf)
+		return -EINVAL;
+
+	band = conf->def.chan->band;
+	sband = &ar->mac.sbands[band];
+	if (!sband->bitrates)
+		return -EINVAL;
+
+	if (WARN_ON_ONCE(sband->n_bitrates > S8_MAX))
+		return -EINVAL;
+
+	cck = (preamble == WMI_RATE_PREAMBLE_CCK);
+	hw_rate = ATH10K_HW_LEGACY_RATE(*ratecode);
+	for (i = 0; i < sband->n_bitrates; i++) {
+		bitrates = &sband->bitrates[i];
+		if (ath10k_mac_bitrate_is_cck(bitrates->bitrate) != cck)
+			continue;
+
+		if (bitrates->hw_value == hw_rate ||
+		    (bitrates->flags & IEEE80211_RATE_SHORT_PREAMBLE &&
+		     bitrates->hw_value_short == hw_rate)) {
+			bitrate = bitrates->bitrate;
+
+			/* The bitrate will be recovered in
+			 * ath10k_update_per_peer_tx_stats().
+			 */
+			if (bitrate == 55)
+				bitrate = 60;
+
+			bitrate = bitrate / 10;
+
+			/* replace hw_value with bitrate in ratecode */
+			*ratecode = ATH10K_HW_RATECODE(bitrate, 0, preamble);
+			return 0;
+		}
+	}
+
+	ath10k_warn(ar, "Invalid legacy ratecode %hhd ppdu stats", *ratecode);
+	return -EINVAL;
+}
+
 static void
 ath10k_htt_process_ppdu_stats(struct ath10k *ar, struct sk_buff *skb)
 {
@@ -3734,6 +3808,7 @@ ath10k_htt_process_ppdu_stats(struct ath10k *ar, struct sk_buff *skb)
 	struct ath10k_peer *peer;
 	u32 peer_id, i;
 	u8 num_ppdu;
+	u8 ratecode;
 
 	num_ppdu = resp->ppdu_stats.num_ppdu;
 	tx_stats = &resp->ppdu_stats.tx_ppdu_stats[0];
@@ -3753,6 +3828,10 @@ ath10k_htt_process_ppdu_stats(struct ath10k *ar, struct sk_buff *skb)
 	for (i = 0; i < num_ppdu; i++) {
 		tx_stats = &resp->ppdu_stats.tx_ppdu_stats[i];
 		arsta = (struct ath10k_sta *)sta->drv_priv;
+		ratecode = tx_stats->tx_ratecode;
+
+		if (ath10k_htt_update_ratecode(ar, arsta, &ratecode))
+			goto err;
 
 		p_tx_stats->succ_bytes =
 			__le32_to_cpu(tx_stats->tx_success_bytes);
@@ -3760,7 +3839,7 @@ ath10k_htt_process_ppdu_stats(struct ath10k *ar, struct sk_buff *skb)
 			__le32_to_cpu(tx_stats->tx_retry_bytes);
 		p_tx_stats->failed_bytes =
 			__le32_to_cpu(tx_stats->tx_failed_bytes);
-		p_tx_stats->ratecode = tx_stats->tx_ratecode;
+		p_tx_stats->ratecode = ratecode;
 		p_tx_stats->flags = tx_stats->flags;
 		p_tx_stats->succ_pkts =
 			__le16_to_cpu(tx_stats->tx_success_msdus);
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 83cc877..95a5069 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -94,7 +94,7 @@ static struct ieee80211_rate ath10k_rates_rev2[] = {
 
 #define ath10k_wmi_legacy_rates ath10k_rates
 
-static bool ath10k_mac_bitrate_is_cck(int bitrate)
+bool ath10k_mac_bitrate_is_cck(int bitrate)
 {
 	switch (bitrate) {
 	case 10:
diff --git a/drivers/net/wireless/ath/ath10k/mac.h b/drivers/net/wireless/ath/ath10k/mac.h
index 98d83a2..cc245b1 100644
--- a/drivers/net/wireless/ath/ath10k/mac.h
+++ b/drivers/net/wireless/ath/ath10k/mac.h
@@ -28,6 +28,7 @@ struct rfc1042_hdr {
 	__be16 snap_type;
 } __packed;
 
+bool ath10k_mac_bitrate_is_cck(int bitrate);
 struct ath10k *ath10k_mac_create(size_t priv_size);
 void ath10k_mac_destroy(struct ath10k *ar);
 int ath10k_mac_register(struct ath10k *ar);
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
