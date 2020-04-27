Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5A61B9958
	for <lists+ath10k@lfdr.de>; Mon, 27 Apr 2020 10:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHBjipmhmhbKQVh8YZxeVIssED+TgwcJYD2yzulWVe4=; b=dM+eZNdks7VRUZ
	ey1I+lfj7xrWFWTKInDE6weX4C0TvHmPJ7UCmbl/vrI660eDrOlra2004sWDWTP/q0aS+GyTrV7Da
	u/9U/dEcn/aW2XCbd7SkmUN2DFknajX6tHJQRqOxwO6vqdmz8qQF6hqiNSpT0SeSeUS4SEqsT7NC5
	R7OF4iBvl4c4Y+13XCSvCoKDNbgsM+CIVAkOVrYUprEFTOTAlYyIdyCQCgH6v3wUoPwBPOfs5gqzH
	+XQU1gadEre3rpFvK5OjNCYZE8HsioFuySdfBmsqgjpArCpxsBKCVqD1mgjXKJ2UG1HFXYBCoPCDF
	4zTbne3jDQ3qWo/j8YXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSylV-0001qd-HA; Mon, 27 Apr 2020 08:05:21 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyl9-0008AG-Dr
 for ath10k@lists.infradead.org; Mon, 27 Apr 2020 08:05:00 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587974696; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=MYrnxNV4Yy6zPBy3u9eGTB7FYWfKkOKa+rVPVo5vI2w=;
 b=A76p62hHIJ7dOQlzjKoPjxwYShg9ooNKSvAqzgFN4JNzWimMMRUE3SQPMEaUqX0g95qBkOOv
 1S72agR5NY67pJh0Z6S2d9uWd5EnlpVEUaxBfpe03Sk9ZgXzmeAyefTtWUCCnQdoqQYNuQ79
 IU6/+nSVQrDjZmQQIcpcBraLvTs=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea69227.7fc196731d50-smtp-out-n02;
 Mon, 27 Apr 2020 08:04:55 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E8213C433D2; Mon, 27 Apr 2020 08:04:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2AD57C433F2;
 Mon, 27 Apr 2020 08:04:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2AD57C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 4/4] ath10k: correct tx bitrate of iw for SDIO
Date: Mon, 27 Apr 2020 16:04:16 +0800
Message-Id: <20200427080416.8265-5-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200427080416.8265-1-wgong@codeaurora.org>
References: <20200427080416.8265-1-wgong@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_010459_523322_66D60DAE 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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

For legacy mode, tx bitrate not show correct sometimes, for example:
iw wlan0 link
Connected to 8c:21:0a:b3:5a:64 (on wlan0)
        SSID: tplinkgw
        freq: 2462
        RX: 19672 bytes (184 packets)
        TX: 9851 bytes (87 packets)
        signal: -51 dBm
        rx bitrate: 54.0 MBit/s
        tx bitrate: 2.8 MBit/s

This patch use the tx bitrate info from WMI_TLV_PEER_STATS_INFO_EVENTID
report from firmware, and tx bitrate show correct.

iw wlan0 link
Connected to 8c:21:0a:b3:5a:64 (on wlan0)
        SSID: tplinkgw
        freq: 2462
        RX: 13973 bytes (120 packets)
        TX: 6737 bytes (57 packets)
        signal: -52 dBm
        rx bitrate: 54.0 MBit/s
        tx bitrate: 54.0 MBit/s

This patch only effect SDIO chip, ath10k_mac_sta_get_peer_stats_info
has check for bitrate_statistics of hw_params, it is enabled only for
"qca6174 hw3.2 sdio".

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/core.h    |  2 ++
 drivers/net/wireless/ath/ath10k/mac.c     | 10 ++++++++++
 drivers/net/wireless/ath/ath10k/wmi-tlv.c |  2 ++
 3 files changed, 14 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
index 1700bf59e8fa..ad6ef8d492c8 100644
--- a/drivers/net/wireless/ath/ath10k/core.h
+++ b/drivers/net/wireless/ath/ath10k/core.h
@@ -526,6 +526,8 @@ struct ath10k_sta {
 
 	u32 rx_rate_code;
 	u32 rx_bitrate_kbps;
+	u32 tx_rate_code;
+	u32 tx_bitrate_kbps;
 	struct work_struct update_wk;
 	u64 rx_duration;
 	struct ath10k_htt_tx_stats *tx_stats;
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 38fc8cb3aac9..0b7d510d2725 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -8502,6 +8502,16 @@ static void ath10k_mac_sta_get_peer_stats_info(struct ath10k *ar,
 		arsta->rx_rate_code = 0;
 		arsta->rx_bitrate_kbps = 0;
 	}
+
+	if (arsta->tx_rate_code != 0 && arsta->tx_bitrate_kbps != 0) {
+		ath10k_mac_parse_bitrate(ar, arsta->tx_rate_code,
+					 arsta->tx_bitrate_kbps,
+					 &sinfo->txrate);
+
+		sinfo->filled |= BIT_ULL(NL80211_STA_INFO_TX_BITRATE);
+		arsta->tx_rate_code = 0;
+		arsta->tx_bitrate_kbps = 0;
+	}
 }
 
 static void ath10k_sta_statistics(struct ieee80211_hw *hw,
diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.c b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
index eec1f1f27dec..9187b62b331c 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.c
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
@@ -249,6 +249,8 @@ static int ath10k_wmi_tlv_parse_peer_stats_info(struct ath10k *ar, u16 tag, u16
 	arsta = (struct ath10k_sta *)sta->drv_priv;
 	arsta->rx_rate_code = __le32_to_cpu(stat->last_rx_rate_code);
 	arsta->rx_bitrate_kbps = __le32_to_cpu(stat->last_rx_bitrate_kbps);
+	arsta->tx_rate_code = __le32_to_cpu(stat->last_tx_rate_code);
+	arsta->tx_bitrate_kbps = __le32_to_cpu(stat->last_tx_bitrate_kbps);
 
 	return 0;
 }
-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
