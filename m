Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DDB1A3651
	for <lists+ath10k@lfdr.de>; Thu,  9 Apr 2020 16:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fg+JcBU3AacapPFs7bGBwKI+QWwjw8Yu8CzEjdCJZ1Q=; b=lXf2I6E5iCOTt+
	TxUlou3hGhxQGEZpDF53fHGZWoYcNUuqDMoECR03/rF7xYwZX96DUL7lhY6LWkfQmmIiCp1lsL4PE
	HLaZgQnxb7TxNzRZkUzUjQWD8KgQNyD1IXJLvyNorQHwzhg79dfT4aNM5Jr3bYslUOgeq5MQ1DoYZ
	9jzhvAGqYs7TyZqklMa9qnRnf5lhFOVPk/DF6WB8lXAvw5X4r26RCLwfhYGBu2D18GtL2PiRPDqk6
	85JNGopNc4oXqsuHVNwDuJqWg/10l3ZU13mCQiw3De+zg46nZR1WUunlBcxdq7QAUlbX/83i0CPk4
	wyNcHQPeGMEfq5S0AJ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYZC-0005XI-5h; Thu, 09 Apr 2020 14:54:06 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYZ6-0005Vz-73
 for ath10k@lists.infradead.org; Thu, 09 Apr 2020 14:54:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586444042; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=8m8N/spe2Z+u0ec7luPWZFv5RMC+ATlrKjVKAVXWqrA=;
 b=hKb9tbLiGg8NtmVaLniGnK0hufbVzMeqIutsAGdmKd4zpedPbj0Kp9aurH0C580I4hCad6gp
 j+6YH3Fatfd8ebVnYJWQxsryRaQE4868J5TlJcsWw08u6+cjAxbYehqpae5z//3rK4qdZO3i
 bb/99xrwib0l0XPV23mxoQ239Ds=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8f36ed.7fe935b2dc00-smtp-out-n02;
 Thu, 09 Apr 2020 14:53:33 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B8709C433BA; Thu,  9 Apr 2020 14:53:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 26616C433D2;
 Thu,  9 Apr 2020 14:53:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 26616C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v9 3/4] ath10k: add htt TX bundle for sdio
References: <20200212080415.31265-1-wgong@codeaurora.org>
 <20200212080415.31265-4-wgong@codeaurora.org>
Date: Thu, 09 Apr 2020 17:53:29 +0300
In-Reply-To: <20200212080415.31265-4-wgong@codeaurora.org> (Wen Gong's message
 of "Wed, 12 Feb 2020 16:04:14 +0800")
Message-ID: <87tv1su2vq.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_075402_303973_949E3055 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> The transmission utilization ratio for sdio bus for small packet is
> slow, because the space and time cost for sdio bus is same for large
> length packet and small length packet. So the speed of data for large
> length packet is higher than small length.
>
> Test result of different length of data:
>
> data packet(byte)   cost time(us)   calculated rate(Mbps)
>       256               28                73
>       512               33               124
>      1024               35               234
>      1792               45               318
>     14336              168               682
>     28672              333               688
>     57344              660               695
>
> This patch change the TX packet from single packet to a large length
> bundle packet, max size is 32, it results in significant performance
> improvement on TX path.
>
> This patch only effect sdio chip, it will not effect PCI, SNOC etc.
> It only enable bundle for sdio chip.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> --- a/drivers/net/wireless/ath/ath10k/core.c
> +++ b/drivers/net/wireless/ath/ath10k/core.c
> @@ -3208,6 +3208,11 @@ struct ath10k *ath10k_core_create(size_t priv_size, struct device *dev,
>  	if (!ar->workqueue_aux)
>  		goto err_free_wq;
>  
> +	ar->workqueue_tx_complete =
> +		create_singlethread_workqueue("ath10k_tx_complete_wq");
> +	if (!ar->workqueue_tx_complete)
> +		goto err_free_aux_wq;

We already have three threads:

ath/ath10k/core.c:      ar->workqueue = create_singlethread_workqueue("ath10k_wq");
ath/ath10k/core.c:      ar->workqueue_aux = create_singlethread_workqueue("ath10k_aux_wq");
ath/ath10k/sdio.c:      ar_sdio->workqueue = create_singlethread_workqueue("ath10k_sdio_wq");

Do we really need a fourth one? For example, why can't we use
ar->workqueue_aux?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
