Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC374E2C2A
	for <lists+ath10k@lfdr.de>; Thu, 24 Oct 2019 10:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ku7Hfg8a+ZWqJ3zSlIdKJbpRPAgVtnS5S3WpEoAt7hM=; b=d+Zx/QQefllF4V
	xaBPx/6ynkem69qBtxJ1KePViD67Wmi44q3NVOiIyCUktl37nvomj8x0VpQxWZF95Qa/0dHrmINRC
	9K9M2CC6QIPRcPH/UD6hbq6R6FEiLEWLeq1nToZ3KfLEZ0yDDARrZIeg4u5GLzBDvdwxGpTnQmTBt
	nIoa0F/iMrvQ92IPKoigLXdLi9oyL4rZCMWVBeymoGNeRHqPWdgKnzrRbHXTPaxM0sZhUu1mNMXzn
	+k4UzyU8pvZpI/SoZx2GjGfzJ60TvxXj4gnlaGKYoEnEZz8AgRZWmpTTslzFBeN34vjjV/qLey0Ob
	hQFRaPjE25xfXwxpVHrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNYUe-0006cV-8D; Thu, 24 Oct 2019 08:29:16 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNYUa-0006c8-6I
 for ath10k@lists.infradead.org; Thu, 24 Oct 2019 08:29:13 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3917260FA8; Thu, 24 Oct 2019 08:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571905751;
 bh=nSCA5+OR5K46lqvfoqS2k/eQ02BuOgI9IqOuCIqU72k=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=NIz0EWBf0LaQOi530rPUowFuq2NuJUXIDYa+2RkfOdqaIOpHgqwjCsmyFxNVXSiSx
 E/rfmxyv7m2CLA0eXU3vNvW7G6p5x5lPNEbKkAzEq+DslwdyLzQlEapsYjuZ5yfIB9
 14UDBDnJdThu4iJDFKs+y1Irn/6zYq0GwSLMu52U=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5175260B16;
 Thu, 24 Oct 2019 08:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571905750;
 bh=nSCA5+OR5K46lqvfoqS2k/eQ02BuOgI9IqOuCIqU72k=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=DswJ17HlcX2AQLy7Cay2azkZW/oqrGm1QKP9tSSl28xXKA4uhL+gAbFpctbb9RA7a
 5WbZUh2dIh+vgZU59U6IazyNn1yA9/BluL+hcXZBdRm3zrBUctJbBP8CgRZnJBFzRT
 eRuLcRU1kQwZM+056Ee1Ud7bohU+DPbgfM3M5hIo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5175260B16
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v6 1/3] ath10k: enable RX bundle receive for sdio
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-2-git-send-email-wgong@codeaurora.org>
Date: Thu, 24 Oct 2019 11:29:06 +0300
In-Reply-To: <1569402639-31720-2-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Wed, 25 Sep 2019 17:10:37 +0800")
Message-ID: <87v9sesg19.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_012912_275358_C3B9C2D7 
X-CRM114-Status: GOOD (  12.95  )
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

> From: Alagu Sankar <alagusankar@silex-india.com>
>
> The existing implementation of initiating multiple sdio transfers for
> receive bundling is slowing down the receive speed. Combining the
> transfers using a bundle method would be ideal.
>
> The transmission utilization ratio for sdio bus for small packet is
> slow, because the space and time cost for sdio bus is same for large
> length packet and small length packet. So the speed of data for large
> length packet is higher than small length.
>
> Test result of different length of data:
> data packet(byte)   cost time(us)   calculated rate(Mbps)
>       256               28                73
>       512               33               124
>      1024               35               234
>      1792               45               318
>     14336              168               682
>     28672              333               688
>     57344              660               695
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWPZ-1
>
> Signed-off-by: Alagu Sankar <alagusankar@silex-india.com>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> +static int ath10k_sdio_mbox_rx_fetch_bundle(struct ath10k *ar)
>  {
>  	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
> +	struct ath10k_sdio_rx_data *pkt;
> +	struct ath10k_htc_hdr *htc_hdr;
>  	int ret, i;
> +	u32 pkt_offset, virt_pkt_len;
>  
> +	virt_pkt_len = 0;
> +	for (i = 0; i < ar_sdio->n_rx_pkts; i++)
> +		virt_pkt_len += ar_sdio->rx_pkts[i].alloc_len;
> +
> +	if (virt_pkt_len > ATH10K_SDIO_VSG_BUF_SIZE) {
> +		ath10k_err(ar, "size exceeding limit %d\n", virt_pkt_len);
> +		ret = -E2BIG;
> +		goto err;
> +	}

This should use ath10k_warn(), fixed in the pending branch. I also
improved the log message.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
