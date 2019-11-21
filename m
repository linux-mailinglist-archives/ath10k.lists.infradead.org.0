Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A7C104886
	for <lists+ath10k@lfdr.de>; Thu, 21 Nov 2019 03:30:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oUC1fugXvWPzK8pwJ3174xReSwoiKVzf+k0yQCyS/GQ=; b=HajuHMtVpf0q1oJSHsyaud/wo
	CiBq3zkRk4P+fFt3lrDn83wc7+p3u8B8u/rkHJMJ64aaW4f+H4fmcIMYZaJb+FwRlNK4M9hILiWxj
	LqC0f3R4Su9p1C8kKrBcGmkcsgwLzqlayHv0EoIY3BuK9IaZRE2MYfphiwaiBuLxhXA3UY2x0rTxN
	DcxhlZqOmzDRoFkbbtLJ8hCr/4wfbP6JcumRtpG2V9hF+EfoTyQyExPg9xzHnsTZDKQ2HQwtB7gFf
	DC3SAnnBSKON8M1tAG8v5C7ICJoVk3OhBZa1uD6R1oR4eSXYvyel2bS2mVL7hDS2Pi+2dX3uSrQBw
	GU8/NtgWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXcEF-00038O-6e; Thu, 21 Nov 2019 02:29:55 +0000
Received: from a27-21.smtp-out.us-west-2.amazonses.com ([54.240.27.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXcEB-00037k-7p
 for ath10k@lists.infradead.org; Thu, 21 Nov 2019 02:29:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574303386;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:In-Reply-To:References:Message-ID;
 bh=o4LGGG49L2mFI3Z0m3DVLA0OdYWIS2drsZMLKtkysYw=;
 b=HS+UFTwi4IDEtBwua0LLdglMbIlFUeZV1Xj2WHxzhr8yzHpikUdFZKXqACIjTgWb
 A3gzShVroagVkMqnBDUagOUFXxs2jJtzwUYkzTN2iD0qWQj+ie6D6js0JmSJVqJEiiF
 gvfZyh4Mf1vaXq+UdSezx7gHJ8pHWlhmFfITjPIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574303386;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:In-Reply-To:References:Message-ID:Feedback-ID;
 bh=o4LGGG49L2mFI3Z0m3DVLA0OdYWIS2drsZMLKtkysYw=;
 b=LWP1mzB3HNmQziis7476H49PDXY6yaspGCDNJFC12HG36GfK6aijzscjfVEkLVP5
 D/wxkYU2Uwp+4p7ZSROF2bdA5xwyIdW7YMGFgudB4XPUr9mFZY5j81wDGStKFT15+Gj
 1zVxw7GBS3ZdhY+46HdpvWUCGf4Eika3b0zhaj6Q=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
MIME-Version: 1.0
Date: Thu, 21 Nov 2019 02:29:46 +0000
From: wgong@codeaurora.org
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v2 3/3] mmc: core: Re-work HW reset for SDIO cards
In-Reply-To: <87zhgqmref.fsf@kamboji.qca.qualcomm.com>
References: <20191109103046.26445-1-ulf.hansson@linaro.org>
 <20191109103046.26445-4-ulf.hansson@linaro.org>
 <CAD=FV=VHReD5qnvcQLHvfgKHnHLbfDLZHwXtY-LV5uy_VCYpPA@mail.gmail.com>
 <CAPDyKFrCyJBz2=RzKPxqn0FSEq500=dEDsTUWYZeoFKWvSRAdA@mail.gmail.com>
 <87zhgr5af6.fsf@codeaurora.org>
 <6e6b53b28581a8f1a2944ca0bc65311e@codeaurora.org>
 <0101016e87aeb8b6-761ad812-5da7-4b0d-8cae-c69633d90de0-000000@us-west-2.amazonses.com>
 <CAPDyKFoWxw9r=GZhvF=TxHxo=zRfKr0hknEeQNPdfwPx4ORxuQ@mail.gmail.com>
 <87zhgqmref.fsf@kamboji.qca.qualcomm.com>
Message-ID: <0101016e8bcb4b75-02a036fd-8635-4994-ba76-e3cacaa64a61-000000@us-west-2.amazonses.com>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-SES-Outgoing: 2019.11.21-54.240.27.21
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_182951_308953_33C81CA3 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.21 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-11-21 00:41, Kalle Valo wrote:
> Ulf Hansson <ulf.hansson@linaro.org> writes:
> 
>> On Wed, 20 Nov 2019 at 08:20, Kalle Valo <kvalo@codeaurora.org> wrote:
>>> 
>>> wgong@codeaurora.org writes:
>>> 
>>> > On 2019-11-20 14:28, Kalle Valo wrote:
>>> >> + wen, ath10k
>>> >>
>>> >> Ulf Hansson <ulf.hansson@linaro.org> writes:
>>> >>
>>> >>> On Tue, 12 Nov 2019 at 01:33, Doug Anderson <dianders@chromium.org>
>>> >>> wrote:
>>> >>>>
>>> >>>> Hi,
>>> >>>>
>>> >>>> On Sat, Nov 9, 2019 at 2:31 AM Ulf Hansson
>>> >>>> <ulf.hansson@linaro.org> wrote:
>>> >>>> >
>>> >>>> > diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
>>> >>>> > index 6f8342702c73..abf8f5eb0a1c 100644
>>> >>>> > --- a/drivers/mmc/core/core.c
>>> >>>> > +++ b/drivers/mmc/core/core.c
>>> >>>> > @@ -1469,8 +1469,7 @@ void mmc_detach_bus(struct mmc_host *host)
>>> >>>> >         mmc_bus_put(host);
>>> >>>> >  }
>>> >>>> >
>>> >>>> > -static void _mmc_detect_change(struct mmc_host *host, unsigned long delay,
>>> >>>> > -                               bool cd_irq)
>>> >>>> > +void _mmc_detect_change(struct mmc_host *host, unsigned long delay, bool cd_irq)
>>> >>>> >  {
>>> >>>> >         /*
>>> >>>> >          * If the device is configured as wakeup, we prevent a new sleep for
>>> >>>> > @@ -2129,7 +2128,7 @@ int mmc_hw_reset(struct mmc_host *host)
>>> >>>> >         ret = host->bus_ops->hw_reset(host);
>>> >>>> >         mmc_bus_put(host);
>>> >>>> >
>>> >>>> > -       if (ret)
>>> >>>> > +       if (ret < 0)
>>> >>>> >                 pr_warn("%s: tried to HW reset card, got error %d\n",
>>> >>>> >                         mmc_hostname(host), ret);
>>> >>>>
>>> >>>> Other callers besides marvell need to be updated?  In theory only
>>> >>>> SDIO
>>> >>>> should have positive return values so I guess we don't care about the
>>> >>>> caller in drivers/mmc/core/block.c, right?
>>> >>>
>>> >>> Correct, but maybe I should add some more information about that in a
>>> >>> function header of mmc_hw_reset(). Let me consider doing that as a
>>> >>> change on top.
>>> >>>
>>> >>>>  What about:
>>> >>>>
>>> >>>> drivers/net/wireless/ath/ath10k/sdio.c
>>> >>>>
>>> >>>> ...I guess I don't know if there is more than one function probed
>>> >>>> there.  Maybe there's not and thus we're fine here too?
>>> >>>
>>> >>> Well, honestly I don't know.
>>> >>>
>>> >>> In any case, that would mean the driver is broken anyways and needs to
>>> >>> be fixed. At least that's my approach to doing this change.
>>> >>
>>> >> Wen, does QCA6174 or QCA9377 SDIO devices have other SDIO functions,
>>> >> for
>>> >> example bluetooth? I'm just wondering how should we handle this in
>>> >> ath10k.
>>> >
>>> > it does not have other SDIO functions for QCA6174 or QCA9377.
>>> 
>>> Thanks, then I don't think we need to change anything in ath10k.
>>> 
>>> --
>>> Kalle Valo
>> 
>> Kalle, Wen - thanks for looking into this and for the confirmation.
>> 
>> One thing though, perhaps it's worth to add this as a comment in the
>> code for ath10k, where mmc_hw_reset() is called. Just to make it
>> clear.
> 
> Good point. Wen, can you send a patch, please?
Kalle, sure, I will send the patch.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
