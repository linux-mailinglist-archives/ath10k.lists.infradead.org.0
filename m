Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2E590B26
	for <lists+ath10k@lfdr.de>; Sat, 17 Aug 2019 00:43:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d6/UqY9qktQ9OFj3N5fqOrSFnOewimDKTcGZctno7QQ=; b=hwxlMkYP0ax4/55/98Bm6l82p
	uhVoKxnonAKJFLKOvFhmDA7bHqQKSStJdjBrUXQIYctmeAScLVEGFPY+19wFC3510d/Utu8TE9z0D
	ff+KYZQI6es4bnSuJQnlKbkuu577oJY8bsMO8q6E3t2gk7TEmApn4Xrbnqq6mWc/bd/Ug+ASJnH4U
	enz91a1+cyY9MJbAZoFsGSFr6QIx0CXAL/SZeR5vjltJ33TrAj/eQOS7NHsInjnWF624OZ8FBiIno
	4MMbiPx8wHOOhp6YQa3lr1n34rmt5NetRMlCFuB9oibqRzLaOQXp5ftF/IWpDPiXOsLUA4qAyeHGM
	J1MTWtLAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hykw2-0002zn-9P; Fri, 16 Aug 2019 22:43:02 +0000
Received: from mout2.fh-giessen.de ([212.201.18.46])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hykvy-0002yp-R1
 for ath10k@lists.infradead.org; Fri, 16 Aug 2019 22:43:00 +0000
Received: from mx1.fh-giessen.de ([212.201.18.40])
 by mout2.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1hykvq-0007N2-AQ; Sat, 17 Aug 2019 00:42:50 +0200
Received: from mailgate-2.its.fh-giessen.de ([212.201.18.14])
 by mx1.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1hykvq-008QGk-5h; Sat, 17 Aug 2019 00:42:50 +0200
Received: from p2e561b42.dip0.t-ipconnect.de ([46.86.27.66]
 helo=[192.168.1.24]) by mailgate-2.its.fh-giessen.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1hykvp-000Exn-SB; Sat, 17 Aug 2019 00:42:49 +0200
Subject: Re: regression in ath10k dma allocation
To: Nicolin Chen <nicoleotsuka@gmail.com>
References: <8fe8b415-2d34-0a14-170b-dcb31c162e67@mni.thm.de>
 <20190816164301.GA3629@lst.de>
 <af96ea6a-2b17-9b66-7aba-b7dae5bcbba5@mni.thm.de>
 <20190816222506.GA24413@Asurada-Nvidia.nvidia.com>
From: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
Message-ID: <3f7475e3-e27b-aca7-c21e-71cac6cafc1c@mni.thm.de>
Date: Sat, 17 Aug 2019 00:42:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:70.0) Gecko/20100101
 Thunderbird/70.0a1
MIME-Version: 1.0
In-Reply-To: <20190816222506.GA24413@Asurada-Nvidia.nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_154259_027932_9ED79B93 
X-CRM114-Status: GOOD (  12.26  )
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
 iommu@lists.linux-foundation.org, tobias.klausmann@freenet.de,
 robin.murphy@arm.com, Christoph Hellwig <hch@lst.de>, kvalo@codeaurora.org,
 m.szyprowski@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Nicolin,

On 17.08.19 00:25, Nicolin Chen wrote:
> Hi Tobias
>
> On Fri, Aug 16, 2019 at 10:16:45PM +0200, Tobias Klausmann wrote:
>>> do you have CONFIG_DMA_CMA set in your config?  If not please make sure
>>> you have this commit in your testing tree, and if the problem still
>>> persists it would be a little odd and we'd have to dig deeper:
>>>
>>> commit dd3dcede9fa0a0b661ac1f24843f4a1b1317fdb6
>>> Author: Nicolin Chen <nicoleotsuka@gmail.com>
>>> Date:   Wed May 29 17:54:25 2019 -0700
>>>
>>>       dma-contiguous: fix !CONFIG_DMA_CMA version of dma_{alloc, free}_contiguous()
>> yes CONFIG_DMA_CMA is set (=y, see attached config), the commit you mention
>> above is included, if you have any hints how to go forward, please let me
>> know!
> For CONFIG_DMA_CMA=y, by judging the log with error code -12, I
> feel this one should work for you. Would you please check if it
> is included or try it out otherwise?
>
> dma-contiguous: do not overwrite align in dma_alloc_contiguous()
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=c6622a425acd1d2f3a443cd39b490a8777b622d7


Thanks for the hint, yet the commit is included and does not fix the 
problem!

Greetings,

Tobias


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
