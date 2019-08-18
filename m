Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B3D91443
	for <lists+ath10k@lfdr.de>; Sun, 18 Aug 2019 05:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68N9FvgUlmH4CT3OyiI7YjZOQDCBzktxmrq47Hpp8dc=; b=SEPxfG24L8Y6AQ
	mZ2CDeMqCv86B8FlrhE86pReucrhBYNcQkKW8C8uIdGv6C2iXuuBp1Aa3AoRQ/VuXE6N4R5GWrZzv
	dLDZh+OC9UcQN1f4ZnqXXJlEZHYtaIgb9ce6LVE0wTi9MnYa4a6U/IG3p6/h3V3PBY0reON0WKMKt
	Xc5n30KVnTen6rjLaCFyWL9hhRppofo23Z6rdCp4kP4bV7bZ7tsbBgJJg7OESPGlMSc37UtcMTJu2
	6bDuQ+s6osoptTJPn0hA15cekYpdWIBVNn8j8wG2y5Jxi6W0isJTQwA2tKyqQb9uSxFS6VEbBQhCR
	ID1ttRt3OLNfB2EMAmyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzBdm-0001fi-M3; Sun, 18 Aug 2019 03:13:58 +0000
Received: from mail3-165.sinamail.sina.com.cn ([202.108.3.165])
 by bombadil.infradead.org with smtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzBdd-0001ef-V8
 for ath10k@lists.infradead.org; Sun, 18 Aug 2019 03:13:52 +0000
Received: from unknown (HELO localhost.localdomain)([222.131.78.247])
 by sina.com with ESMTP
 id 5D58C2630003416E; Sun, 18 Aug 2019 11:13:42 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 679581463007
From: Hillf Danton <hdanton@sina.com>
To: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
Subject: Re: regression in ath10k dma allocation
Date: Sun, 18 Aug 2019 11:13:28 +0800
Message-Id: <20190818031328.11848-1-hdanton@sina.com>
In-Reply-To: <20190816222506.GA24413@Asurada-Nvidia.nvidia.com>
References: <8fe8b415-2d34-0a14-170b-dcb31c162e67@mni.thm.de>
 <20190816164301.GA3629@lst.de>
 <af96ea6a-2b17-9b66-7aba-b7dae5bcbba5@mni.thm.de>
 <20190816222506.GA24413@Asurada-Nvidia.nvidia.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_201350_184944_07D2215F 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.108.3.165 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.108.3.165 listed in wl.mailspike.net]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?202.108.3.165>]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hdanton[at]sina.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 tobias.klausmann@freenet.de, robin.murphy@arm.com,
 Christoph Hellwig <hch@lst.de>, kvalo@codeaurora.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


On Sat, 17 Aug 2019 00:42:48 +0200 Tobias Klausmann wrote:
>Hi Nicolin,
>
>On 17.08.19 00:25, Nicolin Chen wrote:
>> Hi Tobias
>>
>> On Fri, Aug 16, 2019 at 10:16:45PM +0200, Tobias Klausmann wrote:
>>>> do you have CONFIG_DMA_CMA set in your config?  If not please make sure
>>>> you have this commit in your testing tree, and if the problem still
>>>> persists it would be a little odd and we'd have to dig deeper:
>>>>
>>>> commit dd3dcede9fa0a0b661ac1f24843f4a1b1317fdb6
>>>> Author: Nicolin Chen <nicoleotsuka@gmail.com>
>>>> Date:   Wed May 29 17:54:25 2019 -0700
>>>>
>>>>       dma-contiguous: fix !CONFIG_DMA_CMA version of dma_{alloc, free}_contiguous()
>>> yes CONFIG_DMA_CMA is set (=y, see attached config), the commit you mention
>>> above is included, if you have any hints how to go forward, please let me
>>> know!
>> For CONFIG_DMA_CMA=y, by judging the log with error code -12, I
>> feel this one should work for you. Would you please check if it
>> is included or try it out otherwise?
>>
>> dma-contiguous: do not overwrite align in dma_alloc_contiguous()
>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=c6622a425acd1d2f3a443cd39b490a8777b622d7
>
>
>Thanks for the hint, yet the commit is included and does not fix the 
>problem!
>
Hi Tobias

Two minor diffs below in hope that they might make sense.

1, fallback unless dma coherent ok.

--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -246,6 +246,10 @@ struct page *dma_alloc_contiguous(struct
 		size_t cma_align = min_t(size_t, align, CONFIG_CMA_ALIGNMENT);
 
 		page = cma_alloc(cma, count, cma_align, gfp & __GFP_NOWARN);
+		if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
+			dma_free_contiguous(dev, page, size);
+			page = NULL;
+		}
 	}
 
 	/* Fallback allocation of normal pages */
--

2, cleanup: cma unless contiguous

--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -234,18 +234,13 @@ struct page *dma_alloc_contiguous(struct
 	size_t count = PAGE_ALIGN(size) >> PAGE_SHIFT;
 	size_t align = get_order(PAGE_ALIGN(size));
 	struct page *page = NULL;
-	struct cma *cma = NULL;
-
-	if (dev && dev->cma_area)
-		cma = dev->cma_area;
-	else if (count > 1)
-		cma = dma_contiguous_default_area;
 
 	/* CMA can be used only in the context which permits sleeping */
-	if (cma && gfpflags_allow_blocking(gfp)) {
+	if (count > 1 && gfpflags_allow_blocking(gfp)) {
 		size_t cma_align = min_t(size_t, align, CONFIG_CMA_ALIGNMENT);
 
-		page = cma_alloc(cma, count, cma_align, gfp & __GFP_NOWARN);
+		page = cma_alloc(dev_get_cma_area(dev), count, cma_align,
+							gfp & __GFP_NOWARN);
 		if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
 			dma_free_contiguous(dev, page, size);
 			page = NULL;
--


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
