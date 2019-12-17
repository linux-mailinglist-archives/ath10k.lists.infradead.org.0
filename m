Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364D012350C
	for <lists+ath10k@lfdr.de>; Tue, 17 Dec 2019 19:36:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiMaqfdOqjZTYA2jBhf2352jxkymqBVBg0Km0TF+oBg=; b=HrFJRqve5AaRhV
	EnQi+S9wC0bNIhn1ogtMASGtFKqxXiG/hoozwJ/cyr4vQv7qMIsm+xAMW82sm4qtJrxwE1x84cS+9
	9AoDsFemD5GnMTt0oMATLo9JupjSTcaiv5HZW4O0I/pAGqspczft1xUVjLYW8CoWfwueHTIW2Tzvr
	n1HdrwC0VKBEbS7xkD6Gcnl++ck/O0Q0eJVNjTF/BMKzfK6A235cWOJggjtJZDKbS3Iq9Cf/jiGHh
	+DQTHbw25KocepeuyeLOEdT6K5/B4+/PSMz1du9LavNlb3mdfyVvZR0g5QhfJzQyvpwIJ8qmkrs7B
	ZZPFGui9h81JEsHPjljw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHhz-0002gq-4u; Tue, 17 Dec 2019 18:36:35 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHh6-0001lc-8X
 for ath10k@lists.infradead.org; Tue, 17 Dec 2019 18:35:43 +0000
Received: by mail-qt1-f196.google.com with SMTP id b3so9477272qti.10
 for <ath10k@lists.infradead.org>; Tue, 17 Dec 2019 10:35:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KqR10Ray35SJpBzHXPMJL31vlypWu7cUa6JUcMASLbo=;
 b=Q1MXRH7y1KmHJtPMqLrW8/vV9CvZE1GrOX2shNZkRVxsnW1/6+wkxI6fs6/IScIjQZ
 lQiQZQmKpeK8oGiNHtCKaP41Xz48U1ZRHugWsd5I4kZfgXbLcdlUlqYSkVkbevlqwE6c
 OTYJFP6kbpjsaYLaZ10B5HKe1MrLuTy/B3BgQbOrqiETMXzEShDOOmBPvl8EJLllAe+z
 vCEpoaJd+LYTe3wbAo/5xEQdwaj9bBjFmDioIzlpUIRleW+twdTiTFmCgxgFkbcv7+60
 3Ng3CLABUhsmX0ui1XIoAupA1NyayDzoqN8Oo7xZHQUF3HCKSOaVVxGD8kMgCAzMeNGv
 TWLg==
X-Gm-Message-State: APjAAAV548zMxlLjO6LepOGN24wJ4/WgZBtWgYh8o50xR8zZV9Tew5Oh
 lWK7Z4CWfMEK121ElnYsYiiVkdO1m1WvbAr0bzc=
X-Google-Smtp-Source: APXvYqxBR61uXHQdXc7T+abVhe0nPlueXaWUbDpDPZwZkiwa9C2SYqPpSBYiXoCknsYb3WQlCHaSzQ4e/9WeYLEZIM0=
X-Received: by 2002:ac8:1e8e:: with SMTP id c14mr5506175qtm.330.1576607737384; 
 Tue, 17 Dec 2019 10:35:37 -0800 (PST)
MIME-Version: 1.0
References: <20191216220747.887-1-greearb@candelatech.com>
 <a2af03e9-8b53-b297-467b-d0f07b8a002b@newmedia-net.de>
 <b5d63d96-4ba6-bbab-bf1c-a61c6c437f37@newmedia-net.de>
 <80700614-679a-336e-bd9a-e88622e75c9a@candelatech.com>
 <4775d91a-9719-46f8-b0f2-979b8d86cf9f@newmedia-net.de>
 <CAMrEMU-vGB8uR-JZbD2vj4vXgWNHfFqcbsqB=gOqBBDZWGkzQA@mail.gmail.com>
 <11290a30-46e8-638e-4110-86e6b2eb3d3f@candelatech.com>
 <CAKR_QV+xNbAzzw12x3Ku49bHnERTxYRAK8AfUSwp_uOgNMbY4Q@mail.gmail.com>
In-Reply-To: <CAKR_QV+xNbAzzw12x3Ku49bHnERTxYRAK8AfUSwp_uOgNMbY4Q@mail.gmail.com>
From: Adrian Chadd <adrian@freebsd.org>
Date: Tue, 17 Dec 2019 10:35:23 -0800
Message-ID: <CAJ-Vmon5811ktT-+8HcMOAPnOLGzd20rFMxaTucXbEEAz4+q0A@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Tom Psyborg <pozega.tomislav@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_103540_312668_94DBEC34 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (adrian.chadd[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Ben Greear <greearb@candelatech.com>, linux-wireless@vger.kernel.org,
 ath10k <ath10k@lists.infradead.org>, Justin Capella <justincapella@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, 17 Dec 2019 at 10:29, Tom Psyborg <pozega.tomislav@gmail.com> wrote:
>
> On 17/12/2019, Ben Greear <greearb@candelatech.com> wrote:
> > On 12/17/19 8:23 AM, Justin Capella wrote:
> >> I believe someone recently submitted a patch that defined noise floors
> >> per band (2/5).
> >
> > I looked at using the real noise floor.  Our radio was reporting a noise
> > floor of around -102,
> > where the hard-coded default is -95.  This of course would make the reported
> > RSSI lower by 7db
> > in that case.  I am not sure that is correct.
> >
>
> Hi
>
> I am getting similar NF values with all my ath10k devices, I thought
> default was changed since ath9k from -95 to -115 just like in the
> vendor driver? There were some discussions about it on mailing list.
> On some channels (5Ghz) the value goes down to about -107, even saw
> -110 once.

IIRC they're /not/ calibrated dBm values. They're just internal noise
floor calibration values derived from the internal ADC reads when you
kick off a NF cal. Then everything is relative to this NF value.

This is one of the many, many reasons things get gunked up when you
start seeing higher noise floor values; since a lot of things
internally are/were related to what the currently calibrated NF value
is, a too-high NF sample value would result in quite exciting things
in the PHY like "this channel never drops below CCA"...




-adrian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
