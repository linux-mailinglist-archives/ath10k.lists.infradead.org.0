Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D1F11961A
	for <lists+ath10k@lfdr.de>; Tue, 10 Dec 2019 22:25:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hVG49R5s1FTgrV59DKb/12xMOoSuFRbLZWx+FHq9CI=; b=t/Orp2E1WvGnf3
	3wGZGd9zdWM2dUCWPe42GJu/VlUfM436gCK1lxTDpmlOSJRTJiLJgwdWxJgG/SVWIyDtkTr4U8EeI
	9ccPxAt0mg2aazmUaw8QhX9WktHzqmIIFx1OThHMxPdzBIn8Coxo3oq4tAEUQeBdJ90HRvelaAWFG
	y+KTIXFua+bX9iVKAURXIVKsg8mXACYkYnIkHgthXy0P2hCTleBQ7pQWTwwU3X6PG6juKaosyAJkg
	Kr0hQFDCMZxZjKztnnvq5WNEXiQBjwH/CS4sNFiF1SUmD/I5e/HtxkVQ20zMFlW7oNK/B5khXq3NA
	ZpF5WM1KTmiyTlXgHWgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ien0h-0007Uy-IA; Tue, 10 Dec 2019 21:25:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ien0Y-0007Rk-T1
 for ath10k@lists.infradead.org; Tue, 10 Dec 2019 21:25:28 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B48A2214D8;
 Tue, 10 Dec 2019 21:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576013126;
 bh=WpJKZ77KkU6LuN525tuDHMcfMpyu27p2kTC9Qz4HNkU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=n6iGR2XoKFij5NbPTRNNSyHOYRMg1wGTXcUaHzLSv9epB6HnTxiL44biZ5pnCdb9n
 8/RodwcGHvTfvyCkZqb7rUwBBcSY5rja6dpvikD9s7nW/Wrgw3vZHNXbINaI2bYQB2
 N0Mm1sEot+jxCKkVUkt6z1kzgTAdK0mnkxrI5X+k=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 012/292] ath10k: add cleanup in ath10k_sta_state()
Date: Tue, 10 Dec 2019 16:20:31 -0500
Message-Id: <20191210212511.11392-12-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210212511.11392-1-sashal@kernel.org>
References: <20191210212511.11392-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_132526_967367_1B8262B0 
X-CRM114-Status: UNSURE (   8.95  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Wenwen Wang <wenwen@cs.uga.edu>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Wenwen Wang <wenwen@cs.uga.edu>

[ Upstream commit 334f5b61a6f29834e881923b98d1e27e5ce9620d ]

If 'sta->tdls' is false, no cleanup is executed, leading to memory/resource
leaks, e.g., 'arsta->tx_stats'. To fix this issue, perform cleanup before
go to the 'exit' label.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/mac.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 0606416dc9712..f99e6d22f6224 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -6548,8 +6548,12 @@ static int ath10k_sta_state(struct ieee80211_hw *hw,
 
 		spin_unlock_bh(&ar->data_lock);
 
-		if (!sta->tdls)
+		if (!sta->tdls) {
+			ath10k_peer_delete(ar, arvif->vdev_id, sta->addr);
+			ath10k_mac_dec_num_stations(arvif, sta);
+			kfree(arsta->tx_stats);
 			goto exit;
+		}
 
 		ret = ath10k_wmi_update_fw_tdls_state(ar, arvif->vdev_id,
 						      WMI_TDLS_ENABLE_ACTIVE);
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
