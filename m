Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 479FE68AF6
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 15:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z42GnENNr9IO0QIqTicJRYEzeZKNrrnAgNUYsufV+7Q=; b=JGuhyB6WaZ7KWt
	q0Ze3uNRdyjt8m8IOcfqVq+Htd3IdV8P6Omj0h2o/U1wA2o8uKyA+zkOx0cNvGahteeEBMufZYwmu
	aB22E5rN+bn3SESQoFeFsQAmy3RkSNzw2KSiKVFhC8fNbt9NW8bjaC6XVho80rjL+r3GXEvobOsvN
	VOcYUlbZlbpl8W5QNuZyiuIamfxc/RFO9t0U5TVqo5Wv3aetHAH1OO/IXlt1ph1BRQglay3kIRbUn
	bQ/n6NqU0bD2D5VQnYKE2uaFII0mA+yCXi+5l3xeZRPHQfZb1FHAYHeGvUkSrY50jGWvl6yyqG+h1
	Bxbr7lfRw4bg/VackMsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1Ba-0004bn-BM; Mon, 15 Jul 2019 13:38:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1BO-0004Tr-Aj
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 13:38:23 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BE232081C;
 Mon, 15 Jul 2019 13:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563197902;
 bh=26J0cNgRs2gDrMoGxYgt4ejtXtTwNyGDi1cQ8KooqFk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=18j5td81+YEATFFQdMmIVJ/7X2biv5o7QbjPwMvJdv7AsUlBBWKKqb4X39bnMF3j2
 5k+neoRsB74KCxoT/MmhBs0GmYBAS9DDH0iQv+yT8+WXYSJfSVge9pEz+OyOHL5nr6
 wE50zVneT5AeZisS2FAzwRZxaCe87iqKgHJMnnpI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 003/219] ath10k: fix incorrect multicast/broadcast
 rate setting
Date: Mon, 15 Jul 2019 09:34:35 -0400
Message-Id: <20190715133811.2441-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715133811.2441-1-sashal@kernel.org>
References: <20190715133811.2441-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_063822_531518_7F357C5F 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>,
 Pradeep kumar Chitrapu <pradeepc@codeaurora.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Zhi Chen <zhichen@codeaurora.org>, Sven Eckelmann <sven@narfation.org>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Pradeep kumar Chitrapu <pradeepc@codeaurora.org>

[ Upstream commit 93ee3d108fc77e19efeac3ec5aa7d5886711bfef ]

Invalid rate code is sent to firmware when multicast rate value of 0 is
sent to driver indicating disabled case, causing broken mesh path.
so fix that.

Tested on QCA9984 with firmware 10.4-3.6.1-00827

Sven tested on IPQ4019 with 10.4-3.5.3-00057 and QCA9888 with 10.4-3.5.3-00053
(ath10k-firmware) and 10.4-3.6-00140 (linux-firmware 2018-12-16-211de167).

Fixes: cd93b83ad92 ("ath10k: support for multicast rate control")
Co-developed-by: Zhi Chen <zhichen@codeaurora.org>
Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
Signed-off-by: Pradeep Kumar Chitrapu <pradeepc@codeaurora.org>
Tested-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/mac.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 9c703d287333..e8997e22ceec 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -5588,8 +5588,8 @@ static void ath10k_bss_info_changed(struct ieee80211_hw *hw,
 	struct cfg80211_chan_def def;
 	u32 vdev_param, pdev_param, slottime, preamble;
 	u16 bitrate, hw_value;
-	u8 rate, basic_rate_idx;
-	int rateidx, ret = 0, hw_rate_code;
+	u8 rate, basic_rate_idx, rateidx;
+	int ret = 0, hw_rate_code, mcast_rate;
 	enum nl80211_band band;
 	const struct ieee80211_supported_band *sband;
 
@@ -5776,7 +5776,11 @@ static void ath10k_bss_info_changed(struct ieee80211_hw *hw,
 	if (changed & BSS_CHANGED_MCAST_RATE &&
 	    !ath10k_mac_vif_chan(arvif->vif, &def)) {
 		band = def.chan->band;
-		rateidx = vif->bss_conf.mcast_rate[band] - 1;
+		mcast_rate = vif->bss_conf.mcast_rate[band];
+		if (mcast_rate > 0)
+			rateidx = mcast_rate - 1;
+		else
+			rateidx = ffs(vif->bss_conf.basic_rates) - 1;
 
 		if (ar->phy_capability & WHAL_WLAN_11A_CAPABILITY)
 			rateidx += ATH10K_MAC_FIRST_OFDM_RATE_IDX;
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
