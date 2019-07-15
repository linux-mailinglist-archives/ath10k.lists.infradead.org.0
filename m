Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE7F690FC
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 16:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBKFD0GgitH8a+meEAPFzY1A31qv3s2XwPUAg1YX5HQ=; b=k7Z5N0iXBDTdAF
	qhK8BIjB2RwfIRNhG5EKdQ2G+B9Meuu+h5pWEHE0bIf9idw+B8zjljPloKPqKLyZPhB/1ELuig3te
	sxJ/KgAcJnDB/WUB580gW4p5f7hMHXoZ5qX9+CKA3rGaN3xv0sLfmxmmLzbuY5k+oStHDs/RL+/Sn
	uMrFZTTUrgcukMNXBAAaeQGCcG7GQ5KPATrgbd6Htr2SBkkqt7iZAEjdo8VQ6u48GsXgTOyPmVKf5
	CbzOJf283MtgZzlhEscESqhWLS5PAJvR6tbZk8e+rW7ZDghBoe47igINDbkoYTCYznVTXclZxuBY0
	s+1Bds7JMj992Rkl3xAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1vp-00004s-IC; Mon, 15 Jul 2019 14:26:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1vl-0008MP-Mr
 for ath10k@bombadil.infradead.org; Mon, 15 Jul 2019 14:26:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bwLNvKvtN/XZ3bLFeAWPoVz2vvqfeXp1Pig1az9RouQ=; b=fMTHLmATTT8W4lBVCMye9gfDNj
 PH43uOD1nLms+WloyB6kXVomMEWhkoJEyLsrOUbd2lqk85LYlwiuInTxbXqE1PKtl5k7gtkVQu+U2
 qy9HNayvmhZmUhkyZc+T6k+8CYsLGi5CbZNWbYW88IsWJ0nL5rMJRoT31OzR0tcJpbmBfLDDFLrKI
 bZqrzCB+Gos5Ojr00vQqq704fqoz6fskCPPOVLJGnLEHOmgq3+Ql8Xy2Br1oGkgmR24F+U60dE+G1
 AkdRHqyaF62peCFHLG0/VO2VtNP3wLAig/PpowZ6qE7/VLPsRBP1XoKYcImLR6vwWjFlUmJ0fZ+zx
 v38SStzA==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1u8-00044x-MS
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 14:24:38 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F4882053B;
 Mon, 15 Jul 2019 14:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563200667;
 bh=zLjJz4j/V9u6RrHfWRmvPDzXOxeNJWw2bkDI75p59SM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iaWoVG9ezyckQXply5ldcitZQHVzgmFRPJUtTU4oRXYAqu9HaqXT87BnI93nVM7U3
 mWvI5FgLkYGcLO8J82rOpmCM/yM2pM7Zhc/hPKxjA+Ri79szJOEPjwzvNg+YEHoqO+
 fUVIdVsjOanSXnRIWyz4HrM0Ti+rLCvy+yNcqyPY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 108/158] ath10k: add missing error handling
Date: Mon, 15 Jul 2019 10:17:19 -0400
Message-Id: <20190715141809.8445-108-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715141809.8445-1-sashal@kernel.org>
References: <20190715141809.8445-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_152436_905753_5C2FF2A5 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Brian Norris <briannorris@chromium.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Claire Chang <tientzu@chromium.org>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Claire Chang <tientzu@chromium.org>

[ Upstream commit 4b553f3ca4cbde67399aa3a756c37eb92145b8a1 ]

In function ath10k_sdio_mbox_rx_alloc() [sdio.c],
ath10k_sdio_mbox_alloc_rx_pkt() is called without handling the error cases.
This will make the driver think the allocation for skb is successful and
try to access the skb. If we enable failslab, system will easily crash with
NULL pointer dereferencing.

Call trace of CONFIG_FAILSLAB:
ath10k_sdio_irq_handler+0x570/0xa88 [ath10k_sdio]
process_sdio_pending_irqs+0x4c/0x174
sdio_run_irqs+0x3c/0x64
sdio_irq_work+0x1c/0x28

Fixes: d96db25d2025 ("ath10k: add initial SDIO support")
Signed-off-by: Claire Chang <tientzu@chromium.org>
Reviewed-by: Brian Norris <briannorris@chromium.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 7f61591ce0de..cb527a21f1ac 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -613,6 +613,10 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 						    full_len,
 						    last_in_bundle,
 						    last_in_bundle);
+		if (ret) {
+			ath10k_warn(ar, "alloc_rx_pkt error %d\n", ret);
+			goto err;
+		}
 	}
 
 	ar_sdio->n_rx_pkts = i;
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
