Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5211B2FA4
	for <lists+ath10k@lfdr.de>; Tue, 21 Apr 2020 20:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CdP1G9fqad9pJNmRtFyX2B4p2vdLXNwcKGMSvvWkTCc=; b=UM/
	rWKaLOR90k5Jf01yb57sZag3yDvv5aA/Kn0DFUlGyOvTEWB5vMGm42Y1F5SLA52WjLM4aa27Ny285
	MMMr25CK0twe3QiK8aSXHL/EVYDfF+InMeYuQMRcZ/5ejJPkTvMzJhzqbc0YMg0j5lKP5B3CYH9N0
	ZYCaTAAICPqJIlqRTRlY+Gdm6SZ3Twnm/gszxNKeqmTr6NYDrmOmHNWTSwSAbq+9c0sxhZdkBCFtZ
	3jZOlJb1fvlFp6QReIU2HEK0X7eypEkda2qXwqUC/z3xboGL1vgKjGGy1Pwcpa2vE0yV1gkh6vm5N
	cxyUxb/YuLg3KKwRXTUolJiodzxmutg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQy56-0005Uj-1z; Tue, 21 Apr 2020 18:57:16 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQy52-0005Tv-BI
 for ath10k@lists.infradead.org; Tue, 21 Apr 2020 18:57:13 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587495431; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=rLICmTBof8eKNqnysvQtRNeSf1lVpHeOKoMNOJQq6dA=;
 b=SjPXyMWj+9MTbqVT6lb8ksV370REGiG8E5rZzg/6EWBEoqXrXiAkL7b7RWsEn5SZaka+rWVE
 SWHmkOXGCNERf5TzEmr9l1lm/Flg5H4fyvQfrhlldPN60Dx8a7DYkO17LV88THTyy7eV+bug
 suLyZmlM9AhIU1h4b69qEBZS+x8=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9f4205.7fb767e79f10-smtp-out-n04;
 Tue, 21 Apr 2020 18:57:09 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B224FC433F2; Tue, 21 Apr 2020 18:57:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from che-swdbs-01.qca.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: mkenna)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 16DD7C433D2;
 Tue, 21 Apr 2020 18:57:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 16DD7C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=mkenna@codeaurora.org
From: Maharaja Kennadyrajan <mkenna@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: Fix the invalid tx/rx chainmask configuration
Date: Wed, 22 Apr 2020 00:28:32 +0530
Message-Id: <1587495512-29813-1-git-send-email-mkenna@codeaurora.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_115712_450758_C2C9376A 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The driver is allowing the invalid tx/rx chainmask configuration
(other than 1,3,7,15) set by the user. It causes the firmware
crash due to the invalid chainmask values.

Hence, reject the invalid chainmask values in the driver by not
sending the pdev set command to the firmware.

Tested hardware: QCA9888
Tested firmware: 10.4-3.10-00047

Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/mac.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index a59a7a5..a9f91a1 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -4529,17 +4529,18 @@ static int ath10k_get_antenna(struct ieee80211_hw *hw, u32 *tx_ant, u32 *rx_ant)
 	return 0;
 }
 
-static void ath10k_check_chain_mask(struct ath10k *ar, u32 cm, const char *dbg)
+static bool ath10k_check_chain_mask(struct ath10k *ar, u32 cm, const char *dbg)
 {
 	/* It is not clear that allowing gaps in chainmask
 	 * is helpful.  Probably it will not do what user
 	 * is hoping for, so warn in that case.
 	 */
 	if (cm == 15 || cm == 7 || cm == 3 || cm == 1 || cm == 0)
-		return;
+		return true;
 
-	ath10k_warn(ar, "mac %s antenna chainmask may be invalid: 0x%x.  Suggested values: 15, 7, 3, 1 or 0.\n",
+	ath10k_warn(ar, "mac %s antenna chainmask is invalid: 0x%x.  Suggested values: 15, 7, 3, 1 or 0.\n",
 		    dbg, cm);
+	return false;
 }
 
 static int ath10k_mac_get_vht_cap_bf_sts(struct ath10k *ar)
@@ -4722,11 +4723,15 @@ static void ath10k_mac_setup_ht_vht_cap(struct ath10k *ar)
 static int __ath10k_set_antenna(struct ath10k *ar, u32 tx_ant, u32 rx_ant)
 {
 	int ret;
+	bool is_valid_tx_chain_mask, is_valid_rx_chain_mask;
 
 	lockdep_assert_held(&ar->conf_mutex);
 
-	ath10k_check_chain_mask(ar, tx_ant, "tx");
-	ath10k_check_chain_mask(ar, rx_ant, "rx");
+	is_valid_tx_chain_mask = ath10k_check_chain_mask(ar, tx_ant, "tx");
+	is_valid_rx_chain_mask = ath10k_check_chain_mask(ar, rx_ant, "rx");
+
+	if (!is_valid_tx_chain_mask || !is_valid_rx_chain_mask)
+		return -EINVAL;
 
 	ar->cfg_tx_chainmask = tx_ant;
 	ar->cfg_rx_chainmask = rx_ant;
-- 
1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
