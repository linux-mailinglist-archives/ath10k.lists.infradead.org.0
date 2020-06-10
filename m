Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B274F1F5463
	for <lists+ath10k@lfdr.de>; Wed, 10 Jun 2020 14:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIHERYd3SB5CYp2QnpcG7RaWh/8CCO8Av+l8APnFXaI=; b=CDk/YGtBCQWeJz
	SQyVyN6l0T2f8jUlSs2/Idc5rlmIoetCvn9j0LKcVYbRdFL6hC7hyYL0ogBCWad7cMMATamnP0UaQ
	L7QoLsZtAYqtpM6bQvKSUHP1HvITYexZSwWEe8T3a4d5+MgfBgDgIL3WK9X6sMyQfAcMVtEmZzsz0
	Q+H7MOpeMXDPjbCrQYvvrvJUWSKGaYs2LLTBerqYFu0+0IaCzAfNpNPCXwFKUqhzV83WsHhu02Rtr
	PPQ7nbFplkH6nD+MEl64/Agu9sR03BrVUtcTuljwXoJibMN9mdtze/L3MPkjoQL3XuTc3EZjOaW0E
	hz0LgBGvDaeU4slynyNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jizgR-0001PP-5H; Wed, 10 Jun 2020 12:18:19 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jizgM-0001Oq-W3
 for ath10k@lists.infradead.org; Wed, 10 Jun 2020 12:18:16 +0000
Received: by mail-ot1-x342.google.com with SMTP id u23so1495968otq.10
 for <ath10k@lists.infradead.org>; Wed, 10 Jun 2020 05:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c0aJAIO9X/+Kd9WVDIhi5jzk62wv1Hqzx6C7gjLmTaA=;
 b=ZKFtnfRZvUCTgiGiQqBJQn39a99QUGU6UySVfgx0L7jJ+eFsY8bocTwOiGdM2+0DVE
 dcq3Zrmx60tr4r+BLVz2jsLaK2pQnmP9XIiIxVq0RpzIMg/EZQHPnsBIwp/C9eLHTil2
 pT/E642rSF3FBrRfQ477tdDC5WtYnKkI3EK4DxbA174MHGzN46BbbuuaXjFQ6VEI+Wp0
 WW8mSewhUYxSyy5wp+dvI/iDo7B4LyAFRFa0qpQ5vvXTWNBB7pfMp85APrfV8E5e2gMn
 a7hkk8DS4HZpC6cPmh8LtOaohpvIfz2yPNcT5H+n4QcgeN9+VwxH5FqBUZ7zk12ka0Py
 2Qfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c0aJAIO9X/+Kd9WVDIhi5jzk62wv1Hqzx6C7gjLmTaA=;
 b=WSyVkY+S09MMl8A+z42W3YRJ6b30X1ViW+s7whwgiEJYTBKskv/oSX8tqJtZ3vS3Ec
 4crv0dnfUWymLccj1UA8NY9zplREjHCR/okpc5WHvLWEKiRkQV9oQDYJMnMB6Z16VAc5
 aDEw20Iso3EhFrOhVvAb2sHEC65rf28NFYTz0bMHi2Zw70+BV0sfqpIX8lqFlVFJtFNn
 VDA41/UA4aRtdPwaWvlHjbXO83nMInJgo64Qaxe5PlO6PfC9ljQ0dKc0LiwHPjEnp/HZ
 sD+NfVIQqIpeXkWOzFSOAI7bH8C7Cd+ETAKnUjk/1sP6VtGE/VWPevLLJ2VzKvsVpLGU
 O8Hg==
X-Gm-Message-State: AOAM533G2h5gsUwej8BASgnVwoZyn5os3Eh03n0Mp9UDKImocMPLGlcc
 3hEjJaAZbSWX9y/gDNBfQ8aqzzMZ5FPslbkQ8Zspmggw9mJ2Sg==
X-Google-Smtp-Source: ABdhPJz9i1Vv8C5Vdk/DEfjxX3SVFk+ro+AYdLZOcIACIVjqawvmLEIWTE3wYJri4cCoUK9F8KHbNDEfdTgX4nfd1oc=
X-Received: by 2002:a05:6830:60d:: with SMTP id
 w13mr2399432oti.243.1591791493015; 
 Wed, 10 Jun 2020 05:18:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200327093147.189390-1-robert.marko@sartura.hr>
 <87y2owmoy4.fsf@codeaurora.org>
In-Reply-To: <87y2owmoy4.fsf@codeaurora.org>
From: Robert Marko <robert.marko@sartura.hr>
Date: Wed, 10 Jun 2020 14:18:02 +0200
Message-ID: <CA+HBbNGkzq-sndJwYoifZWNSOYyEMGhuuSJbuGiTVQwALgRnpQ@mail.gmail.com>
Subject: Re: [PATCH] ath10k: enable advertising support for channels 32, 68
 and 98
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_051815_064278_EEF5017A 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: Luka Perkov <luka.perkov@sartura.hr>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Jun 9, 2020 at 1:58 PM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Robert Marko <robert.marko@sartura.hr> writes:
>
> > Enable advertising support for 5G channels: 32, 68 and 96.
> > These channels are legal and available for use in ETSI countries.
> > So lets advertise these and they will be available in accordance with the regulatory domain used.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > Cc: Luka Perkov <luka.perkov@sartura.hr>
>
> What's the use case for this? I was told that the IEEE standard does not
> define these channels, that's why I'm asking for more information.
The primary use case is to enable more of the spectrum to be used, since in
ETSI countries it's legal.
Even 5GHz is getting pretty crowded in cities.
>
> On what hardware and firmware did you test this? It might be that not
> all hardware or firmware support this.
It's tested on IPQ4018, 10.4-3.6-00140 FW if I remember correctly as
some time has passed.
If HW does not support it then BDF-s and caldata should disable it?
>
> There was a concern if this slows down scanning due to more channels
> being scanned, but I haven't analysed that yet. Did you measure that?
No, I have not thought of that.
Even if it does, I don't think that 3 channels more would drastically
increase scan time.
>
> Also please CC linux-wireless on ath10k patches. Otherwise patchwork
> won't see them and it won't be on my radar:
Thanks, completely forgot to do it.
>
> https://wireless.wiki.kernel.org/en/users/drivers/ath10k/submittingpatches
>
> --
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
