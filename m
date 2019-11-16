Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C189FEDE5
	for <lists+ath10k@lfdr.de>; Sat, 16 Nov 2019 16:47:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8uQNba485xlc25s5ap0kBunIP1J6gWrZxq9SZMpvYI=; b=aMqeSyI3J55KfH
	SLZUDS3ELuVYKZ+y6APdpbiwANVBm66ZfE9aD2o/uBsrfzdIQK+0ErugCZ2fzfg+0UbpsQZXnuknQ
	2FkyvPRB1FcmP6m+qyjykl6gXQSFC3+eDaKk+u7sBQfbqtYLTqIurAGLQTrpWGFFBLrS9ZGWM59C0
	LfYzQApBh4rrYdodVgQenlF7gbfu0vZNn194DONkRpK0Irkp8Tn8ZmGsPy+YmhzmniogsbsFuKUgm
	lPSVYgSLCAqrfQAtL2VIIALhydpkJFrxi4v06AKxDM5Sg68ABw2QS2Y+SKYeWkZK+uTHNVCgIHtBY
	ikRLR1PYY0H7LIvKs2ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0Ib-0002VP-HQ; Sat, 16 Nov 2019 15:47:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0IX-0002UZ-QP
 for ath10k@lists.infradead.org; Sat, 16 Nov 2019 15:47:43 +0000
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EDA32084F;
 Sat, 16 Nov 2019 15:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573919261;
 bh=6zq1h0zpHyWUa2iY01rCQAMD12ByPs7apA5AM2uYwds=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OFXouQQI4z8DxADvqaAEafdPKQR8m8W2y1Gly5onpU258J5ZqaG181lHxTsM6xFEG
 MpxwoDH6/KCyyvA0whyIzExXWiSQZevqqN47GNI/Id1/Hyq0XUd7i+R53hxG+ibC6O
 TZORnBi6e3AL2niraFOPr5W4RYycSnGIowM1GCU8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 011/150] ath10k: allocate small size dma memory
 in ath10k_pci_diag_write_mem
Date: Sat, 16 Nov 2019 10:45:09 -0500
Message-Id: <20191116154729.9573-11-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_074741_892095_75C855C8 
X-CRM114-Status: GOOD (  12.50  )
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
 Carl Huang <cjhuang@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Brian Norris <briannorris@chomium.org>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Carl Huang <cjhuang@codeaurora.org>

[ Upstream commit 0738b4998c6d1caf9ca2447b946709a7278c70f1 ]

ath10k_pci_diag_write_mem may allocate big size of the dma memory
based on the parameter nbytes. Take firmware diag download as
example, the biggest size is about 500K. In some systems, the
allocation is likely to fail because it can't acquire such a large
contiguous dma memory.

The fix is to allocate a small size dma memory. In the loop,
driver copies the data to the allocated dma memory and writes to
the destination until all the data is written.

Tested with QCA6174 PCI with
firmware-6.bin_WLAN.RM.4.4.1-00119-QCARMSWP-1, this also affects
QCA9377 PCI.

Signed-off-by: Carl Huang <cjhuang@codeaurora.org>
Reviewed-by: Brian Norris <briannorris@chomium.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/pci.c | 23 +++++++++++------------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
index d790ea20b95d9..89fbd03db2987 100644
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -1039,10 +1039,9 @@ int ath10k_pci_diag_write_mem(struct ath10k *ar, u32 address,
 	struct ath10k_ce *ce = ath10k_ce_priv(ar);
 	int ret = 0;
 	u32 *buf;
-	unsigned int completed_nbytes, orig_nbytes, remaining_bytes;
+	unsigned int completed_nbytes, alloc_nbytes, remaining_bytes;
 	struct ath10k_ce_pipe *ce_diag;
 	void *data_buf = NULL;
-	u32 ce_data;	/* Host buffer address in CE space */
 	dma_addr_t ce_data_base = 0;
 	int i;
 
@@ -1056,9 +1055,10 @@ int ath10k_pci_diag_write_mem(struct ath10k *ar, u32 address,
 	 *   1) 4-byte alignment
 	 *   2) Buffer in DMA-able space
 	 */
-	orig_nbytes = nbytes;
+	alloc_nbytes = min_t(unsigned int, nbytes, DIAG_TRANSFER_LIMIT);
+
 	data_buf = (unsigned char *)dma_alloc_coherent(ar->dev,
-						       orig_nbytes,
+						       alloc_nbytes,
 						       &ce_data_base,
 						       GFP_ATOMIC);
 	if (!data_buf) {
@@ -1066,9 +1066,6 @@ int ath10k_pci_diag_write_mem(struct ath10k *ar, u32 address,
 		goto done;
 	}
 
-	/* Copy caller's data to allocated DMA buf */
-	memcpy(data_buf, data, orig_nbytes);
-
 	/*
 	 * The address supplied by the caller is in the
 	 * Target CPU virtual address space.
@@ -1081,12 +1078,14 @@ int ath10k_pci_diag_write_mem(struct ath10k *ar, u32 address,
 	 */
 	address = ath10k_pci_targ_cpu_to_ce_addr(ar, address);
 
-	remaining_bytes = orig_nbytes;
-	ce_data = ce_data_base;
+	remaining_bytes = nbytes;
 	while (remaining_bytes) {
 		/* FIXME: check cast */
 		nbytes = min_t(int, remaining_bytes, DIAG_TRANSFER_LIMIT);
 
+		/* Copy caller's data to allocated DMA buf */
+		memcpy(data_buf, data, nbytes);
+
 		/* Set up to receive directly into Target(!) address */
 		ret = __ath10k_ce_rx_post_buf(ce_diag, &address, address);
 		if (ret != 0)
@@ -1096,7 +1095,7 @@ int ath10k_pci_diag_write_mem(struct ath10k *ar, u32 address,
 		 * Request CE to send caller-supplied data that
 		 * was copied to bounce buffer to Target(!) address.
 		 */
-		ret = ath10k_ce_send_nolock(ce_diag, NULL, (u32)ce_data,
+		ret = ath10k_ce_send_nolock(ce_diag, NULL, ce_data_base,
 					    nbytes, 0, 0);
 		if (ret != 0)
 			goto done;
@@ -1137,12 +1136,12 @@ int ath10k_pci_diag_write_mem(struct ath10k *ar, u32 address,
 
 		remaining_bytes -= nbytes;
 		address += nbytes;
-		ce_data += nbytes;
+		data += nbytes;
 	}
 
 done:
 	if (data_buf) {
-		dma_free_coherent(ar->dev, orig_nbytes, data_buf,
+		dma_free_coherent(ar->dev, alloc_nbytes, data_buf,
 				  ce_data_base);
 	}
 
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
