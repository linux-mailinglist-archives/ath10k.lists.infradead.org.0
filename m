Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61B21F2669
	for <lists+ath10k@lfdr.de>; Tue,  9 Jun 2020 01:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onHiMLD6zmjS+PzQqMGnbsc87LmPa/w6Jg1JgN/l7J4=; b=u86s7lvOjUAlFG
	KA9Ju6a7kVxKMy6ldXxP57YZ8kzcQJRZKrmoSd8D0gFxmPll89/3i2vmT/YRGNUtzSCTvTV1qsO+Y
	6VNk2lBbWE3opcET7XijyrecXXU9VgdPNvwzQPjT8AQWx1mJ3XURxbyVZzGX5GnXeDjCLY02jTjqd
	n+v5si88MSX1ojS+CDKt4fvotFrmmDxup2TOd4Csbya5E9FGTZ5OtddNiPS2bHs1kogRtIu7SEYm1
	FJt2eAn2Gq7nqizMdA4dq1VkFyHIpay7DA8ZU1y/gP8Od6DTJnzIcONYojdfhDfP0QBwrrQ1CJ6dZ
	ozzmwTYdYMZ0FOldfyTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRMC-0007GX-Hb; Mon, 08 Jun 2020 23:39:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR2z-0005fK-Pk
 for ath10k@lists.infradead.org; Mon, 08 Jun 2020 23:19:20 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 51E212083E;
 Mon,  8 Jun 2020 23:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658357;
 bh=elBE11fQiN4qbvXIOtPynWlN6qJBOFWfp7dr4xXo6MY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pDTrdO53CYIqty9VZfI5HpOf3HOPeH4Jb+N09DjwV+f/jRN15M9RS1nkkWwgCu8hG
 ZymzmZt33A3ZXT5KZJuuke+GbWpc3A42Oy3ggBhhjCMeNLFkCLRgkWUa4muRhlj4oH
 VP90kR6rX/PhfLzJRI/Zqz0PDhYI9YVBZ0CQfiU4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 023/175] ath10k: remove the max_sched_scan_reqs
 value
Date: Mon,  8 Jun 2020 19:16:16 -0400
Message-Id: <20200608231848.3366970-23-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231848.3366970-1-sashal@kernel.org>
References: <20200608231848.3366970-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161917_933442_926C1628 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Wen Gong <wgong@codeaurora.org>

[ Upstream commit d431f8939c1419854dfe89dd345387f5397c6edd ]

The struct cfg80211_wowlan of NET_DETECT WoWLAN feature share the same
struct cfg80211_sched_scan_request together with scheduled scan request
feature, and max_sched_scan_reqs of wiphy is only used for sched scan,
and ath10k does not support scheduled scan request feature, so ath10k
does not set flag NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR, but ath10k
set max_sched_scan_reqs of wiphy to a non zero value 1, then function
nl80211_add_commands_unsplit of cfg80211 will set it support command
NL80211_CMD_START_SCHED_SCAN because max_sched_scan_reqs is a non zero
value, but actually ath10k not support it, then it leads a mismatch result
for sched scan of cfg80211, then application shill found the mismatch and
stop running case of MAC random address scan and then the case fail.

After remove max_sched_scan_reqs value, it keeps match for sched scan and
case of MAC random address scan pass.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
Tested with QCA6174 PCIe with firmware WLAN.RM.4.4.1-00110-QCARMSWP-1.

Fixes: ce834e280f2f875 ("ath10k: support NET_DETECT WoWLAN feature")
Signed-off-by: Wen Gong <wgong@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Link: https://lore.kernel.org/r/20191114050001.4658-1-wgong@codeaurora.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/mac.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 36d24ea126a2..b0f6f2727053 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -8811,7 +8811,6 @@ int ath10k_mac_register(struct ath10k *ar)
 	ar->hw->wiphy->max_scan_ie_len = WLAN_SCAN_PARAMS_MAX_IE_LEN;
 
 	if (test_bit(WMI_SERVICE_NLO, ar->wmi.svc_map)) {
-		ar->hw->wiphy->max_sched_scan_reqs = 1;
 		ar->hw->wiphy->max_sched_scan_ssids = WMI_PNO_MAX_SUPP_NETWORKS;
 		ar->hw->wiphy->max_match_sets = WMI_PNO_MAX_SUPP_NETWORKS;
 		ar->hw->wiphy->max_sched_scan_ie_len = WMI_PNO_MAX_IE_LENGTH;
-- 
2.25.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
