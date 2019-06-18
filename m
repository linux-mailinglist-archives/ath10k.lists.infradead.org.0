Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B36498A7
	for <lists+ath10k@lfdr.de>; Tue, 18 Jun 2019 07:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R2lnnE+KEp56V/XqhQ6djGTwN77U3sGpDwJa3YgnDck=; b=WgR362Mf6vCIe5Bav/KMspSJb5
	jac70P8UQR443Hr3YEGVP/jQxIZJIE6nkmL1uywWW1kLVeD1bD0sgIvOetbpF7cWoc6LRh4lQYflI
	JiLVCHh2pLtk2yHxGIuaqeZXmBV/UUt0f+0Lwg413GM+6nPR1I9gu1RLvXhlYeRa837bhhHxxUlYG
	S3SJzZpuGjMbXI/NoTLwV7llkhtHOC+tzv08VGWO6gDlBpFtXOsUhDmNeFMX/N3Eq54E+GrvEnTcs
	J+39WeeTNh74Op+ApKV8D4DmE09yLfnEhEgNt1yS9zL6qsN1NFGuPt+j9CZ5RUnBr73Lf/RClNhkw
	gyumoUiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd6ey-00071e-Sv; Tue, 18 Jun 2019 05:27:56 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd6ej-0006ld-A0
 for ath10k@lists.infradead.org; Tue, 18 Jun 2019 05:27:43 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0A99F6090F; Tue, 18 Jun 2019 05:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560835661;
 bh=hYZlPB8cfboWOiTPiKAqbZ4/qj71YHuEyKAr/DVSb+4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eYFIV0n6WDEERZzNKEpHiXsgemkTQR8M6ZP+BLHDf/l1pbOSosddPYK6PQSSbGho2
 uuK9yd7k/nai/5bVa6wOO9q9ecmmWy5S9RUzYIMs1SRAN8/4rXV1nrleqfvgQ8DZLv
 3Hgk88wF7Xx7ry9+q1GWIDD9igMWud8NHRmYhDig=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0D07D6074C;
 Tue, 18 Jun 2019 05:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560835660;
 bh=hYZlPB8cfboWOiTPiKAqbZ4/qj71YHuEyKAr/DVSb+4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QRbJpKzi0Dlyj/zfaBLXyvpNDcCy351R3WQoevorctU5+nIEB0gZ5laXVeu3pyNBk
 fMZ5NBLdgvjxZU0jd4bqSu/i/WRTtjDT3iju2rhFIy5ICI8ugnbMR9x3tkt/LRrVGp
 rJwv9o4DerGhhe18uKOYHZ5hngQ1M50VxZSoEzd0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0D07D6074C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=tamizhr@codeaurora.org
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: johannes@sipsolutions.net,
	ath10k@lists.infradead.org
Subject: [PATCHv6 3/9] nl80211: Add netlink attribute for AMPDU aggregation
 enable/disable
Date: Tue, 18 Jun 2019 10:57:06 +0530
Message-Id: <1560835632-17405-4-git-send-email-tamizhr@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_222741_383656_225F30B5 
X-CRM114-Status: GOOD (  16.94  )
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

Introduce NL80211_TID_ATTR_CONFIG_AMPDU_CTRL in nl80211_attr_tid_config
to accept TID specific AMPDU aggregation enable/disable configuration
through NL80211_CMD_SET_TID_CONFIG command. TID for which the
aggregation control configuration is to be applied is passed in
NL80211_TID_ATTR_CONFIG_TID attribute. When the user-space wants this
configuration peer specific rather than being applied for all the
connected stations, MAC address of the peer can be passed in
NL80211_ATTR_MAC attribute.

Driver supporting this feature should advertise
NL80211_EXT_FEATURE_PER_TID_AMPDU_CTRL and supporting per-STA data TID
ampdu configuration should advertise NL80211_EXT_FEATURE_PER_STA_AMPDU_CTRL.

Signed-off-by: Tamizh chelvam <tamizhr@codeaurora.org>
---
 include/net/cfg80211.h       |    3 +++
 include/uapi/linux/nl80211.h |   22 ++++++++++++++++++++++
 net/wireless/nl80211.c       |   25 +++++++++++++++++++++++++
 3 files changed, 50 insertions(+)

diff --git a/include/net/cfg80211.h b/include/net/cfg80211.h
index 91bcb07..d2814e8 100644
--- a/include/net/cfg80211.h
+++ b/include/net/cfg80211.h
@@ -528,6 +528,7 @@ struct cfg80211_chan_def {
 enum ieee80211_tid_conf_mask {
 	IEEE80211_TID_CONF_NOACK	= BIT(0),
 	IEEE80211_TID_CONF_RETRY	= BIT(1),
+	IEEE80211_TID_CONF_AMPDU	= BIT(2),
 };
 
 /**
@@ -538,6 +539,7 @@ enum ieee80211_tid_conf_mask {
  * @noack: noack configuration value for the TID
  * @retry_long: retry count value
  * @retry_short: retry count value
+ * @ampdu: Enable/Disable aggregation
  */
 struct ieee80211_tid_cfg {
 	u8 tid;
@@ -545,6 +547,7 @@ struct ieee80211_tid_cfg {
 	u8 noack;
 	int retry_long;
 	int retry_short;
+	u8 ampdu;
 };
 
 /**
diff --git a/include/uapi/linux/nl80211.h b/include/uapi/linux/nl80211.h
index d30d7c9..465dbc6 100644
--- a/include/uapi/linux/nl80211.h
+++ b/include/uapi/linux/nl80211.h
@@ -4712,6 +4712,21 @@ enum nl80211_tid_config {
  *	the max value should be advertised by the driver through
  *	max_data_retry_count. when this attribute is not present, the driver
  *	would use the default configuration.
+ * @NL80211_TID_ATTR_CONFIG_AMPDU_CTRL: Enable/Disable aggregation for the TID
+ *	specified in %%NL80211_TID_ATTR_CONFIG_TID. Its type is u8,
+ *	if the peer MAC address	is passed in %NL80211_ATTR_MAC, the aggregation
+ *	configuration is applied
+ *	to the data frame for the tid to that connected station.
+ *	Station specific aggregation configuration is valid only for STA's
+ *	current connection. i.e. the configuration will be reset to default when
+ *	the station connects back after disconnection/roaming.
+ *	when user-space does not include %NL80211_ATTR_MAC, this configuration
+ *	should be treated as per-netdev configuration. This configuration will
+ *	be cleared when the interface goes down and on the disconnection from a
+ *	BSS. Driver supporting this feature should advertise
+ *	NL80211_EXT_FEATURE_PER_TID_AMPDU_CTRL and supporting per station
+ *	aggregation configuration should advertise
+ *	NL80211_EXT_FEATURE_PER_STA_AMPDU_CTRL.
  */
 enum nl80211_tid_attr_config {
 	__NL80211_TID_ATTR_INVALID,
@@ -4720,6 +4735,7 @@ enum nl80211_tid_attr_config {
 	NL80211_TID_ATTR_CONFIG_RETRY,
 	NL80211_TID_ATTR_CONFIG_RETRY_SHORT,
 	NL80211_TID_ATTR_CONFIG_RETRY_LONG,
+	NL80211_TID_ATTR_CONFIG_AMPDU_CTRL,
 
 	/* keep last */
 	__NL80211_TID_ATTR_CONFIG_AFTER_LAST,
@@ -5545,6 +5561,10 @@ enum nl80211_feature_flags {
  *	count functionality.
  * @NL80211_EXT_FEATURE_PER_STA_RETRY_CONFIG: Driver supports STA specific
  *	data retry count functionality.
+ * @NL80211_EXT_FEATURE_PER_TID_AMPDU_CTRL: Driver supports TID specific
+ *	aggregation control(enable/disable).
+ * @NL80211_EXT_FEATURE_PER_STA_AMPDU_CTRL: Driver supports per STA
+ *	specific TID aggregation control(enable/disable).
  *
  * @NUM_NL80211_EXT_FEATURES: number of extended features.
  * @MAX_NL80211_EXT_FEATURES: highest extended feature index.
@@ -5595,6 +5615,8 @@ enum nl80211_ext_feature_index {
 	NL80211_EXT_FEATURE_PER_STA_NOACK_CONFIG,
 	NL80211_EXT_FEATURE_PER_TID_RETRY_CONFIG,
 	NL80211_EXT_FEATURE_PER_STA_RETRY_CONFIG,
+	NL80211_EXT_FEATURE_PER_TID_AMPDU_CTRL,
+	NL80211_EXT_FEATURE_PER_STA_AMPDU_CTRL,
 
 	/* add new features before the definition below */
 	NUM_NL80211_EXT_FEATURES,
diff --git a/net/wireless/nl80211.c b/net/wireless/nl80211.c
index a21a4f4..a8982de 100644
--- a/net/wireless/nl80211.c
+++ b/net/wireless/nl80211.c
@@ -289,6 +289,8 @@ static int validate_ie_attr(const struct nlattr *attr,
 	[NL80211_TID_ATTR_CONFIG_RETRY] = { .type = NLA_FLAG },
 	[NL80211_TID_ATTR_CONFIG_RETRY_SHORT] = NLA_POLICY_MIN(NLA_U8, 0),
 	[NL80211_TID_ATTR_CONFIG_RETRY_LONG] = NLA_POLICY_MIN(NLA_U8, 0),
+	[NL80211_TID_ATTR_CONFIG_AMPDU_CTRL] =
+			NLA_POLICY_MAX(NLA_U8, NL80211_TID_CONFIG_DISABLE),
 };
 
 const struct nla_policy nl80211_policy[NUM_NL80211_ATTR] = {
@@ -13661,6 +13663,29 @@ static int parse_tid_conf(struct cfg80211_registered_device *rdev,
 		}
 	}
 
+	if (attrs[NL80211_TID_ATTR_CONFIG_AMPDU_CTRL]) {
+		if (!wiphy_ext_feature_isset(&rdev->wiphy,
+				NL80211_EXT_FEATURE_PER_TID_AMPDU_CTRL)) {
+			NL_SET_ERR_MSG_ATTR(extack,
+					    attrs[NL80211_TID_ATTR_CONFIG_AMPDU_CTRL],
+					    "TID specific configuration not "
+					    "supported");
+			return -ENOTSUPP;
+		}
+
+		if (peer && !wiphy_ext_feature_isset(&rdev->wiphy,
+				NL80211_EXT_FEATURE_PER_STA_AMPDU_CTRL)) {
+			NL_SET_ERR_MSG_ATTR(extack,
+					    attrs[NL80211_TID_ATTR_CONFIG_AMPDU_CTRL],
+					    "peer specfic TID configuration not "
+					    "supported");
+			return -ENOTSUPP;
+		}
+
+		tid_conf->tid_conf_mask |= IEEE80211_TID_CONF_AMPDU;
+		tid_conf->ampdu =
+			nla_get_u8(attrs[NL80211_TID_ATTR_CONFIG_AMPDU_CTRL]);
+	}
 	return 0;
 }
 
-- 
1.7.9.5


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
