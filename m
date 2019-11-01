Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8DBEC87A
	for <lists+ath10k@lfdr.de>; Fri,  1 Nov 2019 19:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JnbnDGOArdxwomlh2urjHuOAX75CmcpiJMsOmU1LpM=; b=uMF7NAfxAsIDU3
	3IFU937i4l0634FciqMHGScL//rbvjvIcozzlf94K6/qkLewMIu/4rfs1r4sDfv64Xt7pk0uYyrJd
	rgNs0HzRKw3FhJnplKzMwC8i9SqHZGP2GQg3c9Ocn7QxIxzef9oKuTSd3qviaKWmuYHjs85to11QG
	OjFHF5ahWbdzQfqg827bql8RSZrPu8Gxnj3LF713aHYB2pcVLBJwDzYrVa19grQ0pY96mj0/1PTzz
	Y0ctPdMCOd0v0gTuxxAjIGXVF3ieqQuOoC6tjL4tp9SOzBYxRmKzze3hBK68jqGrH9lbv4MHQz+XQ
	q1sngEAFKOIc0jFrVviA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQbfr-0004GG-3X; Fri, 01 Nov 2019 18:29:27 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQbfn-0004Fa-D2
 for ath10k@lists.infradead.org; Fri, 01 Nov 2019 18:29:24 +0000
Received: by mail-oi1-x231.google.com with SMTP id i185so8936813oif.9
 for <ath10k@lists.infradead.org>; Fri, 01 Nov 2019 11:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=Xawj13KIKFKMerCJ+/cuGELNxxmya+EW4C9ud6IbweM=;
 b=FbQ0+fsMYYOuU6Z0a6kYxOwupY4wfSD9mavR3x5+5OCAGBLYKrWKLVPEVSyw8qiHq0
 jHl/AqHp/MptvV9Rckx5Jo8+/iSqq9g3pL1c1Zip3VqvyGULzRR/s8Hh8PjhNUvNBrBN
 gyFFVhNHlcwvvOfJ1m+anZw7eRb8LCzCnyMSkb9DmCWpz0WLgnMwbTZ2WB7F2bKkDIV/
 m7p6grqMSVJokE5R1Yui9wbe/rcHB8xFopvo04MIOW49TSuoZhRSlKWTGpUjtOemIo3n
 bwfF+v7Q+D2g0Ws5PcIRkqCWlPA7ApSWGBNY2Lz4dhMSCj1YEi7pBTMkLNfz1BZkSRaB
 jxyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=Xawj13KIKFKMerCJ+/cuGELNxxmya+EW4C9ud6IbweM=;
 b=H/K8Rw1HHAWAGzEsMIQWqC2LmKtTbrlZ7nCi8VcCzELsLaKlAzc/P6Ni6L2x2ZBjaj
 54HuF07TVIK8JYW9lNQTExydq6eDvlnlTW7m/Ny7P5hUO0g6Bd8nKTLXEDhgzy73rbKp
 osYLq7BlaNk+SsuL2V6xUMkzDPB/+fWTxG5dt/QOt9bZNdvypstdQSu4nXqA3V92nmXo
 aMGrYr6gd3YDDzZct21hjIXRkeXpIfe4FkjcnXc43PsHHUceDRKE6R3JgGoR5dzYnJRK
 Nrg/YcLU6GRq1T1tE7Ke0zopTfkOlO1h4zeYi09dyebuWWoZXJHXiWMt2qNGR6v9Clbo
 7EcA==
X-Gm-Message-State: APjAAAWSOIy4j+0eNSme/IRpO4BJg7n3uBzBUl7oUXYjf2O+x9S4PJr8
 QDLD/+nMKNXSEjIm7xaZBvNbmz0/4S516YNzERQ=
X-Google-Smtp-Source: APXvYqygsTOoW7wosXBWxbhW/hMcqRBkVD+eqZQPjkUxYDPJ0drFAw5j6H3vPmjHvmgc3pEnCMFntiJYO5pVYwQBjjo=
X-Received: by 2002:aca:39d5:: with SMTP id g204mr2016146oia.50.1572632962144; 
 Fri, 01 Nov 2019 11:29:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7511:0:0:0:0:0 with HTTP;
 Fri, 1 Nov 2019 11:29:21 -0700 (PDT)
In-Reply-To: <bb62015e-d097-f54c-56ce-000d0b18a5ac@candelatech.com>
References: <CAKR_QVJ2eHrESLOEqiKxbjr0SoZh3oJydtgcebBOXSpspbquWA@mail.gmail.com>
 <bb62015e-d097-f54c-56ce-000d0b18a5ac@candelatech.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Fri, 1 Nov 2019 19:29:21 +0100
Message-ID: <CAKR_QVK8EUnL-dUt9K-1H6Ah7=ZTxs=Eq=gwvk5R_zeEQX0eeQ@mail.gmail.com>
Subject: Re: [RFC] ath10k: interface combination with monitor
To: Ben Greear <greearb@candelatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_112923_467345_53B24566 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:231 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Tried this fw: https://www.candelatech.com/downloads/firmware-2-ct-full-community-21.bin
Used ath10k driver as there is no ct driver for 5.4 yet.

Same as with QCA firmware

On 01/11/2019, Ben Greear <greearb@candelatech.com> wrote:
> On 11/1/19 10:03 AM, Tom Psyborg wrote:
>> Hi
>>
>> Is there a way to run monitor mode interface independent on STA/AP
>> interface presence or their state?
>> I am using airodump-ng/airmon-ng and I've noticed that while mon
>> interface is brought up airodump-ng is unable to find any beacons
>> unless sta interface is brought down. That is with QCA9880 devices,
>> while with QCA9377 airodump-ng only finds beacons if the sta interface
>> is associated to an AP.
>> Does this need firmware change to work or driver changes are sufficient?
>>
>
> I would expect it to work.  Have you tried -ct firmware on 9880 in this
> manner?
>
> Thanks,
> Ben
>
> --
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com
>
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
