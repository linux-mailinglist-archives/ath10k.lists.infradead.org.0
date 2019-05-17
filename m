Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8404321B15
	for <lists+ath10k@lfdr.de>; Fri, 17 May 2019 18:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T6z+fe8uWVLD+Diin76MzZ7xDjT2PLFvciEocWsCDKU=; b=TSvSImOb459JvqpPmX3VED4g4
	/HuUeuxI+G/AFm8S04+WUdvSqz9sRtY01AKeG4PE8o/MAbEBjWoR9DCXxf1PpNzMmc8OWYTrRoPVm
	GbKSOtrO17oUagWLvGTaMRI7Vs/wsFBXfzn/uezEfMTq11iJijq9i8nRjzJPCM3zlU7nBLWSzef04
	43JG11g+Ac3QvKxAsHPtP08OrM8g/JEiu4bx4kLxsgh8+8OIYno2xt4lu8u5RlxgSrIIFWpI5pmob
	CfHWU8zAlPLrZ6jceclnhOJJt6BaJ/Q5S6YrN9OU3rRT0SbvbFa2rVn3mhMvMwkxv24T3cEjHinr/
	Xn/vi2IxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRfHK-0000by-8O; Fri, 17 May 2019 16:00:14 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRfHG-0000FY-2Y
 for ath10k@lists.infradead.org; Fri, 17 May 2019 16:00:11 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 33B525DE44;
 Fri, 17 May 2019 09:00:07 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 33B525DE44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1558108807;
 bh=ORE/KWBNC0pc0Sm5zXDicdOI3Nnxii3x7BqK1Rmyzn4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=aEidro/CjhMIa8Sl7IAL7WIpY9XFrmcnJFb5rxPOjN/jrFdRvskRUtYhadzI5Qbin
 Leb9atK1W/h8Qs07XWT1t4+6zvZL+9tOy8pa1pULiYcbNOFSJQMZwT10MNkYyL9PCp
 OaCeHAyF9i1nGFRaPhHTvfIeUS8aABjHSXUSvVqA=
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Adrian Chadd <adrian@freebsd.org>,
 Sebastian Gottschall <s.gottschall@newmedia-net.de>
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
 <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
 <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
 <2ef800e2-5ce6-f579-ded5-65dc82827e4d@newmedia-net.de>
 <cdfa7b09-4e32-a62d-1bb6-d6128ba6594b@candelatech.com>
 <eae17245-eec2-96fe-34ff-f3800fae44d8@newmedia-net.de>
 <CAJ-Vmo=xhBvLmzec5mzf-gcFm1h6cQBLUOdVhuQjvbUWFjP-AQ@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <6378a260-0441-b985-6421-091f46d871f5@candelatech.com>
Date: Fri, 17 May 2019 09:00:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAJ-Vmo=xhBvLmzec5mzf-gcFm1h6cQBLUOdVhuQjvbUWFjP-AQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_090010_208135_F669639A 
X-CRM114-Status: GOOD (  20.79  )
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
Cc: ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 5/17/19 8:47 AM, Adrian Chadd wrote:
> On Fri, 17 May 2019 at 08:06, Sebastian Gottschall
> <s.gottschall@newmedia-net.de> wrote:
> 
> 
>> personally i think going back to basic rates like 2 mbit makes no sense
>> anyway. its that dead slow that a connection must break and has to be
>> broken if this doesnt work.
>> still a shame that beacons are still transmitted in this way and
>> multicast/broadcast packets as well which causes a hell of problems. but
>> thats for backward compatibility of cause
> 
> It depends on what kind of channel you are. Not everyone is deploying
> super dense enterprise APs. :-)
> 
> The 11ac and 11ax chips that do constant frequency readjusting work
> better in things like moving drones, where you have constant doppler
> shift. I know some people doing drone work that just don't bother with
> MCS and aggregation because they need a super reliable channel and the
> conditions constantly shift.
> 
> That said, they're very sad that they can't hack on the 11ac/11ax
> firmware to fix some err, less optimal decisions in their use case
> space like they can with ath5k/ath9k.
> 
> ISTR back at QCA days there were some people on the systems team that
> could demonstrate CCK was more stable in some use cases and so didn't
> like the Linux rate control behaviour of not falling back to CCK in 2G
> 11n mode. There was .. pushback against the linux upstream rate
> control in this respect right until the linux folk totally deprecated
> the QCA rate control in ath9k. :)
> 
> (And then bugs like what ben is seeing :)
> 
> Ben - did disabling CCK/OFDM fallback rates help? Did you fix the bit
> that tries to send AMPDU frames in non-11n rates?

Yes, disabling the fallback appears to have fixed my issue.

I did not try to fix the fallback code because I think it will be quite
complicated to do it properly (I suspect a different tid must be used for this
to work).  I'm not even entirely sure of exactly why the transmit logic fails
in this case, and by the time rate-ctrl logic is queried, I think it is too
late to easily change tids.

And FYI, in my firmware/driver, you can now specify the exact preamble-type, mcs, bandwidth, txpower,
retransmit count, etc on a per packet basis.  I'm not sure of all the bugs and limitations
in this code, but it at least mostly works as hoped for the ways we are using it
(rx sensitivity test rigs, etc).

Might be of interest if someone wants to do a somewhat limited user-space rate-ctrl for
ath10k wave-2.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
