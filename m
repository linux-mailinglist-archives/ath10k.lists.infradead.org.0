Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE6E90B6F
	for <lists+ath10k@lfdr.de>; Sat, 17 Aug 2019 01:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uQ2PnSi0NPl/D/AUd/DWrV/pe5J8spiTNTjyVXZQ90=; b=a8DIlintgGKIXY
	usW06vdnOEBEQ8K6+pA8TWwCyXhY+qbBrEXIRzke4vGACDPEyrBd10M/eY2iVRlNUt/fsiehU19dh
	rySvX+ZrymB7M4D86PTt9fV29bia32yYfCGhEcrzzp/CbEm2Oz44MtGKuGYtfDTZjU4NMjk4jFUsc
	oFbEV3CBLFTBVzC6Mhv/wARMDT+eyWyiimVZpQR5k+Fo6WhG72+U74B8MMz+rbT+7RlNAZr2BNIUn
	0AAjX6DvZruZVelFd8XIeAbClk5zqgN7rY/wX3QVqlvIvDnkO35xblvlC3tNp8QlsERjZBDtIWCm1
	P3By+5HYQeU1qFtm+eYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hylgO-0008Mf-Jl; Fri, 16 Aug 2019 23:30:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hykdk-0005Ms-1Q
 for ath10k@lists.infradead.org; Fri, 16 Aug 2019 22:24:09 +0000
Received: by mail-pf1-x441.google.com with SMTP id w26so3790880pfq.12
 for <ath10k@lists.infradead.org>; Fri, 16 Aug 2019 15:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Z/RL8I+CX00aaoEA3B93OfzM8SWXYflpbq6Zuf69+2Q=;
 b=PCD6NB8TBlV/+xuB6WcPJ6ZvxS8yBi9wwHXyInSFgGxD55G8j3R8gvP+bb7gQEsNel
 UwNGTdYr/oghTCCM65TW7ecBXltVDwyWqZ00zBm7d+o407wI90UM2BCigLgBv0jeZ81O
 lkNJjNOSM64BSGDg9E+zVE5guJUEt9jJZ2g/yKy4nf7mLCjWoD0SQ+ktXySUAosoe4XF
 7R/yLHB0JMOGiJMpzOMQ9YPqLLYK5K7o78nQqxgz1cLOZZLgb/7is+F0K5ME2dGnPUde
 3mN7TuHHVDYc7FP3VXJU1NmS/FejfhOLwpyI+PPnL96RsC4P9x0Fv+xATfQSmMHPr9UB
 mHYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z/RL8I+CX00aaoEA3B93OfzM8SWXYflpbq6Zuf69+2Q=;
 b=TdBIJ0n0nXeey6kCSMFCFOJm90VC/mTXu60O8PkFKshni+h3l6bZX/fZL9hlicQj8w
 /3k+1G8vXnzDzFcCfQ25nuMjZp290JEjSME0aQ4y8SAr+LK0Ny6OWTq79++uIEtP83+W
 O8Idoqocm57Tdey891UMzu9T1lKqzwl87yhI0+gXsCZsIZ7xYJbOT40rxMRAuwbVkl86
 lsCVEb2R+SaLPvVomPBNvN3LnDfkP6jFDyoUr2BJM2+JZmbYMsNYjjrHfF5iSb7pjFF2
 1SFApf0gtlHPgJNOpNHRIFcHJU0Pun65zaJTBBGFlz+226qi80lpXTq8EKg2aTQTEaEQ
 72iA==
X-Gm-Message-State: APjAAAVBhXQuTtuC+tZAyc7LxA4jGXx1Xrj+Am/+Qj31Aq7Rizg6IkD5
 ZLqfdsMTYrVhTWyciLl6bDM=
X-Google-Smtp-Source: APXvYqwfeEddZmSKMzfnbRIkkn5pkJotwXSMMLkGDy7aeLpXD5GJCVFazyjo4DIpIG1cw6MwYNKbuQ==
X-Received: by 2002:a17:90a:e38e:: with SMTP id
 b14mr9226497pjz.125.1565994246561; 
 Fri, 16 Aug 2019 15:24:06 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id v21sm7433880pfe.131.2019.08.16.15.24.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 16 Aug 2019 15:24:06 -0700 (PDT)
Date: Fri, 16 Aug 2019 15:25:07 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
Subject: Re: regression in ath10k dma allocation
Message-ID: <20190816222506.GA24413@Asurada-Nvidia.nvidia.com>
References: <8fe8b415-2d34-0a14-170b-dcb31c162e67@mni.thm.de>
 <20190816164301.GA3629@lst.de>
 <af96ea6a-2b17-9b66-7aba-b7dae5bcbba5@mni.thm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <af96ea6a-2b17-9b66-7aba-b7dae5bcbba5@mni.thm.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_152408_108918_D0D3F1AB 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Tobias

On Fri, Aug 16, 2019 at 10:16:45PM +0200, Tobias Klausmann wrote:
> > do you have CONFIG_DMA_CMA set in your config?  If not please make sure
> > you have this commit in your testing tree, and if the problem still
> > persists it would be a little odd and we'd have to dig deeper:
> > 
> > commit dd3dcede9fa0a0b661ac1f24843f4a1b1317fdb6
> > Author: Nicolin Chen <nicoleotsuka@gmail.com>
> > Date:   Wed May 29 17:54:25 2019 -0700
> > 
> >      dma-contiguous: fix !CONFIG_DMA_CMA version of dma_{alloc, free}_contiguous()

> yes CONFIG_DMA_CMA is set (=y, see attached config), the commit you mention
> above is included, if you have any hints how to go forward, please let me
> know!

For CONFIG_DMA_CMA=y, by judging the log with error code -12, I
feel this one should work for you. Would you please check if it
is included or try it out otherwise?

dma-contiguous: do not overwrite align in dma_alloc_contiguous()
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=c6622a425acd1d2f3a443cd39b490a8777b622d7

Thanks
Nicolin

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
