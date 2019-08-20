Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BA095466
	for <lists+ath10k@lfdr.de>; Tue, 20 Aug 2019 04:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DtXr8pYeSdDsomO0JfbRrJYqVHhH8kqNwXSZs6H2Ogs=; b=kBdgJWUTe7LTTt
	8MD7pc2FB9rCb+qn5vAbt2FqPMV+ZI9qb94wrj6n+mCjxMZ14R7z7AI5hCEQymMqqNz+pptu49wVU
	hSq/k45mN6YqqTXxgqbc0gur5d6+0vvIIcmTHLNuMQYm96LTxBFo17l9NsJCyv0GvuT0PcAPSBbz/
	MJrw94/YJ2QhU/hrLLSHatthJA5Le5u7NLVA6OVSe9nZqa0UcnsPoxevy4zedMQ8fQIGLWyjPUSDj
	oTdGzJBFJgNxZXeDrbaN7G0sQl4MTxmYHoo8e71GlZxyO96YctHmNQr1wxjkjBQ9HfM2EpmisApQr
	Br0lahKiN0svy98ojFmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hztup-0001kI-Oz; Tue, 20 Aug 2019 02:30:31 +0000
Received: from mail3-166.sinamail.sina.com.cn ([202.108.3.166])
 by bombadil.infradead.org with smtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hztul-0001jd-Ou
 for ath10k@lists.infradead.org; Tue, 20 Aug 2019 02:30:29 +0000
Received: from unknown (HELO localhost.localdomain)([222.131.78.247])
 by sina.com with ESMTP
 id 5D5B5B1900024F9A; Tue, 20 Aug 2019 10:29:48 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 62385857940003
From: Hillf Danton <hdanton@sina.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: regression in ath10k dma allocation
Date: Tue, 20 Aug 2019 10:29:35 +0800
Message-Id: <20190820022935.7016-1-hdanton@sina.com>
MIME-Version: 1.0
Thread-Topic: Re: regression in ath10k dma allocation
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_193027_992724_616E9C4C 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.108.3.166 listed in list.dnswl.org]
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Nicolin Chen <nicoleotsuka@gmail.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "tobias.klausmann@freenet.de" <tobias.klausmann@freenet.de>,
 Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "kvalo@codeaurora.org" <kvalo@codeaurora.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


On Tue, 20 Aug 2019 10:15:01 +0800 Christoph Hellwig wrote:
> On Mon, Aug 19, 2019 at 06:58:52PM -0700, Nicolin Chen wrote:
> > Right...the condition was in-between. However, not every caller
> > of dma_alloc_contiguous() is supposed to have a coherent check.
> > So we either add a 'bool coherent_ok' to the API or revert the
> > dma-direct part back to the original. Probably former option is
> > better?
> >
> > Thank you for the debugging. I have been a bit distracted, may
> > not be able to submit a fix very soon. Would you like to help?
> 
> Yeah, it turns out that while the idea for the dma_alloc_contiguous
> helper was neat it didn't work out at all, and me pushing Nicolin
> down that route was not a very smart idea.  Sorry for causing this
> mess.
> 
> I think we'll just need to open code it for dma-direct for 5.3.
> Hillf do you want to cook up a patch or should I do it?

Feel free to do that, Sir.

Thanks
Hillf


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
