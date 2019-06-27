Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3446058A2A
	for <lists+ath10k@lfdr.de>; Thu, 27 Jun 2019 20:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/nyIM13UV4NMWU13Eh9ntnPYTYSAhbzvMafpAjiiq6g=; b=ONs
	kQGwSHbPJwISWsf4YzWDe8Trna0eHHbFusNKcCDJ/w2VkR564x9U/+HecXwNeS8/XMunGwEoghdpb
	dfj1S0pmrYxaq6y+K0Nww6uzToKb7RnDK+exqXHnMz5UeTNSB2BgJliVE9oxSXU/y44qlsXqKq91A
	BcoXQZSHGjeZRTZZ3r+G6VtqeXRrlBAikkzXXYE+5UKb1AW02MSIisH0s1TNCzWTeQS0SS7ocA0Yw
	k2L+e8uCi2ODBUpRRH51BlEtZEqYCDEa8u0q6Pfg5UOxrrCY5kAKoN2lhzj4v65zFzG1CQCUKKRm+
	MMp6qw8CcUHJJ6g6KRQ/CbGBRtjAuyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZQo-0007bz-5y; Thu, 27 Jun 2019 18:47:38 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZQl-0007bU-0v
 for ath10k@lists.infradead.org; Thu, 27 Jun 2019 18:47:36 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A5550609CD; Thu, 27 Jun 2019 18:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561661254;
 bh=FldDFuM+zrqioBxxDmOCZWXcYVFE1fZuoBm8rsdP6zw=;
 h=From:To:Cc:Subject:Date:From;
 b=J7AyuGtgE3HuS0xPYl44wyjfuF8vtqbPrrDFn/UFjlEwbWkjgE1u1Cp7+r2WehOuq
 OYI9NTQ1iDwhNy1mAutGMpCtS4adIdlo05zxWJUG+wWGx5xS6nEc6HIpX3TbJ5uhfO
 /9Ny/mt6oSe8OyYnnmhGgKs6gczjRYz5JKQDHgrI=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 923E2602FE;
 Thu, 27 Jun 2019 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561661254;
 bh=FldDFuM+zrqioBxxDmOCZWXcYVFE1fZuoBm8rsdP6zw=;
 h=From:To:Cc:Subject:Date:From;
 b=J7AyuGtgE3HuS0xPYl44wyjfuF8vtqbPrrDFn/UFjlEwbWkjgE1u1Cp7+r2WehOuq
 OYI9NTQ1iDwhNy1mAutGMpCtS4adIdlo05zxWJUG+wWGx5xS6nEc6HIpX3TbJ5uhfO
 /9Ny/mt6oSe8OyYnnmhGgKs6gczjRYz5JKQDHgrI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 923E2602FE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 1/2] ath10k: remove unnecessary 'out of memory' message
Date: Thu, 27 Jun 2019 21:47:29 +0300
Message-Id: <1561661250-30528-1-git-send-email-kvalo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_114735_083604_37879A46 
X-CRM114-Status: UNSURE (   7.85  )
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

Fixes checkpatch warning:

drivers/net/wireless/ath/ath10k/swap.c:110: Possible unnecessary 'out of memory' message

Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/swap.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/swap.c b/drivers/net/wireless/ath/ath10k/swap.c
index 4dddeee684b4..7198a386f2fb 100644
--- a/drivers/net/wireless/ath/ath10k/swap.c
+++ b/drivers/net/wireless/ath/ath10k/swap.c
@@ -106,10 +106,8 @@ ath10k_swap_code_seg_alloc(struct ath10k *ar, size_t swap_bin_len)
 
 	virt_addr = dma_alloc_coherent(ar->dev, swap_bin_len, &paddr,
 				       GFP_KERNEL);
-	if (!virt_addr) {
-		ath10k_err(ar, "failed to allocate dma coherent memory\n");
+	if (!virt_addr)
 		return NULL;
-	}
 
 	seg_info->seg_hw_info.bus_addr[0] = __cpu_to_le32(paddr);
 	seg_info->seg_hw_info.size = __cpu_to_le32(swap_bin_len);
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
