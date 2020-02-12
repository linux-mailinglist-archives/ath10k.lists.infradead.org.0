Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C2315A2EB
	for <lists+ath10k@lfdr.de>; Wed, 12 Feb 2020 09:09:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JMwQH2XKnxXhZ3xJ+LI8xPufLJZuoGZ9yryiJUIpFkw=; b=mYSW71DKmanbny6dG+bXW1ouM
	zxsgADk91ll7TLlZOn1uJzEkr8H+bUpUJqAiP+UlYIKURGtxQFgO/ldyUWB7hY6+QiqASgZe+5flB
	gQ0OfFdcRJ7xmfnwk3Xc+f0dACH+ZVhX9TzfXq+a6k1g36iBVrrDikDOTZJvyM8l6xrBgVEW9tK2A
	yKF08kyD6WWE3xixWcVdFynv2H/FMBdyjgzKUI7n/23aY0SqMyYoR3CImiAjvxrO36fgblft8yCzu
	OSa/xDQ5yYebhgUX3Kf92tNf6yN6hXCgt8QkllztGHPhDiOp/Y619BRSgvdwjvqUxpXrSRiruEL/f
	4IGcMHLSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1n5K-0003OZ-3m; Wed, 12 Feb 2020 08:09:26 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1n5F-0003OF-CP
 for ath10k@lists.infradead.org; Wed, 12 Feb 2020 08:09:22 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581494961; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Dko3IMtvmDqNwXyp+RJBrIiwa098FR4wnLSFnSuXW/Q=;
 b=K85cZlRhloSPHG+AlBK/BnFh89zm/PKt4GHK8b0lpvxp899njzz+SHl6qIWS+CdXf9/RzJuV
 0b+3+TLDqc3fusNRTauxnMve/+nUMvqBQHAS0xE2jmSdQpH02tUXd9azyxon2sZ6M1Cgbehl
 2Yv2LZJhD7Op1ze8rGs5A+GaSqw=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e43b2b0.7fe4a6d4c848-smtp-out-n03;
 Wed, 12 Feb 2020 08:09:20 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4E29AC4479D; Wed, 12 Feb 2020 08:09:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CA590C43383;
 Wed, 12 Feb 2020 08:09:19 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 12 Feb 2020 16:09:19 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Pi-Hsun Shih <pihsun@chromium.org>
Subject: Re: [PATCH v8 1/4] ath10k: disable TX complete indication of htt for
 sdio
In-Reply-To: <CANdKZ0dTwO7XQQjJ+NKO5jO4qBRJxZPNQu=-UEQOiRPc+dpd=A@mail.gmail.com>
References: <20191128103030.6429-1-wgong@codeaurora.org>
 <0101016eb1903db0-ef7063b4-0f42-4a01-8886-327541e6c1a4-000000@us-west-2.amazonses.com>
 <76bce8e3-e05b-ace6-3edd-54f522be3fe6@chromium.org>
 <25fd4f59b39c56b2fee208713c7cbc57@codeaurora.org>
 <CANdKZ0eWJtSuOdZp6Djne21maoBtmSsEm9Rmq9HbLfriY1goWw@mail.gmail.com>
 <47925cde59e1b94766720d20ddbb4191@codeaurora.org>
 <CANdKZ0dtnvL66jps41UC+dkybuXA0NMEu=9p2N2T08YDLHb2UQ@mail.gmail.com>
 <222dd9c33e2afa94cd1ee80c03c7b00d@codeaurora.org>
 <CANdKZ0fOEZ-Ng1p4FUy6WDC2DKGUMmTQE+JhcTwrf9TjACborA@mail.gmail.com>
 <e2afd62c108d66fdb3aa590f5ded61a4@codeaurora.org>
 <CANdKZ0dTwO7XQQjJ+NKO5jO4qBRJxZPNQu=-UEQOiRPc+dpd=A@mail.gmail.com>
Message-ID: <1d529a7a40379f3244bb655e241e09e2@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_000921_481567_D85F983B 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-02-12 15:45, Pi-Hsun Shih wrote:
> On Wed, Feb 12, 2020 at 3:31 PM Wen Gong <wgong@codeaurora.org> wrote:
>> 
>> On 2020-02-12 15:08, Pi-Hsun Shih wrote:
>> > Tested that the patch fix the kernel panic, thanks.
>> >
>> > For the fixed version:
>> > Tested-by: Pi-Hsun Shih <pihsun@chromium.org>
>> >
>> Thanks Pi-Hsun's quick test,
>> could you also give me the message log:
>> dmesg | grep ath
> 
> [   11.462398] ath10k_sdio mmc1:0001:1: qca6174 hw3.2 sdio target
> 0x05030000 chip_id 0x00000000 sub 0000:0000
> [   11.472131] ath10k_sdio mmc1:0001:1: kconfig debug 1 debugfs 1
> tracing 1 dfs 0 testmode 1
> [   11.481490] ath10k_sdio mmc1:0001:1: firmware ver
> WLAN.RMH.4.4.1-00042 api 6 features wowlan,ignore-otp crc32 ac2d4918
> [   11.667020] ath10k_sdio mmc1:0001:1: board_file api 2 bmi_id 0:4
> crc32 e74847dc
> [   12.035056] ath10k_sdio mmc1:0001:1: msg_type: 0
> [   12.036919] ath10k_sdio mmc1:0001:1: htt-ver 3.73 wmi-op 4 htt-op 3
> cal otp max-sta 32 raw 0 hwcrypto 1
> [   12.039878] ath10k_sdio mmc1:0001:1: msg_type: 2
> [   12.053816] ath10k_sdio mmc1:0001:1: msg_type: 5
> [   12.235403] ath: EEPROM regdomain: 0x6c
> [   12.239895] ath: EEPROM indicates we should expect a direct regpair 
> map
> [   12.247223] ath: Country alpha2 being used: 00
> [   12.251973] ath: Regpair used: 0x6c
Thanks.
new patch sent:
https://patchwork.kernel.org/patch/11377827/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
