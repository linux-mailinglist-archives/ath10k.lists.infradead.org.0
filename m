Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5975020F7E
	for <lists+ath10k@lfdr.de>; Thu, 16 May 2019 22:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hhC0+tQBQcS7OksUXfbiVKC3YlYi8pruDOvWej5zDCw=; b=YzPpHs8/YYzw0TdYDhSTyjqAt
	5xClQcDif24A7ipcoGlwbVvfmwTolmXQdeTKt6Pa7BXG4N0MefDSaQm/rPMJlmQVkMqoXNeU0ycdH
	byRH3vfpVkfxH1Zuywd8DOrdx7gq9qlBU+dCu3tWyTPgEEolHxZ6OSVotm1GVsjdPvmSCkYUa7xDE
	5AleD1e2GmDuYU3X7OkZnj0TjU9i3+Dc7NNLqVbCTjZO5d7YD3COh1q6xu7yciR8wDp7cNboHLUgm
	/HpugMgw4NLXUGeaqJLYbGbw6p1qpHhyyJrbHRkhK2xTBEBFA6qT5b3uPiVF1f+H+aK4+igfb4cfZ
	OvCVQzF5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRMhG-0002y6-4E; Thu, 16 May 2019 20:09:46 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRMhB-0002xj-Mm
 for ath10k@lists.infradead.org; Thu, 16 May 2019 20:09:43 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id AD5D6DD26;
 Thu, 16 May 2019 13:09:40 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com AD5D6DD26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1558037380;
 bh=/mKtUAg4FDW490SVcIXNOlw0/c0bC7O19R4+tq7Ljds=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=lleFrRFHWi9/gfPWOoIJXg8mqdCpVg27ECepfMP8Rh2Twh2rOnBfw/vHX5AmqZAxy
 LIOH0em4kFaf7K6gw4t5Br8L/fdm+XfxlRgxOJ6cdiwFJ/t0n4tzUYqa5p0cqgPvIC
 IxZKFHW61xILxGJbfJPDnb0mHN49Tt1AibSIHe1c=
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Adrian Chadd <adrian@freebsd.org>
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
 <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
 <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
 <CAJ-Vmo=MgeKdUj+d7L6oJKfdSMb84D_nYHZ+BMSr6guB4Q_Y2Q@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <a41b74e9-230d-1094-cb86-3b105e602788@candelatech.com>
Date: Thu, 16 May 2019 13:09:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAJ-Vmo=MgeKdUj+d7L6oJKfdSMb84D_nYHZ+BMSr6guB4Q_Y2Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_130941_937923_67195981 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 5/16/19 12:55 PM, Adrian Chadd wrote:
> You can totally go down to OFDM yeah but you then need to send it at
> 20MHz and non-AMPDU.
> 
> Is it maybe the retry code + rate control code is retagging an AMPDU
> at a lower rate and it's transitioning down to CCK/OFDM without
> breaking the AMPDU apart?

It was sending a one-frame AMPDU, and one frame AMSDU for that matter.  Maybe
there is some bit in the tx descriptor that needed to be twiddled as well
to make OFDM able to work, but I don't know what that would be.

Is there any advantage of (any) OFDM over MCS0 HT 20Mhz as far as range or
SNR goes?  The chart I found made it look like there was not, and if
not, then why bother at all with OFDM if peer advertises HT/VHT rates?

Thanks,
Ben

> 
> 
> -a
> 
> On Thu, 16 May 2019 at 12:40, Ben Greear <greearb@candelatech.com> wrote:
>>
>> On 5/15/19 6:00 AM, Ben Greear wrote:
>>> On 5/15/19 5:26 AM, Sebastian Gottschall wrote:
>>>>
>>>> Am 15.05.2019 um 14:20 schrieb Ben Greear:
>>>>> On 05/14/2019 09:26 PM, Sebastian Gottschall wrote:
>>>>>> can you send me a detailed instruction for testing this on my devices? so which commands have been used for generating the traffic etc. (iperf3?)
>>>>>
>>>>> I am using our own traffic generator, but I imagine iperf3 should work fine too.
>>>>>
>>>>> I am testing on x86-64 and so forth.  Maybe you can test with UDP small-packet load on your platform
>>>>> in routed mode (ie, external iperf generator through your AP) and see if you see issues?
>>>> thats the plan. can you do a test with iperf3 to see if its reproduceable. i mean i will test it on ipq based boards and x64. but to make sure that the scenario
>>>> is identical which raised up your issue, it would be find if we have identical software for testing including the same options
>>
>> I think I found the issue.  The rate-ctrl logic in the firmware allows a transition from HT/VHT 20 MCS0 down to OFDM rates.
>> It seems the hardware does not like to see an AMPDU with an OFDM rate for 20Mhz and a VHT rate for 80Mhz (or maybe just the
>> single OFDM rate is the fault).
>>
>> If you can edit firmware, then setting this to 0 probably fixes the issue.
>>
>> g_rc_cck_rate_allowed
>>
>> I think to reproduce you'd need to send high speed traffic in a situation where the
>> RF environment is going to make rate-ctrl fail quite a bit.  (Slow speed should
>> work too, but it would likely take a lot longer).
>>
>> And, it is always possible that whatever I saw when testing mostly-stock FW is different
>> from what I eventually debugged to in my firmware.  Still, from looking at MCS vs SNR
>> charts, there seems to be no advantage to trying OFDM vs MCS0 for 20Mhz.
>>
>> Thanks,
>> Ben
>>
>> --
>> Ben Greear <greearb@candelatech.com>
>> Candela Technologies Inc  http://www.candelatech.com
>>
>>
>> _______________________________________________
>> ath10k mailing list
>> ath10k@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/ath10k
> 


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
