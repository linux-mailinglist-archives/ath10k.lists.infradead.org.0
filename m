Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD7CFB8CD
	for <lists+ath10k@lfdr.de>; Wed, 13 Nov 2019 20:28:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0y5o76xS8qCO3hU8gHOsoUu8+xTJcd1+2RCLWhGKx5I=; b=p4Pr3ByCTV5j4S
	hKHGgibKVI24DMhsVR+Mr+xQhjWa9L01r0FAibin30y6OAOWYhCYWqrnn6JdTaUDY3TTpcnXp+0ua
	D1PDHZ747A5tVLf1y5q5Hemmpxg009v758Wx5dHAftKLKZDASdQ2RnBCin1ZNTuT9uhqKI39x9Nmf
	nHMPL87IUkvbhWuDxRrcfQaDdVz0DBpFjZOLv6WHFVNSeduApWP4V6f7qXtKkXveEZi3ek9abG1Qt
	bDR4RAulLZYFpzDLjScWdXYxoiY1VJUlMo4ULBEZd1HaAufKHyuK9nUiWXRWjMvZ2IiXJpBzyXmcE
	tvzkAqV/GUgYm0IRbYFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUyJZ-0007NP-MA; Wed, 13 Nov 2019 19:28:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUyJV-0007N5-JQ
 for ath10k@lists.infradead.org; Wed, 13 Nov 2019 19:28:26 +0000
Received: by mail-pg1-x542.google.com with SMTP id q22so1991274pgk.2
 for <ath10k@lists.infradead.org>; Wed, 13 Nov 2019 11:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MAMD8GrM8dHDXrjY8rB11bYG41rlwSHG+RL00OkRN/o=;
 b=kAKj678FOeRgSTgvgGizY5G9JM6SOedytMkY28h49lcSAdCwJa8TigOkgPmwgEAmFl
 7lVRSFwk2qORKcwSLUM1DiKTx71kKurWIMaiBtzw/+zUI6DyVo8nIr54GG+84a7z/N4L
 bJBoL7U57vlio0KtxJPnXPQqNZEmpADcUyz47F1FYT9O2hvMqk1AigAhyOYHwxP8TBqP
 dzNxLUWBNVslIFHB55wEXdMx4sjqo9BLrz3POeQh4iFTei538Q8lIw7AaU8yzPmro5o4
 1mTDOZMeWMLxxLNlCNY4RH10WHgw4Hu8lheD6ExtAfsMPWc5bWNscnVoslU1zFhBQtM5
 VnRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MAMD8GrM8dHDXrjY8rB11bYG41rlwSHG+RL00OkRN/o=;
 b=Sn4KrBIPFEgKlYBdpa+I8lKG3grAffPwIy5fYgZil2GVs+Q/TuDb3L4n2vKrBaJDHm
 lDsPzsomXGHuY9lj3CNGeFQPH1ApyFs+4VVvfwiLHJH0HNjgUW6xUDT3y1RkWuS5eg0l
 19btiS4HI81JububGGFIOOoxFH1qKzF3lyv+G1hZpoldtybENZ1cIqmf0Cl1rbF8y6Bk
 Nibd9MUf1PVXz313MV8HeXWYe9UbStO8Cy2bZ8nSfbbdxvL+QkBVU6DXduKhyDTCXAng
 +7tQLPrIYqWjsbouhxfSaKaJeFpSdpIPfXmOAemDNRlHPMYeeLuWy3AzovjlzDgk9WOU
 ItEQ==
X-Gm-Message-State: APjAAAX3gA1tq1Q1w+ya+InVkSdon+/QYEu8hI8Mb+aR8Jp6G/juGVmm
 52zspyZj2Aupd4v2xMEQsnrtrfEnNZU=
X-Google-Smtp-Source: APXvYqzVZUY1tsQDfkbM7m/TmFRXF1CAa7JwqkS6wPqF7BuiwbTHdXn0YX0vI9kQk5s72HxPcOWbHg==
X-Received: by 2002:a62:2686:: with SMTP id m128mr6406494pfm.143.1573673304126; 
 Wed, 13 Nov 2019 11:28:24 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z7sm3437838pgk.10.2019.11.13.11.28.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 11:28:23 -0800 (PST)
Date: Wed, 13 Nov 2019 11:28:21 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Wenwen Wang <wenwen@cs.uga.edu>, Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] ath10k: add cleanup in ath10k_sta_state()
Message-ID: <20191113192821.GA3441686@builder>
References: <1565903072-3948-1-git-send-email-wenwen@cs.uga.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565903072-3948-1-git-send-email-wenwen@cs.uga.edu>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_112825_718297_7559A9EE 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: govinds@codeaurora.org, jeffrey.l.hugo@gmail.com,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "open list:NETWORKING DRIVERS \(WIRELESS\)" <linux-wireless@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QUALCOMM ATHEROS ATH10K WIRELESS DRIVER"
 <ath10k@lists.infradead.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu 15 Aug 14:04 PDT 2019, Wenwen Wang wrote:

> If 'sta->tdls' is false, no cleanup is executed, leading to memory/resource
> leaks, e.g., 'arsta->tx_stats'. To fix this issue, perform cleanup before
> go to the 'exit' label.
> 

Unfortunately this patch consistently crashes all my msm8998, sdm845 and
qcs404 devices (running ath10k_snoc).  Upon trying to join a network the
WiFi firmware crashes with the following:

[  124.315286] wlan0: authenticate with 70:3a:cb:4d:34:f3
[  124.334051] wlan0: send auth to 70:3a:cb:4d:34:f3 (try 1/3)
[  124.338828] wlan0: authenticated
[  124.342470] wlan0: associate with 70:3a:cb:4d:34:f3 (try 1/3)
[  124.347223] wlan0: RX AssocResp from 70:3a:cb:4d:34:f3 (capab=0x1011 status=0 aid=2)
[  124.402535] qcom-q6v5-mss 4080000.remoteproc: fatal error received: err_qdi.c:456:EF:wlan_process:1:cmnos_thread.c:3900:Asserted in wlan_vdev.c:_wlan_vdev_up:3219

Can we please revert it for v5.5?

Regards,
Bjorn

> Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
> ---
>  drivers/net/wireless/ath/ath10k/mac.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
> index 0606416..f99e6d2 100644
> --- a/drivers/net/wireless/ath/ath10k/mac.c
> +++ b/drivers/net/wireless/ath/ath10k/mac.c
> @@ -6548,8 +6548,12 @@ static int ath10k_sta_state(struct ieee80211_hw *hw,
>  
>  		spin_unlock_bh(&ar->data_lock);
>  
> -		if (!sta->tdls)
> +		if (!sta->tdls) {
> +			ath10k_peer_delete(ar, arvif->vdev_id, sta->addr);
> +			ath10k_mac_dec_num_stations(arvif, sta);
> +			kfree(arsta->tx_stats);
>  			goto exit;
> +		}
>  
>  		ret = ath10k_wmi_update_fw_tdls_state(ar, arvif->vdev_id,
>  						      WMI_TDLS_ENABLE_ACTIVE);
> -- 
> 2.7.4
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
