Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C30D217E1
	for <lists+ath10k@lfdr.de>; Fri, 17 May 2019 13:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7uCZUlugucs7V/HvxhMC4r+r8WNzey1VKauwxX/OnzE=; b=pYg8AqgjI0u+jgGnvOhSc6pD1
	j7eHnmZVWhkhi0rLEpDP3h/U3uW4U5n9aMWpKBCzhc5Yr8vtG1bzQrXxNHw2pF1SHlgSlVri9Y8dg
	ZusYX/0f/2NnxLHHQ80LlGOIJ9FTrmqDUq2OMJOE13E2Z9zxx1IvWuv6QsDJ/HATR7GDbraz48FQm
	j6K4+KSI7OFGQ7XCu2fKm6F1U6tsHhWsmLqilTUj+FeAcPz+uC2TJOZW17Vepy0bGUGcM4iIeeM7S
	cm+tdWmqfUHvwYNPiVx3UVY7bRhhz/XcQqz/25KxxJ5kPS0nQuJaKsvQkHcEGvn4/5Hr3962KHzv3
	kvUIZRrOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRbM0-0000Rt-C1; Fri, 17 May 2019 11:48:48 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRbLv-0000RQ-Pz
 for ath10k@lists.infradead.org; Fri, 17 May 2019 11:48:45 +0000
Received: from [192.168.1.47] (104-235-164-208.evrt.wa.frontiernet.net
 [104.235.164.208])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 793475DE43;
 Fri, 17 May 2019 04:48:42 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 793475DE43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1558093722;
 bh=0xVDnS2XHDsGEqEYP69Am660eqxztVr/kFlKS0XCfvw=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=KRUQPr3dgnnUlMYdlraU7wFoRaBIS2o5cIDppLoybk9DLsrXXO54Hm44LfoIwQAua
 lkuQCNFDR79LRKgtzSfJRVZe74o9RAplOmL6ZWAd8Kg+hME2Rew+7gOp584zz2Ye2S
 2FBI9D0zg0UaQYRHife9rMVTm5gBAHL35JRbg1ik=
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 ath10k@lists.infradead.org
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
 <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
 <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
 <2ef800e2-5ce6-f579-ded5-65dc82827e4d@newmedia-net.de>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <cdfa7b09-4e32-a62d-1bb6-d6128ba6594b@candelatech.com>
Date: Fri, 17 May 2019 04:48:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <2ef800e2-5ce6-f579-ded5-65dc82827e4d@newmedia-net.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_044843_959476_EB4640FD 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org



On 05/16/2019 09:21 PM, Sebastian Gottschall wrote:
>
> Am 16.05.2019 um 21:40 schrieb Ben Greear:
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
>
> according to the code this variable has only effect on 2.4 ghz. the fallback to cck rates will only be done if phymode is 2.4 ghz

Ok, maybe the symptom I saw with stock-ish firmware was due to some other cause.  In my firmware,
I had "fixed" that cck-fallback to use OFDM rates in case CCK was not available, so mine was
definitely trying to use an OFDM rate.

That said, very likely the same bug exists in upstream QCA firmware for 2.4Ghz radios where CCK is available,
so still might be worth fixing or at least adding API to let the user disable the fallback in case strange
problems are seen.

I am guessing that if it really wants to send OFDM/CCK rates, then it will have to use a different
TID that is not set up for AMPDUs, and the current code does not deal with that as far as I can tell.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
