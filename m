Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A984D1F3C7
	for <lists+ath10k@lfdr.de>; Wed, 15 May 2019 14:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o42loR2anFHEwBP47wDou4wXMRNQKQw9iROsCgFPX1s=; b=arPiAsYqPf1w4yk97N8LMPInF
	e//50OJjsIn+Z8UxMQ+YfeyDXv7jcfxeQhJ+omz/Tj5BAEVK6MfkSd9U4q75+hMlUY0jZ2TAkZMp2
	zYDZvRoGRT6EbfWY21wBcwzxAhVR/D0JkOp6seIhkNhkRXNmEMrYj/6o15LBIs7ptxczwyC2W3XUb
	zoEqK2GlQHMT+dO7HwOalt+wr3vhub/DkFBVNpIA5ovzVTVyUek/jJrQ8E9tLXpYQTSaFc0z34Luj
	ytXFkY5aB2QmjLhsArkqOEOLgK90J4OQNVsBJ3m+QdilgKcLHz0NFbE1JcYeORlLlKkyPAHqbDNiy
	6GUmdfgNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQstX-0005fp-Hc; Wed, 15 May 2019 12:20:27 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQstS-0005fT-O6
 for ath10k@lists.infradead.org; Wed, 15 May 2019 12:20:24 +0000
Received: from [192.168.1.47] (104-235-164-208.evrt.wa.frontiernet.net
 [104.235.164.208])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 9076B13755C;
 Wed, 15 May 2019 05:20:21 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 9076B13755C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1557922822;
 bh=7TBJ+Ese6Jo2u0vscBpVhZpsifmMW04+J7DzCeLpQq8=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=qLmuonWRccaTHmMxIGhlzTMzIUtfeQ0M48RfPDecVK4W9FOmCbkQqRw6QQDhiI5I+
 dbtPsqgZDhl+Rla16j74nr4gumAk2Hyrs00WwR0/3Rn8WFOXrZVr7M6tENor9ovIKk
 /vcb2xr4wPifSC+3K6ag9gYU7nIJkdfLfpwlRfEI=
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 ath10k <ath10k@lists.infradead.org>
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
Date: Wed, 15 May 2019 05:20:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_052022_839267_BC187CDF 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 05/14/2019 09:26 PM, Sebastian Gottschall wrote:
> can you send me a detailed instruction for testing this on my devices? so which commands have been used for generating the traffic etc. (iperf3?)

I am using our own traffic generator, but I imagine iperf3 should work fine too.

I am testing on x86-64 and so forth.  Maybe you can test with UDP small-packet load on your platform
in routed mode (ie, external iperf generator through your AP) and see if you see issues?

 From debugging yesterday, I see a lot of tx-hang notifications in the firmware, and
I also believe I saw it trying to transmit with a 0 rate-indx, which is 11Mbps CCK,
which is invalid for 5Ghz.  I'll be debugging that more today.  I don't know if stock
firmware fails for the same reasons, but the symptom looked the same.

Thanks,
Ben

>
> Sebastian
>
> Am 15.05.2019 um 03:52 schrieb Ben Greear:
>> Hello,
>>
>> I found a strange issue and curious if someone has seen similar.
>>
>> I made an AP where the AP interface acts as a routed interface.  I generate
>> traffic through another interface in the router.  When sending 300Mbps of 512 byte
>> UDP payloads, in the downstream direction, and with the station being a 1x1 /AC device,
>> then the AP NIC appears to mostly lock up within about 1 minute. I still see beacons, but no
>> data frames.  In some cases, I reproduced with very slow speed traffic as well.
>>
>> I tried using a mostly un-modified firmware (ie, similar to upstream QCA), as well as my
>> hacked upon firmware, and all act similarly.  I'm using the 4.20 kernel, but at least for now,
>> it does not appear to be a kernel issue.
>>
>> If I use larger MTU sized frames, or have a 2x2 station instead of 1x1 then it is much harder
>> to reproduce (and maybe cannot be reproduced).  Also, when generating traffic directly on
>> the AP device instead of using the routed interface as a traffic source, it is harder to
>> reproduce.
>>
>> Thanks,
>> Ben
>>
>

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
