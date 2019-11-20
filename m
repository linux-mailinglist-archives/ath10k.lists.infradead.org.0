Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E98103516
	for <lists+ath10k@lfdr.de>; Wed, 20 Nov 2019 08:20:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3wpFSIpES/L/+/+T2LajIgddhA4vvqHoNtSGXq75xA=; b=I4uYqpEGa/4mQT
	tIaEepMLu6kcC1YEvU+at8UwNjBIaeDx52cLguHJDedSrz2hgDhoXh9EgEQoSII2j8ALyiuYUTnTD
	y7KeZ5B9JtBpMxS1nDUBMdk2ZoHBJluDMyDvL5dj/ncLRGVTqkQlbEtAlU0jrEYlecBUmH0/4QhrP
	hYU5ZJSVYyT/h1CUzUK5EwGMA0I40uxtBoKcRrdz+1JlT/DWV0fmsGgdxEB2c9LjB7Se1oBVme55K
	asku60a+8QrRmevd7EReFGKZ+wFFU8syJ/TQt0n9hXlXvZqtP4i6DXdY9+VdkV9IFNa7bWCS/2NgK
	iMQjFmmKlRvDFeN5IdNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXKHe-0003v0-DI; Wed, 20 Nov 2019 07:20:14 +0000
Received: from a27-18.smtp-out.us-west-2.amazonses.com ([54.240.27.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXKHa-0003Sz-Kr
 for ath10k@lists.infradead.org; Wed, 20 Nov 2019 07:20:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574234405;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type;
 bh=REOd7Vs1wlMJlS39Ft1QjmPJxJV9TOjNK+aSCA7YT2U=;
 b=H8WYZLKS/g3sul0EpGglyFRS3+LwNTEeEx1WkUoZkik358kRgZrSwewiSqlHvYP3
 zSnpILFhHBeT/AW2SwSi9hk4ua2zCnoNo24RgBBPeH5Iai5Iui08RVtuWjjkCmHr+lq
 EArijmB6jbHfgvcc3o3IzZ1rYvO42nuqpmxN9xLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574234405;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Feedback-ID;
 bh=REOd7Vs1wlMJlS39Ft1QjmPJxJV9TOjNK+aSCA7YT2U=;
 b=RGg5JrVDEf5RLqbrkktDKNXTJ3YO+v0kxXgUW2l0LJgpod12fsh6+UTL13Dz0IwG
 ueAwXdAcEALsg/nJVIFxTsarxuBoJkfnx18GfmueLkUf6MQTqu6JETMGZxsoX0n7Ne+
 I7lJSTLzeck+LBuxQBak4QUsi2L6JlDZHC3V9/bI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7F622C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: wgong@codeaurora.org
Subject: Re: [PATCH v2 3/3] mmc: core: Re-work HW reset for SDIO cards
References: <20191109103046.26445-1-ulf.hansson@linaro.org>
 <20191109103046.26445-4-ulf.hansson@linaro.org>
 <CAD=FV=VHReD5qnvcQLHvfgKHnHLbfDLZHwXtY-LV5uy_VCYpPA@mail.gmail.com>
 <CAPDyKFrCyJBz2=RzKPxqn0FSEq500=dEDsTUWYZeoFKWvSRAdA@mail.gmail.com>
 <87zhgr5af6.fsf@codeaurora.org>
 <6e6b53b28581a8f1a2944ca0bc65311e@codeaurora.org>
Date: Wed, 20 Nov 2019 07:20:05 +0000
In-Reply-To: <6e6b53b28581a8f1a2944ca0bc65311e@codeaurora.org>
 (wgong@codeaurora.org's message of "Wed, 20 Nov 2019 15:10:13 +0800")
Message-ID: <0101016e87aeb8b0-b01c1843-540b-48a0-9853-20a3877d8d07-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.20-54.240.27.18
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_232010_711566_E35F886A 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.18 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Tony Lindgren <tony@atomide.com>,
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

wgong@codeaurora.org writes:

> On 2019-11-20 14:28, Kalle Valo wrote:
>> + wen, ath10k
>>
>> Ulf Hansson <ulf.hansson@linaro.org> writes:
>>
>>> On Tue, 12 Nov 2019 at 01:33, Doug Anderson <dianders@chromium.org>
>>> wrote:
>>>>
>>>> Hi,
>>>>
>>>> On Sat, Nov 9, 2019 at 2:31 AM Ulf Hansson
>>>> <ulf.hansson@linaro.org> wrote:
>>>> >
>>>> > diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
>>>> > index 6f8342702c73..abf8f5eb0a1c 100644
>>>> > --- a/drivers/mmc/core/core.c
>>>> > +++ b/drivers/mmc/core/core.c
>>>> > @@ -1469,8 +1469,7 @@ void mmc_detach_bus(struct mmc_host *host)
>>>> >         mmc_bus_put(host);
>>>> >  }
>>>> >
>>>> > -static void _mmc_detect_change(struct mmc_host *host, unsigned long delay,
>>>> > -                               bool cd_irq)
>>>> > +void _mmc_detect_change(struct mmc_host *host, unsigned long delay, bool cd_irq)
>>>> >  {
>>>> >         /*
>>>> >          * If the device is configured as wakeup, we prevent a new sleep for
>>>> > @@ -2129,7 +2128,7 @@ int mmc_hw_reset(struct mmc_host *host)
>>>> >         ret = host->bus_ops->hw_reset(host);
>>>> >         mmc_bus_put(host);
>>>> >
>>>> > -       if (ret)
>>>> > +       if (ret < 0)
>>>> >                 pr_warn("%s: tried to HW reset card, got error %d\n",
>>>> >                         mmc_hostname(host), ret);
>>>>
>>>> Other callers besides marvell need to be updated?  In theory only
>>>> SDIO
>>>> should have positive return values so I guess we don't care about the
>>>> caller in drivers/mmc/core/block.c, right?
>>>
>>> Correct, but maybe I should add some more information about that in a
>>> function header of mmc_hw_reset(). Let me consider doing that as a
>>> change on top.
>>>
>>>>  What about:
>>>>
>>>> drivers/net/wireless/ath/ath10k/sdio.c
>>>>
>>>> ...I guess I don't know if there is more than one function probed
>>>> there.  Maybe there's not and thus we're fine here too?
>>>
>>> Well, honestly I don't know.
>>>
>>> In any case, that would mean the driver is broken anyways and needs to
>>> be fixed. At least that's my approach to doing this change.
>>
>> Wen, does QCA6174 or QCA9377 SDIO devices have other SDIO functions,
>> for
>> example bluetooth? I'm just wondering how should we handle this in
>> ath10k.
>
> it does not have other SDIO functions for QCA6174 or QCA9377.

Thanks, then I don't think we need to change anything in ath10k.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
