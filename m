Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BE0F30C7
	for <lists+ath10k@lfdr.de>; Thu,  7 Nov 2019 15:03:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JW7hF/2Y/fgzD1XcpEuSS7Tk7OWyDPvhvV2s6XIeKKo=; b=m9FiUeH/pUVitT
	+s5SvqjvYCCv/U4sqHzOLztsUxMc2K7wT8Xpgod5TvxKzcq8vfgQGLRfIdaiugRBRZ/yooMog6sgL
	WQ5DS9/03rOJAvepDrp9WhrWOj0j8Vxg5q/5wVXf9YEwuyLqFaQkSRhvuEcarRmXJWqJdDJ79dmII
	t9pF0UqeowerpSJpET0TiXauDqvTSFOpjBkbuOZM0SZs5PBKAxuZDAC9LfojHRsS6kNWmhv7Wygu/
	GL0nv1B8t5Al3WDKPFx7o2KotsIQsTEqjoDTvIR4c2B+sirD8M92FMvNQxqFP6W1PVL/RxIB0gnUm
	V9A48ausGOYdoHtMDXXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSiO3-00038v-HU; Thu, 07 Nov 2019 14:03:47 +0000
Received: from mail.aperture-lab.de ([2a01:4f8:171:314c::100:a1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiNz-00037r-Hp
 for ath10k@lists.infradead.org; Thu, 07 Nov 2019 14:03:45 +0000
Date: Thu, 7 Nov 2019 15:03:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1573135414;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sVnu6nCQ25Lb7LRGNb26Av76cKgMfU15iK7bwIMmrkQ=;
 b=dYwqJQkwh4WV7+jIWWMyyAf4ucAUIhVJrLGYNADu4ppqY0960M1DIF1mShrpRVQARoaF1R
 ABE+moZw9r24XKdGiE4vj+gTAJN0ulxg3NZwzuMcXs4IU/k+7UN8jRxfVbP0Kij/JIUNtS
 Ao2Obm4TPa/OoVid/jAjtWsiCXjaFbgsK5q+olzKybAPsmiwtoyVw0e0+6VP0mQEaD95fK
 N97ngKZkvoJgQaWTpJ7WPvMg+v3Y1ldKNn5uP0tr1wMYFJLhgNo2SplymeWhgAz4lTRSFk
 IwxMHX9greRFCrwGjw2MJ2yOJZsp6F1bhAsjmeElLe2RO6wZetmGNJkK3LchQg==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Ben Greear <greearb@candelatech.com>
Subject: Re: [PATCH net-next] ath10k: fix RX of frames with broken FCS in
 monitor mode
Message-ID: <20191107140149.GB19482@otheros>
References: <20191105164932.11799-1-linus.luessing@c0d3.blue>
 <927cea69-7afc-5c35-df8d-9813392e8928@candelatech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <927cea69-7afc-5c35-df8d-9813392e8928@candelatech.com>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1573135414;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sVnu6nCQ25Lb7LRGNb26Av76cKgMfU15iK7bwIMmrkQ=;
 b=pH7WY4TroqspfcVfiNfk4KF2KGn4YJqmi3dA4tuxptME+Hwrjl1w83PTsY8oUwJ/qR81i8
 NBNIN9LoYylB2UpMzQU0lVkuEIt0mNBOshzxuyUdbcI/yNsWmmGkpJaHH4rDK+4Chr+LjD
 6FaRkZdEfQHwqyg9WSpOcAhhnAUuTssNhHbp3zjDvIHiLnwVKcG/ZWvXsQ10fAioL1O762
 aeTzx5BMGWroW0N924bOV9bzUPItQCKdpDsvDC3TjKbLJPVJbXh2Cs5xVadw0CspiS/jHv
 YlD0ujULBQa8RMsp/1Gi2tmlfshKXhFHDBBNl6YNjDTAOie6+NF138Y+kVfM5Q==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1573135414; a=rsa-sha256; cv=none;
 b=ojLgZKgBfl52b4RxlLVRGRhHIpo/O3YWrsNgNoHy4/Cx3XnFKTiuCZyxp0QWBaWN91QJLI
 M0ntFuUrIRXGKw6DnsF4CZJ4j9VB/vxa/xkA+2v0zdY72Fs73U1L+5OIZW9sEznBHUbj9Z
 HvlAqoA7JskhU2ou7UmkV3cDYADkKMst3/9pQsVvdDHneOi1IRD7hsHAwPdLEOi5y6Oujd
 ErDjYV6t1kEDkPRkPk0F5wkfKO9t1JjOhkiBHyAbYpypBGJe0GCSiWw+w88vcqA+U8Vzqy
 mtJYoYCCKfYiCaZFMJ64p3wnxRcumvidJHuBAD2iZtPvUIAtCrxjhHI97/hCng==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_060343_906131_57738D11 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:171:314c:0:0:100:a1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Simon Wunderlich <sw@simonwunderlich.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 09:19:20AM -0800, Ben Greear wrote:
> Thanks for adding the counter.  Since it us u32, I doubt you need the spin lock
> below?

Ok, I can remove the spin-lock.

Just for clarification though, if I recall correctly then an increment operator
is not guaranteed to work atomically. But you think it's unlikely
to race with a concurrent ++ and therefore it's fine for just a debug counter?
(and if it were racing, it'd just be a missed +1)

Or is there another mechanism that avoids concurrency in the
ath10k RX path?


> 
> --Ben
> 
> > +	if (!(ar->filter_flags & FIF_FCSFAIL) &&
> > +	    status->flag & RX_FLAG_FAILED_FCS_CRC) {
> > +		spin_lock_bh(&ar->data_lock);
> > +		ar->stats.rx_crc_err_drop++;
> > +		spin_unlock_bh(&ar->data_lock);
> > +
> > +		dev_kfree_skb_any(skb);
> > +		return;
> > +	}
> > +
> >   	ath10k_dbg(ar, ATH10K_DBG_DATA,
> >   		   "rx skb %pK len %u peer %pM %s %s sn %u %s%s%s%s%s%s %srate_idx %u vht_nss %u freq %u band %u flag 0x%x fcs-err %i mic-err %i amsdu-more %i\n",
> >   		   skb,
> > 
> 
> 
> -- 
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
