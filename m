Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43E91C4A71
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 01:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sJf+NkKX/eR3hFq6RmCB8bEwvH9oxGivzO/tEioWoe8=; b=VnBtBAtrcP2wQzdk/pHPcULE7
	5aUswRjwuID7+PHNVWZHVxoZqKuFGg8XMMzBRlzRejsFRFtHh7IQFt958iO9E5wEqmkF9/rOXCVXp
	+jp9jwnBBVNd89v6R8dzRboXrKNUeWr4YT9AXKWkv/SKQ+udL2XBZokpR4T3V4IkdBK/v1ij8hqDt
	aJxsXwb/rJY0nD/aJ/1yEp8c2GtwI7r1RVH/GY/dx8l664Irj2jchNfVgVXcN+HaTgqGw4C/8Nx+v
	m5WpTHWYtnVYZkPzqugybjDsyzLWHavWjcLwiLnaeTkIR8wAX9mODreiKoDSutDmhB39WFnBZkblT
	YP9Wg7y0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVkf8-0000p3-Dz; Mon, 04 May 2020 23:38:14 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVkey-0000mJ-Pc
 for ath10k@lists.infradead.org; Mon, 04 May 2020 23:38:12 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588635490; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=lOZ4tyU3hhbnZJSh2lBCxUEl4+xkzrxlUN3eXX+6mN8=;
 b=TTZ6BvxZ3HtiUGBybo1l1ftFiTwKcR86/ZIbEmS9XRSbe0PkbAlk+z4/VFDHTkUxYPI9dmv6
 U2NIW1DvsH2slgSx4E7ohqPJ9lzvInqJqaAk1djMZlSgNj9wnMANxN6WhE4lpeDcKl7cRlhP
 nBkUIl5Ygd3pLXKoS0Y6XSgAffo=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb0a747.7fa7c034d0a0-smtp-out-n03;
 Mon, 04 May 2020 23:37:43 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 27A0BC433CB; Mon,  4 May 2020 23:37:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: rmanohar)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 91D9EC433BA;
 Mon,  4 May 2020 23:37:41 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 04 May 2020 16:37:41 -0700
From: Rajkumar Manoharan <rmanohar@codeaurora.org>
To: Markus Theil <markus.theil@tu-ilmenau.de>
Subject: Re: [PATCH 2/2] ath11k: use cumulative survey statistics
In-Reply-To: <20200504154122.91862-2-markus.theil@tu-ilmenau.de>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <20200504154122.91862-2-markus.theil@tu-ilmenau.de>
Message-ID: <85fa2d5f9183b3a12c5283b800f3750f@codeaurora.org>
X-Sender: rmanohar@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_163810_943591_0076A4B5 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, kvalo@codeaurora.org, ath11k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-05-04 08:41, Markus Theil wrote:
> ath11k currently reports survey results for the last interval between 
> each
> invocation of NL80211_CMD_GET_SURVEY. For concurrent invocations, this
> can lead to unexpectedly small results, e.g. when hostapd uses survey
> data and iw survey dump is invoked in parallel. Fix this by returning
> cumulative results, that don't depend on the last invocation. Other
> drivers, e.g. ath9k or mt76 also use this behavior.
> 
> Signed-off-by: Markus Theil <markus.theil@tu-ilmenau.de>
> ---
>  drivers/net/wireless/ath/ath11k/wmi.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/wireless/ath/ath11k/wmi.c
> b/drivers/net/wireless/ath/ath11k/wmi.c
> index c2a972377687..322ddfda5bfd 100644
> --- a/drivers/net/wireless/ath/ath11k/wmi.c
> +++ b/drivers/net/wireless/ath/ath11k/wmi.c
> @@ -5610,16 +5610,16 @@ ath11k_pdev_bss_chan_info_event(struct
> ath11k_base *ab, struct sk_buff *skb)
> 
>  	survey = &ar->survey[idx];
> 
> -	survey->noise     = bss_ch_info_ev.noise_floor;
> -	survey->time      = div_u64(total, cc_freq_hz);
> -	survey->time_busy = div_u64(busy, cc_freq_hz);
> -	survey->time_rx   = div_u64(rx_bss, cc_freq_hz);
> -	survey->time_tx   = div_u64(tx, cc_freq_hz);
> -	survey->filled   |= (SURVEY_INFO_NOISE_DBM |
> -			     SURVEY_INFO_TIME |
> -			     SURVEY_INFO_TIME_BUSY |
> -			     SURVEY_INFO_TIME_RX |
> -			     SURVEY_INFO_TIME_TX);
> +	survey->noise      = bss_ch_info_ev.noise_floor;
> +	survey->time      += div_u64(total, cc_freq_hz);
> +	survey->time_busy += div_u64(busy, cc_freq_hz);
> +	survey->time_rx   += div_u64(rx_bss, cc_freq_hz);
> +	survey->time_tx   += div_u64(tx, cc_freq_hz);
> +	survey->filled    |= (SURVEY_INFO_NOISE_DBM |
> +			      SURVEY_INFO_TIME |
> +			      SURVEY_INFO_TIME_BUSY |
> +			      SURVEY_INFO_TIME_RX |
> +			      SURVEY_INFO_TIME_TX);

Markus,

It depends on type of survey request is given to firmware. In ath11k, 
firmware reports
accumulated values. So the above addition is wrong and report double 
value. Have you
tested this change?

-Rajkumar

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
