Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 625C7919FD
	for <lists+ath10k@lfdr.de>; Mon, 19 Aug 2019 00:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IcIHcv1lH5A/PI4E2U3+HfTxLLyHOoCL8wvzWZI0YCw=; b=uv4LGCAkW1eJ6LbjRk5haQfGo
	WmiyXb+2chSW1lwHE5JJo5KJc2NpPV7C8Ew4y1nVcpVRIqYu/1/ohIsGt4VjSIuvQogW3Ky77aKAp
	kZUw+gZcHtbUUr7z3i6oPCgGV8KZA/tcygca1Wti3a7mmMsHqKUnmuLuk/4bmxMiyjP592wsF+4iU
	Wq3E9ST0HjyOWhnXjw5z38+BKFcWQGCAd3Quk1n6eKlYTOHNRxXtZmlBk6VEnnOTMvbYQEMKQ0HWH
	ameqLZAv5FvlcBZGCCo20wxO+g0KLcr/aT/ueMPqBWThSDdoQ+ho3eFcOxe5WeFEdIoZ6xlZqik+v
	xwF7SyswA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzTpF-0005ob-9f; Sun, 18 Aug 2019 22:39:01 +0000
Received: from mout2.fh-giessen.de ([212.201.18.46])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzTp8-0005nY-Qt
 for ath10k@lists.infradead.org; Sun, 18 Aug 2019 22:38:56 +0000
Received: from mx1.fh-giessen.de ([212.201.18.40])
 by mout2.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1hzTot-00006F-7x; Mon, 19 Aug 2019 00:38:39 +0200
Received: from mailgate-3.its.fh-giessen.de ([212.201.18.34])
 by mx1.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1hzTot-00BKMq-28; Mon, 19 Aug 2019 00:38:39 +0200
Received: from p2e561b42.dip0.t-ipconnect.de ([46.86.27.66]
 helo=[192.168.1.24]) by mailgate-3.its.fh-giessen.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1hzTos-0003g0-O3; Mon, 19 Aug 2019 00:38:38 +0200
Subject: Re: regression in ath10k dma allocation
To: Hillf Danton <hdanton@sina.com>
References: <8fe8b415-2d34-0a14-170b-dcb31c162e67@mni.thm.de>
 <20190816164301.GA3629@lst.de>
 <af96ea6a-2b17-9b66-7aba-b7dae5bcbba5@mni.thm.de>
 <20190816222506.GA24413@Asurada-Nvidia.nvidia.com>
 <20190818031328.11848-1-hdanton@sina.com>
From: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
Message-ID: <acd7a4b0-fde8-1aa2-af07-2b469e5d5ca7@mni.thm.de>
Date: Mon, 19 Aug 2019 00:38:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:70.0) Gecko/20100101
 Thunderbird/70.0a1
MIME-Version: 1.0
In-Reply-To: <20190818031328.11848-1-hdanton@sina.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_153855_025946_221AA0B7 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.201.18.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org, davem@davemloft.net,
 Nicolin Chen <nicoleotsuka@gmail.com>, iommu@lists.linux-foundation.org,
 tobias.klausmann@freenet.de, robin.murphy@arm.com,
 Christoph Hellwig <hch@lst.de>, kvalo@codeaurora.org, m.szyprowski@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


On 18.08.19 05:13, Hillf Danton wrote:
> On Sat, 17 Aug 2019 00:42:48 +0200 Tobias Klausmann wrote:
>> Hi Nicolin,
>>
>> On 17.08.19 00:25, Nicolin Chen wrote:
>>> Hi Tobias
>>>
>>> On Fri, Aug 16, 2019 at 10:16:45PM +0200, Tobias Klausmann wrote:
>>>>> do you have CONFIG_DMA_CMA set in your config?  If not please make sure
>>>>> you have this commit in your testing tree, and if the problem still
>>>>> persists it would be a little odd and we'd have to dig deeper:
>>>>>
>>>>> commit dd3dcede9fa0a0b661ac1f24843f4a1b1317fdb6
>>>>> Author: Nicolin Chen <nicoleotsuka@gmail.com>
>>>>> Date:   Wed May 29 17:54:25 2019 -0700
>>>>>
>>>>>        dma-contiguous: fix !CONFIG_DMA_CMA version of dma_{alloc, free}_contiguous()
>>>> yes CONFIG_DMA_CMA is set (=y, see attached config), the commit you mention
>>>> above is included, if you have any hints how to go forward, please let me
>>>> know!
>>> For CONFIG_DMA_CMA=y, by judging the log with error code -12, I
>>> feel this one should work for you. Would you please check if it
>>> is included or try it out otherwise?
>>>
>>> dma-contiguous: do not overwrite align in dma_alloc_contiguous()
>>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=c6622a425acd1d2f3a443cd39b490a8777b622d7
>>
>> Thanks for the hint, yet the commit is included and does not fix the
>> problem!
>>
Hi Hillf,

i just tested you first hunk (which comes from kernel/dma/direct.c if 
i'm not mistaken), it did not compile on its own, yet with a tiny bit of 
work it did, and it does indeed solve the regression. But if using that 
is the "right" way to do it, not sure, but its not on me to decide.

Anyway: Thanks for the hint,

Tobias


> Hi Tobias
>
> Two minor diffs below in hope that they might make sense.
>
> 1, fallback unless dma coherent ok.
>
> --- a/kernel/dma/contiguous.c
> +++ b/kernel/dma/contiguous.c
> @@ -246,6 +246,10 @@ struct page *dma_alloc_contiguous(struct
>   		size_t cma_align = min_t(size_t, align, CONFIG_CMA_ALIGNMENT);
>   
>   		page = cma_alloc(cma, count, cma_align, gfp & __GFP_NOWARN);
> +		if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
> +			dma_free_contiguous(dev, page, size);
> +			page = NULL;
> +		}
>   	}
>   
>   	/* Fallback allocation of normal pages */
> --
>
> 2, cleanup: cma unless contiguous
>
> --- a/kernel/dma/contiguous.c
> +++ b/kernel/dma/contiguous.c
> @@ -234,18 +234,13 @@ struct page *dma_alloc_contiguous(struct
>   	size_t count = PAGE_ALIGN(size) >> PAGE_SHIFT;
>   	size_t align = get_order(PAGE_ALIGN(size));
>   	struct page *page = NULL;
> -	struct cma *cma = NULL;
> -
> -	if (dev && dev->cma_area)
> -		cma = dev->cma_area;
> -	else if (count > 1)
> -		cma = dma_contiguous_default_area;
>   
>   	/* CMA can be used only in the context which permits sleeping */
> -	if (cma && gfpflags_allow_blocking(gfp)) {
> +	if (count > 1 && gfpflags_allow_blocking(gfp)) {
>   		size_t cma_align = min_t(size_t, align, CONFIG_CMA_ALIGNMENT);
>   
> -		page = cma_alloc(cma, count, cma_align, gfp & __GFP_NOWARN);
> +		page = cma_alloc(dev_get_cma_area(dev), count, cma_align,
> +							gfp & __GFP_NOWARN);
>   		if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
>   			dma_free_contiguous(dev, page, size);
>   			page = NULL;
> --
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
