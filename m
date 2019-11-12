Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EBDF9854
	for <lists+ath10k@lfdr.de>; Tue, 12 Nov 2019 19:14:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PMEF3Ks6Dq5dfzGvWFF6JRrmlqb9tEpy2GmFgHnIXnI=; b=EFpOeruA7tYLVB0OGOqI6ZEGt
	9Myql5jJksKnb8j9WfeaxbTpkU/DJMor8lCV03ZUwjZVKKEmRRIteu9UxPkgCSEoEiG3+06yUKei1
	S2qaoSgPNtj1UpFOJp0RPF8St2ohilHRQkVd8sQkoVtE2AOVxWbcJ7YLgJgcpWA3yF7RZrgcnshFR
	ZKMaXYsKlI/F3kfKi5J60axaJvBd0/u0xieWvI9VEZYJGgd8AV0A6WNo66Eff4vzo7MxJDLZYwGL2
	5ZUjofVLYW36qougOj8NUTvF6lBsxcp/dkRfWHAQgqAhUiR9gxoPW6zC+YaEyK1DQwQK/bEiCZZzc
	lOqxqk4sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUagd-0007tv-RX; Tue, 12 Nov 2019 18:14:43 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUagY-0007t5-BJ
 for ath10k@lists.infradead.org; Tue, 12 Nov 2019 18:14:41 +0000
Received: by mail-pf1-x443.google.com with SMTP id 193so13885311pfc.13
 for <ath10k@lists.infradead.org>; Tue, 12 Nov 2019 10:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eero.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=CDVh9KmZPeXWfFbHu3hiOOuFGhqbuWMc9hlCyeNXCRI=;
 b=ufWOLfZwBgUe1/vDKpoBg3JpMwnSE4lPtYSaDnWKBXawOrVNSGUhJx5FROHinHV6JR
 RoVNjtkfDa+eniECxvRVuuS/tDNYDtaVkLneKgzFFz9fUZXJcwsPJU9SinFrBiHP+gf3
 j7ffG3dlVbKaJ7OqLUac5ViE2DddFUdFpwmFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=CDVh9KmZPeXWfFbHu3hiOOuFGhqbuWMc9hlCyeNXCRI=;
 b=FZp3ARAmx3uTovUJQZL+oV7kWyYIziV8fH5i9+hmvp7cGtILxqfpWzxoYiWpHqB5S2
 9J1D5tV4ioPQtUtoQ/HCajsJxxV6VKZJieDAceUSh4M8ygpBXHsEpoWlcBffSsEfsQ/F
 yybtjLSKEZ9rlCBUJBjBpZ4ALZpU9zkSm3YOj5sWDlBDKdCDcVYq6bJ6mp2MgvcnfVUF
 vC+QD/t0HRbpo/dhzDdZFbPo9r5oYHEdeFJzGR8rUKhwExXjCFEZ7L8mbACRXntQsric
 4U0zSjZOCwx+7nC5iMVQ5xk0uzKZTXAWnRanVSKcQ4oPA1ijEAikUePcbedpLF3WigZ5
 uQSw==
X-Gm-Message-State: APjAAAW+T4VQfeL+k7vU06gl3IG2NUGyZmUKobxp8mgEhieVvSnUBDFV
 TgyBxaPoD0roppPzOm5Tx6wH6Q==
X-Google-Smtp-Source: APXvYqyX8/JpbsxXQZtsbS9l6qINuj546ceSuShmwfxShp+BhQscpMPzSET4Tq7rVV9ddNMFRfnjnQ==
X-Received: by 2002:a62:b504:: with SMTP id y4mr4639013pfe.251.1573582477537; 
 Tue, 12 Nov 2019 10:14:37 -0800 (PST)
Received: from [10.0.2.15] (eero.static.monkeybrains.net. [199.116.72.162])
 by smtp.gmail.com with ESMTPSA id y12sm4763593pjy.0.2019.11.12.10.14.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 10:14:36 -0800 (PST)
Subject: Re: [PATCH 2/2] ath10k: correct legacy rate in tx stats
To: Yu Wang <yyuwang@codeaurora.org>, ath10k@lists.infradead.org
References: <1573559148-4844-1-git-send-email-yyuwang@codeaurora.org>
 <1573559148-4844-3-git-send-email-yyuwang@codeaurora.org>
From: Peter Oh <peter.oh@eero.com>
Message-ID: <8c633afa-085d-9cf1-549e-afcfee89c96a@eero.com>
Date: Tue, 12 Nov 2019 10:14:34 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1573559148-4844-3-git-send-email-yyuwang@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_101438_449115_26FA234E 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


On 11/12/19 3:45 AM, Yu Wang wrote:
> When working in station mode, after connected to a legacy
> AP, 11g only, for example, the tx bitrate is incorrect in
> output of command 'iw wlan0 link'.
>
> That's because the legacy tx bitrate value reported by
> firmware is not well handled:
> For QCA6174, the value represents rate index, but treated
> as a real rate;
> For QCA9888, the value is real rate, with unit 'Mbps', but
> treated as '100kbps'.
>
> To fix this issue:
> 1. Translate the rate index to real rate for QCA6174;
> 2. Translate the rate from 'Mbps' to 'kbps' for QCA9888.
>
> Tested with:
> QCA6174 PCIe with firmware WLAN.RM.4.4.1.c3-00031.
> QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
> QCA9888 PCIe with firmware 10.4-3.9.0.2-00040.
>
> Signed-off-by: Yu Wang <yyuwang@codeaurora.org>
> ---
>
> diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
> @@ -3454,10 +3440,12 @@ ath10k_update_per_peer_tx_stats(struct ath10k *ar,
>   {
>   	struct ath10k_sta *arsta = (struct ath10k_sta *)sta->drv_priv;
>   	struct ieee80211_chanctx_conf *conf = NULL;
> -	u8 rate = 0, sgi;
> -	s8 rate_idx = 0;
> +	u8 sgi;
> +	s8 rate_idx = -1;
>   	bool skip_auto_rate;
>   	struct rate_info txrate;
> +	enum nl80211_band band;
> +	struct ieee80211_supported_band *sband;
>   
>   	lockdep_assert_held(&ar->data_lock);
>   
> @@ -3475,7 +3463,7 @@ ath10k_update_per_peer_tx_stats(struct ath10k *ar,
>   		return;
>   
>   	if (txrate.flags == WMI_RATE_PREAMBLE_VHT && txrate.mcs > 9) {
> -		ath10k_warn(ar, "Invalid VHT mcs %hhd peer stats",  txrate.mcs);
> +		ath10k_warn(ar, "Invalid VHT mcs %hhd peer stats", txrate.mcs);
>   		return;
>   	}
>   
> @@ -3490,14 +3478,19 @@ ath10k_update_per_peer_tx_stats(struct ath10k *ar,
>   	memset(&arsta->tx_info.status, 0, sizeof(arsta->tx_info.status));
>   	if (txrate.flags == WMI_RATE_PREAMBLE_CCK ||
>   	    txrate.flags == WMI_RATE_PREAMBLE_OFDM) {
> -		rate = ATH10K_HW_LEGACY_RATE(peer_stats->ratecode);
> -		/* This is hacky, FW sends CCK rate 5.5Mbps as 6 */
> -		if (rate == 6 && txrate.flags == WMI_RATE_PREAMBLE_CCK)
> -			rate = 5;
> -		rate_idx = ath10k_get_legacy_rate_idx(ar, rate);
> -		if (rate_idx < 0)
> +		if (!arsta->arvif || !arsta->arvif->vif)
> +			return;
> +
> +		conf = rcu_dereference(arsta->arvif->vif->chanctx_conf);
> +		if (!conf)
> +			return;
> +
> +		band = conf->def.chan->band;
> +		sband = &ar->mac.sbands[band];
> +		if (ath10k_wmi_get_legacy_rate(ar, sband, peer_stats->ratecode,
> +					       &arsta->txrate.legacy,
> +					       &rate_idx))

Using wmi ops to parse rate info breaks ath10k driver architecture, 
since the rate info comes from htt layer and nothing related to wmi.


Thanks,

Peter


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
