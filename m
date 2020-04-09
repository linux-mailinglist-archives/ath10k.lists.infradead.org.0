Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3F31A364C
	for <lists+ath10k@lfdr.de>; Thu,  9 Apr 2020 16:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqZIGgfCXhiD8mNaUXTn3jSu48aDOyy1uEgLBUPhnjc=; b=U8W6M5r9/bXRvq
	i/37Dz/77mWWESIEujIZ4fOOKszsjRn6rG7F8uWgEdTFYc6jSJFIQga6t4RnZ86eDvYQFe7CQmur0
	uKcqVQUSAul4mW/whIOT22nmFlSO8rv3Sl+CxXHrTPwRpIGrYtgyvK8i6gbB2cByrgu1tJfgGxcef
	lkWoTgYJRwoOmMKkZ9bEt0NssW6KWT7GxDt02kPgPPWPCIPnfURUIInI9HnIXTkOjpvvBInBdgCu/
	7EPyNoEsFTNkdAQEKL5HvLFLdXEoSJQMm8qizYOWb6JwYVsB7BXljNyXGHGgTyrxpb2LF5yLu3/8V
	Kmn80FdVQpPj/TZl9UzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYY8-0005Na-Ko; Thu, 09 Apr 2020 14:53:00 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYY1-0005N5-Uy
 for ath10k@lists.infradead.org; Thu, 09 Apr 2020 14:52:58 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586443976; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=wt9t0SJuUVpHVO0aAU2JawnAeDl2Ka2OOJEFAGaz/7E=;
 b=P+q8vz1IXGXa8+GLQDH4glcjCvWXnhmk1O54JGFV39c9b4T2akuEb9CPZdgMG7U8vR1a3LgD
 ciYhv6VkMxI5HdvOhHI1sFfsC2GZ1cu4rbjsuqHJ1u8OKtYcazEcnqmc7F3uNQYhFL/0wYJR
 PkowRZXgLiakyK3QWwMxt2Syf8U=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8f36c1.7f6220e6bd88-smtp-out-n01;
 Thu, 09 Apr 2020 14:52:49 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B7D3AC433BA; Thu,  9 Apr 2020 14:52:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 54293C433CB;
 Thu,  9 Apr 2020 14:52:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 54293C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v9 1/4] ath10k: disable TX complete indication of htt for
 sdio
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200212080415.31265-2-wgong@codeaurora.org>
References: <20200212080415.31265-2-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200409145248.B7D3AC433BA@smtp.codeaurora.org>
Date: Thu,  9 Apr 2020 14:52:48 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_075256_746545_9FDAED41 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> For sdio chip, it is high latency bus, all the TX packet's content will
> be tranferred from HOST memory to firmware memory via sdio bus, then it
> need much more memory in firmware than low latency bus chip, for low
> latency chip, such as PCI-E, it only need to transfer the TX descriptor
> via PCI-E bus to firmware memory. For sdio chip, reduce the complexity of
> TX logic will help TX efficiency since its memory is limited, and it will
> reduce the TX circle's time of each packet and then firmware will have more
> memory for TX since TX complete also need memeory.
> 
> This patch disable TX complete indication from firmware for htt data
> packet, it will not have TX complete indication from firmware to ath10k.
> It will cut the cost of bus bandwidth of TX complete and make the TX
> logic of firmware simpler, it results in significant performance
> improvement on TX path.
> 
> Udp TX throughout is 130Mbps without this patch, and it arrives
> 400Mbps with this patch.
> 
> The downside of this patch is the command "iw wlan0 station dump" will
> show 0 for "tx retries" and "tx failed" since all tx packet's status
> is success.
> 
> This patch only effect sdio chip, it will not effect PCI, SNOC etc.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWPZ-1
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

2 patches applied to ath-next branch of ath.git, thanks.

d81686d33356 ath10k: disable TX complete indication of htt for sdio
c61a74837043 ath10k: change ATH10K_SDIO_BUS_REQUEST_MAX_NUM from 64 to 1024

-- 
https://patchwork.kernel.org/patch/11377827/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
