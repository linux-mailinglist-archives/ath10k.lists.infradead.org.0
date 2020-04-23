Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA0F1B57F6
	for <lists+ath10k@lfdr.de>; Thu, 23 Apr 2020 11:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GbQdS2PHha5J6XdZGHI+N3kifAiGAgtHl20ZHky4vZU=; b=gpg/kQzHk61x0s
	CHqsj60ko8dw0ShDz9npn3BAstKYERXz0gi9LrPGBIhfal1J0AJgm89ctWzNOC4Qj3JOj0ve6fid6
	jwMkGX2uTgfvt2M2heuQxOdGCsvLGCiwe14VYT+TAj4p9QCGB4PVIKthCCj3B/FB71ELRm31UQEbF
	wvtlNZFusU5n6Ft/SNB9EHEFrSE4oXW3VoZSh3VziuFuGReFxOqvw9PqKl9lftfIRZD9vxg0hF32w
	osdLEbqEkyaHSXu7Kgkp+VnpkFgVbLNDexRi5kGNoiLCID1GXfAbwl1CfbD9/n+SciKyMDIkndoYm
	KX0tnE8Sw38WFxbpdz9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRY1M-0003jG-L6; Thu, 23 Apr 2020 09:19:48 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRY1I-0003ey-2I
 for ath10k@lists.infradead.org; Thu, 23 Apr 2020 09:19:45 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587633584; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=lS6qvlWfaeFK3dX/BANkSbzEooAYY7Wv4YSmqUFIsEM=;
 b=QhoUV8FncA3/o/DnGFQUs8aPzJCHvun7aPffiK7dK1aE2Qt9b3SWAag5pTtEXXAMcYFIRgBe
 znIcHNa1H7H9kH2UPfPgXikJsX8jR3CVevW9vtBDhWmnkcbw89XYAMbx3iJrAYT22PWkS6+N
 LLPk2qTzf4sP2i+JbrcxSbco9LQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea15daf.7faf58ac8490-smtp-out-n04;
 Thu, 23 Apr 2020 09:19:43 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B29E5C432C2; Thu, 23 Apr 2020 09:19:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0966DC433D2;
 Thu, 23 Apr 2020 09:19:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0966DC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 1/4] ath10k: enable firmware peer stats info for wmi tlv
Date: Thu, 23 Apr 2020 17:18:53 +0800
Message-Id: <20200423091856.24297-2-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200423091856.24297-1-wgong@codeaurora.org>
References: <20200423091856.24297-1-wgong@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_021944_167509_5CCB2090 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
index 6791c0035be0..47fd5035f000 100644
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
