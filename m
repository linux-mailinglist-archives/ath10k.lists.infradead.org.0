Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE85957BD
	for <lists+ath10k@lfdr.de>; Tue, 20 Aug 2019 08:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kbgjx+HjyLRoFT8ymmGkw9qeOaqcxKXAew7iO91tmTs=; b=d+WyTpK/5kcSvp
	rnu4wKDKZdpxc9HorVr+c5Rbeyw3+HZNQ4VyQmtVaXJWsGSMg8xSQD+9IiRMz5Ek/GL+INsuN1SMI
	ERW6wvfnDJ76tuADtzR6br6OMeSor20uwWVRuo3fvr/oxLszbsdsOFgVGsFqQpx4qlkVd5SW1j0Pf
	Oc5U8i8j7iRNjEUPe/iKNIfniWYQPgz01s5scCS7xamYSkRZK/9LFpYwY/lpfDAbDrgDsWF1Bx1u9
	zbNJIGIeTucI9rxzmuUkgeWkHEjp9lZhsZtBnYSSCHv2dpjD/49J55UB2i2U6SbMzMx3iIKKsGAuk
	Q5mr3LDJKMgPud5KrzEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzy6i-0003Lh-5t; Tue, 20 Aug 2019 06:59:04 +0000
Received: from r3-21.sinamail.sina.com.cn ([202.108.3.21])
 by bombadil.infradead.org with smtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzy6b-0003Fp-B8
 for ath10k@lists.infradead.org; Tue, 20 Aug 2019 06:58:59 +0000
Received: from unknown (HELO localhost.localdomain)([222.131.78.247])
 by sina.com with ESMTP
 id 5D5B9A24000101F9; Tue, 20 Aug 2019 14:58:46 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 356483159140
From: Hillf Danton <hdanton@sina.com>
To: Christoph Hellwig <hch@lst.de>,
 Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
Subject: Re: regression in ath10k dma allocation
Date: Tue, 20 Aug 2019 14:58:33 +0800
Message-Id: <20190820065833.1628-1-hdanton@sina.com>
In-Reply-To: <acd7a4b0-fde8-1aa2-af07-2b469e5d5ca7@mni.thm.de>
References: <8fe8b415-2d34-0a14-170b-dcb31c162e67@mni.thm.de>
 <20190816164301.GA3629@lst.de>
 <af96ea6a-2b17-9b66-7aba-b7dae5bcbba5@mni.thm.de>
 <20190816222506.GA24413@Asurada-Nvidia.nvidia.com>
 <20190818031328.11848-1-hdanton@sina.com>
 <acd7a4b0-fde8-1aa2-af07-2b469e5d5ca7@mni.thm.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_235857_564882_AD30D319 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?202.108.3.21>]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hdanton[at]sina.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 Nicolin Chen <nicoleotsuka@gmail.com>, iommu@lists.linux-foundation.org,
 tobias.klausmann@freenet.de, robin.murphy@arm.com, davem@davemloft.net,
 kvalo@codeaurora.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


On Tue, 20 Aug 2019 05:05:14 +0200 Christoph Hellwig wrote:
> 
> Tobias, plase try this patch:
> 
A minute!

> --
> >From 88c590a2ecafc8279388f25bfbe1ead8ea3507a6 Mon Sep 17 00:00:00 2001
> From: Christoph Hellwig <hch@lst.de>
> Date: Tue, 20 Aug 2019 11:45:49 +0900
> Subject: dma-direct: fix zone selection after an unaddressable CMA allocation
> 
> The new dma_alloc_contiguous hides if we allocate CMA or regular
> pages, and thus fails to retry a ZONE_NORMAL allocation if the CMA
> allocation succeeds but isn't addressable.  That means we either fail
> outright or dip into a small zone that might not succeed either.
> 
> Thanks to Hillf Danton for debugging this issue.
> 
> Fixes: b1d2dc009dec ("dma-contiguous: add dma_{alloc,free}_contiguous() helpers")
> Reported-by: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/iommu/dma-iommu.c      | 3 +++
>  include/linux/dma-contiguous.h | 5 +----
>  kernel/dma/contiguous.c        | 9 +++------
>  kernel/dma/direct.c            | 7 ++++++-
>  4 files changed, 13 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index d991d40f797f..f68a62c3c32b 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -965,10 +965,13 @@ static void *iommu_dma_alloc_pages(struct device *dev, size_t size,
>  {
>  	bool coherent = dev_is_dma_coherent(dev);
>  	size_t alloc_size = PAGE_ALIGN(size);
> +	int node = dev_to_node(dev);
>  	struct page *page = NULL;
>  	void *cpu_addr;
>  
>  	page = dma_alloc_contiguous(dev, alloc_size, gfp);
> +	if (!page)
> +		page = alloc_pages_node(node, gfp, get_order(alloc_size));
>  	if (!page)
>  		return NULL;
>  
> diff --git a/include/linux/dma-contiguous.h b/include/linux/dma-contiguous.h
> index c05d4e661489..03f8e98e3bcc 100644
> --- a/include/linux/dma-contiguous.h
> +++ b/include/linux/dma-contiguous.h
> @@ -160,10 +160,7 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
>  static inline struct page *dma_alloc_contiguous(struct device *dev, size_t size,
>  		gfp_t gfp)
>  {
> -	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
> -	size_t align = get_order(PAGE_ALIGN(size));
> -
> -	return alloc_pages_node(node, gfp, align);
> +	return NULL;
>  }
>  
>  static inline void dma_free_contiguous(struct device *dev, struct page *page,
> diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> index 2bd410f934b3..e6b450fdbeb6 100644
> --- a/kernel/dma/contiguous.c
> +++ b/kernel/dma/contiguous.c
> @@ -230,9 +230,7 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
>   */
>  struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
>  {
> -	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
> -	size_t count = PAGE_ALIGN(size) >> PAGE_SHIFT;
> -	size_t align = get_order(PAGE_ALIGN(size));
> +	size_t count = size >> PAGE_SHIFT;
>  	struct page *page = NULL;
>  	struct cma *cma = NULL;
>  
> @@ -243,14 +241,12 @@ struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
>  
>  	/* CMA can be used only in the context which permits sleeping */
>  	if (cma && gfpflags_allow_blocking(gfp)) {
> +		size_t align = get_order(size);
>  		size_t cma_align = min_t(size_t, align, CONFIG_CMA_ALIGNMENT);
>  
>  		page = cma_alloc(cma, count, cma_align, gfp & __GFP_NOWARN);
>  	}
>  
> -	/* Fallback allocation of normal pages */
> -	if (!page)
> -		page = alloc_pages_node(node, gfp, align);
>  	return page;
>  }
>  
> @@ -258,6 +254,7 @@ struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
>   * dma_free_contiguous() - release allocated pages
>   * @dev:   Pointer to device for which the pages were allocated.
>   * @page:  Pointer to the allocated pages.
> +	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
>   * @size:  Size of allocated pages.
>   *
>   * This function releases memory allocated by dma_alloc_contiguous(). As the
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index 795c9b095d75..d82d184463ce 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -85,6 +85,8 @@ static bool dma_coherent_ok(struct device *dev, phys_addr_t phys, size_t size)
>  struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
>  		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
>  {
> +	size_t alloc_size = PAGE_ALIGN(size);
> +	int node = dev_to_node(dev);
>  	struct page *page = NULL;
>  	u64 phys_mask;
>  
> @@ -95,8 +97,11 @@ struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
>  	gfp &= ~__GFP_ZERO;
>  	gfp |= __dma_direct_optimal_gfp_mask(dev, dev->coherent_dma_mask,
>  			&phys_mask);
> +	page = dma_alloc_contiguous(dev, alloc_size, gfp);
> +	if (page && dma_coherent_ok(dev, page_to_phys(page), size))
> +		return page;
	else
		memory leak;
>  again:
> -	page = dma_alloc_contiguous(dev, size, gfp);
> +	page = alloc_pages_node(node, gfp, get_order(alloc_size));
>  	if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
>  		dma_free_contiguous(dev, page, size);
>  		page = NULL;
> -- 
> 2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
