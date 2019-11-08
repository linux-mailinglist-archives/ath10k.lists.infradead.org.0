Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DFAF422A
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 09:33:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jwKQbl0iS4Ca2orijODyrMfd8avOYXhKXlLfXFULIso=; b=EDXdpS1nC2J2Em
	kjmaRLvAQWRxUNuEWKpONKiKRfryfHxbKHwHM2CDo4C7YlqxeemuJ+tutHoheoe9DdlSrg61uxclp
	MwAP7H/rz1vfGFvlbuea517IkP1y/XxksggVDkhZK7ju7tZgQnX5/iS8/84qAlx60cTCMjQmFQECV
	gNFMClIglJkvr6+VbQRyLE6OFAh4qYYEGuiQX17QBMRNcsFzqfdktiYXpHgXfIcfQEAPJF14JSb6u
	u5WYupCNCTpdU9DoAQbQ9RsVMxI8mCxyNQFSrrbRxUNfwsPCr7bAvNkLoy1AYcn9NdXdnLvqazDFe
	DHZHQCb6XYWyLZoOOqJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzha-0007Sj-Cm; Fri, 08 Nov 2019 08:33:06 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzhV-0007RP-15
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 08:33:02 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B43B060DF5; Fri,  8 Nov 2019 08:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573201980;
 bh=Li42Bwy0+M/BNejEX2gv6nmzcZsTnhWewqmxkM3PU/I=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=lJhJ3pbzgpR6MVInBNLaR4+Oew/lJpScGLOfz+fYn45tamW/Bg2PApcLKKNL5Ocex
 UfEfqRpaf0/wMYRy1iSN9BqsKTNN1i2eA2l8IEMfiOeEMumAOcupjZmHkCebR0mAps
 lnnqrE/5FclHb5DYmblpch4NYYS9+y2lKLfEXbJ0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 728C160D85;
 Fri,  8 Nov 2019 08:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573201980;
 bh=Li42Bwy0+M/BNejEX2gv6nmzcZsTnhWewqmxkM3PU/I=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=lJhJ3pbzgpR6MVInBNLaR4+Oew/lJpScGLOfz+fYn45tamW/Bg2PApcLKKNL5Ocex
 UfEfqRpaf0/wMYRy1iSN9BqsKTNN1i2eA2l8IEMfiOeEMumAOcupjZmHkCebR0mAps
 lnnqrE/5FclHb5DYmblpch4NYYS9+y2lKLfEXbJ0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 728C160D85
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ikjoon Jang <ikjn@chromium.org>
Subject: Re: [PATCH] ath10k: disable cpuidle during downloading firmware.
References: <20191101054035.42101-1-ikjn@chromium.org>
 <87y2ws3lvh.fsf@kamboji.qca.qualcomm.com>
 <CAATdQgDhYWgHkujo9m1iUrhSu1Bt9A4C8eS82TD=W22_eaF80g@mail.gmail.com>
Date: Fri, 08 Nov 2019 10:32:56 +0200
In-Reply-To: <CAATdQgDhYWgHkujo9m1iUrhSu1Bt9A4C8eS82TD=W22_eaF80g@mail.gmail.com>
 (Ikjoon Jang's message of "Thu, 7 Nov 2019 12:16:45 +0800")
Message-ID: <877e4aydhj.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_003301_091092_5A3CE6ED 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Ikjoon Jang <ikjn@chromium.org> writes:

> On Thu, Nov 7, 2019 at 2:23 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>>
>> Ikjoon Jang <ikjn@chromium.org> writes:
>>
>> > Downloading ath10k firmware needs a large number of IOs and
>> > cpuidle's miss predictions make it worse. In the worst case,
>> > resume time can be three times longer than the average on sdio.
>> >
>> > This patch disables cpuidle during firmware downloading by
>> > applying PM_QOS_CPU_DMA_LATENCY in ath10k_download_fw().
>> >
>> > Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
>>
>> On what hardware and firmware versions did you test this? I'll add that
>> to the commit log.
>>
>> https://wireless.wiki.kernel.org/en/users/drivers/ath10k/submittingpatches#guidelines
>
> Thank you for sharing it.
> It's QCA6174 hw3.2 SDIO WLAN.RMH.4.4.1-00029
> on ARMv8 multi cluster platform.

Thanks, I added that to the commit log.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
