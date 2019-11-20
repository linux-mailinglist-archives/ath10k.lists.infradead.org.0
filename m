Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1003F103449
	for <lists+ath10k@lfdr.de>; Wed, 20 Nov 2019 07:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGg7l5wucqWUego4pK7Ph+rKKqnSBMVVV9apdEvAjDU=; b=bK/hpgl5I2Fks+
	Fh4IXaXtngdGxhnV/1TYlRlkpvaBULXp27id4wpxkntJYrBG0IhXt2dOv9Xyu/ZaGGbLJ8s8ovXIv
	BMymeufV/e4nyjdDteIJRDEFUKhQRbK8esPqa36r4SQZPZIGA4udIVLl77TzMn0PlNG7r7ctqPjl+
	gtT0rRyLMpT2+ywDRMmBxTi1G7ogj/kyknk9rHaWhcG4V3ntQmoY+Rqga8IouJ7W7NUPU2rO0avZG
	jZFNGIYibwaCi3sDK0FX+HDYZCTWhI+M8UKUWq8y5ztAXi0wsZm5v2Mzfd+J9KQr4ufST56zdGC+Z
	lkC+i2wfSSN1U6Hi0DqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJTW-0005vu-Mw; Wed, 20 Nov 2019 06:28:26 +0000
Received: from a27-55.smtp-out.us-west-2.amazonses.com ([54.240.27.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJTS-0005v2-Gs
 for ath10k@lists.infradead.org; Wed, 20 Nov 2019 06:28:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574231299;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type;
 bh=2DbCZfizzX83H18NXUU+cijwVZjvJWmnkVQmn16iT30=;
 b=ljA/bONrW7jCstsrxd/VmEdCaC/SwSDhi8tkYlbky0cBG9zaVFOgc6PYW7y/hdt6
 Dv1DI8tNFfFHmk1w5+/BVQxmY5+PgETe3A2kYX0KvWX5EbmpO/h+4Huk8CZGsTd9JeD
 k3U3GXozIzuqqOoP79uzbWqO8AN48ZTPK5Ww5H1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574231299;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Feedback-ID;
 bh=2DbCZfizzX83H18NXUU+cijwVZjvJWmnkVQmn16iT30=;
 b=XZQvEE4wJcuU5A5NuBQo+uebD0WFzfhKhB6lpTMGKEORqce5rYF8v/BwNh4lzxv6
 qmV5tMg3+c0bcAczzWzJ+NOgyDM2ZsC4/cP8zX8FsmUD2+3+gMbV2/mhgvK7PQMuM/U
 wGs6USKN0erbUxnHJWgMeubO7elt35vjScXXUdtM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 925BDC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v2 3/3] mmc: core: Re-work HW reset for SDIO cards
References: <20191109103046.26445-1-ulf.hansson@linaro.org>
 <20191109103046.26445-4-ulf.hansson@linaro.org>
 <CAD=FV=VHReD5qnvcQLHvfgKHnHLbfDLZHwXtY-LV5uy_VCYpPA@mail.gmail.com>
 <CAPDyKFrCyJBz2=RzKPxqn0FSEq500=dEDsTUWYZeoFKWvSRAdA@mail.gmail.com>
Date: Wed, 20 Nov 2019 06:28:19 +0000
In-Reply-To: <CAPDyKFrCyJBz2=RzKPxqn0FSEq500=dEDsTUWYZeoFKWvSRAdA@mail.gmail.com>
 (Ulf Hansson's message of "Tue, 12 Nov 2019 13:19:55 +0100")
Message-ID: <0101016e877f56b2-1dd9e926-2170-4c9d-bb4b-0116d39e5f96-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.20-54.240.27.55
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_222822_641196_E82D7724 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.55 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.240.27.55 listed in wl.mailspike.net]
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
 Matthias Kaehlcke <mka@chromium.org>, Wen Gong <wgong@codeaurora.org>,
 Eyal Reizer <eyalreizer@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

+ wen, ath10k

Ulf Hansson <ulf.hansson@linaro.org> writes:

> On Tue, 12 Nov 2019 at 01:33, Doug Anderson <dianders@chromium.org> wrote:
>>
>> Hi,
>>
>> On Sat, Nov 9, 2019 at 2:31 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>> >
>> > diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
>> > index 6f8342702c73..abf8f5eb0a1c 100644
>> > --- a/drivers/mmc/core/core.c
>> > +++ b/drivers/mmc/core/core.c
>> > @@ -1469,8 +1469,7 @@ void mmc_detach_bus(struct mmc_host *host)
>> >         mmc_bus_put(host);
>> >  }
>> >
>> > -static void _mmc_detect_change(struct mmc_host *host, unsigned long delay,
>> > -                               bool cd_irq)
>> > +void _mmc_detect_change(struct mmc_host *host, unsigned long delay, bool cd_irq)
>> >  {
>> >         /*
>> >          * If the device is configured as wakeup, we prevent a new sleep for
>> > @@ -2129,7 +2128,7 @@ int mmc_hw_reset(struct mmc_host *host)
>> >         ret = host->bus_ops->hw_reset(host);
>> >         mmc_bus_put(host);
>> >
>> > -       if (ret)
>> > +       if (ret < 0)
>> >                 pr_warn("%s: tried to HW reset card, got error %d\n",
>> >                         mmc_hostname(host), ret);
>>
>> Other callers besides marvell need to be updated?  In theory only SDIO
>> should have positive return values so I guess we don't care about the
>> caller in drivers/mmc/core/block.c, right?
>
> Correct, but maybe I should add some more information about that in a
> function header of mmc_hw_reset(). Let me consider doing that as a
> change on top.
>
>>  What about:
>>
>> drivers/net/wireless/ath/ath10k/sdio.c
>>
>> ...I guess I don't know if there is more than one function probed
>> there.  Maybe there's not and thus we're fine here too?
>
> Well, honestly I don't know.
>
> In any case, that would mean the driver is broken anyways and needs to
> be fixed. At least that's my approach to doing this change.

Wen, does QCA6174 or QCA9377 SDIO devices have other SDIO functions, for
example bluetooth? I'm just wondering how should we handle this in
ath10k.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
