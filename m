Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C2120F8B
	for <lists+ath10k@lfdr.de>; Thu, 16 May 2019 22:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kiStQ9A0UDmxunSi7KrpFqOFhiTmUReKhwFGTyVDkaA=; b=mtN/YtCNn08MYUaKgfAPSfaBD
	anruVUSWWC5ewIDJjIs7IHq2VSTrTkZct59aTdkNJ2zs+id7ioVYLOPkIgmONdEDSTY9LDeipyzHf
	LwlhYM+jaVYxcMcX+jeET+LTiNPUDg+KU+8FU3kP2iQ/sPqtmxRMdW9AE3u580NuX7kXAFmtO4LUj
	CsOivNI4gn0il9nx1DrSIijjLbnNIBT0qsv6eopFlQJeWrn3eQHJqe6DT2SBDpO9BFAi6HVMiOzDw
	fecnz4m+wHPMutZN4Mm/baD7xuweIzuxI63FRp0NXVCVE6jB1CNMTvrQ5HE1NP3GFxhBJGMaoznse
	C1KmBBF0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRMrX-0007GU-K7; Thu, 16 May 2019 20:20:23 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRMrT-0007G4-RY
 for ath10k@lists.infradead.org; Thu, 16 May 2019 20:20:21 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 1FD285DE33;
 Thu, 16 May 2019 13:20:19 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 1FD285DE33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1558038019;
 bh=1j3FGV86g8jEMd5FY51RudsIPO8l1Tj5o9NJBJVPOQc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=M4ScaQECtZls+blQNTv9P6DP3TkMKPYuTTvbYHoX2NjLRzE6YIgp8w8RUK4V3j5oo
 UUZg67TRS2+C3LTh9xSfpo7YbQO7RN1jCu8pbjkLmRIbs1XkqRJEgx2VNseetkww5T
 L+Hswq481/+t/ewxoeD+HBH8JvGBgWPMrFREO8fE=
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Adrian Chadd <adrian@freebsd.org>
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
 <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
 <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
 <CAJ-Vmo=MgeKdUj+d7L6oJKfdSMb84D_nYHZ+BMSr6guB4Q_Y2Q@mail.gmail.com>
 <a41b74e9-230d-1094-cb86-3b105e602788@candelatech.com>
 <CAJ-VmokYa4LpQCokRu_7gp1LsV+-1fS=UmWd=6SZ07F-O5cw+w@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <958466d1-2d3a-d1cd-e1f6-65e032f15e15@candelatech.com>
Date: Thu, 16 May 2019 13:20:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAJ-VmokYa4LpQCokRu_7gp1LsV+-1fS=UmWd=6SZ07F-O5cw+w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_132019_944912_A2B5EC5E 
X-CRM114-Status: GOOD (  22.66  )
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

On 5/16/19 1:16 PM, Adrian Chadd wrote:
> You can't do AMPDU with OFDM/CCK. If they're setting the AMPDU bit
> then that's wrong. it needs to be individual MPDU/PPDUs.
> 
> There's a benefit for CCK. OFDM 6M is I think roughly the same as OFDM
> MCS0. But CCK is a lot more reliable.

5Ghz can (should) not do CCK anyway.  Do you have any reference for why
you think CCK will be better?  The one I found shows otherwise:

https://d2cpnw0u24fjm4.cloudfront.net/wp-content/uploads/LaminatedCard_RevolutionWiFiMCStoSNRSinglePage.png

Thanks,
Ben

> 
> 
> -adrian
> 
> On Thu, 16 May 2019 at 13:10, Ben Greear <greearb@candelatech.com> wrote:
>>
>> On 5/16/19 12:55 PM, Adrian Chadd wrote:
>>> You can totally go down to OFDM yeah but you then need to send it at
>>> 20MHz and non-AMPDU.
>>>
>>> Is it maybe the retry code + rate control code is retagging an AMPDU
>>> at a lower rate and it's transitioning down to CCK/OFDM without
>>> breaking the AMPDU apart?
>>
>> It was sending a one-frame AMPDU, and one frame AMSDU for that matter.  Maybe
>> there is some bit in the tx descriptor that needed to be twiddled as well
>> to make OFDM able to work, but I don't know what that would be.
>>
>> Is there any advantage of (any) OFDM over MCS0 HT 20Mhz as far as range or
>> SNR goes?  The chart I found made it look like there was not, and if
>> not, then why bother at all with OFDM if peer advertises HT/VHT rates?
>>
>> Thanks,
>> Ben
>>
>>>
>>>
>>> -a
>>>
>>> On Thu, 16 May 2019 at 12:40, Ben Greear <greearb@candelatech.com> wrote:
>>>>
>>>> On 5/15/19 6:00 AM, Ben Greear wrote:
>>>>> On 5/15/19 5:26 AM, Sebastian Gottschall wrote:
>>>>>>
>>>>>> Am 15.05.2019 um 14:20 schrieb Ben Greear:
>>>>>>> On 05/14/2019 09:26 PM, Sebastian Gottschall wrote:
>>>>>>>> can you send me a detailed instruction for testing this on my devices? so which commands have been used for generating the traffic etc. (iperf3?)
>>>>>>>
>>>>>>> I am using our own traffic generator, but I imagine iperf3 should work fine too.
>>>>>>>
>>>>>>> I am testing on x86-64 and so forth.  Maybe you can test with UDP small-packet load on your platform
>>>>>>> in routed mode (ie, external iperf generator through your AP) and see if you see issues?
>>>>>> thats the plan. can you do a test with iperf3 to see if its reproduceable. i mean i will test it on ipq based boards and x64. but to make sure that the scenario
>>>>>> is identical which raised up your issue, it would be find if we have identical software for testing including the same options
>>>>
>>>> I think I found the issue.  The rate-ctrl logic in the firmware allows a transition from HT/VHT 20 MCS0 down to OFDM rates.
>>>> It seems the hardware does not like to see an AMPDU with an OFDM rate for 20Mhz and a VHT rate for 80Mhz (or maybe just the
>>>> single OFDM rate is the fault).
>>>>
>>>> If you can edit firmware, then setting this to 0 probably fixes the issue.
>>>>
>>>> g_rc_cck_rate_allowed
>>>>
>>>> I think to reproduce you'd need to send high speed traffic in a situation where the
>>>> RF environment is going to make rate-ctrl fail quite a bit.  (Slow speed should
>>>> work too, but it would likely take a lot longer).
>>>>
>>>> And, it is always possible that whatever I saw when testing mostly-stock FW is different
>>>> from what I eventually debugged to in my firmware.  Still, from looking at MCS vs SNR
>>>> charts, there seems to be no advantage to trying OFDM vs MCS0 for 20Mhz.
>>>>
>>>> Thanks,
>>>> Ben
>>>>
>>>> --
>>>> Ben Greear <greearb@candelatech.com>
>>>> Candela Technologies Inc  http://www.candelatech.com
>>>>
>>>>
>>>> _______________________________________________
>>>> ath10k mailing list
>>>> ath10k@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/ath10k
>>>
>>
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
