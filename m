Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2405290602
	for <lists+ath10k@lfdr.de>; Fri, 16 Aug 2019 18:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=91k5maF4VYsLht/rEFl4neNlnPYjL7tx0zZ7o5A2Mns=; b=O9xQ9Mn/zH+AY0
	Zx38ROBE52HNUT8G0aG/FqGH3xhxNdcWraa5dXsbfOVIc0wi/gmDGfQeCWrZF3wa+ffxypaXSO01A
	d9yavHZf1GVUzPHKp+DLsnxqP+JVEPivvkCHVkOQfT/+kojQBnVrtS/p95Y+s/Nyuhknf4xSdZMj2
	Qs9wXIiNRBq3pNUWifKZ3qED4oZ3v/j7WKYEPpMUEBxTqf5MMFdPZRWut6mXJYFjIu2m4jh1xeVOs
	3Rc7uSQiNTVzDXCHqSQqBdhvlLEThhMTWON/B3Or8H71VbTPTdj3nvRSeAZ/TUsbLdeYTSS+xP8Jq
	AD+K0YkRGuky1Vo1O/jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyfJn-0001NF-9X; Fri, 16 Aug 2019 16:43:11 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyfJi-0001MS-4B
 for ath10k@lists.infradead.org; Fri, 16 Aug 2019 16:43:07 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 951D168B05; Fri, 16 Aug 2019 18:43:01 +0200 (CEST)
Date: Fri, 16 Aug 2019 18:43:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
Subject: Re: regression in ath10k dma allocation
Message-ID: <20190816164301.GA3629@lst.de>
References: <8fe8b415-2d34-0a14-170b-dcb31c162e67@mni.thm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8fe8b415-2d34-0a14-170b-dcb31c162e67@mni.thm.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_094306_315879_B2C64921 
X-CRM114-Status: UNSURE (   5.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org, hch@lst.de,
 nicoleotsuka@gmail.com, iommu@lists.linux-foundation.org,
 tobias.klausmann@freenet.de, robin.murphy@arm.com, davem@davemloft.net,
 kvalo@codeaurora.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Tobias,

do you have CONFIG_DMA_CMA set in your config?  If not please make sure
you have this commit in your testing tree, and if the problem still
persists it would be a little odd and we'd have to dig deeper:

commit dd3dcede9fa0a0b661ac1f24843f4a1b1317fdb6
Author: Nicolin Chen <nicoleotsuka@gmail.com>
Date:   Wed May 29 17:54:25 2019 -0700

    dma-contiguous: fix !CONFIG_DMA_CMA version of dma_{alloc, free}_contiguous()


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
