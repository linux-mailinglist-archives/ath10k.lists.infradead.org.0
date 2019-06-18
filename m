Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8942498AD
	for <lists+ath10k@lfdr.de>; Tue, 18 Jun 2019 07:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8oHpc5InrLHbo2RRlrz3ZypeSJSoqHT639Onc4dFebE=; b=dfqD25XUpU4pdZw+6DvUZcLFcA
	9hfX7UKb/WzOWKynuT/NONUMb2BHtfdVb5YM1hzju0D8sLCHA5cqqKB1xMmpUBbq+lnq7W93xCjoV
	Cl7vxOw3DoKnrWIPuGaYAr4KfBGUr/fPfA9artKqlt4YBzNMdD71N8xCCUMPSsynNsJ6NOTSV4HeT
	cfytKlG9PgxrLsMq9hrWS1fmR746y5mJUJ0d8vwfQdsO7Zzejns/qYvnoLeUjoelGJSya1IUMpcyi
	/HnEGFQ2xBCok3MiBaXMHBCDpYrMPmjoOx93rfkwBoLu4/yPqDiGKl6+/cMUMqkT2SMMyE1xhvPD7
	5yer9v/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd6fa-0007fN-SF; Tue, 18 Jun 2019 05:28:34 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd6ex-000754-A5
 for ath10k@lists.infradead.org; Tue, 18 Jun 2019 05:27:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0850061157; Tue, 18 Jun 2019 05:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560835675;
 bh=+A2fS4k1w+wEDp+XxzvefdpGPJl4LAVOV7fyHadvcZQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DuTMp98G7KkiyPs386I0ZvMY+v8su/fABjF36ZjR8QvLrXol4gE4ICdWipTcS4nw7
 xhejBp18vV7Wejw88NZ+oLssnkmJDnGTuQYzx6MMRP71eIUqStorrMYHKH+LgLDN2I
 YlJVYe6Cssel96Cy3UN5odaDaS1BThtFNgYo+mf8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from akolli-ThinkPad-L560.qca.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: tamizhr@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A890360F3F;
 Tue, 18 Jun 2019 05:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560835673;
 bh=+A2fS4k1w+wEDp+XxzvefdpGPJl4LAVOV7fyHadvcZQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ckBoza8DwTwKg+l2FROqDHbHES0p7YOWWNPwmLwtwY0zZTKVer4TGPGybRMhrgp3y
 hsxY1STw/QP1qV3qS4yf6bQQvS+vRGJgweYAPSHmF/Ha/JtrFI7ZOMcHBdL2y4xGtb
 nZiDv02n7tFJoP4sBanKuybu+9iTsYG9zN7aQSbQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A890360F3F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=tamizhr@codeaurora.org
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: johannes@sipsolutions.net,
	ath10k@lists.infradead.org
Subject: [PATCHv6 9/9] ath10k: Add extended TID configuration support
Date: Tue, 18 Jun 2019 10:57:12 +0530
Message-Id: <1560835632-17405-10-git-send-email-tamizhr@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_222755_443017_124E418B 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org, Tamizh chelvam <tamizhr@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This patch extend TID configuration support to configure
RTS_CTS control and TX rate limit. Tx rate limit is
similar to auto rate but it will be limited to the user
configured rate mask rather than the station's highest
supported rate mask. Here ext_tid_cfg_bitmap added
to notify the target which extended configuration
parameter has modified(here RTS_CTS).

WMI_10_4_SERVICE_EXT_PEER_TID_CONFIGS_SUPPORT service flag
introduced to advertise this support.

Testing:
	* Tested HW: QCA9984
	* Tested FW: 10.4-3.9.0.2-00021

Signed-off-by: Tamizh chelvam <tamizhr@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/core.c |    4 +++
 drivers/net/wireless/ath/ath10k/mac.c  |   48 ++++++++++++++++++++++++++++++++
 drivers/net/wireless/ath/ath10k/wmi.c  |    9 ++++--
 drivers/net/wireless/ath/ath10k/wmi.h  |   20 +++++++++++++
 4 files changed, 78 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index aff5856..5c021aa 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -2636,6 +2636,10 @@ int ath10k_core_start(struct ath10k *ar, enum ath10k_firmware_mode mode,
 		if (test_bit(WMI_SERVICE_REPORT_AIRTIME, ar->wmi.svc_map))
 			val |= WMI_10_4_REPORT_AIRTIME;
 
+		if (test_bit(WMI_SERVICE_EXT_PEER_TID_CONFIGS_SUPPORT,
+			     ar->wmi.svc_map))
+			val |= WMI_10_4_EXT_PEER_TID_CONFIGS_SUPPORT;
+
 		status = ath10k_mac_ext_resource_config(ar, val);
 		if (status) {
 			ath10k_err(ar,
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 0ce9720..79e5ec7 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -2950,6 +2950,12 @@ static int ath10k_new_peer_tid_config(struct ath10k *ar,
 			arg.aggr_control = vif->ampdu[i];
 			arg.rate_ctrl = vif->rate_ctrl[i];
 			arg.rcode_flags = vif->rate_code[i];
+			if (vif->rtscts[i])
+				arg.ext_tid_cfg_bitmap =
+					WMI_EXT_TID_RTS_CTS_CONFIG;
+			else
+				arg.ext_tid_cfg_bitmap = 0;
+			arg.rtscts_ctrl = vif->rtscts[i];
 		}
 
 		if (vif->noack[i]) {
@@ -6560,6 +6566,10 @@ static int ath10k_mac_validate_rate_mask(struct ath10k *ar,
 
 	if (txrate_type == NL80211_TX_RATE_FIXED)
 		*rate_ctrl = WMI_TID_CONFIG_RATE_CONTROL_FIXED_RATE;
+	else if (txrate_type == NL80211_TX_RATE_LIMITED &&
+		 (test_bit(WMI_SERVICE_EXT_PEER_TID_CONFIGS_SUPPORT,
+			   ar->wmi.svc_map)))
+		*rate_ctrl = WMI_PEER_TID_CONFIG_RATE_UPPER_CAP;
 	else
 		return -EOPNOTSUPP;
 	return 0;
@@ -6628,6 +6638,14 @@ static int ath10k_mac_validate_rate_mask(struct ath10k *ar,
 		}
 		kfree(tid_conf->mask);
 	}
+
+	if (changed & IEEE80211_TID_CONF_RTSCTS) {
+		if (tid_conf->rtscts)
+			arg->rtscts_ctrl = tid_conf->rtscts - 1;
+		else
+			arg->rtscts_ctrl = WMI_TID_CONFIG_RTSCTS_CONTROL_ENABLE;
+		arg->ext_tid_cfg_bitmap = WMI_EXT_TID_RTS_CTS_CONFIG;
+	}
 }
 
 static void ath10k_sta_tid_cfg_wk(struct work_struct *wk)
@@ -6708,6 +6726,18 @@ static void ath10k_sta_tid_cfg_wk(struct work_struct *wk)
 			}
 		}
 
+		if (changed & IEEE80211_TID_CONF_RTSCTS) {
+			if (sta->rtscts[i]) {
+				arg.rtscts_ctrl = 0;
+				arg.ext_tid_cfg_bitmap = 0;
+			} else {
+				arg.rtscts_ctrl = vif->rtscts[i] - 1;
+				arg.ext_tid_cfg_bitmap =
+					WMI_EXT_TID_RTS_CTS_CONFIG;
+				config_apply = true;
+			}
+		}
+
 		arg.tid = i;
 
 		if (config_apply) {
@@ -8403,6 +8433,13 @@ static int ath10k_mac_op_set_tid_config(struct ieee80211_hw *hw,
 				arg.rate_ctrl = 0;
 				arg.rcode_flags = 0;
 			}
+
+			if (changed & IEEE80211_TID_CONF_RTSCTS) {
+				sta->rtscts[arg.tid] =
+					tid_config->tid_conf[i].rtscts;
+				arg.rtscts_ctrl = 0;
+				arg.ext_tid_cfg_bitmap = 0;
+			}
 		} else {
 			arvif->tid_conf_changed[arg.tid] |= changed;
 
@@ -8422,6 +8459,10 @@ static int ath10k_mac_op_set_tid_config(struct ieee80211_hw *hw,
 				vif->rate_ctrl[arg.tid] = arg.rate_ctrl;
 				vif->rate_code[arg.tid] = arg.rcode_flags;
 			}
+
+			if (changed & IEEE80211_TID_CONF_RTSCTS)
+				vif->rtscts[arg.tid] =
+					tid_config->tid_conf[i].rtscts;
 		}
 	}
 
@@ -9168,6 +9209,13 @@ int ath10k_mac_register(struct ath10k *ar)
 		ar->ops->set_tid_config = NULL;
 		ar->hw->wiphy->flags &= ~WIPHY_FLAG_HAS_MAX_DATA_RETRY_COUNT;
 	}
+
+	if (test_bit(WMI_SERVICE_EXT_PEER_TID_CONFIGS_SUPPORT, ar->wmi.svc_map)) {
+		wiphy_ext_feature_set(ar->hw->wiphy,
+				      NL80211_EXT_FEATURE_PER_TID_RTSCTS_CTRL);
+		wiphy_ext_feature_set(ar->hw->wiphy,
+				      NL80211_EXT_FEATURE_PER_STA_RTSCTS_CTRL);
+	}
 	/*
 	 * on LL hardware queues are managed entirely by the FW
 	 * so we only advertise to mac we can do the queues thing
diff --git a/drivers/net/wireless/ath/ath10k/wmi.c b/drivers/net/wireless/ath/ath10k/wmi.c
index 6b1c70d..544a621 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.c
+++ b/drivers/net/wireless/ath/ath10k/wmi.c
@@ -8902,11 +8902,14 @@ static u32 ath10k_wmi_prepare_peer_qos(u8 uapsd_queues, u8 sp)
 	cmd->rate_control = cpu_to_le32(arg->rate_ctrl);
 	cmd->retry_count = cpu_to_le32(arg->retry_count);
 	cmd->rcode_flags = cpu_to_le32(arg->rcode_flags);
+	cmd->ext_tid_cfg_bitmap = cpu_to_le32(arg->ext_tid_cfg_bitmap);
+	cmd->rtscts_ctrl = cpu_to_le32(arg->rtscts_ctrl);
 
 	ath10k_dbg(ar, ATH10K_DBG_WMI,
-		   "wmi noack tid %d vdev id %d ack_policy %d aggr %u rate_ctrl %u rcflag %u retry_count %d mac_addr %pM\n",
-		   arg->tid, arg->vdev_id, arg->ack_policy, arg->aggr_control, arg->rate_ctrl,
-		   arg->rcode_flags, arg->retry_count, arg->peer_macaddr.addr);
+		   "wmi noack tid %d vdev id %d ack_policy %d aggr %u rate_ctrl %u rcflag %u retry_count %d rtscts %d ext_tid_cfg_bitmap %d mac_addr %pM\n",
+		   arg->tid, arg->vdev_id, arg->ack_policy, arg->aggr_control,
+		   arg->rate_ctrl, arg->rcode_flags, arg->retry_count, arg->rtscts_ctrl,
+		   arg->ext_tid_cfg_bitmap, arg->peer_macaddr.addr);
 	return skb;
 }
 
diff --git a/drivers/net/wireless/ath/ath10k/wmi.h b/drivers/net/wireless/ath/ath10k/wmi.h
index 41aaddf..cec3731 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.h
+++ b/drivers/net/wireless/ath/ath10k/wmi.h
@@ -201,6 +201,7 @@ enum wmi_service {
 	WMI_SERVICE_PER_PACKET_SW_ENCRYPT,
 	WMI_SERVICE_REPORT_AIRTIME,
 	WMI_SERVICE_PEER_TID_CONFIGS_SUPPORT,
+	WMI_SERVICE_EXT_PEER_TID_CONFIGS_SUPPORT,
 
 	/* Remember to add the new value to wmi_service_name()! */
 
@@ -493,6 +494,7 @@ static inline char *wmi_service_name(enum wmi_service service_id)
 	SVCSTR(WMI_SERVICE_PER_PACKET_SW_ENCRYPT);
 	SVCSTR(WMI_SERVICE_REPORT_AIRTIME);
 	SVCSTR(WMI_SERVICE_PEER_TID_CONFIGS_SUPPORT);
+	SVCSTR(WMI_SERVICE_EXT_PEER_TID_CONFIGS_SUPPORT);
 
 	case WMI_SERVICE_MAX:
 		return NULL;
@@ -822,6 +824,8 @@ static inline void wmi_10_4_svc_map(const __le32 *in, unsigned long *out,
 	       WMI_SERVICE_REPORT_AIRTIME, len);
 	SVCMAP(WMI_10_4_SERVICE_PEER_TID_CONFIGS_SUPPORT,
 	       WMI_SERVICE_PEER_TID_CONFIGS_SUPPORT, len);
+	SVCMAP(WMI_10_4_SERVICE_EXT_PEER_TID_CONFIGS_SUPPORT,
+	       WMI_SERVICE_EXT_PEER_TID_CONFIGS_SUPPORT, len);
 }
 
 #undef SVCMAP
@@ -7188,6 +7192,16 @@ enum wmi_tid_rate_ctrl_conf {
 	WMI_TID_CONFIG_RATE_CONTROL_AUTO,
 	WMI_TID_CONFIG_RATE_CONTROL_FIXED_RATE,
 	WMI_TID_CONFIG_RATE_CONTROL_DEFAULT_LOWEST_RATE,
+	WMI_PEER_TID_CONFIG_RATE_UPPER_CAP,
+};
+
+enum wmi_tid_rtscts_control_conf {
+	WMI_TID_CONFIG_RTSCTS_CONTROL_ENABLE,
+	WMI_TID_CONFIG_RTSCTS_CONTROL_DISABLE,
+};
+
+enum wmi_ext_tid_config_map {
+	WMI_EXT_TID_RTS_CTS_CONFIG = BIT(0),
 };
 
 struct wmi_per_peer_per_tid_cfg_arg {
@@ -7199,6 +7213,8 @@ struct wmi_per_peer_per_tid_cfg_arg {
 	u8 rate_ctrl;
 	u32 retry_count;
 	u32 rcode_flags;
+	u32 ext_tid_cfg_bitmap;
+	u32 rtscts_ctrl;
 };
 
 struct wmi_peer_per_tid_cfg_cmd {
@@ -7214,6 +7230,10 @@ struct wmi_peer_per_tid_cfg_cmd {
 	__le32 rate_control;
 	__le32 rcode_flags;
 	__le32 retry_count;
+	/* See enum wmi_ext_tid_config_map */
+	__le32 ext_tid_cfg_bitmap;
+	/* see enum wmi_tid_rtscts_control_conf */
+	__le32 rtscts_ctrl;
 } __packed;
 
 enum wmi_txbf_conf {
-- 
1.7.9.5


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
