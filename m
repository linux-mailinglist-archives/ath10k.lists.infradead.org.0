Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B680B498A4
	for <lists+ath10k@lfdr.de>; Tue, 18 Jun 2019 07:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rKmAPOp/rfNuDYn1Ie1732v48fJOuQYyfrJvj0tvNQQ=; b=VEYkmsIWwGCvZ8OVBlz9oY6f6s
	TrwAb07Ct/VO1bNrGAM4WxJDvf2fF4hvqD4V1criaenZL/85qgKqdOMu1bVRBfmwkbdWvoiB/xz6t
	tDp/lE3GpIeh3a8gBI1vUJ3ejacVl0FjkxKA4YLjeGXz224Y29a2AQsKaiAVbDNEzg19puBi1O5Lh
	iJvoH/riY4UvMbLiNguGP6e/rta+ZiN4dGGaa0lfFtdfE3Y9VsuD8Ol4J2h9C8AeL0cVKo1Z3Vzb2
	zdEaqb5Nk+6Zah6PbugGJ1y9cNGdJGWgkVNWZw4ak28aRA7NjKtYx7niqVSHUkv2ohiVqSVV9Iyep
	MlDT6uvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd6em-0006m4-Gl; Tue, 18 Jun 2019 05:27:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd6eg-0006im-7B
 for ath10k@lists.infradead.org; Tue, 18 Jun 2019 05:27:40 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 02EF560867; Tue, 18 Jun 2019 05:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560835658;
 bh=pP3L5WafwnuGJaUfuQWdFWX04DEXVLsQL5V2fQcVhDY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KNZpltnLs0p59307sn76guSpdZb1psxkA7rGcEe1MUxJFGSETrnf3e0wz6Tfe8qOI
 Mdv8FC0kmhEXc2NwY1VWOHAmSHHRDax6VM2YejbtTbbVyHYYwjyf0qblmbgxDRw+DC
 f/fhRsZETEMWi/MqTCBDHUw27zNo61b9slfhMsLM=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2D6A1606DC;
 Tue, 18 Jun 2019 05:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560835656;
 bh=pP3L5WafwnuGJaUfuQWdFWX04DEXVLsQL5V2fQcVhDY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=msT1hMnd9b/xyiQ0l56rouFRVJmKQEy4FtxyGGWDczj1LdCA4tp9nXhuGzYOH42iM
 k4oNwBYycChcL0bbOfXH8WUbVFIsHivZ4tj1PZ/oNbAjXE+EO12FZPJUcInrkRKxnl
 GiNc6glTT5Aiux3t0oDd4QJ1H/d5b7HR6R1pSDaI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2D6A1606DC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=tamizhr@codeaurora.org
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: johannes@sipsolutions.net,
	ath10k@lists.infradead.org
Subject: [PATCHv6 1/9] nl80211: New netlink command for TID specific
 configuration
Date: Tue, 18 Jun 2019 10:57:04 +0530
Message-Id: <1560835632-17405-2-git-send-email-tamizhr@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_222738_305629_E92BB815 
X-CRM114-Status: GOOD (  21.04  )
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

Add a new NL command, NL80211_CMD_SET_TID_CONFIG to support
data TID specific configuration. This per TID configurations
are passed in NL80211_ATTR_TID_CONFIG which is a nested
attribute. This patch adds support to configure per TID
noack policy through NL80211_TID_ATTR_CONFIG_NOACK attribute.
Data TID value for this configuration will be passed through
NL80211_TID_ATTR_CONFIG_TID attribute. When the user-space wants
this configuration peer specific rather than being applied for
all the connected stations, MAC address of the peer can be passed
in NL80211_ATTR_MAC attribute. This patch introduced
enum ieee80211_tid_conf_mask to notify the driver that which
configuration modified.
Driver supporting data TID specific noack policy configuration
should be advertise through NL80211_EXT_FEATURE_PER_TID_NOACK_CONFIG
and supporting per STA data TID noack policy configuration
should be advertise through NL80211_EXT_FEATURE_PER_STA_NOACK_CONFIG

Signed-off-by: Tamizh chelvam <tamizhr@codeaurora.org>
---
 include/net/cfg80211.h       |   35 +++++++++++++
 include/uapi/linux/nl80211.h |   57 +++++++++++++++++++++
 net/wireless/nl80211.c       |  113 ++++++++++++++++++++++++++++++++++++++++++
 net/wireless/rdev-ops.h      |   12 +++++
 net/wireless/trace.h         |   17 +++++++
 5 files changed, 234 insertions(+)

diff --git a/include/net/cfg80211.h b/include/net/cfg80211.h
index 2d17e32..af5d684 100644
--- a/include/net/cfg80211.h
+++ b/include/net/cfg80211.h
@@ -525,6 +525,35 @@ struct cfg80211_chan_def {
 	u32 center_freq2;
 };
 
+enum ieee80211_tid_conf_mask {
+	IEEE80211_TID_CONF_NOACK	= BIT(0),
+};
+
+/**
+ * struct ieee80211_tid_cfg - TID specific configuration
+ * @tid: TID number
+ * @tid_conf_mask: bitmap indicating which parameter changed
+ *	see %enum ieee80211_tid_conf_mask
+ * @noack: noack configuration value for the TID
+ */
+struct ieee80211_tid_cfg {
+	u8 tid;
+	u32 tid_conf_mask;
+	u8 noack;
+};
+
+/**
+ * struct ieee80211_tid_config - TID configuration
+ * @peer: Station's MAC address
+ * @n_tid_conf: Number of TID specific configurations to be applied
+ * @tid_conf: Configuration change info
+ */
+struct ieee80211_tid_config {
+	const u8 *peer;
+	u32 n_tid_conf;
+	struct ieee80211_tid_cfg tid_conf[];
+};
+
 /**
  * cfg80211_get_chandef_type - return old channel type from chandef
  * @chandef: the channel definition
@@ -3525,6 +3554,10 @@ struct cfg80211_update_owe_info {
  *
  * @probe_mesh_link: Probe direct Mesh peer's link quality by sending data frame
  *	and overrule HWMP path selection algorithm.
+ * @set_tid_config: TID specific configuration. Apply this configuration for
+ *	all the connected stations in the BSS if peer is %NULL. Otherwise
+ *	apply this configuration to the specific station.
+ *	This callback may sleep.
  */
 struct cfg80211_ops {
 	int	(*suspend)(struct wiphy *wiphy, struct cfg80211_wowlan *wow);
@@ -3843,6 +3876,8 @@ struct cfg80211_ops {
 				   struct cfg80211_update_owe_info *owe_info);
 	int	(*probe_mesh_link)(struct wiphy *wiphy, struct net_device *dev,
 				   const u8 *buf, size_t len);
+	int     (*set_tid_config)(struct wiphy *wiphy, struct net_device *dev,
+				  struct ieee80211_tid_config *tid_conf);
 };
 
 /*
diff --git a/include/uapi/linux/nl80211.h b/include/uapi/linux/nl80211.h
index 8fc3a43..e628f4e 100644
--- a/include/uapi/linux/nl80211.h
+++ b/include/uapi/linux/nl80211.h
@@ -1094,6 +1094,10 @@
  *	peer MAC address and %NL80211_ATTR_FRAME is used to specify the frame
  *	content. The frame is ethernet data.
  *
+ * @NL80211_CMD_SET_TID_CONFIG: Data frame TID specific configuration
+ *	is passed through this command using %NL80211_ATTR_TID_CONFIG
+ *	nested attributes.
+ *
  * @NL80211_CMD_MAX: highest used command number
  * @__NL80211_CMD_AFTER_LAST: internal use
  */
@@ -1318,6 +1322,8 @@ enum nl80211_commands {
 
 	NL80211_CMD_PROBE_MESH_LINK,
 
+	NL80211_CMD_SET_TID_CONFIG,
+
 	/* add new commands above here */
 
 	/* used to define NL80211_CMD_MAX below */
@@ -2356,6 +2362,9 @@ enum nl80211_commands {
  *
  * @NL80211_ATTR_TWT_RESPONDER: Enable target wait time responder support.
  *
+ * @NL80211_ATTR_TID_CONFIG: TID specific configuration in a
+ *	nested attribute with %NL80211_TID_ATTR_* sub-attributes.
+ *
  * @NUM_NL80211_ATTR: total number of nl80211_attrs available
  * @NL80211_ATTR_MAX: highest attribute number currently defined
  * @__NL80211_ATTR_AFTER_LAST: internal use
@@ -2813,6 +2822,8 @@ enum nl80211_attrs {
 
 	NL80211_ATTR_TWT_RESPONDER,
 
+	NL80211_ATTR_TID_CONFIG,
+
 	/* add attributes here, update the policy in nl80211.c */
 
 	__NL80211_ATTR_AFTER_LAST,
@@ -4635,6 +4646,45 @@ enum nl80211_tx_power_setting {
 };
 
 /**
+ * enum nl80211_tid_config - TID config state
+ * @NL80211_TID_CONFIG_DEFAULT: Default config for the TID
+ * @NL80211_TID_CONFIG_ENABLE: Enable config for the TID
+ * NL80211_TID_CONFIG_DISABLE: Disable config for the TID
+ */
+enum nl80211_tid_config {
+	NL80211_TID_CONFIG_DEFAULT,
+	NL80211_TID_CONFIG_ENABLE,
+	NL80211_TID_CONFIG_DISABLE,
+};
+
+/* enum nl80211_tid_attr_config - TID specific configuration.
+ * @NL80211_TID_ATTR_CONFIG_TID: a TID value (u8 attribute).
+ * @NL80211_TID_ATTR_CONFIG_NOACK: Configure ack policy for the TID.
+ *	specified in %NL80211_TID_ATTR_CONFIG_TID. see %enum nl80211_tid_config.
+ *	Its type is u8, if the peer MAC address is passed in %NL80211_ATTR_MAC,
+ *	then the noack configuration is applied to the data frame for the tid
+ *	to that connected station. This configuration is valid only for STA's
+ *	current connection. i.e. the configuration will be reset to default when
+ *	the station connects back after disconnection/roaming.
+ *	when user-space does not include %NL80211_ATTR_MAC, then this
+ *	configuration should be treated as per-netdev configuration.
+ *	This configuration will be cleared when the interface goes down and on
+ *	the disconnection from a BSS. Driver supporting this feature should
+ *	advertise NL80211_EXT_FEATURE_PER_TID_NOACK_CONFIG and
+ *	NL80211_EXT_FEATURE_PER_STA_NOACK_CONFIG for supporting  per sta
+ *	configuration.
+ */
+enum nl80211_tid_attr_config {
+	__NL80211_TID_ATTR_INVALID,
+	NL80211_TID_ATTR_CONFIG_TID,
+	NL80211_TID_ATTR_CONFIG_NOACK,
+
+	/* keep last */
+	__NL80211_TID_ATTR_CONFIG_AFTER_LAST,
+	NL80211_TID_ATTR_CONFIG_MAX = __NL80211_TID_ATTR_CONFIG_AFTER_LAST - 1
+};
+
+/**
  * enum nl80211_packet_pattern_attr - packet pattern attribute
  * @__NL80211_PKTPAT_INVALID: invalid number for nested attribute
  * @NL80211_PKTPAT_PATTERN: the pattern, values where the mask has
@@ -5445,6 +5495,11 @@ enum nl80211_feature_flags {
  * @NL80211_EXT_FEATURE_SAE_OFFLOAD: Device wants to do SAE authentication in
  *	station mode (SAE password is passed as part of the connect command).
  *
+ * @NL80211_EXT_FEATURE_PER_TID_NOACK_CONFIG: Driver supports per TID NoAck
+ *	policy functionality.
+ * @NL80211_EXT_FEATURE_PER_STA_NOACK_CONFIG: Driver supports STA specific NoAck
+ *	policy functionality.
+ *
  * @NUM_NL80211_EXT_FEATURES: number of extended features.
  * @MAX_NL80211_EXT_FEATURES: highest extended feature index.
  */
@@ -5490,6 +5545,8 @@ enum nl80211_ext_feature_index {
 	NL80211_EXT_FEATURE_EXT_KEY_ID,
 	NL80211_EXT_FEATURE_STA_TX_PWR,
 	NL80211_EXT_FEATURE_SAE_OFFLOAD,
+	NL80211_EXT_FEATURE_PER_TID_NOACK_CONFIG,
+	NL80211_EXT_FEATURE_PER_STA_NOACK_CONFIG,
 
 	/* add new features before the definition below */
 	NUM_NL80211_EXT_FEATURES,
diff --git a/net/wireless/nl80211.c b/net/wireless/nl80211.c
index ff760ba..4881bfb6 100644
--- a/net/wireless/nl80211.c
+++ b/net/wireless/nl80211.c
@@ -281,6 +281,13 @@ static int validate_ie_attr(const struct nlattr *attr,
 		NLA_POLICY_NESTED_ARRAY(nl80211_psmr_peer_attr_policy),
 };
 
+static const struct nla_policy
+nl80211_tid_attr_config_policy[NL80211_TID_ATTR_CONFIG_MAX + 1] = {
+	[NL80211_TID_ATTR_CONFIG_TID] = { .type = NLA_U8 },
+	[NL80211_TID_ATTR_CONFIG_NOACK] =
+			NLA_POLICY_MAX(NLA_U8, NL80211_TID_CONFIG_DISABLE),
+};
+
 const struct nla_policy nl80211_policy[NUM_NL80211_ATTR] = {
 	[NL80211_ATTR_WIPHY] = { .type = NLA_U32 },
 	[NL80211_ATTR_WIPHY_NAME] = { .type = NLA_NUL_STRING,
@@ -574,6 +581,8 @@ static int validate_ie_attr(const struct nlattr *attr,
 	[NL80211_ATTR_SAE_PASSWORD] = { .type = NLA_BINARY,
 					.len = SAE_PASSWORD_MAX_LEN },
 	[NL80211_ATTR_TWT_RESPONDER] = { .type = NLA_FLAG },
+	[NL80211_ATTR_TID_CONFIG] =
+		NLA_POLICY_NESTED(nl80211_tid_attr_config_policy),
 };
 
 /* policy for the key attributes */
@@ -13576,6 +13585,102 @@ static int nl80211_probe_mesh_link(struct sk_buff *skb, struct genl_info *info)
 	return rdev_probe_mesh_link(rdev, dev, dest, buf, len);
 }
 
+static int parse_tid_conf(struct cfg80211_registered_device *rdev,
+			  struct nlattr *attrs[],
+			  struct ieee80211_tid_cfg *tid_conf,
+			  struct genl_info *info, const u8 *peer)
+{
+	struct netlink_ext_ack *extack = info->extack;
+
+	tid_conf->tid = nla_get_u8(attrs[NL80211_TID_ATTR_CONFIG_TID]);
+	if (attrs[NL80211_TID_ATTR_CONFIG_NOACK]) {
+		if (!wiphy_ext_feature_isset(&rdev->wiphy,
+				NL80211_EXT_FEATURE_PER_TID_NOACK_CONFIG)) {
+			NL_SET_ERR_MSG_ATTR(extack,
+					    attrs[NL80211_TID_ATTR_CONFIG_NOACK],
+					    "TID specific configuration not "
+					    "supported");
+			return -ENOTSUPP;
+		}
+
+		if (peer && !wiphy_ext_feature_isset(&rdev->wiphy,
+				NL80211_EXT_FEATURE_PER_STA_NOACK_CONFIG)) {
+			NL_SET_ERR_MSG_ATTR(extack,
+					    attrs[NL80211_TID_ATTR_CONFIG_NOACK],
+					    "peer specfic TID configuration not "
+					    "supported");
+			return -ENOTSUPP;
+		}
+
+		tid_conf->tid_conf_mask |= IEEE80211_TID_CONF_NOACK;
+		tid_conf->noack =
+			nla_get_u8(attrs[NL80211_TID_ATTR_CONFIG_NOACK]);
+	}
+
+	return 0;
+}
+
+static int nl80211_set_tid_config(struct sk_buff *skb,
+				  struct genl_info *info)
+{
+	struct cfg80211_registered_device *rdev = info->user_ptr[0];
+	struct nlattr *attrs[NL80211_TID_ATTR_CONFIG_MAX + 1];
+	struct net_device *dev = info->user_ptr[1];
+	struct ieee80211_tid_config *tid_config;
+	struct nlattr *tid;
+	int conf_idx = 0, rem_conf;
+	int ret = -EINVAL;
+	u32 num_conf = 0;
+
+	if (!info->attrs[NL80211_ATTR_TID_CONFIG])
+		return -EINVAL;
+
+	if (!rdev->ops->set_tid_config)
+		return -EOPNOTSUPP;
+
+	nla_for_each_nested(tid, info->attrs[NL80211_ATTR_TID_CONFIG],
+			    rem_conf)
+		num_conf++;
+
+	tid_config = kzalloc(struct_size(tid_config, tid_conf, num_conf),
+			     GFP_KERNEL);
+	if (!tid_config)
+		return -ENOMEM;
+
+	tid_config->n_tid_conf = num_conf;
+
+	if (info->attrs[NL80211_ATTR_MAC])
+		tid_config->peer = nla_data(info->attrs[NL80211_ATTR_MAC]);
+
+	nla_for_each_nested(tid, info->attrs[NL80211_ATTR_TID_CONFIG],
+			    rem_conf) {
+		ret = nla_parse_nested_deprecated(attrs, NL80211_TID_ATTR_CONFIG_MAX,
+						  tid, NULL, NULL);
+
+		if (ret)
+			goto bad_tid_conf;
+
+		if (!attrs[NL80211_TID_ATTR_CONFIG_TID]) {
+			ret = -EINVAL;
+			goto bad_tid_conf;
+		}
+
+		ret = parse_tid_conf(rdev, attrs,
+				     &tid_config->tid_conf[conf_idx],
+				     tid_config->peer);
+		if (ret)
+			goto bad_tid_conf;
+
+		conf_idx++;
+	}
+
+	ret = rdev_set_tid_config(rdev, dev, tid_config);
+
+bad_tid_conf:
+	kfree(tid_config);
+	return ret;
+}
+
 #define NL80211_FLAG_NEED_WIPHY		0x01
 #define NL80211_FLAG_NEED_NETDEV	0x02
 #define NL80211_FLAG_NEED_RTNL		0x04
@@ -14530,6 +14635,14 @@ static void nl80211_post_doit(const struct genl_ops *ops, struct sk_buff *skb,
 		.internal_flags = NL80211_FLAG_NEED_NETDEV_UP |
 				  NL80211_FLAG_NEED_RTNL,
 	},
+	{
+		.cmd = NL80211_CMD_SET_TID_CONFIG,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
+		.doit = nl80211_set_tid_config,
+		.flags = GENL_UNS_ADMIN_PERM,
+		.internal_flags = NL80211_FLAG_NEED_NETDEV |
+				  NL80211_FLAG_NEED_RTNL,
+	},
 };
 
 static struct genl_family nl80211_fam __ro_after_init = {
diff --git a/net/wireless/rdev-ops.h b/net/wireless/rdev-ops.h
index e853a4f..887cda2 100644
--- a/net/wireless/rdev-ops.h
+++ b/net/wireless/rdev-ops.h
@@ -1299,4 +1299,16 @@ static inline int rdev_update_owe_info(struct cfg80211_registered_device *rdev,
 	return ret;
 }
 
+static inline int rdev_set_tid_config(struct cfg80211_registered_device *rdev,
+				      struct net_device *dev,
+				      struct ieee80211_tid_config *tid_conf)
+{
+	int ret;
+
+	trace_rdev_set_tid_config(&rdev->wiphy, dev, tid_conf);
+	ret = rdev->ops->set_tid_config(&rdev->wiphy, dev, tid_conf);
+	trace_rdev_return_int(&rdev->wiphy, ret);
+	return ret;
+}
+
 #endif /* __CFG80211_RDEV_OPS */
diff --git a/net/wireless/trace.h b/net/wireless/trace.h
index 4fbb91a..199b9b0 100644
--- a/net/wireless/trace.h
+++ b/net/wireless/trace.h
@@ -3457,6 +3457,23 @@
 		  WIPHY_PR_ARG, NETDEV_PR_ARG, MAC_PR_ARG(dest))
 );
 
+TRACE_EVENT(rdev_set_tid_config,
+	TP_PROTO(struct wiphy *wiphy, struct net_device *netdev,
+		 struct ieee80211_tid_config *tid_conf),
+	TP_ARGS(wiphy, netdev, tid_conf),
+	TP_STRUCT__entry(
+		WIPHY_ENTRY
+		NETDEV_ENTRY
+		MAC_ENTRY(peer)
+	),
+	TP_fast_assign(
+		WIPHY_ASSIGN;
+		NETDEV_ASSIGN;
+		MAC_ASSIGN(peer, tid_conf->peer);
+	),
+	TP_printk(WIPHY_PR_FMT ", " NETDEV_PR_FMT ", peer: " MAC_PR_FMT,
+		  WIPHY_PR_ARG, NETDEV_PR_ARG, MAC_PR_ARG(peer))
+);
 #endif /* !__RDEV_OPS_TRACE || TRACE_HEADER_MULTI_READ */
 
 #undef TRACE_INCLUDE_PATH
-- 
1.7.9.5


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
