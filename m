Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8A5123A81
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 00:08:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Peykl2Hk5C78jRHiWpMweJVvKNbkRspy/Cq2PjCPJd0=; b=BBP1OnbFvvHXdI
	VLJ32yLJRs/3jBoZsEvqUyTVrE6YZpWvb6sdqCPU5cOvLUkkex2uHTmzPwNu8rqA4N97BE/t/RqFP
	6QbYx94Xvamuv07shPYNKzj5LQpI8f+WnMtMDie0c4pVWGZ3FL2SJrQ54QvD0TH+6yLBeLiJ8vD9J
	9j8n8orxZdIUtCxAAMJgI8fbpdlojVOSQpWliDNaqd2ttpal1zRNxveLe55Pl98VvvFZxdsDKpbOA
	X7z0yH0HDOc3NhEXgeWLy6KdZqHTN3D7Q+b5kSzmsHhr034izCr0nFTFS2fJFOQgZx7kt0oquat5s
	RAmBeGc1IYa0MJkrlCMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihLx6-0001SF-OC; Tue, 17 Dec 2019 23:08:28 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihLx2-0001Rb-IK
 for ath10k@lists.infradead.org; Tue, 17 Dec 2019 23:08:26 +0000
Received: by mail-oi1-x241.google.com with SMTP id h19so55956oih.4
 for <ath10k@lists.infradead.org>; Tue, 17 Dec 2019 15:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=fU5IHlx78AQs5QCUnGS43vSZRdjyN6MDI5BLWy9e78s=;
 b=rp30uwiN0NxTsRtfnsuPZkdrxSsBzYSQM4iNfbmE9Fk5A7lTTScwZGjmFwpe7+7Fge
 v3RPh947Tps4hksx9IEbjFasxD44Xj8SIYmaNPF/u98bkSkhLVHhL7o8wmCsX8qjNnRH
 RVRsx2bXfqF9U+8n+9OXc96gSdqEom4+2gFQwmu+aSEazmMw9dgsedNTzQfD3fztJUld
 0cOhrz3E8axbUz2cV+Npxf/+wN+v286asfRr9iI9SWswfwG/US6/1IrGBYFhM/65KMDr
 qT0qNs/CbHNyKFp74i5SqpRkm7CLPASpNsgRsA7cK1/IWdo2NItGM0FCXkY3+uc4zIeP
 cyYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=fU5IHlx78AQs5QCUnGS43vSZRdjyN6MDI5BLWy9e78s=;
 b=Fz06Fk11pOxDI8k5Vllj8nW3p5WIwXtyVIWdV7Jsntxd45pXnEjiZBXLZE27Tis/D3
 j9db4zqKruVI2XvWZkEjcXaaCyhEDFVXDviadRZROU7hr5uquIGR6N+czYy0d3eGro+2
 XihphUhUNcKaemQTfG5jjTq7l5rCKrPmb2ERx1GTWE7LanVXY4mDYgPyJVHEIgpSD63h
 8RjpnI3XLttCNiwuX0Wo+fOL/Basz965AhJZHfzuo5hBN1tvD8yvdjRgSGgADd+Ac1gQ
 gl5ZNOdV+GJ5vnYZcCEnB1WFsLQS/V+2h805b6rYguRwn+tU3j2C7L5Vd2AOhh/0JYSj
 mSyw==
X-Gm-Message-State: APjAAAUtjCuD75m4vqDV84bkTBsqBOnUc57zSvvReB9wk8O7DvlvfHJl
 96/TB1op0YwH8LLHgCFdFZrSc57zUZkFYLu3HT1R3A==
X-Google-Smtp-Source: APXvYqz/5TUzQF3bB2ujv2tTjnjk/nkX0oTGW6C3drIZ2wY5CHd82F39wUUYz15X3krJ5ifVQAZPhVnJ/KF0hCN9LP4=
X-Received: by 2002:aca:180e:: with SMTP id h14mr2203423oih.24.1576624103312; 
 Tue, 17 Dec 2019 15:08:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Tue, 17 Dec 2019 15:08:22 -0800 (PST)
In-Reply-To: <a95e7f6d-1cb8-3188-aea4-233dce6f9330@candelatech.com>
References: <20191216220747.887-1-greearb@candelatech.com>
 <a2af03e9-8b53-b297-467b-d0f07b8a002b@newmedia-net.de>
 <b5d63d96-4ba6-bbab-bf1c-a61c6c437f37@newmedia-net.de>
 <80700614-679a-336e-bd9a-e88622e75c9a@candelatech.com>
 <4775d91a-9719-46f8-b0f2-979b8d86cf9f@newmedia-net.de>
 <CAMrEMU-vGB8uR-JZbD2vj4vXgWNHfFqcbsqB=gOqBBDZWGkzQA@mail.gmail.com>
 <11290a30-46e8-638e-4110-86e6b2eb3d3f@candelatech.com>
 <CAKR_QV+xNbAzzw12x3Ku49bHnERTxYRAK8AfUSwp_uOgNMbY4Q@mail.gmail.com>
 <a95e7f6d-1cb8-3188-aea4-233dce6f9330@candelatech.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 18 Dec 2019 00:08:22 +0100
Message-ID: <CAKR_QVL0P4qYidtqLwhhacCOpx2iq+4RRhTXbGhfRnf2PUj5tA@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Ben Greear <greearb@candelatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_150824_632373_727F1DEF 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
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
Cc: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>,
 Justin Capella <justincapella@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 17/12/2019, Ben Greear <greearb@candelatech.com> wrote:
> On 12/17/19 10:29 AM, Tom Psyborg wrote:
>> On 17/12/2019, Ben Greear <greearb@candelatech.com> wrote:
>>> On 12/17/19 8:23 AM, Justin Capella wrote:
>>>> I believe someone recently submitted a patch that defined noise floors
>>>> per band (2/5).
>>>
>>> I looked at using the real noise floor.  Our radio was reporting a noise
>>> floor of around -102,
>>> where the hard-coded default is -95.  This of course would make the
>>> reported
>>> RSSI lower by 7db
>>> in that case.  I am not sure that is correct.
>>>
>>
>> Hi
>>
>> I am getting similar NF values with all my ath10k devices, I thought
>> default was changed since ath9k from -95 to -115 just like in the
>> vendor driver? There were some discussions about it on mailing list.
>> On some channels (5Ghz) the value goes down to about -107, even saw
>> -110 once.
>>
>
> If you use ath9k and ath10k on same channel/environment, do you see similar
> RSSI reported (especially with the ath10k patch I just posted)?
>
> Thanks,
> Ben
>
> --
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com
>
>

Nope. RSSI values are quite different between two cards. Applying this
patch also made no difference on ath10k card, but this might be due to
the fact the network wasn't setup (so no data passed through) in order
to keep tx rx rates at 6 Mbps.

First I put AR9462 card in Archer C7 and connect to Litebeam5AC (CH36,VHT80)

commands output from archer:

iwinfo:

signal: -65dBm noise: -94dBm txpower: 14dBm

iw wlan1 station dump:

signal: -65 [-69, -67] dBm
signal avg: -65 [-68, -67] dBm

with the default 14dBm power the RSSI in Litebeam was -72dBm

Then I put QCA9880 in archer and connected to the same AP:

commands output from archer:

iwinfo:

signal: -58dBm noise: -102dBm txpower: 23dBm

iw wlan0 station dump:

signal: -59 [-65, -64, -62] dBm
signal avg: -58 [-65, -63, -62] dBm

RSSI of the card reported in Litebeam -63dBm (very inconsistent
between wifi restarts on archer, -65, -67 even -69 dBm, and no
software reboot would restore card's full power, only cold boot)

next I lowered the power of the card to 14dBm to match AR9462

iwinfo:

signal: -57 dBm noise: -101 dBm txpower: 14 dBm

iw wlan0 station dump

signal: -57 [-62, -62, -61] dBm
signal avg: -57 [-62, -62, -61] dBm

now the RSSI in litebeam dropped to approx. -75dBm

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
