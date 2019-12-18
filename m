Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F125124C1E
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 16:48:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SMjK9uavm1UGm8ts8Abhr8x230LyvWjBzpp+PCQbQwk=; b=DyDYBGrN7I7oATH9gxwtZV+5pU
	hHj4ocGfwpIubAn0MEStckjDNbIHz00rT3wlLj10hf++A3YOoBSoXdTkF4IllFsbxF/yQzpQ3HpQ1
	GFlO+8NudACFnfsmapiBlMAedkiEY2rcrU7S9G9Jh8JFq4c6kJT+ptiOoA2sfZUIj9xcT3Gc6yi3J
	3k2vYGqKYh/aJFRWokHsKLfsetfHqSvTQ78b4auLhjWHLH0FJs8AfntfPpCBjlfnD9OyZ59W8swFn
	YDPZ9pQ/FDwRTQsC2pRJts/bv5UuvVQ6VZQWN2VrJTvG90d2CMfHturyM6PQ8Zl0njYRM6VH6rYWN
	gVP3WKxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbZ5-0000FI-CV; Wed, 18 Dec 2019 15:48:43 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbYz-0000Cn-Om
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 15:48:39 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576684117; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=Ts/SoN8mMCn5XP7ft2oCeu5tzE14MHymrYQPG4etVSE=;
 b=gNiVMtF5an2TUASK7yPLV4FuYUpAGQTOtMZReJQF6RE4ltpVM2lFFVx1qIOmeyen4NCmJASc
 /W9Zs0JxsfLWTXLvkkL5sXrOoGoUATeLxlzwcMnu2DmgKVon+Z3D5Xv8X2+UzscjFUeRmoHw
 R1ZjgDIIxjHoswOiASrh641UWCk=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfa4a53.7f1154914c70-smtp-out-n01;
 Wed, 18 Dec 2019 15:48:35 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E1CD1C43383; Wed, 18 Dec 2019 15:48:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7214EC433CB;
 Wed, 18 Dec 2019 15:48:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7214EC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 1/2] nl80211: vendor-cmd: qca: add dynamic SAR power limits
Date: Wed, 18 Dec 2019 17:48:27 +0200
Message-Id: <1576684108-30177-2-git-send-email-kvalo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576684108-30177-1-git-send-email-kvalo@codeaurora.org>
References: <1576684108-30177-1-git-send-email-kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_074838_063716_8EAA2A60 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

From: Wen Gong <wgong@codeaurora.org>

The vendor commands is to add API for user to configure dynamic SAR
power limits, it will not replace the existing power control
functionality, it is to make more convenient to configure power.

An example of usage(wlan0 is the wireless interface dev name):
iw dev wlan0 vendor send 0x1374 0x92 0x2C 0x00 0x03 0x00 0x14 0x00 0x01
0x00 0x08 0x00 0x07 0x00 0x22 0x00 0x00 0x00 0x08 0x00 0x04 0x00 0x00
0x00 0x00 0x00 0x14 0x00 0x02 0x00 0x08 0x00 0x07 0x00 0x11 0x00 0x00
0x00 0x08 0x00 0x04 0x00 0x01 0x00 0x00 0x00

means of bytes:
0x1374: vendor id
0x92: vendor subcmd id
0x22: 2.4G power limit
0x11: 5G power limit

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
---
 include/uapi/nl80211-vnd-qca.h | 68 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 include/uapi/nl80211-vnd-qca.h

diff --git a/include/uapi/nl80211-vnd-qca.h b/include/uapi/nl80211-vnd-qca.h
new file mode 100644
index 000000000000..482c9409a2c0
--- /dev/null
+++ b/include/uapi/nl80211-vnd-qca.h
@@ -0,0 +1,68 @@
+/* SPDX-License-Identifier: ISC */
+/*
+ * Copyright (c) 2019 The Linux Foundation. All rights reserved.
+ */
+
+#ifndef _UAPI_NL80211_VND_QCA_H
+#define _UAPI_NL80211_VND_QCA_H
+
+/* Vendor id to be used in vendor specific command and events to user space
+ * NOTE: The authoritative place for definition of QCA_NL80211_VENDOR_ID,
+ * vendor subcmd definitions prefixed with QCA_NL80211_VENDOR_SUBCMD, and
+ * qca_wlan_vendor_attr is open source file src/common/qca-vendor.h in
+ * git://w1.fi/srv/git/hostap.git; the values here are just a copy of that
+ */
+#define QCA_NL80211_VENDOR_ID 0x001374
+
+/**
+ * enum qca_nl80211_vendor_subcmds - QCA nl80211 vendor command identifiers
+ *
+ *@QCA_NL80211_VENDOR_SUBCMD_SET_SAR_LIMITS and is used to retrieve the
+ *	settings currently in use. The attributes returned by this command are
+ *	defined by enum qca_vendor_attr_sar_limits.
+ */
+enum qca_nl80211_vendor_subcmds {
+	QCA_NL80211_VENDOR_SUBCMD_SET_SAR_LIMITS = 146,
+	};
+
+/**
+ * enum qca_vendor_attr_sar_limits - Attributes for SAR power limits
+ *
+ * @QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC: Nested array of SAR power
+ *	limit specifications. The number of specifications is
+ *	specified by @QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_NUM_SPECS. Each
+ *	specification contains a set of
+ *	QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC_* attributes. A
+ *	specification is uniquely identified by the attributes
+ *	%QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC_BAND and always
+ *	contains as a payload the attribute
+ *	%QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC_POWER_LIMIT.
+ *
+ * @QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC_BAND: Optional (u32) value to
+ *	indicate for which band this specification applies. Valid
+ *	values are enumerated in enum %nl80211_band (although not all
+ *	bands may be supported by a given device). If the attribute is
+ *	not supplied then the specification will be applied to all
+ *	supported bands.
+ *
+ * @QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC_POWER_LIMIT: Required (u32)
+ *	value to specify the actual power limit value in units of 0.5
+ *	dBm (i.e., a value of 11 represents 5.5 dBm).
+ *	This is required, when %QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SELECT is
+ *	%QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SELECT_USER.
+ *
+ * These attributes are used with %QCA_NL80211_VENDOR_SUBCMD_SET_SAR_LIMITS
+ * and %QCA_NL80211_VENDOR_SUBCMD_GET_SAR_LIMITS.
+ */
+enum qca_vendor_attr_sar_limits {
+	QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_INVALID = 0,
+	QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC = 3,
+	QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC_BAND = 4,
+	QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC_POWER_LIMIT = 7,
+
+	QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_AFTER_LAST,
+	QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_MAX =
+		QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_AFTER_LAST - 1
+};
+
+#endif /* _UAPI_NL80211_VND_QCA_H_ */
-- 
2.7.4

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
