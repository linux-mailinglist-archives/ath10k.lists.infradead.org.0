Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FE41F9B13
	for <lists+ath10k@lfdr.de>; Mon, 15 Jun 2020 16:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EvU9bA0J4bxxPdRayC5afEZtq5omVMTVl7RpDZWyLks=; b=U1nMkiEIkPAuY1
	uoO61cLdZzDFxM1RMGhalrmkk32z/rMQcHNtPeCapqBKUQ9z/Vfp4qDpROD+TZxp0rPMXWqvKIb0l
	Qg0lIgqk2vTaDz3Tui/u7UwjFGcSHGR0gCbRrxycREeAkX1i7zuR6zhR+qEf223neoStG7u5ArPHM
	kPMQv3nI2KmhbhKv6uCy5aU3vp/C2P4xcXoHxE3Jnhx//kqIq7XIc3xAOf2xwo/VmNzyWw6A5RiNL
	7B4oaJrmgGmBhX44+73V40vWp5oZ8o9BNodXb8irxa4fAqE8zhEjsH8bGPN5YRWMFgmoDteLnTMjH
	+JRixjQebaMqvRMYyzAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqXO-00054g-PB; Mon, 15 Jun 2020 14:56:38 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqXI-000542-1c
 for ath10k@lists.infradead.org; Mon, 15 Jun 2020 14:56:36 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592232994; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=RTqnmaAhKbyyX5m1MHI2x1eM5OG8zLQJxTp6BIGwfIk=;
 b=ffNKK/c64j1GQNR54vNuyufjjpx7JOMxPH3L+B+wmGecBfIVxfatxXH3nf2rioJbrnpPcfdJ
 0dyYxHiQbKbi7YgZiFSkvUnI6471MQgE3BunsrkSglnSyGkHd+CLAtOaeihDRBrQwZNxYewJ
 +NPn5qd8hM+W8U5nF1HGnZvEeHE=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n08.prod.us-west-2.postgun.com with SMTP id
 5ee78c186f2ee827da872ea5 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 15 Jun 2020 14:56:24
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3D405C43395; Mon, 15 Jun 2020 14:56:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EB0F6C433CA;
 Mon, 15 Jun 2020 14:56:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EB0F6C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ath10k: Wait until copy complete is actually done before
 completing
References: <20200609082015.1.Ife398994e5a0a6830e4d4a16306ef36e0144e7ba@changeid>
 <20200615143237.519F3C433C8@smtp.codeaurora.org>
 <CAD=FV=VaexjLaaZJSxndTEi6KCFaPWW=sUt6hjy9=0Qn68kH1g@mail.gmail.com>
Date: Mon, 15 Jun 2020 17:56:19 +0300
In-Reply-To: <CAD=FV=VaexjLaaZJSxndTEi6KCFaPWW=sUt6hjy9=0Qn68kH1g@mail.gmail.com>
 (Doug Anderson's message of "Mon, 15 Jun 2020 07:39:33 -0700")
Message-ID: <87zh94idik.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_075634_614022_5D84BD69 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
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

Doug Anderson <dianders@chromium.org> writes:

> On Mon, Jun 15, 2020 at 7:32 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>>
>> Douglas Anderson <dianders@chromium.org> wrote:
>>
>> > On wcn3990 we have "per_ce_irq = true".  That makes the
>> > ath10k_ce_interrupt_summary() function always return 0xfff. The
>> > ath10k_ce_per_engine_service_any() function will see this and think
>> > that _all_ copy engines have an interrupt.  Without checking, the
>> > ath10k_ce_per_engine_service() assumes that if it's called that the
>> > "copy complete" (cc) interrupt fired.  This combination seems bad.
>> >
>> > Let's add a check to make sure that the "copy complete" interrupt
>> > actually fired in ath10k_ce_per_engine_service().
>> >
>> > This might fix a hard-to-reproduce failure where it appears that the
>> > copy complete handlers run before the copy is really complete.
>> > Specifically a symptom was that we were seeing this on a Qualcomm
>> > sc7180 board:
>> >   arm-smmu 15000000.iommu: Unhandled context fault:
>> >   fsr=0x402, iova=0x7fdd45780, fsynr=0x30003, cbfrsynra=0xc1, cb=10
>> >
>> > Even on platforms that don't have wcn3990 this still seems like it
>> > would be a sane thing to do.  Specifically the current IRQ handler
>> > comments indicate that there might be other misc interrupt sources
>> > firing that need to be cleared.  If one of those sources was the one
>> > that caused the IRQ handler to be called it would also be important to
>> > double-check that the interrupt we cared about actually fired.
>> >
>> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>> > Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>>
>> ath10k firmwares work very differently, on what hardware and firmware did you
>> test this? I'll add that information to the commit log.
>
> I am running on a Qualcomm sc7180 SoC.

Sorry, I was unclear, I meant the ath10k hardware :) I guess WCN3990 but
what firmware version?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
