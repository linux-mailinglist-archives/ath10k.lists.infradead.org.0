Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DFD1039A0
	for <lists+ath10k@lfdr.de>; Wed, 20 Nov 2019 13:11:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgD8svlNDAWe1UH/mcsTxen2JJ5IcTXUZbc6ls1B53o=; b=XNpCt3aS9swh3c
	hDDrAmzN72kYODnBFw1q+K+VmVukiZmhgXH4/9WQL/wRxQqFXvB114Q7S9sPwFebvVx/fefphHrLH
	lLt6qq8nlGJ27eae+2Fwu7SrXACsZbjkyw8s1/bmQgMLYOdl/zL3iwyKC26L/N8LciVwNVcozjIAG
	00aWwADhdfEe2+OlGfYAJVXsrsr5g7vWwDY7JbVOiMR8KR0UhNHqKTl57guCQfnc61OnxHAx8aSeU
	zLcLDBDvmg3r+Ju0/AYPYJ/pJyvYFDpNNsV3VoO5LBBnvmMrBdlQJoU1AcxUDSAsMu2mOKIvE0b+S
	tmI0hhpmrr7e8viJVqCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOpQ-0000XO-IO; Wed, 20 Nov 2019 12:11:24 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOpM-0000WT-Ii
 for ath10k@lists.infradead.org; Wed, 20 Nov 2019 12:11:22 +0000
Received: by mail-vk1-xa42.google.com with SMTP id d10so5963624vke.3
 for <ath10k@lists.infradead.org>; Wed, 20 Nov 2019 04:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5TTQmUnxx/A5I0Bxrjss+V5U2UZVsS2bqEfobf0oldI=;
 b=LkRSXf+ELb+h/vladC+QqVFmluR42y1NL2iY4BeJP3MohYqlUCaT0HwRUFtzJuhNph
 dy9vAoWzKulW6iqBvsbbT2++OLQDpmk+MEP59p57QtKW+uHyvX7uqZLzaz73CdRvsuJi
 5qAXSzywZmUj0D9w0LHoKgXV9WI+isr72MKXfDaPHDngF2gNcWULcFx2jzPBf8AOmBwq
 Lkw7wiOctL9NKFuECXwjCPBkwCxSsSDFcMS5C3v9t4/8MY21LOcohl4sdDqQgM1IWaYP
 insmHLPIJIUJ3k7nWEaOI3AIhotdkl8gciZnSXCkgmWKxGNuve0olbMxWab0kAVqPjXD
 okzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5TTQmUnxx/A5I0Bxrjss+V5U2UZVsS2bqEfobf0oldI=;
 b=UU476NEyAHBdmbYf5sN9TX4oXNlpoXt6Fu3mGFyGRPSuPpeLkGYMTctdOmdVXZdvtl
 u7/2B5ecHRu/ZjtF84MIFB09nWOgBCRnvzVcU83FTnd1Bnik3j1J7HNe0R/D9HkjL+0d
 3xIwKF/xPU2WkV6mtw/y/9LqjIs43Gc+FbuE1XexJmiSZQXHZKi0tc8EbJdrIpafDzLE
 uJCSFWGsjCAChe3y4bvZuJ1qtg0Db8EXgRJ/0MBygQx1fU5JSPlSlGiglLF32O6iw5cA
 rZ77d1Ti5NAtL2roXj6oqiwyJgUECF/Q3ujfmWB+RLEA1f5x8FzVpHcRJvaH1dGGnZ+7
 9vtA==
X-Gm-Message-State: APjAAAXl9QK/4VT5YSURcLVnCzDA6kY1H6ywtAEL/Qy7XuxwbUAGrKEt
 24bgHW47ltPXcPmTj+ruCjfB0WkIyNHgqeEJG9cYJL9C
X-Google-Smtp-Source: APXvYqx1NvzsYFgHrpNCMAwcfciLmzVErw4FNgcN0Ycp3GE4yO5vawQgneqbBpXdQIy8aO9tIPcLZWf4/9kDJf0vkC0=
X-Received: by 2002:ac5:cd47:: with SMTP id n7mr1215984vkm.101.1574251878287; 
 Wed, 20 Nov 2019 04:11:18 -0800 (PST)
MIME-Version: 1.0
References: <20191109103046.26445-1-ulf.hansson@linaro.org>
 <20191109103046.26445-4-ulf.hansson@linaro.org>
 <CAD=FV=VHReD5qnvcQLHvfgKHnHLbfDLZHwXtY-LV5uy_VCYpPA@mail.gmail.com>
 <CAPDyKFrCyJBz2=RzKPxqn0FSEq500=dEDsTUWYZeoFKWvSRAdA@mail.gmail.com>
 <87zhgr5af6.fsf@codeaurora.org>
 <6e6b53b28581a8f1a2944ca0bc65311e@codeaurora.org>
 <0101016e87aeb8b6-761ad812-5da7-4b0d-8cae-c69633d90de0-000000@us-west-2.amazonses.com>
In-Reply-To: <0101016e87aeb8b6-761ad812-5da7-4b0d-8cae-c69633d90de0-000000@us-west-2.amazonses.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 20 Nov 2019 13:10:42 +0100
Message-ID: <CAPDyKFoWxw9r=GZhvF=TxHxo=zRfKr0hknEeQNPdfwPx4ORxuQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] mmc: core: Re-work HW reset for SDIO cards
To: Kalle Valo <kvalo@codeaurora.org>, Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_041120_645541_015028F8 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tony Lindgren <tony@atomide.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Brian Norris <briannorris@chromium.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Doug Anderson <dianders@chromium.org>, ath10k@lists.infradead.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Erik Stromdahl <erik.stromdahl@gmail.com>,
 Matthias Kaehlcke <mka@chromium.org>, Eyal Reizer <eyalreizer@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 at 08:20, Kalle Valo <kvalo@codeaurora.org> wrote:
>
> wgong@codeaurora.org writes:
>
> > On 2019-11-20 14:28, Kalle Valo wrote:
> >> + wen, ath10k
> >>
> >> Ulf Hansson <ulf.hansson@linaro.org> writes:
> >>
> >>> On Tue, 12 Nov 2019 at 01:33, Doug Anderson <dianders@chromium.org>
> >>> wrote:
> >>>>
> >>>> Hi,
> >>>>
> >>>> On Sat, Nov 9, 2019 at 2:31 AM Ulf Hansson
> >>>> <ulf.hansson@linaro.org> wrote:
> >>>> >
> >>>> > diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
> >>>> > index 6f8342702c73..abf8f5eb0a1c 100644
> >>>> > --- a/drivers/mmc/core/core.c
> >>>> > +++ b/drivers/mmc/core/core.c
> >>>> > @@ -1469,8 +1469,7 @@ void mmc_detach_bus(struct mmc_host *host)
> >>>> >         mmc_bus_put(host);
> >>>> >  }
> >>>> >
> >>>> > -static void _mmc_detect_change(struct mmc_host *host, unsigned long delay,
> >>>> > -                               bool cd_irq)
> >>>> > +void _mmc_detect_change(struct mmc_host *host, unsigned long delay, bool cd_irq)
> >>>> >  {
> >>>> >         /*
> >>>> >          * If the device is configured as wakeup, we prevent a new sleep for
> >>>> > @@ -2129,7 +2128,7 @@ int mmc_hw_reset(struct mmc_host *host)
> >>>> >         ret = host->bus_ops->hw_reset(host);
> >>>> >         mmc_bus_put(host);
> >>>> >
> >>>> > -       if (ret)
> >>>> > +       if (ret < 0)
> >>>> >                 pr_warn("%s: tried to HW reset card, got error %d\n",
> >>>> >                         mmc_hostname(host), ret);
> >>>>
> >>>> Other callers besides marvell need to be updated?  In theory only
> >>>> SDIO
> >>>> should have positive return values so I guess we don't care about the
> >>>> caller in drivers/mmc/core/block.c, right?
> >>>
> >>> Correct, but maybe I should add some more information about that in a
> >>> function header of mmc_hw_reset(). Let me consider doing that as a
> >>> change on top.
> >>>
> >>>>  What about:
> >>>>
> >>>> drivers/net/wireless/ath/ath10k/sdio.c
> >>>>
> >>>> ...I guess I don't know if there is more than one function probed
> >>>> there.  Maybe there's not and thus we're fine here too?
> >>>
> >>> Well, honestly I don't know.
> >>>
> >>> In any case, that would mean the driver is broken anyways and needs to
> >>> be fixed. At least that's my approach to doing this change.
> >>
> >> Wen, does QCA6174 or QCA9377 SDIO devices have other SDIO functions,
> >> for
> >> example bluetooth? I'm just wondering how should we handle this in
> >> ath10k.
> >
> > it does not have other SDIO functions for QCA6174 or QCA9377.
>
> Thanks, then I don't think we need to change anything in ath10k.
>
> --
> Kalle Valo

Kalle, Wen - thanks for looking into this and for the confirmation.

One thing though, perhaps it's worth to add this as a comment in the
code for ath10k, where mmc_hw_reset() is called. Just to make it
clear.

Kind regards
Uffe

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
