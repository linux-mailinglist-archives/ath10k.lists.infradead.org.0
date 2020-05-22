Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F84A1DDF48
	for <lists+ath10k@lfdr.de>; Fri, 22 May 2020 07:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9xmuh32BrKUPCqAki/qqn7Y04UO+VHs2CAKBMCAsQw=; b=FjLJ3L+sVQQW7I
	mkOFqyP3JQSE/OXl5Ad1wSUlwCQeepf394fk9YiGRhyZ/7iLTJNCUjxxOoBymWow632GLpYgN+x6n
	0NiY86dQ7JF4RQi0kxEt6JGWL0l3bCMhbBBpdXgec8HRZ7JXNkFnDNrYWfUM8u4cwyJAkILkKhXcl
	DvFaV7RwkTopOUCp7TGCXufg355/AbloD/s26ypotbWUA+HdFrqrvAnvm5wDj1FSbMXMT0QQvSTA3
	MBfkGhv+dZ6dXS6VM8rfibAN9PrBDC7KbAVnh95EhY0k9yYHg9haWm/Bel2ZzjCWJTmEb5vKiupUb
	jAK7hGHnWKYVqMhXDkTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc0A6-0005AC-JN; Fri, 22 May 2020 05:24:02 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc0A2-00053w-CR
 for ath10k@lists.infradead.org; Fri, 22 May 2020 05:23:59 +0000
Received: by mail-pj1-f67.google.com with SMTP id z15so1894926pjb.0
 for <ath10k@lists.infradead.org>; Thu, 21 May 2020 22:23:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tIS20nIVD3N2tOP8HqpGQTGvTajJC3k9skSycjshVvo=;
 b=Vfwl06SCib5Wi4zE1m7QP0i2aKyOBgiX1CkZGjhxbERKHIZkIsVFZrZKcGvLK4Hr1s
 RoCj6S0fukR9W5+PX7DWalXL/w7VWCDL/HYmkP3Nm4o2vuLSiIZ2K6dVuagjp2z9Y8OD
 EYoXZFT1nwBJG16Y2iIt8GgY7UipGTS6F84lQHLd39Le0y/oKo78/+3B1+YOa5wL1C3K
 mNBg3E7Yt53XS1jf+md0kcete1jRXTv/uWhiJBovPx7mtPjnO9D/B6KL/mYPzhC6/Q2P
 K/cWnoPaRivJY9RMZG3NKoNublaZzEE5q0oAZBvCciUUdAa0OoTi8pUWm8grwWD+GBvG
 5CrQ==
X-Gm-Message-State: AOAM530FgudHCT3onoNib6+6LX9dkDTSZIZBzdD/ZluDwLpx3f/Npg7O
 HRfwEZaBa9o5WGDHldjDr+o=
X-Google-Smtp-Source: ABdhPJwrA8Ug/bhBlMQocPIWph3Tg+gvIO2vU/EDcU5VOBbAHGT6IBZ5MccngBHWe4I5el1EFY91Dw==
X-Received: by 2002:a17:90a:150:: with SMTP id
 z16mr2536283pje.37.1590125037470; 
 Thu, 21 May 2020 22:23:57 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id l3sm5931550pjb.39.2020.05.21.22.23.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 22:23:56 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 531AD4088B; Fri, 22 May 2020 05:23:55 +0000 (UTC)
Date: Fri, 22 May 2020 05:23:55 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Emmanuel Grumbach <egrumbach@gmail.com>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200522052355.GZ11244@42.do-not-panic.com>
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <7306323c35e6f44d7c569e689b48f380f80da5e5.camel@sipsolutions.net>
 <CA+ASDXOg9oKeMJP1Mf42oCMMM3sVe0jniaWowbXVuaYZ=ZpDjQ@mail.gmail.com>
 <20200519140212.GT11244@42.do-not-panic.com>
 <CA+ASDXMUHOcvJ_7UWgyANMxSz15Ji7TcLDXVCtSPa+fOr=+FGA@mail.gmail.com>
 <CANUX_P1pnV46gOo0aL6QV0b+49ubB7C5nuUOuOfoT7aOM+ye9w@mail.gmail.com>
 <CA+ASDXPAVJwyThAXRQT0_ao4s1nDYOEQifxMc+JsEMa=cTEGJA@mail.gmail.com>
 <CANUX_P2thzh9oB4KkrAoyT6H-E6MDFUNQ_p0e9QZtScgMuKm7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANUX_P2thzh9oB4KkrAoyT6H-E6MDFUNQ_p0e9QZtScgMuKm7Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_222358_430013_E9104203 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: aquini@redhat.com, peterz@infradead.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>, mchehab+samsung@kernel.org,
 will@kernel.org, schlad@suse.de, bhe@redhat.com,
 Brian Norris <briannorris@chromium.org>, ath10k@lists.infradead.org,
 Takashi Iwai <tiwai@suse.de>, mingo@redhat.com, dyoung@redhat.com,
 pmladek@suse.com, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, gpiccoli@canonical.com,
 Steven Rostedt <rostedt@goodmis.org>, cai@lca.pw, tglx@linutronix.de,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Kalle Valo <kvalo@codeaurora.org>,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>, jeyu@kernel.org,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 08:12:59AM +0300, Emmanuel Grumbach wrote:
> >
> > On Tue, May 19, 2020 at 10:37 PM Emmanuel Grumbach <egrumbach@gmail.com> wrote:
> > > So I believe we already have this uevent, it is the devcoredump. All
> > > we need is to add the unique id.
> >
> > I think there are a few reasons that devcoredump doesn't satisfy what
> > either Luis or I want.
> >
> > 1) it can be disabled entirely [1], for good reasons (e.g., think of
> > non-${CHIP_VENDOR} folks, who can't (and don't want to) do anything
> > with the opaque dumps provided by closed-source firmware)
> 
> Ok, if all you're interested into is the information that this event
> happen (as opposed to report a bug and providing the data), then I
> agree. 

I've now hit again a firmware crash with ath10k with the latest firwmare
and kernel and the *only* thing that helped recovery was a full reboot,
so that is a crystal clear case that this needs to taint the kernel, and
yes we do want to inform users too, so I've just added uevent support
for a few panic / taint events in the kernel now and rolled into my
series. I'll run some final tests and then post this as a follow up.

devlink didn't cut it, its networking specific.

  Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
