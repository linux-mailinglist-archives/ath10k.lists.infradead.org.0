Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9261B9956
	for <lists+ath10k@lfdr.de>; Mon, 27 Apr 2020 10:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+gWm969fS51S8aHNi7Z17HQ8DCjT2gFkp+jbaqaA7I=; b=fcJjZ4iRilkvwt
	Oy1XnIvU2bWrEeOQRUfpM0K0FgjiSlAZ90dXoCeBb6jjv0dsMB7+rM9n7EnIHqEFhhnWlEum+XEvh
	zex2Ekgk6RrnMW64/zwx1htqtMStqH+HoWGRC/EYA+Qxf/xd8slLeZdAjnYkbXn7E56oiH0rarApA
	DDR994M9ja5lD9OsZmHXSRKkr86exFsqC19FbuXzKSe8wlt2ETlq5x3ff/YN+G9t3+/+7Cm9K/r1X
	yPhUifOrKS7uRAhlHEWkeoKmb33huyaE9ORdH+9hU98ZNhn/7CvU/1UkbstiJosmN2jeJlDHQTOu7
	QOySTnOiU0mafjweijbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSylD-0008C4-3I; Mon, 27 Apr 2020 08:05:03 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyl6-0008A3-FM
 for ath10k@lists.infradead.org; Mon, 27 Apr 2020 08:04:59 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587974696; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=+q59LTklXjoWNu8pvVgdHbZ7TWyizwdeiOaYYtw0JTI=;
 b=XECR2M/Ju4DyzgN/gvLZ4KwzKpHA05TREm2QDnGRarpNYsya2Gy8ZIVJ1QxJ5gdblWsDsb2+
 U6zBXlOiAAJMG6W9HCCFP5caIQMWbs3UzmNIvMdThZEu7ZftXt5kdNJOzvUR5r9AsJj+uDHi
 +B9Z3sjvRoc60xsAcok/sy+7V+w=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea69225.7fe0a51f9340-smtp-out-n04;
 Mon, 27 Apr 2020 08:04:53 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8F0DFC433BA; Mon, 27 Apr 2020 08:04:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 45AD6C433CB;
 Mon, 27 Apr 2020 08:04:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 45AD6C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 3/4] ath10k: add bitrate parse for peer stats info
Date: Mon, 27 Apr 2020 16:04:15 +0800
Message-Id: <20200427080416.8265-4-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200427080416.8265-1-wgong@codeaurora.org>
References: <20200427080416.8265-1-wgong@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_010456_574703_9F2CA65A 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: linux-wireless@vger.kernel.org, wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The rate code and rate kbps report by WMI_TLV_PEER_STATS_INFO_EVENTID
from firmware contains all the bitrate info which include OFDM, CCK,
HT/VHT, and mac80211 need the struct rate_info which include below
parameters:

flags: bitflag of flags from &enum rate_info_flags
mcs: mcs index if struct describes an HT/VHT/HE rate
legacy: bitrate in 100kbit/s for 802.11abg
nss: number of streams (VHT & HE only)
bw: bandwidth (from &enum rate_info_bw)

For OFDM/CCK, its rate kbps indicate the bitrate, for HT/VHT, mac80211
need the above 5 parameters to cacluate the bitrate and show by iw.

After parse the bitrate info, iw show the correct rx bitrate:

localhost ~ # iw wlan0 link
	rx bitrate: 234.0 MBit/s VHT-MCS 3 80MHz VHT-NSS 2
	rx bitrate: 40.5 MBit/s MCS 2 40MHz
	rx bitrate: 72.2 MBit/s MCS 7 short GI
	rx bitrate: 54.0 MBit/s
	rx bitrate: 48.0 MBit/s

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/core.h    |  20 +++
 drivers/net/wireless/ath/ath10k/mac.c     | 161 ++++++++++++++++++++++
 drivers/net/wireless/ath/ath10k/wmi-tlv.h |   9 ++
 3 files changed, 190 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
index 11d9132be4fd..1700bf59e8fa 100644
--- a/drivers/net/wireless/ath/ath10k/core.h
+++ b/drivers/net/wireless/ath/ath10k/core.h
@@ -149,6 +149,26 @@ static inline u32 host_interest_item_address(u32 item_offset)
 	return QCA988X_HOST_INTEREST_ADDRESS + item_offset;
 }
 
+enum ath10k_phy_mode {
+	ATH10K_PHY_MODE_LEGACY = 0,
+	ATH10K_PHY_MODE_HT = 1,
+	ATH10K_PHY_MODE_VHT = 2,
+};
+
+/* Data rate 100KBPS based on IE Index */
+struct ath10k_index_ht_data_rate_type {
+	u8   beacon_rate_index;
+	u16  supported_rate[4];
+};
+
+/* Data rate 100KBPS based on IE Index */
+struct ath10k_index_vht_data_rate_type {
+	u8   beacon_rate_index;
+	u16  supported_VHT80_rate[2];
+	u16  supported_VHT40_rate[2];
+	u16  supported_VHT20_rate[2];
+};
+
 struct ath10k_bmi {
 	bool done_sent;
 };
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index d0401d3adde4..38fc8cb3aac9 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -8305,6 +8305,157 @@ static void ath10k_mac_op_sta_pre_rcu_remove(struct ieee80211_hw *hw,
 			peer->removed = true;
 }
 
+/* HT MCS parameters with Nss = 1 */
+static const struct ath10k_index_ht_data_rate_type supported_ht_mcs_rate_nss1[] = {
+	/* MCS  L20   L40   S20  S40 */
+	{0,  { 65,  135,  72,  150} },
+	{1,  { 130, 270,  144, 300} },
+	{2,  { 195, 405,  217, 450} },
+	{3,  { 260, 540,  289, 600} },
+	{4,  { 390, 810,  433, 900} },
+	{5,  { 520, 1080, 578, 1200} },
+	{6,  { 585, 1215, 650, 1350} },
+	{7,  { 650, 1350, 722, 1500} }
+};
+
+/* HT MCS parameters with Nss = 2 */
+static const struct ath10k_index_ht_data_rate_type supported_ht_mcs_rate_nss2[] = {
+	/* MCS  L20    L40   S20   S40 */
+	{0,  {130,  270,  144,  300} },
+	{1,  {260,  540,  289,  600} },
+	{2,  {390,  810,  433,  900} },
+	{3,  {520,  1080, 578,  1200} },
+	{4,  {780,  1620, 867,  1800} },
+	{5,  {1040, 2160, 1156, 2400} },
+	{6,  {1170, 2430, 1300, 2700} },
+	{7,  {1300, 2700, 1444, 3000} }
+};
+
+/* MCS parameters with Nss = 1 */
+static const struct ath10k_index_vht_data_rate_type supported_vht_mcs_rate_nss1[] = {
+	/* MCS  L80    S80     L40   S40    L20   S20 */
+	{0,  {293,  325},  {135,  150},  {65,   72} },
+	{1,  {585,  650},  {270,  300},  {130,  144} },
+	{2,  {878,  975},  {405,  450},  {195,  217} },
+	{3,  {1170, 1300}, {540,  600},  {260,  289} },
+	{4,  {1755, 1950}, {810,  900},  {390,  433} },
+	{5,  {2340, 2600}, {1080, 1200}, {520,  578} },
+	{6,  {2633, 2925}, {1215, 1350}, {585,  650} },
+	{7,  {2925, 3250}, {1350, 1500}, {650,  722} },
+	{8,  {3510, 3900}, {1620, 1800}, {780,  867} },
+	{9,  {3900, 4333}, {1800, 2000}, {780,  867} }
+};
+
+/*MCS parameters with Nss = 2 */
+static const struct ath10k_index_vht_data_rate_type supported_vht_mcs_rate_nss2[] = {
+	/* MCS  L80    S80     L40   S40    L20   S20 */
+	{0,  {585,  650},  {270,  300},  {130,  144} },
+	{1,  {1170, 1300}, {540,  600},  {260,  289} },
+	{2,  {1755, 1950}, {810,  900},  {390,  433} },
+	{3,  {2340, 2600}, {1080, 1200}, {520,  578} },
+	{4,  {3510, 3900}, {1620, 1800}, {780,  867} },
+	{5,  {4680, 5200}, {2160, 2400}, {1040, 1156} },
+	{6,  {5265, 5850}, {2430, 2700}, {1170, 1300} },
+	{7,  {5850, 6500}, {2700, 3000}, {1300, 1444} },
+	{8,  {7020, 7800}, {3240, 3600}, {1560, 1733} },
+	{9,  {7800, 8667}, {3600, 4000}, {1560, 1733} }
+};
+
+static void ath10k_mac_get_rate_flags_ht(struct ath10k *ar, u32 rate, u8 nss, u8 mcs,
+					 u8 *flags, u8 *bw)
+{
+	struct ath10k_index_ht_data_rate_type *mcs_rate;
+
+	mcs_rate = (struct ath10k_index_ht_data_rate_type *)
+		   ((nss == 1) ? &supported_ht_mcs_rate_nss1 :
+		   &supported_ht_mcs_rate_nss2);
+
+	if (rate == mcs_rate[mcs].supported_rate[0]) {
+		*bw = RATE_INFO_BW_20;
+	} else if (rate == mcs_rate[mcs].supported_rate[1]) {
+		*bw |= RATE_INFO_BW_40;
+	} else if (rate == mcs_rate[mcs].supported_rate[2]) {
+		*bw |= RATE_INFO_BW_20;
+		*flags |= RATE_INFO_FLAGS_SHORT_GI;
+	} else if (rate == mcs_rate[mcs].supported_rate[3]) {
+		*bw |= RATE_INFO_BW_40;
+		*flags |= RATE_INFO_FLAGS_SHORT_GI;
+	} else {
+		ath10k_warn(ar, "invalid ht params rate %d 100kbps nss %d mcs %d",
+			    rate, nss, mcs);
+	}
+}
+
+static void ath10k_mac_get_rate_flags_vht(struct ath10k *ar, u32 rate, u8 nss, u8 mcs,
+					  u8 *flags, u8 *bw)
+{
+	struct ath10k_index_vht_data_rate_type *mcs_rate;
+
+	mcs_rate = (struct ath10k_index_vht_data_rate_type *)
+		   ((nss == 1) ? &supported_vht_mcs_rate_nss1 :
+		   &supported_vht_mcs_rate_nss2);
+
+	if (rate == mcs_rate[mcs].supported_VHT80_rate[0]) {
+		*bw = RATE_INFO_BW_80;
+	} else if (rate == mcs_rate[mcs].supported_VHT80_rate[1]) {
+		*bw = RATE_INFO_BW_80;
+		*flags |= RATE_INFO_FLAGS_SHORT_GI;
+	} else if (rate == mcs_rate[mcs].supported_VHT40_rate[0]) {
+		*bw = RATE_INFO_BW_40;
+	} else if (rate == mcs_rate[mcs].supported_VHT40_rate[1]) {
+		*bw = RATE_INFO_BW_40;
+		*flags |= RATE_INFO_FLAGS_SHORT_GI;
+	} else if (rate == mcs_rate[mcs].supported_VHT20_rate[0]) {
+		*bw = RATE_INFO_BW_20;
+	} else if (rate == mcs_rate[mcs].supported_VHT20_rate[1]) {
+		*bw = RATE_INFO_BW_20;
+		*flags |= RATE_INFO_FLAGS_SHORT_GI;
+	} else {
+		ath10k_warn(ar, "invalid vht params rate %d 100kbps nss %d mcs %d",
+			    rate, nss, mcs);
+	}
+}
+
+static void ath10k_mac_get_rate_flags(struct ath10k *ar, u32 rate,
+				      enum ath10k_phy_mode mode, u8 nss, u8 mcs,
+				      u8 *flags, u8 *bw)
+{
+	if (mode == ATH10K_PHY_MODE_HT) {
+		*flags = RATE_INFO_FLAGS_MCS;
+		ath10k_mac_get_rate_flags_ht(ar, rate, nss, mcs, flags, bw);
+	} else if (mode == ATH10K_PHY_MODE_VHT) {
+		*flags = RATE_INFO_FLAGS_VHT_MCS;
+		ath10k_mac_get_rate_flags_vht(ar, rate, nss, mcs, flags, bw);
+	}
+}
+
+static void ath10k_mac_parse_bitrate(struct ath10k *ar, u32 rate_code,
+				     u32 bitrate_kbps, struct rate_info *rate)
+{
+	enum ath10k_phy_mode mode = ATH10K_PHY_MODE_LEGACY;
+	enum wmi_rate_preamble preamble = WMI_TLV_GET_HW_RC_PREAM_V1(rate_code);
+	u8 nss = WMI_TLV_GET_HW_RC_NSS_V1(rate_code) + 1;
+	u8 mcs = WMI_TLV_GET_HW_RC_RATE_V1(rate_code);
+	u8 flags = 0, bw = 0;
+
+	if (preamble == WMI_RATE_PREAMBLE_HT)
+		mode = ATH10K_PHY_MODE_HT;
+	else if (preamble == WMI_RATE_PREAMBLE_VHT)
+		mode = ATH10K_PHY_MODE_VHT;
+
+	ath10k_mac_get_rate_flags(ar, bitrate_kbps / 100, mode, nss, mcs, &flags, &bw);
+
+	ath10k_dbg(ar, ATH10K_DBG_MAC,
+		   "mac parse bitrate preamble %d mode %d nss %d mcs %d flags %x bw %d\n",
+		   preamble, mode, nss, mcs, flags, bw);
+
+	rate->flags = flags;
+	rate->bw = bw;
+	rate->legacy = bitrate_kbps / 100;
+	rate->nss = nss;
+	rate->mcs = mcs;
+}
+
 static void ath10k_mac_sta_get_peer_stats_info(struct ath10k *ar,
 					       struct ieee80211_sta *sta,
 					       struct station_info *sinfo)
@@ -8341,6 +8492,16 @@ static void ath10k_mac_sta_get_peer_stats_info(struct ath10k *ar,
 		ath10k_warn(ar, "timed out waiting peer stats info\n");
 		return;
 	}
+
+	if (arsta->rx_rate_code != 0 && arsta->rx_bitrate_kbps != 0) {
+		ath10k_mac_parse_bitrate(ar, arsta->rx_rate_code,
+					 arsta->rx_bitrate_kbps,
+					 &sinfo->rxrate);
+
+		sinfo->filled |= BIT_ULL(NL80211_STA_INFO_RX_BITRATE);
+		arsta->rx_rate_code = 0;
+		arsta->rx_bitrate_kbps = 0;
+	}
 }
 
 static void ath10k_sta_statistics(struct ieee80211_hw *hw,
diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.h b/drivers/net/wireless/ath/ath10k/wmi-tlv.h
index 2153e2d9a955..6e0537dabd1d 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.h
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.h
@@ -2174,6 +2174,15 @@ struct wmi_tlv_peer_stats_info {
 	__le32 peer_rssi_per_chain[WMI_TLV_MAX_CHAINS];
 } __packed;
 
+#define HW_RATECODE_PREAM_V1_MASK GENMASK(10, 8)
+#define WMI_TLV_GET_HW_RC_PREAM_V1(rc) FIELD_GET(HW_RATECODE_PREAM_V1_MASK, rc)
+
+#define HW_RATECODE_NSS_V1_MASK GENMASK(7, 5)
+#define WMI_TLV_GET_HW_RC_NSS_V1(rc) FIELD_GET(HW_RATECODE_NSS_V1_MASK, rc)
+
+#define HW_RATECODE_RATE_V1_MASK GENMASK(4, 0)
+#define WMI_TLV_GET_HW_RC_RATE_V1(rc) FIELD_GET(HW_RATECODE_RATE_V1_MASK, rc)
+
 struct wmi_tlv_p2p_noa_ev {
 	__le32 vdev_id;
 } __packed;
-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
