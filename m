Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2406E2F9D6
	for <lists+ath10k@lfdr.de>; Thu, 30 May 2019 11:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZOA9BtJ38BYXNFDTF5SaOgHLwHyv0L0l43VJcCDNBXE=; b=Tid
	wxcudTgwjHNwBHei3ggecHvlnhKQKzgwv2vC8bap5OTGlkWPH1bhLyb4HnxlQPotXlWzZ05mN0KGE
	38Fwb4JrxqhyehbeV8TTefwsZ7OeuKeXp0jfjwFiOxPXHV1/lZRxUdFz4pzmgM6nJP3tL/2MRrO1O
	SD/5iGeIaKTMwU7mqAN+7S6NhCsqFOURZuGwrqpdHPt+Z1b+5FCr1Yv1SlLxuNfSdx6PBbUnGyKF6
	w+peDfxhx1wbok3MRwiOiXGRaRBuk8lZQXfV3wuzgQAC2aUISZ/1opDhq+7xhCaNwjc/JDrMzVJaK
	zCepGjUkN8KGwgmYbf9dAMvwVQhIRMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWHes-0004Ov-FR; Thu, 30 May 2019 09:47:38 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWHeh-0004H6-45
 for ath10k@lists.infradead.org; Thu, 30 May 2019 09:47:28 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B9E3961215; Thu, 30 May 2019 09:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559209645;
 bh=ZIFNe1Vm8PNCgpBZ186FQ8xv/J8gFD9jafYqAPeOhac=;
 h=From:To:Cc:Subject:Date:From;
 b=eo6VEAvylndsN5/hiklVKkpfHpwjj19uYKKDN596+HunCCtUtuBXmXommEdtb2bIB
 yT3N9aT290021y019QFrkmmoflVrt7y7zJP7XhU4LwkWYojc/7T+9rNgBiFKtRWFSo
 jgH1cy6elVRtiQTKlfm0H54We3OWXBmVZ7oVQZoY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from checstex0244823-lin.qca.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: bpothuno@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6289760F3E;
 Thu, 30 May 2019 09:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559209644;
 bh=ZIFNe1Vm8PNCgpBZ186FQ8xv/J8gFD9jafYqAPeOhac=;
 h=From:To:Cc:Subject:Date:From;
 b=oBco/EeSI4+ucNl24bTOTDTlvVSyLVXiaPZkApiiU1BJTNb2obPEFgBoyfzgdERvX
 OCXFQ/Plb2vmZyMFPNlBJKec0RvRKfYHnZaBY2rsKntWyQEerMMvzfaCYraok4uzsM
 u+GjA0FoipFKs/lkr+mKIUEqfOTlGc6xqAMXFXWE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6289760F3E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=bpothuno@codeaurora.org
From: Balaji Pothunoori <bpothuno@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v5] ath10k: add support for controlling tx power to a station
Date: Thu, 30 May 2019 15:17:18 +0530
Message-Id: <1559209638-23887-1-git-send-email-bpothuno@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_024727_199610_0CD5E208 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Balaji Pothunoori <bpothuno@codeaurora.org>,
 Ashok Raj Nagarajan <arnagara@codeaurora.org>, linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Ashok Raj Nagarajan <arnagara@codeaurora.org>

This patch will add the support to control the transmit power for traffic
to a station associated with the AP.

Underlying firmware will enforce that the maximum tx power will be based
on the regulatory requirements. If the user given transmit power is greater
than the allowed tx power in the given channel, then the firmware will use
the maximum tx power in the same channel.

Max and Min tx power values will depends on no of tx chain masks,
for QCA9984 allowed tx power range values from 6 to 23.

When 0 is sent to the firmware as tx power, it will revert to the default
tx power for the station.

Tested Hardware : QCA9984
Tested Firmware : 10.4-3.9.0.2-00046

Co-developed-by: Balaji Pothunoori <bpothuno@codeaurora.org>
Signed-off-by: Ashok Raj Nagarajan <arnagara@codeaurora.org>
Signed-off-by: Balaji Pothunoori <bpothuno@codeaurora.org>
---
v2: removed mBm to dBm conversion
v3: rebased wmi.h changes
v4: no changes, rebased 
v5: updated firmware details which 
    addresses Bob comments.
    updated commit log.

Note: mac80211/cfg80211 patches got merged hence sending
      ath10k alone with v5 and mentioned 10.4-3.9.0.2-00046
      firmware is yet to be upstream.

patchwork links :
 	https://patchwork.kernel.org/patch/10876859/
	https://patchwork.kernel.org/patch/10876853/

 drivers/net/wireless/ath/ath10k/debug.h |  3 +++
 drivers/net/wireless/ath/ath10k/mac.c   | 39 +++++++++++++++++++++++++++++++++
 drivers/net/wireless/ath/ath10k/wmi.h   |  6 +++++
 3 files changed, 48 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/debug.h b/drivers/net/wireless/ath/ath10k/debug.h
index db78e85..2e43d8d 100644
--- a/drivers/net/wireless/ath/ath10k/debug.h
+++ b/drivers/net/wireless/ath/ath10k/debug.h
@@ -71,6 +71,9 @@ struct ath10k_pktlog_hdr {
 /* FIXME: How to calculate the buffer size sanely? */
 #define ATH10K_FW_STATS_BUF_SIZE (1024 * 1024)
 
+#define ATH10K_TX_POWER_MAX_VAL 70
+#define ATH10K_TX_POWER_MIN_VAL 0
+
 extern unsigned int ath10k_debug_mask;
 
 __printf(2, 3) void ath10k_info(struct ath10k *ar, const char *fmt, ...);
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index b500fd4..7e3e403 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -6358,6 +6358,41 @@ static void ath10k_mac_dec_num_stations(struct ath10k_vif *arvif,
 	ar->num_stations--;
 }
 
+static int ath10k_sta_set_txpwr(struct ieee80211_hw *hw,
+				struct ieee80211_vif *vif,
+				struct ieee80211_sta *sta)
+{
+	struct ath10k *ar = hw->priv;
+	struct ath10k_vif *arvif = (void *)vif->drv_priv;
+	int ret = 0;
+	s16 txpwr;
+
+	if (sta->txpwr.type == NL80211_TX_POWER_AUTOMATIC) {
+		txpwr = 0;
+	} else {
+		txpwr = sta->txpwr.power;
+		if (!txpwr)
+			return -EINVAL;
+	}
+
+	if (txpwr > ATH10K_TX_POWER_MAX_VAL || txpwr < ATH10K_TX_POWER_MIN_VAL)
+		return -EINVAL;
+
+	mutex_lock(&ar->conf_mutex);
+
+	ret = ath10k_wmi_peer_set_param(ar, arvif->vdev_id, sta->addr,
+					WMI_PEER_USE_FIXED_PWR, txpwr);
+	if (ret) {
+		ath10k_warn(ar, "failed to set tx power for station ret: %d\n",
+			    ret);
+		goto out;
+	}
+
+out:
+	mutex_unlock(&ar->conf_mutex);
+	return ret;
+}
+
 static int ath10k_sta_state(struct ieee80211_hw *hw,
 			    struct ieee80211_vif *vif,
 			    struct ieee80211_sta *sta,
@@ -8015,6 +8050,7 @@ static const struct ieee80211_ops ath10k_ops = {
 	.set_key			= ath10k_set_key,
 	.set_default_unicast_key        = ath10k_set_default_unicast_key,
 	.sta_state			= ath10k_sta_state,
+	.sta_set_txpwr			= ath10k_sta_set_txpwr,
 	.conf_tx			= ath10k_conf_tx,
 	.remain_on_channel		= ath10k_remain_on_channel,
 	.cancel_remain_on_channel	= ath10k_cancel_remain_on_channel,
@@ -8703,6 +8739,9 @@ int ath10k_mac_register(struct ath10k *ar)
 		wiphy_ext_feature_set(ar->hw->wiphy,
 				      NL80211_EXT_FEATURE_ENABLE_FTM_RESPONDER);
 
+	if (test_bit(WMI_SERVICE_TX_PWR_PER_PEER, ar->wmi.svc_map))
+		wiphy_ext_feature_set(ar->hw->wiphy,
+				      NL80211_EXT_FEATURE_STA_TX_PWR);
 	/*
 	 * on LL hardware queues are managed entirely by the FW
 	 * so we only advertise to mac we can do the queues thing
diff --git a/drivers/net/wireless/ath/ath10k/wmi.h b/drivers/net/wireless/ath/ath10k/wmi.h
index 12f57f9..a0ed078 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.h
+++ b/drivers/net/wireless/ath/ath10k/wmi.h
@@ -200,6 +200,7 @@ enum wmi_service {
 	WMI_SERVICE_RTT_RESPONDER_ROLE,
 	WMI_SERVICE_PER_PACKET_SW_ENCRYPT,
 	WMI_SERVICE_REPORT_AIRTIME,
+	WMI_SERVICE_TX_PWR_PER_PEER,
 
 	/* Remember to add the new value to wmi_service_name()! */
 
@@ -367,6 +368,7 @@ enum wmi_10_4_service {
 	WMI_10_4_SERVICE_RTT_RESPONDER_ROLE,
 	WMI_10_4_SERVICE_EXT_PEER_TID_CONFIGS_SUPPORT,
 	WMI_10_4_SERVICE_REPORT_AIRTIME,
+	WMI_10_4_SERVICE_TX_PWR_PER_PEER,
 };
 
 static inline char *wmi_service_name(enum wmi_service service_id)
@@ -491,6 +493,7 @@ static inline char *wmi_service_name(enum wmi_service service_id)
 	SVCSTR(WMI_SERVICE_RTT_RESPONDER_ROLE);
 	SVCSTR(WMI_SERVICE_PER_PACKET_SW_ENCRYPT);
 	SVCSTR(WMI_SERVICE_REPORT_AIRTIME);
+	SVCSTR(WMI_SERVICE_TX_PWR_PER_PEER);
 
 	case WMI_SERVICE_MAX:
 		return NULL;
@@ -818,6 +821,8 @@ static inline void wmi_10_4_svc_map(const __le32 *in, unsigned long *out,
 	       WMI_SERVICE_PER_PACKET_SW_ENCRYPT, len);
 	SVCMAP(WMI_10_4_SERVICE_REPORT_AIRTIME,
 	       WMI_SERVICE_REPORT_AIRTIME, len);
+	SVCMAP(WMI_10_4_SERVICE_TX_PWR_PER_PEER,
+	       WMI_SERVICE_TX_PWR_PER_PEER, len);
 }
 
 #undef SVCMAP
@@ -6262,6 +6267,7 @@ enum wmi_peer_param {
 	WMI_PEER_USE_4ADDR  = 0x6,
 	WMI_PEER_DEBUG      = 0xa,
 	WMI_PEER_PHYMODE    = 0xd,
+	WMI_PEER_USE_FIXED_PWR = 0x8,
 	WMI_PEER_DUMMY_VAR  = 0xff, /* dummy parameter for STA PS workaround */
 };
 
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
