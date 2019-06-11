Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8B23D23E
	for <lists+ath10k@lfdr.de>; Tue, 11 Jun 2019 18:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x4UHIJYcziCSdLuUt92ulwl5mQxTvY1333Ro1R4Py/4=; b=YYWzy/bjtTxXIxecrw8qR1JwE
	XuvNu6xGMtgUM4AW40aQPH/n9mAqJpRMTbGFikyCfapAQCsbOBe9UzDWo3HogeoyOr2b+UDcBpmQM
	3GZ1zfmyttvPgdBi6s9DmT96f5HEvAZ49pQlzhDX7GyGa4b5W1lABIPvwSKMk2bbnloFdx6AiGTVH
	y6D30v11DcJE5jhblRw48MctXPb66Tpk/vZYuzbTTrGrCet2HdeSg85hGvIs3WAyp+nD0KKWrEOEM
	fyUg6g+dmMl50Pc77slERPYXDNe5iTAy5f5aq57TjYVOv+vBBTVm/HplBKwFfqzu1c/D6pOMBPmUJ
	bK6hHgx5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haje9-000058-FG; Tue, 11 Jun 2019 16:29:17 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haje1-0008Nr-5P
 for ath10k@lists.infradead.org; Tue, 11 Jun 2019 16:29:11 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id ACF5013C283;
 Tue, 11 Jun 2019 09:29:03 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com ACF5013C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1560270543;
 bh=ssy66/kg/FbUVXutOJZ8DZQ/CijcQc3SJDPyNwDP8Jw=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ER7Apra394Or7uU9Qk4Q99IVWIXZGbGZxXDFV+TLu4Xm8s2idM7s0Pny464FX1po1
 deNjw9k81Af0Rn+lvYNYYa6/dpHxnE4n167Orh1n9v3bZ519FcydoOMD/WVfa5z0ue
 GQWWP39FKRdwfeGLE5xi6Lp0tgaF+V5a+/Ts4kJU=
Subject: Re: [PATCH] ath10k: fix max antenna gain unit
To: Sven Eckelmann <sven@narfation.org>, ath10k@lists.infradead.org
References: <20190611121910.27643-1-sven@narfation.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <ae8e2e5d-5a17-01bc-e3a2-5b326e1223b8@candelatech.com>
Date: Tue, 11 Jun 2019 09:29:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190611121910.27643-1-sven@narfation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_092909_417001_B376BF85 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michal Kazior <michal@plume.com>, linux-wireless@vger.kernel.org,
 Sven Eckelmann <seckelmann@datto.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 6/11/19 5:19 AM, Sven Eckelmann wrote:
> From: Sven Eckelmann <seckelmann@datto.com>
> 
> Most of the txpower for the ath10k firmware is stored as twicepower (0.5 dB
> steps). This isn't the case for max_antenna_gain - which is still expected
> by the firmware as dB.
> 
> The firmware is converting it from dB to the internal (twicepower)
> representation when it calculates the limits of a channel. This can be seen
> in tpc_stats when configuring "12" as max_antenna_gain. Instead of the
> expected 12 (6 dB), the tpc_stats shows 24 (12 dB).
> 
> Tested on QCA9888 and IPQ4019 with firmware 10.4-3.5.3-00057.

I did a visual inspection of wave-1 firmware source and it appears this change would be correct
for it as well.

I would also suggest updating the comments in the wmi.h structure to document the
units.

Thanks,
Ben

> 
> Fixes: 02256930d9b8 ("ath10k: use proper tx power unit")
> Signed-off-by: Sven Eckelmann <seckelmann@datto.com>
> ---
> Cc: Michal Kazior <michal@plume.com>
> 
>   drivers/net/wireless/ath/ath10k/mac.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
> index 9c703d287333..35d026a2772a 100644
> --- a/drivers/net/wireless/ath/ath10k/mac.c
> +++ b/drivers/net/wireless/ath/ath10k/mac.c
> @@ -1008,7 +1008,7 @@ static int ath10k_monitor_vdev_start(struct ath10k *ar, int vdev_id)
>   	arg.channel.min_power = 0;
>   	arg.channel.max_power = channel->max_power * 2;
>   	arg.channel.max_reg_power = channel->max_reg_power * 2;
> -	arg.channel.max_antenna_gain = channel->max_antenna_gain * 2;
> +	arg.channel.max_antenna_gain = channel->max_antenna_gain;
>   
>   	reinit_completion(&ar->vdev_setup_done);
>   
> @@ -1450,7 +1450,7 @@ static int ath10k_vdev_start_restart(struct ath10k_vif *arvif,
>   	arg.channel.min_power = 0;
>   	arg.channel.max_power = chandef->chan->max_power * 2;
>   	arg.channel.max_reg_power = chandef->chan->max_reg_power * 2;
> -	arg.channel.max_antenna_gain = chandef->chan->max_antenna_gain * 2;
> +	arg.channel.max_antenna_gain = chandef->chan->max_antenna_gain;
>   
>   	if (arvif->vdev_type == WMI_VDEV_TYPE_AP) {
>   		arg.ssid = arvif->u.ap.ssid;
> @@ -3105,7 +3105,7 @@ static int ath10k_update_channel_list(struct ath10k *ar)
>   			ch->min_power = 0;
>   			ch->max_power = channel->max_power * 2;
>   			ch->max_reg_power = channel->max_reg_power * 2;
> -			ch->max_antenna_gain = channel->max_antenna_gain * 2;
> +			ch->max_antenna_gain = channel->max_antenna_gain;
>   			ch->reg_class_id = 0; /* FIXME */
>   
>   			/* FIXME: why use only legacy modes, why not any
> 


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
