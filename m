Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542C415E20E
	for <lists+ath10k@lfdr.de>; Fri, 14 Feb 2020 17:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBlvMxgTl65IuUXFxVDtZb4VIKHYxD+SiMfocwipsOI=; b=nkudhiJbdAQYdb
	EVO/4bG1oAani3or33F9gvxVY9mGzHG3LHvqa9/zG+qUrsCinpafq7YCiKD0BDX06GVeE2FNTceYt
	xKBw18YXWselIQAn+N3xK62vTO+Gxm5HrxtGJg67zm+QwSnGlDRnCjN4CqDSVXm7nnsVJ4CFjBmRd
	LGl1TepveAXWl9ZVR1uGtzSxtprYnqKQtaKznj/UzD/B8JdSKRr6/plfnYkXcsrDPxD1K+AWgt2qc
	Bh5UgERWtiWMiDSui4QbW7sM1S7fXBI+93RFo9BJBxqgequxbUOEiQr5/UQFduuNpsdpXVIf8V3Jt
	ZUNq2TgIsrcDLfoiStvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2djC-0005pQ-VS; Fri, 14 Feb 2020 16:22:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dRX-0002EB-45
 for ath10k@lists.infradead.org; Fri, 14 Feb 2020 16:03:53 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE0BA24676;
 Fri, 14 Feb 2020 16:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696230;
 bh=9DNciYPHzmTAb0suRZ1bKJM0a/Lj+lrMt65xfQTFY2M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0DIrGNnaVqmp6oaaOlcwgE8WWkHefoIxZUwhgSe9l80K65M2eGGeF34bKNh6i+nFg
 9FRKFgmbNr7X24hEp+Ow6cQHJUsuvF9RaIzB5xHgZXUuU7ImNKS6uD3Yd9+/n2S3Z2
 kg3j8hgUvSHAW4J8G02os1xJYDiGy3lV29nQCbz8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 092/459] ath10k: Correct the DMA direction for
 management tx buffers
Date: Fri, 14 Feb 2020 10:55:42 -0500
Message-Id: <20200214160149.11681-92-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080351_465491_D6EB9337 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

[ Upstream commit 6ba8b3b6bd772f575f7736c8fd893c6981fcce16 ]

The management packets, send to firmware via WMI, are
mapped using the direction DMA_TO_DEVICE. Currently in
case of wmi cleanup, these buffers are being unmapped
using an incorrect DMA direction. This can cause unwanted
behavior when the host driver is handling a restart
of the wlan firmware.

We might see a trace like below

[<ffffff8008098b18>] __dma_inv_area+0x28/0x58
[<ffffff8001176734>] ath10k_wmi_mgmt_tx_clean_up_pending+0x60/0xb0 [ath10k_core]
[<ffffff80088c7c50>] idr_for_each+0x78/0xe4
[<ffffff80011766a4>] ath10k_wmi_detach+0x4c/0x7c [ath10k_core]
[<ffffff8001163d7c>] ath10k_core_stop+0x58/0x68 [ath10k_core]
[<ffffff800114fb74>] ath10k_halt+0xec/0x13c [ath10k_core]
[<ffffff8001165110>] ath10k_core_restart+0x11c/0x1a8 [ath10k_core]
[<ffffff80080c36bc>] process_one_work+0x16c/0x31c

Fix the incorrect DMA direction during the wmi
management tx buffer cleanup.

Tested HW: WCN3990
Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1

Fixes: dc405152bb6 ("ath10k: handle mgmt tx completion event")
Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/wmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/wmi.c b/drivers/net/wireless/ath/ath10k/wmi.c
index 4f707c6394bba..90f1197a6ad84 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.c
+++ b/drivers/net/wireless/ath/ath10k/wmi.c
@@ -9422,7 +9422,7 @@ static int ath10k_wmi_mgmt_tx_clean_up_pending(int msdu_id, void *ptr,
 
 	msdu = pkt_addr->vaddr;
 	dma_unmap_single(ar->dev, pkt_addr->paddr,
-			 msdu->len, DMA_FROM_DEVICE);
+			 msdu->len, DMA_TO_DEVICE);
 	ieee80211_free_txskb(ar->hw, msdu);
 
 	return 0;
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
