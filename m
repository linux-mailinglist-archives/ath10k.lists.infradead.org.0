Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B6895422
	for <lists+ath10k@lfdr.de>; Tue, 20 Aug 2019 04:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQqDvUmTk8g417GWRsMwVbv+hwu6bPtMM4AFIGi0Y6M=; b=Ju1LqJjFUiV5Mh
	oJ9BBx1BxhrVVc13Qpn3NL5MnM92h7NQwl/dyqemLAqbJGtPwl0rMbPNGs6FeMp2RiJbo0rR+4YGn
	x+K4dSu7AsYBjNXKoRNHPslr7IPxWbrbL7RtJvSpAMxTGI2YIx+knwatRPWUEbgpRCC9KYEI2PQxl
	COoRVBnyv6KJnp1MsawpYNkAqixG4zIUXasb0LlxKLllHZ6j7tQmPJfewCe/J4i51tTHxLptgGN9Z
	ff/ZY+791CliaGCgbchQuEGP2+djV4KW1X8V9Di1K6rwPNq7jdRmI2qKI8kDJ5qyTQnQM+Y2CpzvR
	upwRcRU3PRo5VoVUK/QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hztfo-0002tQ-WB; Tue, 20 Aug 2019 02:15:01 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hztfk-0002t6-Pn
 for ath10k@lists.infradead.org; Tue, 20 Aug 2019 02:14:58 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B85B468B02; Tue, 20 Aug 2019 04:14:52 +0200 (CEST)
Date: Tue, 20 Aug 2019 04:14:52 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nicolin Chen <nicoleotsuka@gmail.com>
Subject: Re: regression in ath10k dma allocation
Message-ID: <20190820021452.GA22792@lst.de>
References: <8fe8b415-2d34-0a14-170b-dcb31c162e67@mni.thm.de>
 <20190816164301.GA3629@lst.de>
 <af96ea6a-2b17-9b66-7aba-b7dae5bcbba5@mni.thm.de>
 <20190816222506.GA24413@Asurada-Nvidia.nvidia.com>
 <20190818031328.11848-1-hdanton@sina.com>
 <acd7a4b0-fde8-1aa2-af07-2b469e5d5ca7@mni.thm.de>
 <20190820015852.GA15830@Asurada-Nvidia.nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820015852.GA15830@Asurada-Nvidia.nvidia.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_191456_982679_06713FE9 
X-CRM114-Status: GOOD (  11.16  )
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
Cc: Hillf Danton <hdanton@sina.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, davem@davemloft.net,
 iommu@lists.linux-foundation.org, tobias.klausmann@freenet.de,
 Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>, robin.murphy@arm.com,
 Christoph Hellwig <hch@lst.de>, kvalo@codeaurora.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 06:58:52PM -0700, Nicolin Chen wrote:
> Right...the condition was in-between. However, not every caller
> of dma_alloc_contiguous() is supposed to have a coherent check.
> So we either add a 'bool coherent_ok' to the API or revert the
> dma-direct part back to the original. Probably former option is
> better?
> 
> Thank you for the debugging. I have been a bit distracted, may
> not be able to submit a fix very soon. Would you like to help?

Yeah, it turns out that while the idea for the dma_alloc_contiguous
helper was neat it didn't work out at all, and me pushing Nicolin
down that route was not a very smart idea.  Sorry for causing this
mess.

I think we'll just need to open code it for dma-direct for 5.3.
Hillf do you want to cook up a patch or should I do it?

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
