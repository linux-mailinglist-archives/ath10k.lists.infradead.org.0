Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB09033375
	for <lists+ath10k@lfdr.de>; Mon,  3 Jun 2019 17:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BjTwF/qVDsEbNiHutCJ/i7Z7uIF9fYsT0XKqFmq1Q1E=; b=BBxS/7oZgS8ZpS
	20CQmpJX0XYeu7J0J5wDT3EEjkzhmmujB1DEOPzrlw4Yjnq0YW0fRvaOjlBTV/daw0bPYjwDItwtL
	Md1RqGaPMJ8o/LKMUA/v0ZR9N+h9PwmTtbsTLKSziS4AMVGzqEX1DRhP9emP3NcdzVAAxFaA9FRZb
	5XgA+86nirB7kCRTJEqcRhqKslc02HKKRG3WfOsVssQx/iaxymuPSHtPM9GV+2YMW8rbkS1uSqRZA
	CieOOKaY4pJpNh0rFFCtS/L9JVY4HxYqjJKWd+c2U2pm+mEt85b8/2vMdnHLvH+4ptPK+3kNuHojz
	ssRds1p/An47rRQ2d/IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoq8-0005Gs-TZ; Mon, 03 Jun 2019 15:25:36 +0000
Received: from narfation.org ([79.140.41.39] helo=v3-1039.vlinux.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoq5-0005GU-8N
 for ath10k@lists.infradead.org; Mon, 03 Jun 2019 15:25:34 +0000
Received: from sven-desktop.home.narfation.org
 (p200300C5970CA3FE0000000000000DF6.dip0.t-ipconnect.de
 [IPv6:2003:c5:970c:a3fe::df6])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id 7A5A611011C;
 Mon,  3 Jun 2019 17:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1559575531;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=SSrcVBztvjIi1xyN1jAaZOAKwrHAF2mGSbg780mY7go=;
 b=jnHo8yFksNUE1NHpT2ZTsPUnlkM116w+4cfNJOG8HzuBz4xOFYbXeFJ1AdKLDZlEqZrhbx
 oIFI0VYVjusbW6yMX8PW0gPuKYWQ3xWJS8coi3kjmV8hvBRX5ZVpjVc5YYMaIm51M58aU2
 ZUWs2Iup8DUIYYcJh0AmQMGtVae2C8s=
From: Sven Eckelmann <sven@narfation.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2] ath10k: avoid leaving .bss_info_changed prematurely
Date: Mon,  3 Jun 2019 17:25:07 +0200
Message-Id: <20190603152507.22011-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1559575531;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=SSrcVBztvjIi1xyN1jAaZOAKwrHAF2mGSbg780mY7go=;
 b=jkeIAHx6E7aEZDSQrHwocC7qS8y4EMRxA9znqWg1bxdJh2vsZUvean3olk6Hi5ci1VQPeP
 mjxAi4LhRvbalb+7JfTlX3eToCgLCXFniohgrnn5eeYwzcjU1ym7y3dACH/ntICsAAtd5r
 fzl6uzDFtn+PbGTxExdjLMzLiP+3QqE=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1559575531; a=rsa-sha256; cv=none;
 b=SSGAxdp0waSEIXJEURQHLuEUEKP9LAHrg2YztOY8PAv6lzONmHN2Dhe8ZbQhphHfmgMv+m
 FZNF3H4Yn6DDV8TA5DTxTDuU+jPgifEjmhjSGOs3nxKxBS7NhvahEilFfjYsUrfuzSJKzM
 rXkTKBoqAbknQM9j90trC/2SB55UbOM=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_082533_595140_0B5784E2 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [79.140.41.39 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 Sven Eckelmann <seckelmann@datto.com>, Sriram R <srirrama@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Sven Eckelmann <seckelmann@datto.com>

ath10k_bss_info_changed() handles various events from the upper layers. It
parses the changed bitfield and then configures the driver/firmware
accordingly. Each detected event is handled in a separate scope which is
independent of each other - but in the same function.

The commit f279294e9ee2 ("ath10k: add support for configuring management
packet rate") changed this behavior by returning from this function
prematurely when some precondition was not fulfilled. All new event
handlers added after the BSS_CHANGED_BASIC_RATES event handler would then
also be skipped.

Signed-off-by: Sven Eckelmann <seckelmann@datto.com>
---
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: Sriram R <srirrama@codeaurora.org>

Only compile tested

v2:

* rebased on top of commit 9e7251fa3897 ("ath10k: Check tx_stats before
  use it")

 drivers/net/wireless/ath/ath10k/mac.c | 64 ++++++++++++++++-----------
 1 file changed, 38 insertions(+), 26 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 98a7842e09b1..90f59117a04d 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -5582,6 +5582,40 @@ static void ath10k_configure_filter(struct ieee80211_hw *hw,
 	mutex_unlock(&ar->conf_mutex);
 }
 
+static void ath10k_recalculate_mgmt_rate(struct ath10k *ar,
+					 struct ieee80211_vif *vif)
+{
+	struct ath10k_vif *arvif = (void *)vif->drv_priv;
+	const struct ieee80211_supported_band *sband;
+	struct cfg80211_chan_def def;
+	u8 basic_rate_idx;
+	int hw_rate_code;
+	u32 vdev_param;
+	u16 bitrate;
+	int ret;
+
+	lockdep_assert_held(&ar->conf_mutex);
+
+	if (WARN_ON(ath10k_mac_vif_chan(vif, &def)))
+		return;
+
+	sband = ar->hw->wiphy->bands[def.chan->band];
+	basic_rate_idx = ffs(vif->bss_conf.basic_rates) - 1;
+	bitrate = sband->bitrates[basic_rate_idx].bitrate;
+
+	hw_rate_code = ath10k_mac_get_rate_hw_value(bitrate);
+	if (hw_rate_code < 0) {
+		ath10k_warn(ar, "bitrate not supported %d\n", bitrate);
+		return;
+	}
+
+	vdev_param = ar->wmi.vdev_param->mgmt_rate;
+	ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param,
+					hw_rate_code);
+	if (ret)
+		ath10k_warn(ar, "failed to set mgmt tx rate %d\n", ret);
+}
+
 static void ath10k_bss_info_changed(struct ieee80211_hw *hw,
 				    struct ieee80211_vif *vif,
 				    struct ieee80211_bss_conf *info,
@@ -5592,10 +5626,9 @@ static void ath10k_bss_info_changed(struct ieee80211_hw *hw,
 	struct cfg80211_chan_def def;
 	u32 vdev_param, pdev_param, slottime, preamble;
 	u16 bitrate, hw_value;
-	u8 rate, basic_rate_idx, rateidx;
-	int ret = 0, hw_rate_code, mcast_rate;
+	u8 rate, rateidx;
+	int ret = 0, mcast_rate;
 	enum nl80211_band band;
-	const struct ieee80211_supported_band *sband;
 
 	mutex_lock(&ar->conf_mutex);
 
@@ -5819,29 +5852,8 @@ static void ath10k_bss_info_changed(struct ieee80211_hw *hw,
 				    arvif->vdev_id,  ret);
 	}
 
-	if (changed & BSS_CHANGED_BASIC_RATES) {
-		if (WARN_ON(ath10k_mac_vif_chan(vif, &def))) {
-			mutex_unlock(&ar->conf_mutex);
-			return;
-		}
-
-		sband = ar->hw->wiphy->bands[def.chan->band];
-		basic_rate_idx = ffs(vif->bss_conf.basic_rates) - 1;
-		bitrate = sband->bitrates[basic_rate_idx].bitrate;
-
-		hw_rate_code = ath10k_mac_get_rate_hw_value(bitrate);
-		if (hw_rate_code < 0) {
-			ath10k_warn(ar, "bitrate not supported %d\n", bitrate);
-			mutex_unlock(&ar->conf_mutex);
-			return;
-		}
-
-		vdev_param = ar->wmi.vdev_param->mgmt_rate;
-		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param,
-						hw_rate_code);
-		if (ret)
-			ath10k_warn(ar, "failed to set mgmt tx rate %d\n", ret);
-	}
+	if (changed & BSS_CHANGED_BASIC_RATES)
+		ath10k_recalculate_mgmt_rate(ar, vif);
 
 	mutex_unlock(&ar->conf_mutex);
 }
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
