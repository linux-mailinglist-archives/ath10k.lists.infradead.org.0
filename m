Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A041F9B4D
	for <lists+ath10k@lfdr.de>; Mon, 15 Jun 2020 17:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uesYJpw3oRdNf8iqK1ZAXnvCDBd7oLVvMw8pi78CMDc=; b=T55drN0q+tSUHC
	wybaVptV7ufrL7B/YSApWhtZ3IMhXU6Z0w1mX4hia4XChjQzfjW9WjdgrJqz5KeV5TV7BjUIc8xXH
	vlkVWN9T1oem5FIVBRRrJJsI6Ffd1NpXRTd92ioJcdcfBkK/ht9o6KF7T6AS+TcdMcrsCNZPbVVba
	GcrFrz8D9TZ+rIjP2kgw4h1mrMjcg8XDiqVGF4SXpzNvbccfOqpJh9uUOw2tiVlHCOMTE9/+HXc+h
	Sl3963zmQp+mtj33AvpEyMUQVJyevtBClqoSPeKoL0R1vx0PJWZfqBOEcWmnnwGYo5hOxquqJrlSs
	EX4Ch8qYrQRAYWiwJdEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqd0-0000BQ-3v; Mon, 15 Jun 2020 15:02:26 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqcw-0000AI-Fg
 for ath10k@lists.infradead.org; Mon, 15 Jun 2020 15:02:23 +0000
Received: by mail-ua1-x943.google.com with SMTP id t26so5754403ual.13
 for <ath10k@lists.infradead.org>; Mon, 15 Jun 2020 08:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TrvvsAEP4GTcir2Zy4zr3JBpHk31E0joGe1xHbcm+mg=;
 b=H3A4uLXQWE02D9hYonsJYD+dAcZKqOzS19HfKOalhkBF4qwfzczgYQl1W0V8OQsYXD
 95VWw7nAcce5a/v3X1xmaJEUAxd0JQhaKynN57OA1tKKU6N1LhVNw3fYE7ZH0++G+pva
 EdI1a+96k5CQcCD5Of6MAu9qR7pjeDAfI0yPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TrvvsAEP4GTcir2Zy4zr3JBpHk31E0joGe1xHbcm+mg=;
 b=jAVbEuC5buXyMqDDL2gCc92Fj+5K9T1MRQZszo9biYx0S9utGf33VKerhvNOdxPuNI
 eP3HGCDBS2D3P4dj31Xyp5WZyoL0QtKLsYQB3AS1NSu9PudL1LQchV/4lp2JhCQ9DsP6
 6ifdEmjqCq0Tw5ZWJSOLSrZEHzCDVQZC9Mae1j4SaqK1F9d16px6UtTR7l8O0UTvwKpV
 4xBQZAru4TnmacxMjcWPaQiqdvvKWHV0CkQ7mulDdT1g7TVj8rkfwne3jg2LuXo5XOr2
 anDvCHv+GBz9XB1O28fHFyXo2mp0Q+5xmjE9xhlpMb5hvo12kg2OvSMx0M9LCr/oQlLQ
 8s5A==
X-Gm-Message-State: AOAM533CKyz33Ire1co14yt9VH7Hvoad7M4AyzmfHtZL1MINYnRXNEwn
 tTaX4k/acmLB3ZoEXZAggTXIhwKVnGw=
X-Google-Smtp-Source: ABdhPJwCyREY528ZcIBqnpnB1W5CeSCUq64pi1lIz0peDqlef3djoPFXn2YCCrn9JB+Evh/tdXwCig==
X-Received: by 2002:ab0:1c55:: with SMTP id o21mr19793804uaj.114.1592233340384; 
 Mon, 15 Jun 2020 08:02:20 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com.
 [209.85.217.51])
 by smtp.gmail.com with ESMTPSA id i203sm1005983vke.7.2020.06.15.08.02.19
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Jun 2020 08:02:20 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id l10so9514641vsr.10
 for <ath10k@lists.infradead.org>; Mon, 15 Jun 2020 08:02:19 -0700 (PDT)
X-Received: by 2002:a67:8881:: with SMTP id
 k123mr19565964vsd.198.1592233331996; 
 Mon, 15 Jun 2020 08:02:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200609082015.1.Ife398994e5a0a6830e4d4a16306ef36e0144e7ba@changeid>
 <20200615143237.519F3C433C8@smtp.codeaurora.org>
 <CAD=FV=VaexjLaaZJSxndTEi6KCFaPWW=sUt6hjy9=0Qn68kH1g@mail.gmail.com>
 <87zh94idik.fsf@codeaurora.org>
In-Reply-To: <87zh94idik.fsf@codeaurora.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 15 Jun 2020 08:02:00 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XfUHD=vw-mvQsdHcn=zhB9-mD6ivrM93jkfHdgb+odiA@mail.gmail.com>
Message-ID: <CAD=FV=XfUHD=vw-mvQsdHcn=zhB9-mD6ivrM93jkfHdgb+odiA@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Wait until copy complete is actually done before
 completing
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_080222_528338_BFAF37B7 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org,
 Rakesh Pillai <pillair@codeaurora.org>, netdev <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 kuabhs@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi,

On Mon, Jun 15, 2020 at 7:56 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Doug Anderson <dianders@chromium.org> writes:
>
> > On Mon, Jun 15, 2020 at 7:32 AM Kalle Valo <kvalo@codeaurora.org> wrote:
> >>
> >> Douglas Anderson <dianders@chromium.org> wrote:
> >>
> >> > On wcn3990 we have "per_ce_irq = true".  That makes the
> >> > ath10k_ce_interrupt_summary() function always return 0xfff. The
> >> > ath10k_ce_per_engine_service_any() function will see this and think
> >> > that _all_ copy engines have an interrupt.  Without checking, the
> >> > ath10k_ce_per_engine_service() assumes that if it's called that the
> >> > "copy complete" (cc) interrupt fired.  This combination seems bad.
> >> >
> >> > Let's add a check to make sure that the "copy complete" interrupt
> >> > actually fired in ath10k_ce_per_engine_service().
> >> >
> >> > This might fix a hard-to-reproduce failure where it appears that the
> >> > copy complete handlers run before the copy is really complete.
> >> > Specifically a symptom was that we were seeing this on a Qualcomm
> >> > sc7180 board:
> >> >   arm-smmu 15000000.iommu: Unhandled context fault:
> >> >   fsr=0x402, iova=0x7fdd45780, fsynr=0x30003, cbfrsynra=0xc1, cb=10
> >> >
> >> > Even on platforms that don't have wcn3990 this still seems like it
> >> > would be a sane thing to do.  Specifically the current IRQ handler
> >> > comments indicate that there might be other misc interrupt sources
> >> > firing that need to be cleared.  If one of those sources was the one
> >> > that caused the IRQ handler to be called it would also be important to
> >> > double-check that the interrupt we cared about actually fired.
> >> >
> >> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >> > Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
> >>
> >> ath10k firmwares work very differently, on what hardware and firmware did you
> >> test this? I'll add that information to the commit log.
> >
> > I am running on a Qualcomm sc7180 SoC.
>
> Sorry, I was unclear, I meant the ath10k hardware :) I guess WCN3990 but
> what firmware version?

Ah, sorry!  Yes, it appears to be wcn3990 based on my device tree:

$ git grep -A2 wifi -- arch/arm64/boot/dts/qcom/sc7180.dtsi

wifi: wifi@18800000 {
        compatible = "qcom,wcn3990-wifi";
        reg = <0 0x18800000 0 0x800000>;
        reg-names = "membase";

Firmware isn't final yet, but currently my boot log shows:

qmi fw_version 0x322a01ea
fw_build_timestamp 2020-05-20 03:47
QC_IMAGE_VERSION_STRING=WLAN.HL.3.2.2-00490-QCAHLSWMTPL-1

-Doug

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
