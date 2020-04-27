Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F951B9959
	for <lists+ath10k@lfdr.de>; Mon, 27 Apr 2020 10:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FJS+s7MQmX2t0R7U+ypt15Dut2RQbkhreOLlRZ546c=; b=C8ywTYFc6BvrZl
	J2WpswEySxZuSZzN+HEcXniVP9tifHMSS9zoFdFSo/FzzkBO8WrAIC4dssBNFe1Vw0w3YEAm5KqQ4
	0UbDFEhUq1s28TnTygeO1dCgkatwHlewS4/8ex5CIlkvnYkB80m4MyFddOIQAEcYPT5XOWLV227hp
	o4OckGVOSk+QgNb3zg+8KdG3TuchYAjbWir7WWcVqsh2cmzfRGzBo2UAalUwX2dzaQGchzD4YuteT
	1Yjuk2Eb4V5PGG+6kw1Y3EAwOMt6vcOg5ebA7c6KELVfas4Qs4amhQNw6ocFr/cGwcOaeU93sHV55
	rVoLADLbMnLRUP10K57g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSylb-0002OQ-C4; Mon, 27 Apr 2020 08:05:27 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyl9-0008AL-Dr
 for ath10k@lists.infradead.org; Mon, 27 Apr 2020 08:05:01 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587974699; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=YmYUdOseWjB4PV+yFG+OsCqMtgJw6Qbb6FdrJ6U4paA=;
 b=kJmTvdDEj9FuMhnAJQOXlifdueqMd4wKKcGtNUtqP/WxeQOTgC7PWhOeeuAbClntZdwo7S7o
 b8DZNykzWAbDesRYB0iEDCmHxCDF7LvQpyp7FOaUyVQHLxWgVuFRyNISiyebawrNnysaHN+I
 lC117GpXCRR1fNd4F7yJHdhALUQ=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea69221.7f54e5eaac38-smtp-out-n02;
 Mon, 27 Apr 2020 08:04:49 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 10884C433D2; Mon, 27 Apr 2020 08:04:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3975BC433CB;
 Mon, 27 Apr 2020 08:04:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3975BC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 1/4] ath10k: enable firmware peer stats info for wmi tlv
Date: Mon, 27 Apr 2020 16:04:13 +0800
Message-Id: <20200427080416.8265-2-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200427080416.8265-1-wgong@codeaurora.org>
References: <20200427080416.8265-1-wgong@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_010500_103015_DB16BCF8 
X-CRM114-Status: GOOD (  12.25  )
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

For wmi tlv type, firmware disable peer stats info by default, after
enable it, firmware will report WMI_TLV_PEER_STATS_INFO_EVENTID if
ath10k send WMI_TLV_REQUEST_PEER_STATS_INFO_CMDID to firmware.

Enable it will only set a flag in firmware, firmware will not report
it without receive request WMI command.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/mac.c     | 5 +++++
 drivers/net/wireless/ath/ath10k/wmi-tlv.c | 1 +
 drivers/net/wireless/ath/ath10k/wmi-tlv.h | 1 +
 drivers/net/wireless/ath/ath10k/wmi.h     | 1 +
 4 files changed, 8 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index a1147ccc09bf..0fb082c9d04b 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -2959,6 +2959,11 @@ static void ath10k_bss_assoc(struct ieee80211_hw *hw,
 	arvif->aid = bss_conf->aid;
 	ether_addr_copy(arvif->bssid, bss_conf->bssid);
 
+	ret = ath10k_wmi_pdev_set_param(ar,
+					ar->wmi.pdev_param->peer_stats_info_enable, 1);
+	if (ret)
+		ath10k_warn(ar, "failed to enable peer stats info: %d\n", ret);
+
 	ret = ath10k_wmi_vdev_up(ar, arvif->vdev_id, arvif->aid, arvif->bssid);
 	if (ret) {
 		ath10k_warn(ar, "failed to set vdev %d up: %d\n",
diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.c b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
index e1ab900f2662..27aaa48615d2 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.c
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
@@ -4269,6 +4269,7 @@ static struct wmi_pdev_param_map wmi_tlv_pdev_param_map = {
 	.arp_dstaddr = WMI_PDEV_PARAM_UNSUPPORTED,
 	.rfkill_config = WMI_TLV_PDEV_PARAM_HW_RFKILL_CONFIG,
 	.rfkill_enable = WMI_TLV_PDEV_PARAM_RFKILL_ENABLE,
+	.peer_stats_info_enable = WMI_TLV_PDEV_PARAM_PEER_STATS_INFO_ENABLE,
 };
 
 static struct wmi_peer_param_map wmi_tlv_peer_param_map = {
diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.h b/drivers/net/wireless/ath/ath10k/wmi-tlv.h
index 4972dc12991c..cd400b19a64d 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.h
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.h
@@ -451,6 +451,7 @@ enum wmi_tlv_pdev_param {
 	WMI_TLV_PDEV_PARAM_VDEV_RATE_STATS_UPDATE_PERIOD,
 	WMI_TLV_PDEV_PARAM_TXPOWER_REASON_NONE,
 	WMI_TLV_PDEV_PARAM_TXPOWER_REASON_SAR,
+	WMI_TLV_PDEV_PARAM_PEER_STATS_INFO_ENABLE = 0x8b,
 	WMI_TLV_PDEV_PARAM_TXPOWER_REASON_MAX,
 };
 
diff --git a/drivers/net/wireless/ath/ath10k/wmi.h b/drivers/net/wireless/ath/ath10k/wmi.h
index 209070714d1a..46740e16f3ce 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.h
+++ b/drivers/net/wireless/ath/ath10k/wmi.h
@@ -3798,6 +3798,7 @@ struct wmi_pdev_param_map {
 	u32 enable_btcoex;
 	u32 rfkill_config;
 	u32 rfkill_enable;
+	u32 peer_stats_info_enable;
 };
 
 #define WMI_PDEV_PARAM_UNSUPPORTED 0
-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
