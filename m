Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C633953F0
	for <lists+ath10k@lfdr.de>; Tue, 20 Aug 2019 03:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGLASGtR9naHRkz5hchUHXm3zS6kxXGnFkTkkYlEWoM=; b=lG26VCBeAS+h6u
	yRV/sEh7eWC7dfBMXKsbEXTqs4ldrN5CvrGRXjlLYC+jYVxa7l/o7ykFuheDCpI/Z+eULgIccZnD2
	Hq+7qdyukttDqLZqbRl9CfrrrKjr57kViDjX2LoH5Cm0zcG2Z8CGXjOmjjlbF1hotwqoVWK87RGpU
	pcNxQZUpK+HoNb3OqYjgCc8KCCA7A0Kvd4d5Z+Yl29CI07gXiCdbKTlg0LFQ43NlWjGeTveVQZznG
	zW2Za8JviNlwiTAeT4GWVhfYwtZDHMCoCrGULwREn3zfMQZmZwicsfUSUgYc6JL9NxywYql/h2TA+
	MQFZHHFoyp7hcNdb6usA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hztPI-0006Ce-Em; Tue, 20 Aug 2019 01:57:57 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hztPB-0006Bi-Oj
 for ath10k@lists.infradead.org; Tue, 20 Aug 2019 01:57:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id o13so2234710pgp.12
 for <ath10k@lists.infradead.org>; Mon, 19 Aug 2019 18:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YscGleDJRumM37KpoeP9It3qdBX6Jq+PJ+LVaq76VuA=;
 b=In1BTMe1bBT147mQQjNrQc55xmeCRzFO7XzG8mo+r5v5RRSSDv1QKvKVNiw13FOkon
 BZMNPFfN/ROExiaBIqu/l2PAtOHQtznRfy5JdU1BRvwateXb1FeRt2PXsjSjcc8A4xZw
 a+8IBofDxl+wDBnR/X64woBmsXGSttk552CP/xZQGZenmaiEEdZGs2RP/gCDbKcrbUoG
 uyblaLSP4gY9IljYY5cCxD9aJYplmy80JFvfRH22M3hM3Pfiz6VoiKR9bESntvnCvPkh
 d+xdtOq2Mb9JXX3bXiQb6pyMHTMfcuPjWADn0MDepv391F79HbLYjFkygD4CGTFpC/po
 Bv2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YscGleDJRumM37KpoeP9It3qdBX6Jq+PJ+LVaq76VuA=;
 b=k3scRiZT+Eh6NRCRU27TWfwOz8oB0/XiDw650CgYFXwGyu+IICM15Dd+W/GT5c+0ME
 muhAJY4k12JLmie9fuek2Hhm88bgqW8SCwhqVg0la3pwavXgJJI7wpEMF6BXpBI1k1kL
 JX+81Bb0IYfUu7AP7sFBVXqb7Flxh6I1jtt6OTk87JCIVWkuRI2b3BtWIlUmm7pj8g2G
 mdIhQyIJLEihERRBCFfVcT1ncHssgboMeb490gqL/kXswABKN9A3NaQ5fMbwES0BVpI1
 y3Wx3rXX9XD4v0oTvASO7UG4Nn0zjUk+PwPH309Y+50WaAL0eRwVtmxvCzouLcagB+cS
 Muhg==
X-Gm-Message-State: APjAAAVD0+CKdiBizBsx6RzBjw68jv0IC4Jlkj8wShFA5RejwyfCteIf
 9VNQ6TKsrHK+gVNAh6YNIPI=
X-Google-Smtp-Source: APXvYqxUoHBY0bX7zJql5cH6zII/yXQkZnKNFobWnt5jN1qcIJDKHAdSt98O6ekYNDKLSZUHAIEQjA==
X-Received: by 2002:a17:90a:8b94:: with SMTP id
 z20mr12768773pjn.109.1566266268433; 
 Mon, 19 Aug 2019 18:57:48 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id y194sm18811690pfg.116.2019.08.19.18.57.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 19 Aug 2019 18:57:48 -0700 (PDT)
Date: Mon, 19 Aug 2019 18:58:52 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Hillf Danton <hdanton@sina.com>,
 Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
Subject: Re: regression in ath10k dma allocation
Message-ID: <20190820015852.GA15830@Asurada-Nvidia.nvidia.com>
References: <8fe8b415-2d34-0a14-170b-dcb31c162e67@mni.thm.de>
 <20190816164301.GA3629@lst.de>
 <af96ea6a-2b17-9b66-7aba-b7dae5bcbba5@mni.thm.de>
 <20190816222506.GA24413@Asurada-Nvidia.nvidia.com>
 <20190818031328.11848-1-hdanton@sina.com>
 <acd7a4b0-fde8-1aa2-af07-2b469e5d5ca7@mni.thm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acd7a4b0-fde8-1aa2-af07-2b469e5d5ca7@mni.thm.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_185749_829902_8CE7C6C0 
X-CRM114-Status: GOOD (  25.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org, davem@davemloft.net,
 iommu@lists.linux-foundation.org, tobias.klausmann@freenet.de,
 robin.murphy@arm.com, Christoph Hellwig <hch@lst.de>, kvalo@codeaurora.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hello Hillf,

On Mon, Aug 19, 2019 at 12:38:38AM +0200, Tobias Klausmann wrote:
> 
> On 18.08.19 05:13, Hillf Danton wrote:
> > On Sat, 17 Aug 2019 00:42:48 +0200 Tobias Klausmann wrote:
> > > Hi Nicolin,
> > > 
> > > On 17.08.19 00:25, Nicolin Chen wrote:
> > > > Hi Tobias
> > > > 
> > > > On Fri, Aug 16, 2019 at 10:16:45PM +0200, Tobias Klausmann wrote:
> > > > > > do you have CONFIG_DMA_CMA set in your config?  If not please make sure
> > > > > > you have this commit in your testing tree, and if the problem still
> > > > > > persists it would be a little odd and we'd have to dig deeper:
> > > > > > 
> > > > > > commit dd3dcede9fa0a0b661ac1f24843f4a1b1317fdb6
> > > > > > Author: Nicolin Chen <nicoleotsuka@gmail.com>
> > > > > > Date:   Wed May 29 17:54:25 2019 -0700
> > > > > > 
> > > > > >        dma-contiguous: fix !CONFIG_DMA_CMA version of dma_{alloc, free}_contiguous()
> > > > > yes CONFIG_DMA_CMA is set (=y, see attached config), the commit you mention
> > > > > above is included, if you have any hints how to go forward, please let me
> > > > > know!
> > > > For CONFIG_DMA_CMA=y, by judging the log with error code -12, I
> > > > feel this one should work for you. Would you please check if it
> > > > is included or try it out otherwise?
> > > > 
> > > > dma-contiguous: do not overwrite align in dma_alloc_contiguous()
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=c6622a425acd1d2f3a443cd39b490a8777b622d7
> > > 
> > > Thanks for the hint, yet the commit is included and does not fix the
> > > problem!
> > > 
> Hi Hillf,
> 
> i just tested you first hunk (which comes from kernel/dma/direct.c if i'm
> not mistaken), it did not compile on its own, yet with a tiny bit of work it
> did, and it does indeed solve the regression. But if using that is the
> "right" way to do it, not sure, but its not on me to decide.
> 
> Anyway: Thanks for the hint,
> 
> Tobias
> 
> 
> > Hi Tobias
> > 
> > Two minor diffs below in hope that they might make sense.
> > 
> > 1, fallback unless dma coherent ok.
> > 
> > --- a/kernel/dma/contiguous.c
> > +++ b/kernel/dma/contiguous.c
> > @@ -246,6 +246,10 @@ struct page *dma_alloc_contiguous(struct
> >   		size_t cma_align = min_t(size_t, align, CONFIG_CMA_ALIGNMENT);
> >   		page = cma_alloc(cma, count, cma_align, gfp & __GFP_NOWARN);
> > +		if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
> > +			dma_free_contiguous(dev, page, size);
> > +			page = NULL;
> > +		}

Right...the condition was in-between. However, not every caller
of dma_alloc_contiguous() is supposed to have a coherent check.
So we either add a 'bool coherent_ok' to the API or revert the
dma-direct part back to the original. Probably former option is
better?

Thank you for the debugging. I have been a bit distracted, may
not be able to submit a fix very soon. Would you like to help?

Thanks!
Nicolin

> >   	}
> >   	/* Fallback allocation of normal pages */
> > --
> > 
> > 2, cleanup: cma unless contiguous
> > 
> > --- a/kernel/dma/contiguous.c
> > +++ b/kernel/dma/contiguous.c
> > @@ -234,18 +234,13 @@ struct page *dma_alloc_contiguous(struct
> >   	size_t count = PAGE_ALIGN(size) >> PAGE_SHIFT;
> >   	size_t align = get_order(PAGE_ALIGN(size));
> >   	struct page *page = NULL;
> > -	struct cma *cma = NULL;
> > -
> > -	if (dev && dev->cma_area)
> > -		cma = dev->cma_area;
> > -	else if (count > 1)
> > -		cma = dma_contiguous_default_area;
> >   	/* CMA can be used only in the context which permits sleeping */
> > -	if (cma && gfpflags_allow_blocking(gfp)) {
> > +	if (count > 1 && gfpflags_allow_blocking(gfp)) {
> >   		size_t cma_align = min_t(size_t, align, CONFIG_CMA_ALIGNMENT);
> > -		page = cma_alloc(cma, count, cma_align, gfp & __GFP_NOWARN);
> > +		page = cma_alloc(dev_get_cma_area(dev), count, cma_align,
> > +							gfp & __GFP_NOWARN);
> >   		if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
> >   			dma_free_contiguous(dev, page, size);
> >   			page = NULL;
> > --
> > 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
