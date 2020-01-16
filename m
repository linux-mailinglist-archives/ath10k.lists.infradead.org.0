Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DE013E4F3
	for <lists+ath10k@lfdr.de>; Thu, 16 Jan 2020 18:11:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGoTjkbF58Puh1Y21mzy8gnQ8nGj/UbWNW5Gjpw3FCc=; b=Ff8xsZYoCetIuS
	sn1SBlo3mtwjyoGjd50Z4RM1AlSynzF6Ed1R4EWqOZJTtfS9qsEeoZyvkRw0gPY4z8/74aPp4nxcV
	Yk21cykXmUGxkTMoiBXwAC4hBMpmtoU1WROz97kvtBRqQzpzEmBppM0BbsS7MVhWIAnCUCvObRHAe
	6JCLonIMGT2bPnKLbYg5buvN6/ArDvuRnh0ytSOR5FtZ8ydbtG79FloUejkdR90+ttVAk7Wet1xEr
	L9NgMZHvmgeCIyrUibUnki2jx4YRp2WG/G6JixA6VGqrdZn7VSqjfEHaQo/Lh50ySsSk82hkUnCy0
	c6xR3DG003AOhXhW8GYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8gU-0005Tv-Mx; Thu, 16 Jan 2020 17:11:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Vf-0000yf-Qw
 for ath10k@lists.infradead.org; Thu, 16 Jan 2020 17:00:48 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1208920730;
 Thu, 16 Jan 2020 17:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194043;
 bh=3cn6uR4r1i3Inhwez/LWbQO5x28qjVfQFjlcdDRYWq4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=atkAS5eoehYQRQQHpygFLgSvaOn3leanfnQnA9ufpm+49ztezcaq8w/sA9axWTzuH
 wGpqfy90AzIHqBU6fOXLS5FQ9VANZawpUwGqXZQ2yG72n9sC27+cAt86C+8xID8NSX
 Z7xvh9QCP+/jgaVTqJLA+d7hq3tiVF+4VZLTkBV0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 159/671] ath10k: fix dma unmap direction for
 management frames
Date: Thu, 16 Jan 2020 11:51:08 -0500
Message-Id: <20200116165940.10720-42-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090043_943886_93837D16 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Rakesh Pillai <pillair@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Rakesh Pillai <pillair@codeaurora.org>

[ Upstream commit 6e8a8991e2103dcb6a9cff28f460390e8e360848 ]

The management frames transmitted are dma mapped with
direction TO_DEVICE, but incorrectly mapped with
direction FROM_DEVICE during tx complete and error cases.

Fix the direction of dma during dma unmap of the
transmitted management frames.

Tested HW: WCN3990
Tested FW: WLAN.HL.2.0-01188-QCAHLSWMTPLZ-1

Fixes: 38a1390e02b7 ("ath10k: dma unmap mgmt tx buffer if wmi cmd send fails")
Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/mac.c | 4 ++--
 drivers/net/wireless/ath/ath10k/wmi.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 448e3a8c33a6..a09d7a07e90a 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -1,7 +1,7 @@
 /*
  * Copyright (c) 2005-2011 Atheros Communications Inc.
  * Copyright (c) 2011-2017 Qualcomm Atheros, Inc.
- * Copyright (c) 2018, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2018-2019, The Linux Foundation. All rights reserved.
  *
  * Permission to use, copy, modify, and/or distribute this software for any
  * purpose with or without fee is hereby granted, provided that the above
@@ -3853,7 +3853,7 @@ void ath10k_mgmt_over_wmi_tx_work(struct work_struct *work)
 				ath10k_warn(ar, "failed to transmit management frame by ref via WMI: %d\n",
 					    ret);
 				dma_unmap_single(ar->dev, paddr, skb->len,
-						 DMA_FROM_DEVICE);
+						 DMA_TO_DEVICE);
 				ieee80211_free_txskb(ar->hw, skb);
 			}
 		} else {
diff --git a/drivers/net/wireless/ath/ath10k/wmi.c b/drivers/net/wireless/ath/ath10k/wmi.c
index aefc92d2c09b..0f6ff7a78e49 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.c
+++ b/drivers/net/wireless/ath/ath10k/wmi.c
@@ -1,7 +1,7 @@
 /*
  * Copyright (c) 2005-2011 Atheros Communications Inc.
  * Copyright (c) 2011-2017 Qualcomm Atheros, Inc.
- * Copyright (c) 2018, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2018-2019, The Linux Foundation. All rights reserved.
  *
  * Permission to use, copy, modify, and/or distribute this software for any
  * purpose with or without fee is hereby granted, provided that the above
@@ -2340,7 +2340,7 @@ static int wmi_process_mgmt_tx_comp(struct ath10k *ar, u32 desc_id,
 
 	msdu = pkt_addr->vaddr;
 	dma_unmap_single(ar->dev, pkt_addr->paddr,
-			 msdu->len, DMA_FROM_DEVICE);
+			 msdu->len, DMA_TO_DEVICE);
 	info = IEEE80211_SKB_CB(msdu);
 
 	if (status)
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
