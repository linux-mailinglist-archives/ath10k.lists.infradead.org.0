Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E0E957F0
	for <lists+ath10k@lfdr.de>; Tue, 20 Aug 2019 09:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TKlrKEzlPjsVf4pEXvSBWUSo9+qLw11G1Dd3buljAus=; b=GQHhehNqD8XIRx
	sbkmK8PyWIX168JH5mI28yFQJH310pYK06NS6QL9n2NZv8Mr1hLGd9ThYMFPFe01j0hXOIzXKyTWC
	mOm6ena9Oo8F1Pgt38uZot7hwEqPc1NZwpoUY2nn32Bd/yJTkmySMTthG83zUDFdff3tc2AonC8gU
	tomK7wDW9tGGRdb9arSpwsncguBrMii7dlHqP3V0ikZ/vZ8sRk8GV2P+IOxkTRCet+CGPNTCOc055
	OPJ2VvVro9etupMy2N0bJ3gEZ1BmOsfTB2xTg+iB72dE6Eawaaeo1Fj9eGMyH0WCp6+yl5Gch4TEs
	WwKOs8AgZ2D2CoCMKP9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyKK-0000bl-7g; Tue, 20 Aug 2019 07:13:08 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyK6-0000V9-P1
 for ath10k@lists.infradead.org; Tue, 20 Aug 2019 07:12:56 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4F09A68B02; Tue, 20 Aug 2019 09:12:50 +0200 (CEST)
Date: Tue, 20 Aug 2019 09:12:50 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hillf Danton <hdanton@sina.com>
Subject: Re: regression in ath10k dma allocation
Message-ID: <20190820071250.GA28968@lst.de>
References: <8fe8b415-2d34-0a14-170b-dcb31c162e67@mni.thm.de>
 <20190816164301.GA3629@lst.de>
 <af96ea6a-2b17-9b66-7aba-b7dae5bcbba5@mni.thm.de>
 <20190816222506.GA24413@Asurada-Nvidia.nvidia.com>
 <20190818031328.11848-1-hdanton@sina.com>
 <acd7a4b0-fde8-1aa2-af07-2b469e5d5ca7@mni.thm.de>
 <20190820065833.1628-1-hdanton@sina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820065833.1628-1-hdanton@sina.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_001255_261407_18617BEF 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org, davem@davemloft.net,
 Nicolin Chen <nicoleotsuka@gmail.com>, iommu@lists.linux-foundation.org,
 tobias.klausmann@freenet.de,
 Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>, robin.murphy@arm.com,
 Christoph Hellwig <hch@lst.de>, kvalo@codeaurora.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 02:58:33PM +0800, Hillf Danton wrote:
> 
> On Tue, 20 Aug 2019 05:05:14 +0200 Christoph Hellwig wrote:
> > 
> > Tobias, plase try this patch:
> > 

New version below:

---
From b8a805e93be5a5662323b8ac61fe686df839c4ac Mon Sep 17 00:00:00 2001
From: Christoph Hellwig <hch@lst.de>
Date: Tue, 20 Aug 2019 11:45:49 +0900
Subject: dma-direct: fix zone selection after an unaddressable CMA allocation

The new dma_alloc_contiguous hides if we allocate CMA or regular
pages, and thus fails to retry a ZONE_NORMAL allocation if the CMA
allocation succeeds but isn't addressable.  That means we either fail
outright or dip into a small zone that might not succeed either.

Thanks to Hillf Danton for debugging this issue.

Fixes: b1d2dc009dec ("dma-contiguous: add dma_{alloc,free}_contiguous() helpers")
Reported-by: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/iommu/dma-iommu.c      |  3 +++
 include/linux/dma-contiguous.h |  5 +----
 kernel/dma/contiguous.c        |  9 +++------
 kernel/dma/direct.c            | 10 +++++++++-
 4 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index d991d40f797f..f68a62c3c32b 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -965,10 +965,13 @@ static void *iommu_dma_alloc_pages(struct device *dev, size_t size,
 {
 	bool coherent = dev_is_dma_coherent(dev);
 	size_t alloc_size = PAGE_ALIGN(size);
+	int node = dev_to_node(dev);
 	struct page *page = NULL;
 	void *cpu_addr;
 
 	page = dma_alloc_contiguous(dev, alloc_size, gfp);
+	if (!page)
+		page = alloc_pages_node(node, gfp, get_order(alloc_size));
 	if (!page)
 		return NULL;
 
diff --git a/include/linux/dma-contiguous.h b/include/linux/dma-contiguous.h
index c05d4e661489..03f8e98e3bcc 100644
--- a/include/linux/dma-contiguous.h
+++ b/include/linux/dma-contiguous.h
@@ -160,10 +160,7 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
 static inline struct page *dma_alloc_contiguous(struct device *dev, size_t size,
 		gfp_t gfp)
 {
-	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
-	size_t align = get_order(PAGE_ALIGN(size));
-
-	return alloc_pages_node(node, gfp, align);
+	return NULL;
 }
 
 static inline void dma_free_contiguous(struct device *dev, struct page *page,
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 2bd410f934b3..e6b450fdbeb6 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -230,9 +230,7 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
  */
 struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
 {
-	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
-	size_t count = PAGE_ALIGN(size) >> PAGE_SHIFT;
-	size_t align = get_order(PAGE_ALIGN(size));
+	size_t count = size >> PAGE_SHIFT;
 	struct page *page = NULL;
 	struct cma *cma = NULL;
 
@@ -243,14 +241,12 @@ struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
 
 	/* CMA can be used only in the context which permits sleeping */
 	if (cma && gfpflags_allow_blocking(gfp)) {
+		size_t align = get_order(size);
 		size_t cma_align = min_t(size_t, align, CONFIG_CMA_ALIGNMENT);
 
 		page = cma_alloc(cma, count, cma_align, gfp & __GFP_NOWARN);
 	}
 
-	/* Fallback allocation of normal pages */
-	if (!page)
-		page = alloc_pages_node(node, gfp, align);
 	return page;
 }
 
@@ -258,6 +254,7 @@ struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
  * dma_free_contiguous() - release allocated pages
  * @dev:   Pointer to device for which the pages were allocated.
  * @page:  Pointer to the allocated pages.
+	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
  * @size:  Size of allocated pages.
  *
  * This function releases memory allocated by dma_alloc_contiguous(). As the
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 795c9b095d75..706113c6bebc 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -85,6 +85,8 @@ static bool dma_coherent_ok(struct device *dev, phys_addr_t phys, size_t size)
 struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
 		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
 {
+	size_t alloc_size = PAGE_ALIGN(size);
+	int node = dev_to_node(dev);
 	struct page *page = NULL;
 	u64 phys_mask;
 
@@ -95,8 +97,14 @@ struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
 	gfp &= ~__GFP_ZERO;
 	gfp |= __dma_direct_optimal_gfp_mask(dev, dev->coherent_dma_mask,
 			&phys_mask);
+	page = dma_alloc_contiguous(dev, alloc_size, gfp);
+	if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
+		dma_free_contiguous(dev, page, alloc_size);
+		page = NULL;
+	}
 again:
-	page = dma_alloc_contiguous(dev, size, gfp);
+	if (!page)
+		page = alloc_pages_node(node, gfp, get_order(alloc_size));
 	if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
 		dma_free_contiguous(dev, page, size);
 		page = NULL;
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
