Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6E1EFDD3
	for <lists+ath10k@lfdr.de>; Tue,  5 Nov 2019 14:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0zg0hBht1hutve9uWhUwfAHjnMKaxmjvqj2Ucz2djM=; b=QFN+AmmiE1vtYb
	OBvQ1A7AoVqM6N9vOclpk9Gbb6NF16W9YQEaVVureOMg5CRK5SK41nGsIe+zBcTefV+Gdl87C0NSI
	tFhVRfKS6TvosNKpnxk+VGVb3Km1FmSUI/qBZ6xT2iLHy/7j/LXRCoQ1LE7Bnh8HMoVJuBDFbFcYH
	J2m48fINBRqmATUjaJ9aFmU+Y8XX9jEeLN91DZWjAsblQ6ATWM4YlixFWcKLL+zf7TRV5ufDy/zgg
	bPwJC39ERuWeHJZnYs4cNKY6OOZH5piesDQl+5mI8QcdrkcuIRTTxqPiIt2U63+T9YL4h+gLSZ7iv
	3FbwZ24DQKgFceIg0pwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyRt-0004Ob-R4; Tue, 05 Nov 2019 13:00:41 +0000
Received: from mail.aperture-lab.de ([138.201.29.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyRp-0004Np-0D
 for ath10k@lists.infradead.org; Tue, 05 Nov 2019 13:00:38 +0000
Date: Tue, 5 Nov 2019 14:00:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1572958820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=q/MmhnWQB9Pb2zRDumN5dORN9IFrpbQQEDb6V56rLqs=;
 b=EzZklffIUgEi5TNUKU/F+6/x/ma6J/qncFhNwma3vCXvSUhCWhTJx4NcMgHP+E2xtXAJB3
 lcRObunf86/WqZyMSq4BjXaBVTcPueBv1jf2MKmIMpXFS5dBnssyx2Gp8KtwPpqKmyBt4l
 LKXF/MmMCLWfHzGsm30JVrXMY3kKBkgZXj3owfzEPEOkAM7nbzK0J+Xjx/K9QwhgQu/4UI
 0lHXwM9LgxcgOor7Lx4RWqUCYxpPTK2HNlpKD4GUdFF8D7YiHOm7Lcu2SZ3JUMSPiAgObA
 AUDNr0wYeNfT2ClXZHOAC7lVFLX+szRGHLfgdR3hpduV75gjnkg9+oEwyLCQiA==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Ben Greear <greearb@candelatech.com>
Subject: Re: [RFC PATCH] ath10k: fix RX of frames with broken FCS in monitor
 mode
Message-ID: <20191105125152.GB10238@otheros>
References: <20191101111138.9086-1-linus.luessing@c0d3.blue>
 <8d256f92-a74b-1670-4493-8e36f402548b@candelatech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d256f92-a74b-1670-4493-8e36f402548b@candelatech.com>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1572958820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=q/MmhnWQB9Pb2zRDumN5dORN9IFrpbQQEDb6V56rLqs=;
 b=E9y4ONCsaTjGvI268+2qMgGqevtP7LL2tByrHzWkMd70JfS3sjNNLEGwP5idJO7KE9iOaU
 LsXDvIG0z1NSLhPf5/Xq6gA301CUIfGeljxQnHO0epyjOBW1LzXndTdbVVkZw4d+3IGs0i
 QKtgu8DpzxxPLOxapsY1B/vjTP0A1/C6vaEevfaxy9l0fscp35dOlkZY4i7HOtJ533SikR
 u/49K8OAIlErJC7RlRMso0/r2rc01KiUm1soSIoag/AxzlItc2BLozxY5I5X6SBDbAx+nq
 fDq9fEjEWHnItOcmtRCIc7QgHRY8wvyA09bgdrqLwQ9w+IZhKJM1lPYICUCwgg==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1572958820; a=rsa-sha256; cv=none;
 b=jW7Jdx84fO3o9sxSy4jMtcjgBwO3AV4TCt/JbNkm2BdkDV1/o2YXWVUPgDbZ9z1UfbZxxZ
 jD/MFFu0uaWFgtU5p8jR9tRM+dofT1Pb4cx/bHBNi/rlNoNKG7M6sHOua840pAI8bxJtjN
 WUp5EKCaZI2qDo5ez9GRZXmcYyv7AEa7i/rESeYm9tB6MQvRaN5u7T26iadM0Eti7aZ8ua
 KGb17ZNw2AH5i7IMeH61QmLRsrOCQCbZb4avfF+2U/n44Ge9KxMgWXLQYZNeU23K07YNyg
 h2GMJkV8jZj5twPmB/YMMWlUh9bZQE/Pt5dts6KhHx5h+AbEjORu1sBaKeeLug==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_050037_203642_D00CEF9A 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.201.29.205 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: Linus =?utf-8?Q?L=C3=BCssing?= <ll@simonwunderlich.de>,
 ath10k@lists.infradead.org, Simon Wunderlich <sw@simonwunderlich.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 08:46:53AM -0700, Ben Greear wrote:
> > diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
> > index 53f1095de8ff..ce0a16ebb8bb 100644
> > --- a/drivers/net/wireless/ath/ath10k/htt_rx.c
> > +++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
> > @@ -1285,6 +1285,12 @@ static void ath10k_process_rx(struct ath10k *ar, struct sk_buff *skb)
> >   	status = IEEE80211_SKB_RXCB(skb);
> > +	if (ar->monitor && !(ar->filter_flags & FIF_FCSFAIL) &&
> > +	    status->flag & RX_FLAG_FAILED_FCS_CRC) {
> > +		dev_kfree_skb_any(skb);
> > +		return;
> > +	}
> 
> Maybe worth adding a counter like 'rx_drop_crc' to the ath10k_debug struct and increment it here
> and also show in debugfs and/or ethtool stats?

Ok.

> 
> And, maybe no check for ar->monitor, in case somehow the frame is still received
> with bad CRC even without monitor mode?

I think ath9k is also checking for "ah->is_monitoring" here:

https://elixir.bootlin.com/linux/v5.3.8/source/drivers/net/wireless/ath/ath9k/common.c#L96

And I didn't want to divert from this. Should I remove it anyway?

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
