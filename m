Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C63C010410B
	for <lists+ath10k@lfdr.de>; Wed, 20 Nov 2019 17:42:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0PVKn4jnSf1s2Tn4JLt4mvfBIjlLyzI6YYoozrFL+A=; b=EVfqOubyebRuG1
	ibtf0at4MvKMjRHA+rPI1Fe2z+FHVAmkl4BL1n8r7QHt8Gk+ZgZBLkpkNsJ7aV4EsrodU23yvu9wj
	uA/iTQl0fby4CDFPkpSUUMTITUFvpe4+ovfKea8pY8xOWCqpjKxFQdDhMOaQ7DMgmSovGMQ16JZjX
	cjvhX4L3f6b3RDNN99tyc6IOcg/gPHLTeOjnkQhzUugeLF/JRo9cecHiFRuyI8FsqFVDG2G35nC/2
	Rijh3EGqimzsBrOwtOR7Y25ChNzASvJ7v6uOtDlWBsQL5Horqc9PEsRajAFJqoSYdW9W9r9uR7M83
	6mrKrlwYzAfbQL00O22A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXT3J-0001eN-0l; Wed, 20 Nov 2019 16:42:01 +0000
Received: from a27-18.smtp-out.us-west-2.amazonses.com ([54.240.27.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXT3E-0001dV-G4
 for ath10k@lists.infradead.org; Wed, 20 Nov 2019 16:41:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574268110;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type;
 bh=NjjSVG5LUmH7QQy4Vqj8vI+LZUKs5boQ12w8VYjDuGk=;
 b=BX7aPj2pFc6Qxf1FVzduCuy/C39Zqv3gqz3kkYIJz73X6yZv9ePDDX7r+3tKtoJL
 DSErMACj1j0IFWbXufhqo6JNY+oxOGUAvIt6yfrFx/36W5i7UZjzDSP62fvbvDsNEzQ
 dmt9PqZ5ERgNAi4V8AnKOpNYiy3EMF2QeUCfOh1A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574268110;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Feedback-ID;
 bh=NjjSVG5LUmH7QQy4Vqj8vI+LZUKs5boQ12w8VYjDuGk=;
 b=P+OnblChSnwkOHYtbirMouRG8FzqwOuuq2gKSCRep/eyqMhFGze4CffDS/NSZqVQ
 3oD3xaxZuJaa2Uwxf2Ih6qg7mLWOg5WgpwW62WQye5drQ+wNq1l7SJssyGOKZD9cqi6
 VXKGwVrfQ3/bdxCR/Zb73NaH97FxnvQX4af7er20=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6AB86C447AD
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 3/3] mmc: core: Re-work HW reset for SDIO cards
References: <20191109103046.26445-1-ulf.hansson@linaro.org>
 <20191109103046.26445-4-ulf.hansson@linaro.org>
 <CAD=FV=VHReD5qnvcQLHvfgKHnHLbfDLZHwXtY-LV5uy_VCYpPA@mail.gmail.com>
 <CAPDyKFrCyJBz2=RzKPxqn0FSEq500=dEDsTUWYZeoFKWvSRAdA@mail.gmail.com>
 <87zhgr5af6.fsf@codeaurora.org>
 <6e6b53b28581a8f1a2944ca0bc65311e@codeaurora.org>
 <0101016e87aeb8b6-761ad812-5da7-4b0d-8cae-c69633d90de0-000000@us-west-2.amazonses.com>
 <CAPDyKFoWxw9r=GZhvF=TxHxo=zRfKr0hknEeQNPdfwPx4ORxuQ@mail.gmail.com>
Date: Wed, 20 Nov 2019 16:41:50 +0000
In-Reply-To: <CAPDyKFoWxw9r=GZhvF=TxHxo=zRfKr0hknEeQNPdfwPx4ORxuQ@mail.gmail.com>
 (Ulf Hansson's message of "Wed, 20 Nov 2019 13:10:42 +0100")
Message-ID: <0101016e89b106f8-d1e86a0a-db53-4ad2-a2bf-1f5e7b7a792a-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.20-54.240.27.18
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_084156_564610_C8AE0439 
X-CRM114-Status: GOOD (  18.45  )
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
Cc: Tony Lindgren <tony@atomide.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Brian Norris <briannorris@chromium.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, ath10k@lists.infradead.org,
 Doug Anderson <dianders@chromium.org>,
 Erik Stromdahl <erik.stromdahl@gmail.com>,
 Matthias Kaehlcke <mka@chromium.org>, Wen Gong <wgong@codeaurora.org>,
 Eyal Reizer <eyalreizer@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Ulf Hansson <ulf.hansson@linaro.org> writes:

> On Wed, 20 Nov 2019 at 08:20, Kalle Valo <kvalo@codeaurora.org> wrote:
>>
>> wgong@codeaurora.org writes:
>>
>> > On 2019-11-20 14:28, Kalle Valo wrote:
>> >> + wen, ath10k
>> >>
>> >> Ulf Hansson <ulf.hansson@linaro.org> writes:
>> >>
>> >>> On Tue, 12 Nov 2019 at 01:33, Doug Anderson <dianders@chromium.org>
>> >>> wrote:
>> >>>>
>> >>>> Hi,
>> >>>>
>> >>>> On Sat, Nov 9, 2019 at 2:31 AM Ulf Hansson
>> >>>> <ulf.hansson@linaro.org> wrote:
>> >>>> >
>> >>>> > diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
>> >>>> > index 6f8342702c73..abf8f5eb0a1c 100644
>> >>>> > --- a/drivers/mmc/core/core.c
>> >>>> > +++ b/drivers/mmc/core/core.c
>> >>>> > @@ -1469,8 +1469,7 @@ void mmc_detach_bus(struct mmc_host *host)
>> >>>> >         mmc_bus_put(host);
>> >>>> >  }
>> >>>> >
>> >>>> > -static void _mmc_detect_change(struct mmc_host *host, unsigned long delay,
>> >>>> > -                               bool cd_irq)
>> >>>> > +void _mmc_detect_change(struct mmc_host *host, unsigned long delay, bool cd_irq)
>> >>>> >  {
>> >>>> >         /*
>> >>>> >          * If the device is configured as wakeup, we prevent a new sleep for
>> >>>> > @@ -2129,7 +2128,7 @@ int mmc_hw_reset(struct mmc_host *host)
>> >>>> >         ret = host->bus_ops->hw_reset(host);
>> >>>> >         mmc_bus_put(host);
>> >>>> >
>> >>>> > -       if (ret)
>> >>>> > +       if (ret < 0)
>> >>>> >                 pr_warn("%s: tried to HW reset card, got error %d\n",
>> >>>> >                         mmc_hostname(host), ret);
>> >>>>
>> >>>> Other callers besides marvell need to be updated?  In theory only
>> >>>> SDIO
>> >>>> should have positive return values so I guess we don't care about the
>> >>>> caller in drivers/mmc/core/block.c, right?
>> >>>
>> >>> Correct, but maybe I should add some more information about that in a
>> >>> function header of mmc_hw_reset(). Let me consider doing that as a
>> >>> change on top.
>> >>>
>> >>>>  What about:
>> >>>>
>> >>>> drivers/net/wireless/ath/ath10k/sdio.c
>> >>>>
>> >>>> ...I guess I don't know if there is more than one function probed
>> >>>> there.  Maybe there's not and thus we're fine here too?
>> >>>
>> >>> Well, honestly I don't know.
>> >>>
>> >>> In any case, that would mean the driver is broken anyways and needs to
>> >>> be fixed. At least that's my approach to doing this change.
>> >>
>> >> Wen, does QCA6174 or QCA9377 SDIO devices have other SDIO functions,
>> >> for
>> >> example bluetooth? I'm just wondering how should we handle this in
>> >> ath10k.
>> >
>> > it does not have other SDIO functions for QCA6174 or QCA9377.
>>
>> Thanks, then I don't think we need to change anything in ath10k.
>>
>> --
>> Kalle Valo
>
> Kalle, Wen - thanks for looking into this and for the confirmation.
>
> One thing though, perhaps it's worth to add this as a comment in the
> code for ath10k, where mmc_hw_reset() is called. Just to make it
> clear.

Good point. Wen, can you send a patch, please?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
