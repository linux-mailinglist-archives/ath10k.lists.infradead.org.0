Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BDF23DE9
	for <lists+ath10k@lfdr.de>; Mon, 20 May 2019 18:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qHBmE0KZCbcJ+pkTcFkuUSjGLAIkI96JojEvB8e8XXA=; b=IdzX64Wd8Ctqt0Qz+5eFYP4H2
	DwVSFyG6q4KlScXyJDTLaQRHJf5eFln+aRNCO1/gjLuz3ZgnN9h+4yO6I50zBAl3hcnMxD3mnUBJj
	Rpw4uGG0F50z3jv1Crmqqhym/UvKjUUFe/l+4OjVi8xthCWbo1eW0InCazNQ5wVQxL9MZlbz0pWgX
	6lWLrOhbpqLtQ9lxxZonxL0wNS8SBf8kT267Zf/phQ+4dho3VnYZ+BKxEscNV10CnGyCiGqYtQ7WZ
	/tQaAxnbzQiTY8jH9cdavTgJynTlJZhzv7ck+02n1lB6ggPdmHGGlNjCrZmH9xcI5ZYdK6G0pyJDq
	50sEfAqbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSlcL-0005iz-KX; Mon, 20 May 2019 16:58:29 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSlcH-0005ic-Po
 for ath10k@lists.infradead.org; Mon, 20 May 2019 16:58:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=kPYi9u7GB4DSQ4ZahC0ErmjqWLJRFqTGaKCeY9PcGgo=; 
 b=o7XWzkZv2heQGL6us6y17eXE/QMYY1BaPd3relEd6WO69nCUozBAkd8TLB5vyzg7KENxi7iQDehU2V0C9DCZ121RkT7x3EwtVZvXX9MccQsDDXq6+6XJ0kivcmTJwHw2knWnk0XK5vufeUQvdDLN0MoF2oo5urD9RwseoYS/VMY=;
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Adrian Chadd <adrian@freebsd.org>
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
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <24c966c0-2cd6-cdb0-c5dc-2f505eeb40ca@newmedia-net.de>
Date: Mon, 20 May 2019 18:58:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJ-Vmo=xhBvLmzec5mzf-gcFm1h6cQBLUOdVhuQjvbUWFjP-AQ@mail.gmail.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1hSlcJ-0002Ax-2i; Mon, 20 May 2019 18:58:27 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_095826_165436_19F554C0 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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


Am 17.05.2019 um 17:47 schrieb Adrian Chadd:
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
CCK is dead stable of cause, but also dead slow and its blocking the 
channel which decreases performance for all other people
>
> (And then bugs like what ben is seeing :)
>
> Ben - did disabling CCK/OFDM fallback rates help? Did you fix the bit
> that tries to send AMPDU frames in non-11n rates?
>
>
> -adrian
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
