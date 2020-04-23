Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0711E1B5285
	for <lists+ath10k@lfdr.de>; Thu, 23 Apr 2020 04:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tOnOUTapZTMKAvpGqoHXlkW9NI0C97vHkgAzaRLxrHs=; b=tLAxt4YAmmLJ4z
	nncdWDcdS0p4wEUX1FySiTa+A8Sdk5ZKU7ToOWjCVpqb5rZYa/Yj7yRoicQivTjt9JeyW/tZzcxWZ
	bLzS4IjiBJi6G+J6Pk+geNaRFrHj80F1lHky6PalnqZS9Q8msXlybrHwl1PWqTk1P+7o2r9+2p6CW
	ICgyUX2GGhmmQI/EJDcGJNEQtpr41a8X2/Js/ZmUWazD6xK5PpTGkMywxrram8tBbK3dfd5DGBqEX
	yGrMTMsk/Xlc5Z/95IGPKFB4+VCTKnNw0Gblo+lWkySJK8131Tx8ZNvXtujgyWQ6BtsHGCNkj3Iu7
	W1R1T2LlzSxc23fHkTxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRRbi-0002Yk-5K; Thu, 23 Apr 2020 02:28:54 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRRbb-0002W4-F9
 for ath10k@lists.infradead.org; Thu, 23 Apr 2020 02:28:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587608930; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=aPpPKTGsqkL6cyzNhUhTTZSVkPYP436EodQfBMFtlas=;
 b=E3DkrqzBONtAL3lsxPgCg4X1rOboosFJBA05HmCX54y1zLHyitZGV1uA+z7nvxX5aXm/XDxr
 4tLL7npVt3WFGfXzmvu8Aq8barwl3LWuyEnP4033YsoUWgD59z90IbRuMPOH6WtYeTo1HHCS
 8umKHWFaEdz9RS3+NlQ/xnzcBWc=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea0fd4d.7f6c90aa80d8-smtp-out-n02;
 Thu, 23 Apr 2020 02:28:29 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 57928C433F2; Thu, 23 Apr 2020 02:28:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A74ACC433CB;
 Thu, 23 Apr 2020 02:28:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A74ACC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: enable rx duration report default for wmi tlv
Date: Thu, 23 Apr 2020 10:27:58 +0800
Message-Id: <20200423022758.5365-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_192850_287865_B8B9870F 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org, wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

When run command "iw dev wlan0 station dump", the rx duration is 0.
When firmware indicate WMI_UPDATE_STATS_EVENTID, extended flag of
statsis not set by default, so firmware do not report rx duration.

one sample:
localhost # iw wlan0 station dump
Station c4:04:15:5d:97:22 (on wlan0)
        inactive time:  48 ms
        rx bytes:       21670
        rx packets:     147
        tx bytes:       11529
        tx packets:     100
        tx retries:     88
        tx failed:      36
        beacon loss:    1
        beacon rx:      31
        rx drop misc:   47
        signal:         -72 [-74, -75] dBm
        signal avg:     -71 [-74, -75] dBm
        beacon signal avg:      -71 dBm
        tx bitrate:     54.0 MBit/s MCS 3 40MHz
        rx bitrate:     1.0 MBit/s
	rx duration:    0 us

This patch enable firmware's extened flag of stats by setting flag
WMI_TLV_STAT_PEER_EXTD of ar->fw_stats_req_mask which is set in
ath10k_core_init_firmware_features via WMI_REQUEST_STATS_CMDID.

After apply this patch, rx duration show value with the command:
Station c4:04:15:5d:97:22 (on wlan0)
        inactive time:  883 ms
        rx bytes:       44289
        rx packets:     265
        tx bytes:       10838
        tx packets:     93
        tx retries:     899
        tx failed:      103
        beacon loss:    0
        beacon rx:      78
        rx drop misc:   46
        signal:         -71 [-74, -76] dBm
        signal avg:     -70 [-74, -76] dBm
        beacon signal avg:      -70 dBm
        tx bitrate:     54.0 MBit/s MCS 3 40MHz
        rx bitrate:     1.0 MBit/s
        rx duration:    358004 us

This patch do not have side effect for all chips, because function
ath10k_debug_fw_stats_request is already exported to debugfs
"fw_stats" and WMI_REQUEST_STATS_CMDID is safely sent after condition
checked by ath10k_peer_stats_enabled in ath10k_sta_statistics.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/debug.c | 2 +-
 drivers/net/wireless/ath/ath10k/debug.h | 8 ++++++++
 drivers/net/wireless/ath/ath10k/mac.c   | 2 ++
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/debug.c b/drivers/net/wireless/ath/ath10k/debug.c
index 69139c2e6f82..e8250a665433 100644
--- a/drivers/net/wireless/ath/ath10k/debug.c
+++ b/drivers/net/wireless/ath/ath10k/debug.c
@@ -349,7 +349,7 @@ void ath10k_debug_fw_stats_process(struct ath10k *ar, struct sk_buff *skb)
 	spin_unlock_bh(&ar->data_lock);
 }
 
-static int ath10k_debug_fw_stats_request(struct ath10k *ar)
+int ath10k_debug_fw_stats_request(struct ath10k *ar)
 {
 	unsigned long timeout, time_left;
 	int ret;
diff --git a/drivers/net/wireless/ath/ath10k/debug.h b/drivers/net/wireless/ath/ath10k/debug.h
index 82f7eb8583d9..4cbfd9279d6f 100644
--- a/drivers/net/wireless/ath/ath10k/debug.h
+++ b/drivers/net/wireless/ath/ath10k/debug.h
@@ -125,6 +125,9 @@ static inline int ath10k_debug_is_extd_tx_stats_enabled(struct ath10k *ar)
 {
 	return ar->debug.enable_extd_tx_stats;
 }
+
+int ath10k_debug_fw_stats_request(struct ath10k *ar);
+
 #else
 
 static inline int ath10k_debug_start(struct ath10k *ar)
@@ -192,6 +195,11 @@ static inline int ath10k_debug_is_extd_tx_stats_enabled(struct ath10k *ar)
 	return 0;
 }
 
+static inline int ath10k_debug_fw_stats_request(struct ath10k *ar)
+{
+	return 0;
+}
+
 #define ATH10K_DFS_STAT_INC(ar, c) do { } while (0)
 
 #define ath10k_debug_get_et_strings NULL
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 6791c0035be0..ea5a26ea9b32 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -8306,6 +8306,8 @@ static void ath10k_sta_statistics(struct ieee80211_hw *hw,
 	if (!ath10k_peer_stats_enabled(ar))
 		return;
 
+	ath10k_debug_fw_stats_request(ar);
+
 	sinfo->rx_duration = arsta->rx_duration;
 	sinfo->filled |= BIT_ULL(NL80211_STA_INFO_RX_DURATION);
 
-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
