Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8875A2BCEB
	for <lists+ath10k@lfdr.de>; Tue, 28 May 2019 03:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1d7MG+Fj8mw4ygC8uiny0XTVxLiuC2GHMmR2Nxi2qwc=; b=fuV
	UBcu02m6euDUZe8lAANnl3D9QuBh4Y8BsFsLvTdgEqFa1UBskYMgf25IRSWKMv0OXs2IjJujpyCXk
	AUIC26ZBvO+OjCeM4F66ukXzZw3v1DteNHx8k9sTXUY1kEDWaZSki9/drxsaIKhc9fC9f4sIjlH7X
	6aKpVx6uF4KkRW+ck+aMc7ZHZAgh7azDch3U1E0imiMwk8eccWvKKf9+LeeWyNphi4Y8rJ1BTkrGC
	pTJDa1hA4U68EKE4ifEW+8R8ljYRdiOjtFb6dQH/j2W+1v0HOLDqbJSyMx/CMHPfKFB8OdTd0cPyF
	UPeyKSXN2ja3nRK8Kv0av0DjwO7svSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVR5F-0003fn-3J; Tue, 28 May 2019 01:39:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVR5A-0003fS-JL
 for ath10k@lists.infradead.org; Tue, 28 May 2019 01:39:18 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B35786087B; Tue, 28 May 2019 01:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559007551;
 bh=Z9xSw+T74QLO5Ufc78kOMjtQsLeTFLJqGeMI03/Dpns=;
 h=From:To:Cc:Subject:Date:From;
 b=T/jlgR7iohXKYmsYGtnCv07XcgliTD15ognRANJBFU/iwO7JtfubV5nw+zYRFWepv
 XIeHXTaqqHBfYJSuJZmPgZT3YFecZROJGe9ImXKkry+lK6oTvdG2mtSeF7H1JIpS+f
 SKzKBtPhs6CuIqbT0fHxBpmFT0zXXzHecH/BEDjs=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from smtp.codeaurora.org (unknown [180.166.53.21])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: miaoqing@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 017AF60795;
 Tue, 28 May 2019 01:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559007550;
 bh=Z9xSw+T74QLO5Ufc78kOMjtQsLeTFLJqGeMI03/Dpns=;
 h=From:To:Cc:Subject:Date:From;
 b=T7TvqftyCw6ybezd+kFCobsafo2tgA0IvTcPLfqHxvMyiTLX3+vapGDbJ54LfL82G
 vGA15BykRVU4p4Y/e9jNwiI2gc+r+dBYllC86VVmLRWSIFVWppDw8s43ZNS1zAf+j3
 LUSxpXCz2c0JbAMbZCECZDCISm68lv4pd3JDSZSc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 017AF60795
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=miaoqing@codeaurora.org
Received: by smtp.codeaurora.org (sSMTP sendmail emulation);
 Tue, 28 May 2019 09:39:04 +0800
From: Miaoqing Pan <miaoqing@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: fix failure to set multiple fixed rate
Date: Tue, 28 May 2019 09:38:27 +0800
Message-Id: <1559007507-3358-1-git-send-email-miaoqing@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_183916_668840_E8780B5A 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: linux-wireless@vger.kernel.org, Miaoqing Pan <miaoqing@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Currently, below fixed rate commands are broken,
iw wlanx set bitrates legacy-<2.4|5> ht-mcs-<2.4|5> vht-mcs-<2.4|5> \
<NSS:MCSx>
iw wlanx set bitrates legacy-<2.4|5> <legacy rate> ht-mcs-<2.4|5> \
<MCS index> vht-mcs-<2.4|5>
iw wlanx set bitrates legacy-<2.4|5> <legacy rate> ht-mcs-<2.4|5> \
vht-mcs-<2.4|5> <NSS:MCSx>

There are two methods to set fixed rate, both failed,
- Use vdev fixed rate command
  This command only support one single rate, but it's broken due to
  mac80211 change commit e8e4f5280ddd ("mac80211: reject/clear user
  rate mask if not usable"), which requires user to specify at least
  one legacy rate. So we can't use this command to set ht/vht single
  rate any more.
- Use peer_assoc command
  This command can update rx capability for multiple rates, it will
  work fine for ht mcs rates, as each supported mcs can be advertised
  in ht_mcs index mask. But this will not work with vht rates because,
  as per the vht mcs capability advertisement, there are only two bits
  to indicate the supported mcs. E.g. only support 0-7, 0-8, 0-9.

So introduced new WMI command: WMI_PEER_PARAM_FIXED_RATE. After peer
assoc, the peer fixed rate cmd will work for that specific peer.
Remaining peers will use auto rate. If both vdev fixed rate and peer
fixed rates are given, peer fixed rate will take effect to peers for
which this cmd is given. Remaining peers in that vdev, will use vdev
fixed rate.

Tested HW: QCA9984
Tested FW: 10.4-3.9.0.2-00035

Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/core.c |   1 +
 drivers/net/wireless/ath/ath10k/core.h |   7 +++
 drivers/net/wireless/ath/ath10k/mac.c  | 111 +++++++++++++++++++++++++++++----
 drivers/net/wireless/ath/ath10k/wmi.h  |   1 +
 4 files changed, 108 insertions(+), 12 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 61ef903..811cf38 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -612,6 +612,7 @@
 	[ATH10K_FW_FEATURE_MGMT_TX_BY_REF] = "mgmt-tx-by-reference",
 	[ATH10K_FW_FEATURE_NON_BMI] = "non-bmi",
 	[ATH10K_FW_FEATURE_SINGLE_CHAN_INFO_PER_CHANNEL] = "single-chan-info-per-channel",
+	[ATH10K_FW_FEATURE_PEER_FIXED_RATE] = "peer-fixed-rate",
 };
 
 static unsigned int ath10k_core_get_fw_feature_str(char *buf,
diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
index 2d109c0..fe6e88d 100644
--- a/drivers/net/wireless/ath/ath10k/core.h
+++ b/drivers/net/wireless/ath/ath10k/core.h
@@ -579,6 +579,10 @@ struct ath10k_vif {
 	struct work_struct ap_csa_work;
 	struct delayed_work connection_loss_work;
 	struct cfg80211_bitrate_mask bitrate_mask;
+
+	/* For setting VHT peer fixed rate, protected by conf_mutex */
+	int vht_num_rates;
+	u8 vht_pfr;
 };
 
 struct ath10k_vif_iter {
@@ -770,6 +774,9 @@ enum ath10k_fw_features {
 	/* Firmware sends only one chan_info event per channel */
 	ATH10K_FW_FEATURE_SINGLE_CHAN_INFO_PER_CHANNEL = 20,
 
+	/* Firmware allows setting peer fixed rate */
+	ATH10K_FW_FEATURE_PEER_FIXED_RATE = 21,
+
 	/* keep last */
 	ATH10K_FW_FEATURE_COUNT,
 };
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index b500fd4..e555a22 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -7107,18 +7107,23 @@ static int ath10k_get_survey(struct ieee80211_hw *hw, int idx,
 static bool
 ath10k_mac_bitrate_mask_has_single_rate(struct ath10k *ar,
 					enum nl80211_band band,
-					const struct cfg80211_bitrate_mask *mask)
+					const struct cfg80211_bitrate_mask *mask,
+					int *vht_num_rates)
 {
 	int num_rates = 0;
-	int i;
+	int i, tmp;
 
 	num_rates += hweight32(mask->control[band].legacy);
 
 	for (i = 0; i < ARRAY_SIZE(mask->control[band].ht_mcs); i++)
 		num_rates += hweight8(mask->control[band].ht_mcs[i]);
 
-	for (i = 0; i < ARRAY_SIZE(mask->control[band].vht_mcs); i++)
-		num_rates += hweight16(mask->control[band].vht_mcs[i]);
+	*vht_num_rates = 0;
+	for (i = 0; i < ARRAY_SIZE(mask->control[band].vht_mcs); i++) {
+		tmp = hweight16(mask->control[band].vht_mcs[i]);
+		num_rates += tmp;
+		*vht_num_rates += tmp;
+	}
 
 	return num_rates == 1;
 }
@@ -7176,7 +7181,7 @@ static int ath10k_get_survey(struct ieee80211_hw *hw, int idx,
 ath10k_mac_bitrate_mask_get_single_rate(struct ath10k *ar,
 					enum nl80211_band band,
 					const struct cfg80211_bitrate_mask *mask,
-					u8 *rate, u8 *nss)
+					u8 *rate, u8 *nss, bool vht_only)
 {
 	int rate_idx;
 	int i;
@@ -7184,6 +7189,9 @@ static int ath10k_get_survey(struct ieee80211_hw *hw, int idx,
 	u8 preamble;
 	u8 hw_rate;
 
+	if (vht_only)
+		goto next;
+
 	if (hweight32(mask->control[band].legacy) == 1) {
 		rate_idx = ffs(mask->control[band].legacy) - 1;
 
@@ -7217,6 +7225,7 @@ static int ath10k_get_survey(struct ieee80211_hw *hw, int idx,
 		}
 	}
 
+next:
 	for (i = 0; i < ARRAY_SIZE(mask->control[band].vht_mcs); i++) {
 		if (hweight16(mask->control[band].vht_mcs[i]) == 1) {
 			*nss = i + 1;
@@ -7278,7 +7287,8 @@ static int ath10k_mac_set_fixed_rate_params(struct ath10k_vif *arvif,
 static bool
 ath10k_mac_can_set_bitrate_mask(struct ath10k *ar,
 				enum nl80211_band band,
-				const struct cfg80211_bitrate_mask *mask)
+				const struct cfg80211_bitrate_mask *mask,
+				bool allow_pfr)
 {
 	int i;
 	u16 vht_mcs;
@@ -7297,7 +7307,8 @@ static int ath10k_mac_set_fixed_rate_params(struct ath10k_vif *arvif,
 		case BIT(10) - 1:
 			break;
 		default:
-			ath10k_warn(ar, "refusing bitrate mask with missing 0-7 VHT MCS rates\n");
+			if (!allow_pfr)
+				ath10k_warn(ar, "refusing bitrate mask with missing 0-7 VHT MCS rates\n");
 			return false;
 		}
 	}
@@ -7305,6 +7316,26 @@ static int ath10k_mac_set_fixed_rate_params(struct ath10k_vif *arvif,
 	return true;
 }
 
+static bool ath10k_mac_set_vht_bitrate_mask_fixup(struct ath10k *ar,
+						  struct ath10k_vif *arvif,
+						  struct ieee80211_sta *sta)
+{
+	int err;
+	u8 rate = arvif->vht_pfr;
+
+	/* skip non vht and multiple rate peers */
+	if (!sta->vht_cap.vht_supported || arvif->vht_num_rates != 1)
+		return false;
+
+	err = ath10k_wmi_peer_set_param(ar, arvif->vdev_id, sta->addr,
+					WMI_PEER_PARAM_FIXED_RATE, rate);
+	if (err)
+		ath10k_warn(ar, "failed to eanble STA %pM peer fixed rate: %d\n",
+			    sta->addr, err);
+
+	return true;
+}
+
 static void ath10k_mac_set_bitrate_mask_iter(void *data,
 					     struct ieee80211_sta *sta)
 {
@@ -7315,6 +7346,9 @@ static void ath10k_mac_set_bitrate_mask_iter(void *data,
 	if (arsta->arvif != arvif)
 		return;
 
+	if (ath10k_mac_set_vht_bitrate_mask_fixup(ar, arvif, sta))
+		return;
+
 	spin_lock_bh(&ar->data_lock);
 	arsta->changed |= IEEE80211_RC_SUPP_RATES_CHANGED;
 	spin_unlock_bh(&ar->data_lock);
@@ -7322,6 +7356,26 @@ static void ath10k_mac_set_bitrate_mask_iter(void *data,
 	ieee80211_queue_work(ar->hw, &arsta->update_wk);
 }
 
+static void ath10k_mac_clr_bitrate_mask_iter(void *data,
+					     struct ieee80211_sta *sta)
+{
+	struct ath10k_vif *arvif = data;
+	struct ath10k_sta *arsta = (struct ath10k_sta *)sta->drv_priv;
+	struct ath10k *ar = arvif->ar;
+	int err;
+
+	/* clear vht peers only */
+	if (arsta->arvif != arvif || !sta->vht_cap.vht_supported)
+		return;
+
+	err = ath10k_wmi_peer_set_param(ar, arvif->vdev_id, sta->addr,
+					WMI_PEER_PARAM_FIXED_RATE,
+					WMI_FIXED_RATE_NONE);
+	if (err)
+		ath10k_warn(ar, "failed to clear STA %pM peer fixed rate: %d\n",
+			    sta->addr, err);
+}
+
 static int ath10k_mac_op_set_bitrate_mask(struct ieee80211_hw *hw,
 					  struct ieee80211_vif *vif,
 					  const struct cfg80211_bitrate_mask *mask)
@@ -7338,6 +7392,9 @@ static int ath10k_mac_op_set_bitrate_mask(struct ieee80211_hw *hw,
 	u8 ldpc;
 	int single_nss;
 	int ret;
+	int vht_num_rates, allow_pfr;
+	u8 vht_pfr;
+	bool update_bitrate_mask = true;
 
 	if (ath10k_mac_vif_chan(vif, &def))
 		return -EPERM;
@@ -7351,9 +7408,21 @@ static int ath10k_mac_op_set_bitrate_mask(struct ieee80211_hw *hw,
 	if (sgi == NL80211_TXRATE_FORCE_LGI)
 		return -EINVAL;
 
-	if (ath10k_mac_bitrate_mask_has_single_rate(ar, band, mask)) {
+	allow_pfr = test_bit(ATH10K_FW_FEATURE_PEER_FIXED_RATE,
+			     ar->normal_mode_fw.fw_file.fw_features);
+	if (allow_pfr) {
+		mutex_lock(&ar->conf_mutex);
+		ieee80211_iterate_stations_atomic(ar->hw,
+						  ath10k_mac_clr_bitrate_mask_iter,
+						  arvif);
+		mutex_unlock(&ar->conf_mutex);
+	}
+
+	if (ath10k_mac_bitrate_mask_has_single_rate(ar, band, mask,
+						    &vht_num_rates)) {
 		ret = ath10k_mac_bitrate_mask_get_single_rate(ar, band, mask,
-							      &rate, &nss);
+							      &rate, &nss,
+							      false);
 		if (ret) {
 			ath10k_warn(ar, "failed to get single rate for vdev %i: %d\n",
 				    arvif->vdev_id, ret);
@@ -7369,12 +7438,30 @@ static int ath10k_mac_op_set_bitrate_mask(struct ieee80211_hw *hw,
 			  max(ath10k_mac_max_ht_nss(ht_mcs_mask),
 			      ath10k_mac_max_vht_nss(vht_mcs_mask)));
 
-		if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask))
-			return -EINVAL;
+		if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
+						     allow_pfr)) {
+			u8 vht_nss;
+
+			if (!allow_pfr || vht_num_rates != 1)
+				return -EINVAL;
+
+			/* Reach here, firmware supports peer fixed rate and has
+			 * single vht rate, and don't update vif birate_mask, as
+			 * the rate only for specific peer.
+			 */
+			ath10k_mac_bitrate_mask_get_single_rate(ar, band, mask,
+								&vht_pfr,
+								&vht_nss,
+								true);
+			update_bitrate_mask = false;
+		}
 
 		mutex_lock(&ar->conf_mutex);
 
-		arvif->bitrate_mask = *mask;
+		if (update_bitrate_mask)
+			arvif->bitrate_mask = *mask;
+		arvif->vht_num_rates = vht_num_rates;
+		arvif->vht_pfr = vht_pfr;
 		ieee80211_iterate_stations_atomic(ar->hw,
 						  ath10k_mac_set_bitrate_mask_iter,
 						  arvif);
diff --git a/drivers/net/wireless/ath/ath10k/wmi.h b/drivers/net/wireless/ath/ath10k/wmi.h
index 12f57f9..bd54da6 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.h
+++ b/drivers/net/wireless/ath/ath10k/wmi.h
@@ -6260,6 +6260,7 @@ enum wmi_peer_param {
 	WMI_PEER_CHAN_WIDTH = 0x4,
 	WMI_PEER_NSS        = 0x5,
 	WMI_PEER_USE_4ADDR  = 0x6,
+	WMI_PEER_PARAM_FIXED_RATE = 0x9,
 	WMI_PEER_DEBUG      = 0xa,
 	WMI_PEER_PHYMODE    = 0xd,
 	WMI_PEER_DUMMY_VAR  = 0xff, /* dummy parameter for STA PS workaround */
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
