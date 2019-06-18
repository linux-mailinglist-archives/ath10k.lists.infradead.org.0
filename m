Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9F2498AA
	for <lists+ath10k@lfdr.de>; Tue, 18 Jun 2019 07:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vvTBjVcqWIXIUIJTeY/DDKv9UI5+qGh12ujMteOufag=; b=mmz+lEsmVjiJPTusQ/laGwi1eR
	ayjeRgoX+IlZn79LYrXRjPisFFzZjYUmIpK6fDMHT8zArn5HSp/Y5ScUiKS2qB3VCXI8lvfO5or1Y
	1t93HwudMGyGNeYBoN1BFOTUxhFpVBqGwovVPkq1T1ul2kvsu1is9QDt+qcp6pGWbOpptT4jJPMBi
	6wxTXHYLw68aU2Bdh1QPXNp2gKAuukNyk8YrLHYahG9ciJnASAR+QEG5JC2JK6po/P8bYYn2bBzx1
	xMkA5ignzDtUOnShW/SLna4DbtnZvqdRHo1ft/L13flWKhYw/MzK8rheGOcSPt6d6pJoQlZtV59Ki
	IcCcAB1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd6fI-0007LY-MS; Tue, 18 Jun 2019 05:28:16 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd6eq-0006xC-Sg
 for ath10k@lists.infradead.org; Tue, 18 Jun 2019 05:27:50 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6F2E860E7A; Tue, 18 Jun 2019 05:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560835668;
 bh=DXP8MH8p4qbWHkuWmMNGC9R3LNhNFGRoAtOJ+2GOfyU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AvZXoiqylXxyJdejgCOThLCWOavK6d6XvVtYxiVIzOXD7/sisTzOB8EZBRYHfVrZT
 FjpzzLc6zG3I7RcNTfvw2gI4a5pkveMusXh7FiWvKXiedD2ColHP9OhQld4Rd96vn1
 cHC96iYrxsoc43wo1hUUFiD9+/k4tXA1oiWiU2F0=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6C05460C5F;
 Tue, 18 Jun 2019 05:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560835667;
 bh=DXP8MH8p4qbWHkuWmMNGC9R3LNhNFGRoAtOJ+2GOfyU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RBP34badYufovQmP6OoK+V/JBQ8HVxmYDH0Gx2JP3UyJpoqoggufNtMv4871tKFmF
 vsqSBpN9ZImZ/eXVez79Z2vRSwe8iSmhF8QICPDUVeoBtf3g5QhVp7cFtMHp0HQbKS
 2WRFsqUjowle9ChpmytkT4MMhCkHAukfUrz8umII=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6C05460C5F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=tamizhr@codeaurora.org
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: johannes@sipsolutions.net,
	ath10k@lists.infradead.org
Subject: [PATCHv6 6/9] mac80211: Add api to support configuring TID specific
 configuration
Date: Tue, 18 Jun 2019 10:57:09 +0530
Message-Id: <1560835632-17405-7-git-send-email-tamizhr@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_222748_986163_1FD3DA41 
X-CRM114-Status: GOOD (  12.31  )
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

Implement drv_set_tid_config api to allow TID specific
configuration. This per-TID configuration
will be applied for all the connected stations when MAC is NULL.

Signed-off-by: Tamizh chelvam <tamizhr@codeaurora.org>
---
 include/net/mac80211.h    |   38 ++++++++++++++++++++++++++++++++++++++
 net/mac80211/cfg.c        |   28 ++++++++++++++++++++++++++++
 net/mac80211/driver-ops.h |   15 +++++++++++++++
 3 files changed, 81 insertions(+)

diff --git a/include/net/mac80211.h b/include/net/mac80211.h
index 4411120..f97c755 100644
--- a/include/net/mac80211.h
+++ b/include/net/mac80211.h
@@ -1563,6 +1563,8 @@ enum ieee80211_vif_flags {
 	IEEE80211_VIF_GET_NOA_UPDATE		= BIT(3),
 };
 
+#define IEEE80211_TID_MAX	8
+
 /**
  * struct ieee80211_vif - per-interface data
  *
@@ -1600,6 +1602,13 @@ enum ieee80211_vif_flags {
  * @txq: the multicast data TX queue (if driver uses the TXQ abstraction)
  * @txqs_stopped: per AC flag to indicate that intermediate TXQs are stopped,
  *	protected by fq->lock.
+ * @noack: per-TID noack policy.
+ * @retry_short: per-TID retry count.
+ * @retry_long: per-TID count.
+ * @ampdu: per-TID Aggregation-MPDU.
+ * @rate_ctrl: per-TID tx rate control type.
+ * @rate_code: per-TID tx rate code mask.
+ * @rtscts: per-TID RTSCTS policy.
  */
 struct ieee80211_vif {
 	enum nl80211_iftype type;
@@ -1626,6 +1635,14 @@ struct ieee80211_vif {
 
 	bool txqs_stopped[IEEE80211_NUM_ACS];
 
+	int noack[IEEE80211_TID_MAX];
+	int retry_short[IEEE80211_TID_MAX];
+	int retry_long[IEEE80211_TID_MAX];
+	int ampdu[IEEE80211_TID_MAX];
+	u8 rate_ctrl[IEEE80211_TID_MAX];
+	u32 rate_code[IEEE80211_TID_MAX];
+	u8 rtscts[IEEE80211_TID_MAX];
+
 	/* must be last */
 	u8 drv_priv[0] __aligned(sizeof(void *));
 };
@@ -1960,6 +1977,12 @@ struct ieee80211_sta_txpwr {
  * @max_tid_amsdu_len: Maximum A-MSDU size in bytes for this TID
  * @txq: per-TID data TX queues (if driver uses the TXQ abstraction); note that
  *	the last entry (%IEEE80211_NUM_TIDS) is used for non-data frames
+ * @noack: per-TID noack policy.
+ * @retry_short: per-TID retry count.
+ * @retry_long: per-TID count.
+ * @ampdu: per-TID Aggregation-MPDU.
+ * @rate_ctrl: per-TID tx rate control type.
+ * @rtscts: per-TID RTSCTS policy.
  */
 struct ieee80211_sta {
 	u32 supp_rates[NUM_NL80211_BANDS];
@@ -2004,6 +2027,13 @@ struct ieee80211_sta {
 
 	struct ieee80211_txq *txq[IEEE80211_NUM_TIDS + 1];
 
+	int noack[IEEE80211_TID_MAX];
+	int retry_short[IEEE80211_TID_MAX];
+	int retry_long[IEEE80211_TID_MAX];
+	int ampdu[IEEE80211_TID_MAX];
+	u8 rate_ctrl[IEEE80211_TID_MAX];
+	u8 rtscts[IEEE80211_TID_MAX];
+
 	/* must be last */
 	u8 drv_priv[0] __aligned(sizeof(void *));
 };
@@ -3743,6 +3773,10 @@ enum ieee80211_reconfig_type {
  *
  * @start_pmsr: start peer measurement (e.g. FTM) (this call can sleep)
  * @abort_pmsr: abort peer measurement (this call can sleep)
+ * @set_tid_config: TID specific configurations will be applied for a particular
+ *	station when @sta is non-NULL. When @sta is %NULL, then the configuration
+ *	will be for all the connected clients in the vif.
+ *	This callback may sleep.
  */
 struct ieee80211_ops {
 	void (*tx)(struct ieee80211_hw *hw,
@@ -4043,6 +4077,10 @@ struct ieee80211_ops {
 			  struct cfg80211_pmsr_request *request);
 	void (*abort_pmsr)(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
 			   struct cfg80211_pmsr_request *request);
+	int (*set_tid_config)(struct ieee80211_hw *hw,
+			      struct ieee80211_vif *vif,
+			      struct ieee80211_sta *sta,
+			      struct ieee80211_tid_config *tid_conf);
 };
 
 /**
diff --git a/net/mac80211/cfg.c b/net/mac80211/cfg.c
index fcf1dfc..55c08af 100644
--- a/net/mac80211/cfg.c
+++ b/net/mac80211/cfg.c
@@ -3940,6 +3940,33 @@ static int ieee80211_get_txq_stats(struct wiphy *wiphy,
 	return drv_abort_pmsr(local, sdata, request);
 }
 
+static int ieee80211_set_tid_config(struct wiphy *wiphy,
+				    struct net_device *dev,
+				    struct ieee80211_tid_config *tid_conf)
+{
+	struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
+	struct sta_info *sta;
+	int ret;
+
+	if (!sdata->local->ops->set_tid_config)
+		return -EOPNOTSUPP;
+
+	if (!tid_conf->peer)
+		return drv_set_tid_config(sdata->local, sdata, NULL, tid_conf);
+
+	mutex_lock(&sdata->local->sta_mtx);
+
+	sta = sta_info_get_bss(sdata, tid_conf->peer);
+	if (!sta) {
+		mutex_unlock(&sdata->local->sta_mtx);
+		return -ENOENT;
+	}
+
+	ret = drv_set_tid_config(sdata->local, sdata, &sta->sta, tid_conf);
+	mutex_unlock(&sdata->local->sta_mtx);
+	return ret;
+}
+
 const struct cfg80211_ops mac80211_config_ops = {
 	.add_virtual_intf = ieee80211_add_iface,
 	.del_virtual_intf = ieee80211_del_iface,
@@ -4038,4 +4065,5 @@ static int ieee80211_get_txq_stats(struct wiphy *wiphy,
 	.start_pmsr = ieee80211_start_pmsr,
 	.abort_pmsr = ieee80211_abort_pmsr,
 	.probe_mesh_link = ieee80211_probe_mesh_link,
+	.set_tid_config = ieee80211_set_tid_config,
 };
diff --git a/net/mac80211/driver-ops.h b/net/mac80211/driver-ops.h
index c2d8b54..d1ffca5 100644
--- a/net/mac80211/driver-ops.h
+++ b/net/mac80211/driver-ops.h
@@ -1356,4 +1356,19 @@ static inline void drv_del_nan_func(struct ieee80211_local *local,
 	trace_drv_return_void(local);
 }
 
+static inline int drv_set_tid_config(struct ieee80211_local *local,
+				     struct ieee80211_sub_if_data *sdata,
+				     struct ieee80211_sta *sta,
+				     struct ieee80211_tid_config *tid_conf)
+{
+	int ret;
+
+	might_sleep();
+	ret = local->ops->set_tid_config(&local->hw, &sdata->vif, sta,
+					 tid_conf);
+	trace_drv_return_int(local, ret);
+
+	return ret;
+}
+
 #endif /* __MAC80211_DRIVER_OPS */
-- 
1.7.9.5


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
