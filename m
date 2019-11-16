Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BBEFED08
	for <lists+ath10k@lfdr.de>; Sat, 16 Nov 2019 16:41:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FGjhQsl3RbOSPdply/5QGuZhLTg7BFAyh1Vf5vszGY=; b=B/YkROnuryxIWV
	PuLTtTFfEY6vBUJeTumcwbj4baJPJg0i8BMEFmSBDda7mjGrGY2JI7cYsb52u7yHW3WawWMApu6Tk
	0dfmdou4MeCa5zeQgGfgQxKuO54DFSodg9O8EXwJxdut1XeG2P9Zlzas/fd6pVs/yMRA+999iQb4/
	AdV76TivG8tDSfxfkzLR7HVlLYCe1f9gGYoZtrRVoD9K+EvvPUqB9zOZxzadidtMBwIN8p3MvP8Xy
	qNNm1z6YL+pH5bVJtc81/GS4GLpWnLjjv5/hCcJhZVQ/ZyLdqkuUGED07YgaKO00/jvfOmvOAFA6e
	NqhGp3q/eu7uL7djKJlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0Ch-0007Ag-Tu; Sat, 16 Nov 2019 15:41:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0Cd-000790-JS
 for ath10k@lists.infradead.org; Sat, 16 Nov 2019 15:41:36 +0000
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E1BD2075C;
 Sat, 16 Nov 2019 15:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573918894;
 bh=/LdlDunYvEq9PMi5iXWMTlTTC/OHVe6NjuwqYWeQ3qE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gDyEJV8wtMMpx9qoWsVU+bdx5sDf7mqmdTn3IHZKfAEXaWEmltoeqf0ekSVZnxNdS
 NkHRKSeQtT0ZuU4POH9p64sWZq7deSFeXZL4aFREf3w+6IQtKQoBCHly81MkXLgbQh
 osnL8jeMOpvNqCbkELmjJfqPO32FVQzrYVLy1h/M=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 019/237] ath10k: set probe request oui during
 driver start
Date: Sat, 16 Nov 2019 10:37:34 -0500
Message-Id: <20191116154113.7417-19-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_074135_663591_541CFB4D 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Rakesh Pillai <pillair@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Rakesh Pillai <pillair@codeaurora.org>

[ Upstream commit f1157695c527d4ee949ac83f743f80107751a70c ]

Currently the wmi command for setting probe request
oui, needed for mac randomization, is sent during
the mac register. At this time, during the driver
init the wmi has already been detached. This can
cause unexpected behavior since the firmware is
already down and the wmi has been detached.

Send the wmi command for setting probe request
oui during the driver start. This will make sure
that the firmware is started and wmi is initialized
before we send this command.

Tested HW: WCN3990
Tested FW: WLAN.HL.2.0-01188-QCAHLSWMTPLZ-1

Fixes: 60e1d0fb290197fe505dff6e4e3b7e4d258dbf60
Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/mac.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 1419f9d1505fe..97e6911811176 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -4685,6 +4685,14 @@ static int ath10k_start(struct ieee80211_hw *hw)
 		goto err_core_stop;
 	}
 
+	if (test_bit(WMI_SERVICE_SPOOF_MAC_SUPPORT, ar->wmi.svc_map)) {
+		ret = ath10k_wmi_scan_prob_req_oui(ar, ar->mac_addr);
+		if (ret) {
+			ath10k_err(ar, "failed to set prob req oui: %i\n", ret);
+			goto err_core_stop;
+		}
+	}
+
 	if (test_bit(WMI_SERVICE_ADAPTIVE_OCS, ar->wmi.svc_map)) {
 		ret = ath10k_wmi_adaptive_qcs(ar, true);
 		if (ret) {
@@ -8549,12 +8557,6 @@ int ath10k_mac_register(struct ath10k *ar)
 	}
 
 	if (test_bit(WMI_SERVICE_SPOOF_MAC_SUPPORT, ar->wmi.svc_map)) {
-		ret = ath10k_wmi_scan_prob_req_oui(ar, ar->mac_addr);
-		if (ret) {
-			ath10k_err(ar, "failed to set prob req oui: %i\n", ret);
-			goto err_dfs_detector_exit;
-		}
-
 		ar->hw->wiphy->features |=
 			NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR;
 	}
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
