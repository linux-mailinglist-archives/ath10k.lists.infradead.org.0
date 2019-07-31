Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE557BD37
	for <lists+ath10k@lfdr.de>; Wed, 31 Jul 2019 11:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOUIrZCkBywqIQ7izMKBsq9HbSRCZCsM0VvGoMZK4cM=; b=eeo7iQbAwUe3WY
	mriuyeZyN7ep+mF7z99PZEuC5Xezu/ajsznXamJgQXQhOWH2GaX4eWYPy0fGdUxik/IsVNmG34Luh
	XCHBy5T57HP7M/MOcvWbzh/SYM0KOQQgWymCKVx8drlmnmij440pZXqjT6QhFgu3wGg0q+7qN8v0Y
	ZQEYpiAGdiaSzsTgXZosqHYoY92BCYj+ZSi7PTKrf5fWqbOD3wHzqDyUh2II04wHILYnmkarDQObu
	mlyruSKud4xvO9EpR6dj/8viAfd3EmPxgmR9bNFtxBTZM9AN4EC70f5L4NMAyZpb4gx9rNComP0f7
	qs2KPUprmD1013yjf82w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsky4-0005iV-6v; Wed, 31 Jul 2019 09:32:20 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsky0-0005iC-AN
 for ath10k@lists.infradead.org; Wed, 31 Jul 2019 09:32:17 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hskxy-0004id-Ue; Wed, 31 Jul 2019 11:32:15 +0200
Message-ID: <3bb50da3442446a76f7ef59c4d53a7c349b87524.camel@sipsolutions.net>
Subject: Re: [PATCHv6 5/9] nl80211: Add netlink attribute to configure TID
 specific tx rate
From: Johannes Berg <johannes@sipsolutions.net>
To: Tamizh chelvam <tamizhr@codeaurora.org>, ath10k@lists.infradead.org
Date: Wed, 31 Jul 2019 11:32:14 +0200
In-Reply-To: <1560835632-17405-6-git-send-email-tamizhr@codeaurora.org>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-6-git-send-email-tamizhr@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_023216_355023_C51843B5 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


>  /**
> + * enum nl80211_tx_rate_setting - TX rate configuration type
> + * @NL80211_TX_RATE_AUTOMATIC: automatically determine TX rate
> + * @NL80211_TX_RATE_LIMITED: limit the TX rate by the TX rate parameter
> + * @NL80211_TX_RATE_FIXED: fix TX rate to the TX rate parameter
> + */
> +enum nl80211_tx_rate_setting {
> +	NL80211_TX_RATE_AUTOMATIC,
> +	NL80211_TX_RATE_LIMITED,
> +	NL80211_TX_RATE_FIXED,
> +};

I'm not really quite sure how LIMITED it supposed to work?

I mean, I could imagine all kinds of limits ...

 * limit to anything <= the given rate in kbps
 * limit to anything with long GI
 * limit to NSS <= given NSS
 * limit to MCS <= given MCS

etc.

I guess you could find a <= comparison for each dimension of the various
parameters, and then if you don't want that particular one limited you
give the maximum? Still not really clear to me how that should work.

Also, would it be allowed to pass an invalid rate? Like something like
"100Mbps legacy rate" when that's certainly not valid? You have no
validation on this, so for LIMITED that might still seem useful (per my
first bullet point above) but for anything else ... not so much?

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
