Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA8612426F
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 10:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=utGFSGaUvb35OUGUTiT2ho0fVDyLkSNiURpEv5z+PII=; b=sQTNW+fYhXY0lYnv2Y/RXJa+c
	L+RZsV0st/Az7xhJAqFn+Uc5XH9knre/7sZuTyGg6mQ+jwcXm4Lc8iNK5zlCY9B+EIvYZVOgqzwZi
	VuS40G0GenLV681yflcFTJTxGucyGMqtkA2HeWJMrdcTQ+c1EBDW69MIazYizwTxB4BBD8ibsgPz+
	zrvjTPQCvXSn7LvZjoWnUX0lusHT2Pi1zA03ab0ZYK396S0++nW2kQg8SRvIZuHWz+zHT5v+5JxzB
	fcRplK33P99KzCaYEPMHAVhLOn5tIJAcQfX5VmGgqmjLYIrn5wjv3oC8LIgn6NxFQwMMx+tONpap/
	7b8IuKN/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihVLi-0002iI-18; Wed, 18 Dec 2019 09:10:30 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihVLd-0002hR-1O
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 09:10:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=oCUt9A6TWSkwOW8q/znGHI08A2boDTYHCaaf+56tyaQ=; 
 b=iCqFrk3Q5tSXb9fXRa3ulV5jqrUH0KYPTRGxI1XkY9+IxqDh+/hWDVyh3XJ16cVeE9c74Pp3UvnOLm56IS2UBnen/r1jjH689RiqgTfIKGyLSGYHElIX9gtvDGWTl+F5kJA8mjZEhErPYEvG6sOoK/+tvwclcebrKyYp8hSBeho=;
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Justin Capella <justincapella@gmail.com>
References: <20191216220747.887-1-greearb@candelatech.com>
 <a2af03e9-8b53-b297-467b-d0f07b8a002b@newmedia-net.de>
 <b5d63d96-4ba6-bbab-bf1c-a61c6c437f37@newmedia-net.de>
 <80700614-679a-336e-bd9a-e88622e75c9a@candelatech.com>
 <4775d91a-9719-46f8-b0f2-979b8d86cf9f@newmedia-net.de>
 <CAMrEMU-vGB8uR-JZbD2vj4vXgWNHfFqcbsqB=gOqBBDZWGkzQA@mail.gmail.com>
 <11290a30-46e8-638e-4110-86e6b2eb3d3f@candelatech.com>
 <CAKR_QV+xNbAzzw12x3Ku49bHnERTxYRAK8AfUSwp_uOgNMbY4Q@mail.gmail.com>
 <a95e7f6d-1cb8-3188-aea4-233dce6f9330@candelatech.com>
 <CAKR_QVL0P4qYidtqLwhhacCOpx2iq+4RRhTXbGhfRnf2PUj5tA@mail.gmail.com>
 <CAKR_QV+KV1dR_QKjANL34DGJuyf3OSN8J6gs3bqcmiRCCzkdXA@mail.gmail.com>
 <5e3f22d1-b8ba-d756-a15c-1e7ae56c1dad@newmedia-net.de>
 <8eae96cd-a94e-abc1-4750-73f931d657d6@candelatech.com>
 <9431f1a2-a44e-9b81-72b0-9a703e1841ac@newmedia-net.de>
 <CAMrEMU8UrY9F++ut88to0AxKJXHTi9cwUs8uGOmN=k0ymcH0FA@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <3de7edd6-4dfc-f1c6-bf8f-6a74e33f05af@newmedia-net.de>
Date: Wed, 18 Dec 2019 10:10:18 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAMrEMU8UrY9F++ut88to0AxKJXHTi9cwUs8uGOmN=k0ymcH0FA@mail.gmail.com>
X-Received: from [2003:c9:3f0e:3a00:6985:e55e:37bb:a21e]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1ihVKE-0002Lw-1Z; Wed, 18 Dec 2019 10:08:58 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_011025_515925_68F31685 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ben Greear <greearb@candelatech.com>, linux-wireless@vger.kernel.org,
 Tom Psyborg <pozega.tomislav@gmail.com>, ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


Am 18.12.2019 um 09:05 schrieb Justin Capella:
> Don't mean to steal your thread here, but since it's being discussed--
> is there something that can be done to provide more accurate/precise
> data? Use of the default is widespread so not a reason to hold back
> the patch imo, but with a proposed pcap-ng capture information block
> they would become more accessible and maybe there will be increased
> interest in real values.
>
> Anyway to fill out IEEE80211_RADIOTAP_DBM_ANT{SIGNAL,NOISE}?
>
> I recall from another thread that there isn't currently periodic
> calibration but the floor could change with environment too.
there is periodic calibration. this is done by the chipset firmware 
according to my
review of the firmware code last night. without periodic calibration the 
chipset is likelly to turn
unstable over time and may also hang. the periodic calibration is 
triggerd by temperature changes
(if change is more than 30 degrees celsius) and various baseband hanging 
checks. in addition its still periodic
thats the case for 10.4 and also for 10.2 based firmwares. (i checked 
qca998x and qca9984 firmware codes)
>
> On Tue, Dec 17, 2019 at 8:05 PM Sebastian Gottschall
> <s.gottschall@newmedia-net.de> wrote:
>>
>> Am 18.12.2019 um 03:37 schrieb Ben Greear:
>>>
>>> On 12/17/2019 06:12 PM, Sebastian Gottschall wrote:
>>>> i dont know what you want to compare here.
>>>>
>>>> 1. you compare 2 different wifi chipsets. both have different
>>>> sensititivy and overall output power spec
>>>>
>>>> 2. both have different amount of antenna chains. which does make a
>>>> difference in input sensitivity
>>>>
>>>> 3. the patch ben made has no effect on qca9880 chipsets. it only
>>>> takes effect on 10.4 based chipsets like 9984
>>> The part of my patch that sums secondary frequencies should apply to
>>> wave-1 as well, but I have
>>> not verified that yet.
>> yeah. right. sorry i was just looking at total signal sum which uses
>> rssi_comb_ht
>>>
>>>> about noise floors in general. noise floors of -108 are bogus. there
>>>> is a physical limit a noise level can be.
>>>> since drivers like ath9k are doing a cyclic calibration, the noise
>>>> value might indeed change. but this calibration is
>>>> not running in realtime. its cyclic. i'm not aware if chipsets like
>>>> qca988x are going the same way, but since qca988x
>>>> has sime similaries with ath9k chipsets unlike the newer 9984
>>>> variants, it could be. the 30 seconds mentioned
>>>> in the bug report fits to my expectations of the early noisefloor
>>>> calibration which has a short delay and after success
>>>> turning to use a long delay. anyway. in this early calibration phase
>>>> signals might change and will stabilize after. this isnt a issue
>>>> since your connection will work anyway even if it might take a little
>>>> bit longer if you have poor signal levels
>>>>
>>>> @ben. am i wrong or what do think?
>>> I don't know enough about how the noise floor calculations are done or
>>> how the apply to settings
>>> to know the answer.
>>>
>>> I will be happy in general if ath10k wave-1, wave-2, and ath9k report
>>> similar RSSI for similar
>>> setups.
>> that will not work. you compare different chipsets and depending on the
>> implementation by the card vendor
>> rf sensitivity can be very diffent. the same goes for output power. some
>> vendors are using additional rf amps
>> for enhancing output power (ubiquiti is best example here). this these
>> amps also may have influence to sensitivity.
>> on these cards you set 10 db output power, but in fact it outputs 18 db.
>> so there is a bias offset on these cards or devices. (the offset is
>> depending on the device model)
>>
>> what you measure is what the chip receives, but not what was lost on the
>> pcb layout. (or was even generated in case of noise)
>> and when it comes to calibration data. correct would be if each
>> individual card is calibrated before shipment. in reality manufactures
>> are doing calibration on a single reference card and clone it on all
>> following cards to save time. the result depends on day or week of
>> production
>> and current position of the moon and sun. errors of +- 2 db are common
>> here. (this is not a fact for all card or device vendors)
>>
>>> If you look at the tx-rate-power table in ath10k, for instance, you
>>> can see different MCS are transmitted
>>> at different signal levels.  So, some change from initial conditions
>>> might be because higher MCS is
>>> being transmitted after rate-ctrl scales up?
>> yes. this is modulation related. as higher the rate goes as lower the
>> power will be. thats princible of QAM.
>> and the rate control itself isnt signal but error rate based. so high
>> packet loss triggers the rate control to lower the rate which results
>> in increased output power and vice versa. but as mentioned. at card
>> startup a noise floor calibration starts which may succeed or fail.
>> if it succeeds it will turn into a long delay phase. so cyclic
>> calibration. the calibration time is exactly 30 seconds (minimum) and if
>> it fails it can
>> exceed to 60 seconds. after that time it will sleep for 300 seconds and
>> will check for recalibration conditions. (there are rules like high
>> noise floor changes etc.)
>> a recalibration is also triggered at channel changes  and if chipset
>> temperature changes at a certain level.
>> from what i have seen the procedure in the qca9880 firmware is exactly
>> the same as in ath9k.
>> anyway. while this calibration is running, the signal and noise floor
>> might be unstable or even bogus until this is finished and rate control
>> might not be optimal
>> under stress conditions like long range links with low signals. with
>> standard wifi usage you should not notice it that much since signal to
>> noise ratio is high enough anyway
>>
>>
>>> Lots of moving parts...
>>>
>>> Thanks,
>>> Ben
>>>
>>>> Sebastian
>>>>
>>>> Am 18.12.2019 um 00:37 schrieb Tom Psyborg:
>>>>> also noticed now that the noise floor changes with signal strength as
>>>>> described in this bug report:
>>>>> https://www.mail-archive.com/ath10k@lists.infradead.org/msg11553.html
>>>>>
>>>>> after wifi restart
>>>>>
>>>>> iwinfo:
>>>>>
>>>>> signal: -59dBm noise: -108dBm
>>>>>
>>>>> then goes to
>>>>>
>>>>> signal: -52dBm noise: -103dBm
>>>>>
>>>>> and finally drops to
>>>>>
>>>>> signal: -59dBm noise: -103dBm
>>>>>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
