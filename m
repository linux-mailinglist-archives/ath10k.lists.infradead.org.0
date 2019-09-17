Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6B8B4848
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 09:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/5yA+iGCWZdG/d3Ly+cFNLwY+Ig5XzeVBW6EgeI14s=; b=nJpg1swzjC6Nlh
	q2h+6T3MUDbooWhmFWAB4SMP5okBtitHqr4Gsx7F1DfJgfERspK4mpuWiqgnc7UUO2FY7kyUr24+O
	BpUXgrzCqs4LjUNRQVV2b9y6sI1AOOuZ3wWwEVaftPn7CYJDxFRBBa7Vrc7T+c5HZNbZb+bvwq9LK
	wUrM5WGwwHsJ9F0GBfOr9gLP/V+xm4pn/vCF2RWc53HYbTtiTy1O1VBZtJtjZwPBcsexoCehg5zzH
	mRaLfTT+vtt5Q9a7DoOtincE6y1lZM1vbzM6TR/Fk8lpLvH3HssvXNDeAcBvfzWy5042Zhv5FuDcy
	dMKeamoHyrxs3t5jv11w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7v1-0006QH-0T; Tue, 17 Sep 2019 07:28:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7us-0006Pw-0Q
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 07:28:51 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E51AF6013C; Tue, 17 Sep 2019 07:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568705328;
 bh=oLwQ6A67jzNqU2gJ2LI77+6Nr39hcA3nWg8B/UciTsY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Pz6RHKp/DtCNWFthGzkYWVlaY0Qe0PCRdfcdEF2O7+uuHXzGhdYR6FMtFdEQEmsdq
 JpSOoIWTZso6QHYPXLutCeB4w7S+Jp8dS2g4Ae0Z9c4uAN+5dx8o4W0Mh9ryiSqt0a
 Ke+LT5N1OdUjjOYV+a6Z9F4JDFO+h2j7t1PZbqz8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 663726013C;
 Tue, 17 Sep 2019 07:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568705328;
 bh=oLwQ6A67jzNqU2gJ2LI77+6Nr39hcA3nWg8B/UciTsY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Pz6RHKp/DtCNWFthGzkYWVlaY0Qe0PCRdfcdEF2O7+uuHXzGhdYR6FMtFdEQEmsdq
 JpSOoIWTZso6QHYPXLutCeB4w7S+Jp8dS2g4Ae0Z9c4uAN+5dx8o4W0Mh9ryiSqt0a
 Ke+LT5N1OdUjjOYV+a6Z9F4JDFO+h2j7t1PZbqz8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 663726013C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH v2] ath10k: fix max antenna gain unit
References: <20190611172131.6064-1-sven@narfation.org>
Date: Tue, 17 Sep 2019 10:28:43 +0300
In-Reply-To: <20190611172131.6064-1-sven@narfation.org> (Sven Eckelmann's
 message of "Tue, 11 Jun 2019 19:21:31 +0200")
Message-ID: <87muf3bcus.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_002850_120117_1863EA1C 
X-CRM114-Status: GOOD (  14.29  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org,
 Sven Eckelmann <seckelmann@datto.com>, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

+ Govind, Wen

Sven Eckelmann <sven@narfation.org> writes:

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
>
> Fixes: 02256930d9b8 ("ath10k: use proper tx power unit")
> Signed-off-by: Sven Eckelmann <seckelmann@datto.com>

[...]

> --- a/drivers/net/wireless/ath/ath10k/mac.c
> +++ b/drivers/net/wireless/ath/ath10k/mac.c
> @@ -1008,7 +1008,7 @@ static int ath10k_monitor_vdev_start(struct ath10k *ar, int vdev_id)
>  	arg.channel.min_power = 0;
>  	arg.channel.max_power = channel->max_power * 2;
>  	arg.channel.max_reg_power = channel->max_reg_power * 2;
> -	arg.channel.max_antenna_gain = channel->max_antenna_gain * 2;
> +	arg.channel.max_antenna_gain = channel->max_antenna_gain;
>  
>  	reinit_completion(&ar->vdev_setup_done);
>  
> @@ -1450,7 +1450,7 @@ static int ath10k_vdev_start_restart(struct ath10k_vif *arvif,
>  	arg.channel.min_power = 0;
>  	arg.channel.max_power = chandef->chan->max_power * 2;
>  	arg.channel.max_reg_power = chandef->chan->max_reg_power * 2;
> -	arg.channel.max_antenna_gain = chandef->chan->max_antenna_gain * 2;
> +	arg.channel.max_antenna_gain = chandef->chan->max_antenna_gain;
>  
>  	if (arvif->vdev_type == WMI_VDEV_TYPE_AP) {
>  		arg.ssid = arvif->u.ap.ssid;
> @@ -3105,7 +3105,7 @@ static int ath10k_update_channel_list(struct ath10k *ar)
>  			ch->min_power = 0;
>  			ch->max_power = channel->max_power * 2;
>  			ch->max_reg_power = channel->max_reg_power * 2;
> -			ch->max_antenna_gain = channel->max_antenna_gain * 2;
> +			ch->max_antenna_gain = channel->max_antenna_gain;
>  			ch->reg_class_id = 0; /* FIXME */

What about firmwares using WMI TLV interface, for example QCA6174 or
WCN3990? Does this break max antenna gain on those devices? Govind, Wen?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
