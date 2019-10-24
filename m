Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 132D2E2BDA
	for <lists+ath10k@lfdr.de>; Thu, 24 Oct 2019 10:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2d6q88j8NTo/jjWromPFGMGRKROq9/gA2fyFDLewJTU=; b=pJEzRKcxZQ5jmH
	QHAvjWiHH+GZmJ9ZTxkYdlALRdb0OUlFzgi08PrAZw11qCE+pyMA8SXTsEsqwQBDEMwaZDUnOOrW/
	Kf+GnMmieM96AX3KNAjTVjdCETQ9BNBv71kpuGk/dPu2eEFxi7YJs6eqDsL0cDioWysNqahuZTI0t
	v5Qqc47fKSUQeKZABS8PRqg7Qk5UQjf7Eo/xhftsn26NXp5c5zsVuavdZ6jWYkNpE9oBAnWmUmSmU
	EBenSAoZ6vlodQswxSwU/9TbttKXHBjxvuhVnz0oaS2D6EtaFtFSkKDOZftaZzjg9Bya49OFY6GIP
	kZQ5gJnJW3RScuyNqJ3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNYGd-00083i-Lm; Thu, 24 Oct 2019 08:14:47 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNYGa-00083L-2X
 for ath10k@lists.infradead.org; Thu, 24 Oct 2019 08:14:45 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 785FA60FB8; Thu, 24 Oct 2019 08:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571904883;
 bh=5mC2bcaVDbhxJnEGAHvlCjQq62O7TRVKlkrwqnUNv18=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=KvHNlICxmAl0QOloGWboxxs7bTdjZDfMoe544Lcbm/MRj6mYK3AB+2EYNIapdFNwG
 akTWFO3P7w4i5z9rthzfHde5abREo7TSfyJlI/HRpQpWuIUcJpcnhTTLzwC8YZmeIW
 y1oae5WEogAJQMy0J3v9VeIa3xvZxdo2WMYpgBJ0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (unknown [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D47166081C;
 Thu, 24 Oct 2019 08:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571904882;
 bh=5mC2bcaVDbhxJnEGAHvlCjQq62O7TRVKlkrwqnUNv18=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=D2P8+6uHO7/w0aunlzHk9QkeWcReoADnBdEv7j/b72XafqbGRdiWwNDKAyq7bsaIM
 bxb/fs7NezZsApRWxsq3zszaK5HWvkxk8v9hdPLCeix9EgxWMPf2xf+wzI5Gk8tN4u
 vnA5bw0xpXFQOtQM8nz1SmGEM+4+wjo8RAyhH1HA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D47166081C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v6 3/3] ath10k: add workqueue for RX path of sdio
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-4-git-send-email-wgong@codeaurora.org>
Date: Thu, 24 Oct 2019 11:14:39 +0300
In-Reply-To: <1569402639-31720-4-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Wed, 25 Sep 2019 17:10:39 +0800")
Message-ID: <871rv2tv9s.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_011444_138241_E3025A3C 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> For RX, it has two parts, one is to read data from sdio, another
> is to indicate the packets to upper stack. Recently it has only
> one thread to do all RX things, it results that it is sequential
> for RX and low throughout, change RX to parallel for the two parts
> will increase throughout.
>
> This patch move the indication to a workqueue, it results in
> significant performance improvement on RX path.
>
> Udp rx throughout is 200Mbps without this patch, and it arrives
> 400Mbps with this patch.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWPZ-1
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> --- a/drivers/net/wireless/ath/ath10k/sdio.h
> +++ b/drivers/net/wireless/ath/ath10k/sdio.h
> @@ -98,6 +98,12 @@
>  #define ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_OFF 0xFFFEFFFF
>  #define ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_ON 0x10000
>  
> +struct ath10k_sdio_rx_request {
> +	struct list_head list;
> +	struct sk_buff *skb;
> +	struct ath10k_htc_ep *ep;
> +};

This is not used anymore, I removed it in the pending branch.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
