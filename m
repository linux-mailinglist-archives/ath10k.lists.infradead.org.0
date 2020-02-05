Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2E51526CF
	for <lists+ath10k@lfdr.de>; Wed,  5 Feb 2020 08:27:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xcfwkKXg+sf0DAqUP+OdOXumGdp3s5rm1ZtvNS1nS2M=; b=XoK
	YTO52N7wHd1QFR+5bBlAj1FyF9gllAAj/YbuuFGKh4/VKGQLNZykBufPYyCcxUQ+9O82gmPRtyV4i
	9WnKGJeynrSylEy4iZfgX25HTQSCw0IvqvO99nf9Fz8TsW3yEHdx9kAV+miHJ5TEC9FBYqcl6UB8A
	ZyKlBG0wBZ5U29XIQVkW74Q4CU+1jT8nWSB00pAwoudt2CJm1KesFS6kD68WkpfQbUL08gMR3+m6B
	Zh22jiySrCg+cNcCKvDfgdUpoIMmA34d6gLCUrvPQEHHFy/7JqxwAdh5cMT5txekaumlPq/aMpWvo
	ke1oSKhsODS9Wp8VhiIbLVslp9RcTJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izF5t-0006FO-1F; Wed, 05 Feb 2020 07:27:29 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izF5n-0006F2-W3
 for ath10k@lists.infradead.org; Wed, 05 Feb 2020 07:27:27 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580887644; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=a6928noU/VpV2+yVNNNmairirn+k6UvpBHK3xJkoj4g=;
 b=ncdzT7VMLQLOgAfT1Pj2oqpds8fy53sYXXE7QZavD9kG8aVbFTcL2PAy+9glq6q1KW6edT/m
 w7Mwq9mBjc+MZTZacLJvLB+NVIcgg8YMqbMU97KFe0z2hL1W3FLPplbG1pmKU37y3JezLU3K
 oucYY8kWRCe/q2V2nm0KkSZks6U=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3a6e56.7f46f722b538-smtp-out-n03;
 Wed, 05 Feb 2020 07:27:18 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 55130C433A2; Wed,  5 Feb 2020 07:27:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from yintang-HP-Z230-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: yintang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5BC12C433CB;
 Wed,  5 Feb 2020 07:27:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5BC12C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=yintang@codeaurora.org
From: Yingying Tang <yintang@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: fix unsupported chip reset debugs file write
Date: Wed,  5 Feb 2020 15:27:24 +0800
Message-Id: <1580887644-21061-1-git-send-email-yintang@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_232724_486748_C516DF2F 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Before this change, after writing "warm_hw_reset" debugfs file, host
will send chip reset command to FW even though FW do not support this
service getting a warning print.

Though there is no FW impact before this change, this patch restricts
chip reset command sent to FW only if FW advertises the support via WMI
service bit.

Removed the redundant check and ath10k_warn() print as well.

New version FW will report chip reset service bit to host. Host allow user
to trigger WLAN chip reset only when fw report this service bit.

For older NON-TLV FW, since it do not report chip reset service bit, host
will not send chip reset command. For older TLV FW, since it report chip
reset service bit, host will send chip reset command.

Tested HW:  QCA9984, WCN3990

QCA9984 FW version: WLAN.BL.3.9.0.2-00042-S-1

Signed-off-by: Yingying Tang <yintang@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/debug.c | 9 ++++-----
 drivers/net/wireless/ath/ath10k/wmi.h   | 8 ++++++++
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/debug.c b/drivers/net/wireless/ath/ath10k/debug.c
index 32d967a..4cec1a85 100644
--- a/drivers/net/wireless/ath/ath10k/debug.c
+++ b/drivers/net/wireless/ath/ath10k/debug.c
@@ -2365,9 +2365,6 @@ static ssize_t ath10k_write_warm_hw_reset(struct file *file,
 		goto exit;
 	}
 
-	if (!(test_bit(WMI_SERVICE_RESET_CHIP, ar->wmi.svc_map)))
-		ath10k_warn(ar, "wmi service for reset chip is not available\n");
-
 	ret = ath10k_wmi_pdev_set_param(ar, ar->wmi.pdev_param->pdev_reset,
 					WMI_RST_MODE_WARM_RESET);
 
@@ -2603,8 +2600,10 @@ int ath10k_debug_register(struct ath10k *ar)
 				    ar->debug.debugfs_phy, ar,
 				    &fops_tpc_stats_final);
 
-	debugfs_create_file("warm_hw_reset", 0600, ar->debug.debugfs_phy, ar,
-			    &fops_warm_hw_reset);
+	if (test_bit(WMI_SERVICE_RESET_CHIP, ar->wmi.svc_map))
+		debugfs_create_file("warm_hw_reset", 0600,
+				    ar->debug.debugfs_phy, ar,
+				    &fops_warm_hw_reset);
 
 	debugfs_create_file("ps_state_enable", 0600, ar->debug.debugfs_phy, ar,
 			    &fops_ps_state_enable);
diff --git a/drivers/net/wireless/ath/ath10k/wmi.h b/drivers/net/wireless/ath/ath10k/wmi.h
index e1c40bb..d753924 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.h
+++ b/drivers/net/wireless/ath/ath10k/wmi.h
@@ -367,6 +367,12 @@ enum wmi_10_4_service {
 	WMI_10_4_SERVICE_RTT_RESPONDER_ROLE,
 	WMI_10_4_SERVICE_EXT_PEER_TID_CONFIGS_SUPPORT,
 	WMI_10_4_SERVICE_REPORT_AIRTIME,
+	WMI_10_4_SERVICE_TX_PWR_PER_PEER,
+	WMI_10_4_SERVICE_FETCH_PEER_TX_PN,
+	WMI_10_4_SERVICE_MULTIPLE_VDEV_RESTART,
+	WMI_10_4_SERVICE_ENHANCED_RADIO_COUNTERS,
+	WMI_10_4_SERVICE_QINQ_SUPPORT,
+	WMI_10_4_SERVICE_RESET_CHIP,
 };
 
 static inline char *wmi_service_name(enum wmi_service service_id)
@@ -818,6 +824,8 @@ static inline void wmi_10_4_svc_map(const __le32 *in, unsigned long *out,
 	       WMI_SERVICE_PER_PACKET_SW_ENCRYPT, len);
 	SVCMAP(WMI_10_4_SERVICE_REPORT_AIRTIME,
 	       WMI_SERVICE_REPORT_AIRTIME, len);
+	SVCMAP(WMI_10_4_SERVICE_RESET_CHIP,
+	       WMI_SERVICE_RESET_CHIP, len);
 }
 
 #undef SVCMAP
-- 
1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
