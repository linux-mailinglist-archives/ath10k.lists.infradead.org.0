Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CBA1F9A7B
	for <lists+ath10k@lfdr.de>; Mon, 15 Jun 2020 16:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xtaTd6heaY9L3GkoEIOLNJe1/6KPuoot2IIghfiQdc=; b=kV0VyOoj7MjmzB
	S3rQgssijuBq7R4e2EgH8TLvn4gkZqfDiWzaJ8UJtvVnMLrWdItUb6RjHKSuOGPsF5VSzeejDngzU
	y1KGUlMbA5eV1dB/SeOzwEaCQGtq2HDh0xW6GhjYnINc9GV2/xcM19/d5H9kqNhI1DW/+hZqvFZvN
	BcOlZB3u171G/YWp917ybTdxUJVtWcInfVMvoC+ibcvhrVl56VbjFHkngL6XduVFuoDljOzvYf0MC
	BeP/gQjv6q/78GVfM2Wh2dlCFd3LK3L6YAxpLXpSYmfBEcctWYPx2PUuq/wfWkcNJoYlO014t9URA
	eqdJad3PApbt1A8/t2pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqHA-0006Ss-Oi; Mon, 15 Jun 2020 14:39:52 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqH6-0006SY-Pb
 for ath10k@lists.infradead.org; Mon, 15 Jun 2020 14:39:50 +0000
Received: by mail-ua1-x944.google.com with SMTP id z47so5745058uad.5
 for <ath10k@lists.infradead.org>; Mon, 15 Jun 2020 07:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bEeXvFEwQXQ2y1eWlGB8T8Xdt9cee0AQhh/eHPPAS7A=;
 b=IjXvDmBNK5eFh5/xjjshicx5i0C0eryt36PZLb6YWSCQUQbzhvG1iR7GQQNXMe6GMg
 QETkfdn5LSARucFRdaAqF9OtFB+jgMVp55JCfmlpdbnwKJXbddu6Vgm1rUVIPBOtV7nv
 jLtitgQgqLA7qf1vzt6Eys8MG767Vc5x0+oJ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bEeXvFEwQXQ2y1eWlGB8T8Xdt9cee0AQhh/eHPPAS7A=;
 b=kJz7tLesBRiLvl5QmkUT6nhCdqCbuXL5nCbT4mLzP7CcXUNIvvMOsHLiwIvAWBuBcF
 PPbMNepv5qxiHDtcBGQ5hMxbZUgzFdzqBS2PlJJPLDysJFxZy3wjoKBd7iPgKZ+eNwYd
 Q5QpHKrbxgGeYK//hsH3y4UgdzPIveZfUfmVzZBgvr6iV5lMLA0Qa6+MNXnHQ855HHTq
 +5tXH0Gd5d/ilXI5LjdJuz+kMBVB58iKeF6ZNRLD8kMTMZbbPjofj/vwofkrGqTJfhjw
 Z4LhwdJKv9iN5fURMyJcaWdVf9udJjZYvbqVverZHhzq2xMMnCTPy8bdccUgIaNKsUO/
 5sFQ==
X-Gm-Message-State: AOAM5307gcy/jpuk5uOvSaJlEsHhoQ3DJUjiLhlC3b/wHfSAcnMlJnpz
 nKvScv9mec4/DgmlS9hC8Cjkor7/JO0=
X-Google-Smtp-Source: ABdhPJzWdK3hvbmI+OS7V/vWPwOUZsBDfOCD16pQ8YSJVbZGrfN/NW2DeKqrq4tojRQDmFUJdYs4jw==
X-Received: by 2002:ab0:660a:: with SMTP id r10mr18897830uam.49.1592231986850; 
 Mon, 15 Jun 2020 07:39:46 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com.
 [209.85.217.52])
 by smtp.gmail.com with ESMTPSA id o191sm1600105vko.16.2020.06.15.07.39.45
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Jun 2020 07:39:46 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id o2so9489345vsr.0
 for <ath10k@lists.infradead.org>; Mon, 15 Jun 2020 07:39:45 -0700 (PDT)
X-Received: by 2002:a67:1703:: with SMTP id 3mr20641752vsx.169.1592231985028; 
 Mon, 15 Jun 2020 07:39:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200609082015.1.Ife398994e5a0a6830e4d4a16306ef36e0144e7ba@changeid>
 <20200615143237.519F3C433C8@smtp.codeaurora.org>
In-Reply-To: <20200615143237.519F3C433C8@smtp.codeaurora.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 15 Jun 2020 07:39:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VaexjLaaZJSxndTEi6KCFaPWW=sUt6hjy9=0Qn68kH1g@mail.gmail.com>
Message-ID: <CAD=FV=VaexjLaaZJSxndTEi6KCFaPWW=sUt6hjy9=0Qn68kH1g@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Wait until copy complete is actually done before
 completing
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_073948_836224_46E049ED 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
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

On Mon, Jun 15, 2020 at 7:32 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Douglas Anderson <dianders@chromium.org> wrote:
>
> > On wcn3990 we have "per_ce_irq = true".  That makes the
> > ath10k_ce_interrupt_summary() function always return 0xfff. The
> > ath10k_ce_per_engine_service_any() function will see this and think
> > that _all_ copy engines have an interrupt.  Without checking, the
> > ath10k_ce_per_engine_service() assumes that if it's called that the
> > "copy complete" (cc) interrupt fired.  This combination seems bad.
> >
> > Let's add a check to make sure that the "copy complete" interrupt
> > actually fired in ath10k_ce_per_engine_service().
> >
> > This might fix a hard-to-reproduce failure where it appears that the
> > copy complete handlers run before the copy is really complete.
> > Specifically a symptom was that we were seeing this on a Qualcomm
> > sc7180 board:
> >   arm-smmu 15000000.iommu: Unhandled context fault:
> >   fsr=0x402, iova=0x7fdd45780, fsynr=0x30003, cbfrsynra=0xc1, cb=10
> >
> > Even on platforms that don't have wcn3990 this still seems like it
> > would be a sane thing to do.  Specifically the current IRQ handler
> > comments indicate that there might be other misc interrupt sources
> > firing that need to be cleared.  If one of those sources was the one
> > that caused the IRQ handler to be called it would also be important to
> > double-check that the interrupt we cared about actually fired.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>
> ath10k firmwares work very differently, on what hardware and firmware did you
> test this? I'll add that information to the commit log.

I am running on a Qualcomm sc7180 SoC.

> --
> https://patchwork.kernel.org/patch/11595887/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
