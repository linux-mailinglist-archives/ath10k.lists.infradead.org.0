Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A882B58A2B
	for <lists+ath10k@lfdr.de>; Thu, 27 Jun 2019 20:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XHKJmTY5WKP0EkdLNJ2gmvCu3Bq7OeLdZoNqPTxr+5o=; b=bOhQeXG5rc6dhOZlyYz4hfGfP0
	5Q9IfmYPPEQNid1w8dWuRgZh0NoL8X5eOFnIhAgrblBYQ4Y9v+rDPqdbB0Fe1/27bzRCOQgD56PjD
	ziTy+TPP+yPtdvn/N2kJVT6XUyw2HyyG9hqg0qElIYw7G4sYGSyf9xtjDhURdofMhy/8gq/x0H+/K
	xbBZysO5DyqHfTbHlQvH9gJY97a/nvTS6YqnYg+2D64gf1jc11r/ynI5A6fF4JLQ8KAQwuGrS0EDN
	IZ8Bnp1rmuPdUfDSU5RUaKy8oUFztqv6zStX8eqYNV5Djyg3XSPWUIwvAYsSjHKGGdDzrLcMtYJ24
	Myd6ph9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZQt-0007ed-UL; Thu, 27 Jun 2019 18:47:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZQm-0007bh-BW
 for ath10k@lists.infradead.org; Thu, 27 Jun 2019 18:47:37 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 19B31602FE; Thu, 27 Jun 2019 18:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561661256;
 bh=Kq6FBv6Nm4vL0IwYrFuMpMy2BKfnvvnrBzXSCzlQ3jI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VOMRTkbqy4j+2p6cCJXPP5n2U0W/ehkS3+hhf5wXe7SFM8IhfxT98PX0pxAxSXt72
 0ZarRr0jlemRYLwiXEYU6ADM3kddWgM5GLXuYqz3fT0Cg7FdTIZXZLYPHeWog/5Lww
 FqjKVfgBDDKUmx/LYCrOniWJPLH4v25yUdhMcuDE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D6F1E602FE;
 Thu, 27 Jun 2019 18:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561661255;
 bh=Kq6FBv6Nm4vL0IwYrFuMpMy2BKfnvvnrBzXSCzlQ3jI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=n586mFQZlK6Xba1dijJzicVIGEe/NIHdRAejPNLB8+yh7DSp8A086YR0SQUQC3rZR
 ec4hktnD8gDax+Ve6K4Dlh6xVJ5Z6TOCJNpbFmhadEUNmfx5isA84cvPhu/dUGWmjj
 lkk2zHYwypVF0DC82XAWM2qx5o8ycDLainYkIIns=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D6F1E602FE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 2/2] ath10k: pci: remove unnecessary casts
Date: Thu, 27 Jun 2019 21:47:30 +0300
Message-Id: <1561661250-30528-2-git-send-email-kvalo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661250-30528-1-git-send-email-kvalo@codeaurora.org>
References: <1561661250-30528-1-git-send-email-kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_114736_430128_23621492 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Fixes checkpatch warnings:

drivers/net/wireless/ath/ath10k/pci.c:926: unnecessary cast may hide bugs, see http://c-faq.com/malloc/ma
drivers/net/wireless/ath/ath10k/pci.c:1072: unnecessary cast may hide bugs, see http://c-faq.com/malloc/m

While at it, also remove unnecessary initialisation of data_buf variable in both cases.

Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/pci.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
index 80bcb2ef5926..a0b4d265c6eb 100644
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -909,7 +909,7 @@ static int ath10k_pci_diag_read_mem(struct ath10k *ar, u32 address, void *data,
 	/* Host buffer address in CE space */
 	u32 ce_data;
 	dma_addr_t ce_data_base = 0;
-	void *data_buf = NULL;
+	void *data_buf;
 	int i;
 
 	mutex_lock(&ar_pci->ce_diag_mutex);
@@ -923,10 +923,8 @@ static int ath10k_pci_diag_read_mem(struct ath10k *ar, u32 address, void *data,
 	 */
 	alloc_nbytes = min_t(unsigned int, nbytes, DIAG_TRANSFER_LIMIT);
 
-	data_buf = (unsigned char *)dma_alloc_coherent(ar->dev, alloc_nbytes,
-						       &ce_data_base,
-						       GFP_ATOMIC);
-
+	data_buf = dma_alloc_coherent(ar->dev, alloc_nbytes, &ce_data_base,
+				      GFP_ATOMIC);
 	if (!data_buf) {
 		ret = -ENOMEM;
 		goto done;
@@ -1054,7 +1052,7 @@ int ath10k_pci_diag_write_mem(struct ath10k *ar, u32 address,
 	u32 *buf;
 	unsigned int completed_nbytes, alloc_nbytes, remaining_bytes;
 	struct ath10k_ce_pipe *ce_diag;
-	void *data_buf = NULL;
+	void *data_buf;
 	dma_addr_t ce_data_base = 0;
 	int i;
 
@@ -1069,10 +1067,8 @@ int ath10k_pci_diag_write_mem(struct ath10k *ar, u32 address,
 	 */
 	alloc_nbytes = min_t(unsigned int, nbytes, DIAG_TRANSFER_LIMIT);
 
-	data_buf = (unsigned char *)dma_alloc_coherent(ar->dev,
-						       alloc_nbytes,
-						       &ce_data_base,
-						       GFP_ATOMIC);
+	data_buf = dma_alloc_coherent(ar->dev, alloc_nbytes, &ce_data_base,
+				      GFP_ATOMIC);
 	if (!data_buf) {
 		ret = -ENOMEM;
 		goto done;
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
