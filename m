Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E952C123D2B
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 03:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rynsOKL0NkIDyEYbST4mZmdtJ8TAn/GDVpiDrol1vMc=; b=ZqYH6q8Uhy5YvKP7ZquflzwNg
	MpI8PovjaTEi/tFM5dx4nU/AKli4lfmOXQAcxb0rLRnIGz7lUlypWeBhFDyylycNoHuzHlsmoNDYM
	+ZEe67BjJTFFGN0NGawzqDnXOOeH4X4PIX2+Ydnd0CUaelXOJndJXBFO7oIXAgU2QyWoAKd8jO+ei
	dvjN6ANwxAk9TxG595mwCqk5lKaeS6I+/t7koYa0oX1J1UVW2ZPO2GLu+P0MVkY0g2weQkLPYdfZ4
	ZyrDv+gnmoRIO0+Q5ZtoN6W9IeXQyVfgcK2cIm1u+siPXwvlAKm/h5QqsQY8oBFdtlsLsxzKaregA
	i1nfdcwQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihPDZ-00055P-V6; Wed, 18 Dec 2019 02:37:41 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihPDV-00054V-7T
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 02:37:38 +0000
Received: from [192.168.1.47] (unknown [50.34.171.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 0360213C283;
 Tue, 17 Dec 2019 18:37:33 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 0360213C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1576636654;
 bh=3H9trgQNWBrc22X6PZNQFVkDGnRAXE2r7TDukdsqHVQ=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=nb0yZIc3xm4CgGP+DHzlq3JVfwEbNs07eAp3Nh6ERXUWG+32wtl71aAOaCNIy++rF
 KaIe5vVmL25thAo0Fv08Ntz8EhMYE1/jbH2yGUxgZSxD/8S6d837v3JfoYc7Fhag8c
 C0r3tGgB4QmrOPWkSf3iPCG3jUBv2pKdzequSLwU=
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 Tom Psyborg <pozega.tomislav@gmail.com>
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
From: Ben Greear <greearb@candelatech.com>
Message-ID: <8eae96cd-a94e-abc1-4750-73f931d657d6@candelatech.com>
Date: Tue, 17 Dec 2019 18:37:33 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <5e3f22d1-b8ba-d756-a15c-1e7ae56c1dad@newmedia-net.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_183737_318125_86E5D505 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>,
 Justin Capella <justincapella@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org



On 12/17/2019 06:12 PM, Sebastian Gottschall wrote:
> i dont know what you want to compare here.
>
> 1. you compare 2 different wifi chipsets. both have different sensititivy and overall output power spec
>
> 2. both have different amount of antenna chains. which does make a difference in input sensitivity
>
> 3. the patch ben made has no effect on qca9880 chipsets. it only takes effect on 10.4 based chipsets like 9984

The part of my patch that sums secondary frequencies should apply to wave-1 as well, but I have
not verified that yet.


> about noise floors in general. noise floors of -108 are bogus. there is a physical limit a noise level can be.
> since drivers like ath9k are doing a cyclic calibration, the noise value might indeed change. but this calibration is
> not running in realtime. its cyclic. i'm not aware if chipsets like qca988x are going the same way, but since qca988x
> has sime similaries with ath9k chipsets unlike the newer 9984 variants, it could be. the 30 seconds mentioned
> in the bug report fits to my expectations of the early noisefloor calibration which has a short delay and after success
> turning to use a long delay. anyway. in this early calibration phase signals might change and will stabilize after. this isnt a issue
> since your connection will work anyway even if it might take a little bit longer if you have poor signal levels
>
> @ben. am i wrong or what do think?

I don't know enough about how the noise floor calculations are done or how the apply to settings
to know the answer.

I will be happy in general if ath10k wave-1, wave-2, and ath9k report similar RSSI for similar
setups.

If you look at the tx-rate-power table in ath10k, for instance, you can see different MCS are transmitted
at different signal levels.  So, some change from initial conditions might be because higher MCS is
being transmitted after rate-ctrl scales up?

Lots of moving parts...

Thanks,
Ben

>
> Sebastian
>
> Am 18.12.2019 um 00:37 schrieb Tom Psyborg:
>> also noticed now that the noise floor changes with signal strength as
>> described in this bug report:
>> https://www.mail-archive.com/ath10k@lists.infradead.org/msg11553.html
>>
>> after wifi restart
>>
>> iwinfo:
>>
>> signal: -59dBm noise: -108dBm
>>
>> then goes to
>>
>> signal: -52dBm noise: -103dBm
>>
>> and finally drops to
>>
>> signal: -59dBm noise: -103dBm
>>
>

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
