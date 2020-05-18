Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76DA1D7F34
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 18:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rAVtnZSXgInraH4+L076L6x8/Hw1G90di6LExuarMM0=; b=bNJ8DHNcxscsTN
	BxfGnl16wJWLCfNtGloPfeP+slJcTCbBMpGcUZMM0Cb1RU3Bg/qcqLTt2q+WQU8WIF9oabHz0Aiyd
	mBcwCYqcPo8VJFmvdRZ9sPjEghMrVHpF2DZO+4hL2UzeGzAHKEpjCTGF2AVO2WAA4YmjymuDsb8cJ
	9lVqtC4RY7CJVkDFjKNC6W9IEYqXvoboRuHwl++EHhjffMOzC9QAg6bcpVTdpgIz2RXlRyWAS6nug
	5st/BqHwd043YtS3g9lCmOn7frZ8VGlKphWG1CXHtCARXEAT5xTDCh0p3RQ1hcAYrD4TVWmc4iGXc
	GYuk6r4S9jhssy2J6VFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaizi-0000VD-12; Mon, 18 May 2020 16:52:02 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaize-0000UH-LS
 for ath10k@lists.infradead.org; Mon, 18 May 2020 16:51:59 +0000
Received: by mail-pl1-f194.google.com with SMTP id k19so4451024pll.9
 for <ath10k@lists.infradead.org>; Mon, 18 May 2020 09:51:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Yd4VQPjSfVqPw2JwHOBUH7DvL28anQpLQnF2oRmOvUg=;
 b=t6X+IuJ0gL1oeXqvdkOpWqrW+OOHMYw2vGkdvyC6H9pMD9ttjb/cpUH46Kvr4TNtLI
 1WcbbF4lgN/apdPRVw4P0zN8qwpcK2dV4Wx3t1X77PxT1g2k51ihkZBCYGowyR5MfVeA
 DTrscMrAnyprBFPB5Jb6SbzTrEU8f8QmA23nq9Paice8056H11IYGBR2cPdvcLCU0fjz
 nPP/DEvg+h68KTWf29tKIJv1bzPEFSmOKBhMTlcVJOcHq14P9wn4gGZgKt0IoRAKMaQr
 f19qMly46eDCiRGGjxLTA6J+2yO12/BDAS1vixHBT5ettVCPFxvd6+p43x+W0kfpiqR8
 /crg==
X-Gm-Message-State: AOAM531ieGOTFWcfdL1YCMkSHaZH8JKxCJte+VH9M//eTU5XdkVMwqgg
 /aNF0GPM98FR7pMMvlqiwZE=
X-Google-Smtp-Source: ABdhPJxLH5VDUbuE1FDuR86WOwRMaXJWESAIbwJvrLBEYETZmBwxGlYnKUYGXtOmogknCzCtXf7ShQ==
X-Received: by 2002:a17:90a:ad49:: with SMTP id w9mr365592pjv.20.1589820717327; 
 Mon, 18 May 2020 09:51:57 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id v27sm3350582pfi.61.2020.05.18.09.51.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 09:51:56 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 17421404B0; Mon, 18 May 2020 16:51:55 +0000 (UTC)
Date: Mon, 18 May 2020 16:51:54 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200518165154.GH11244@42.do-not-panic.com>
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_095158_702090_1EEA0FFC 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
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
Cc: linux-wireless@vger.kernel.org, aquini@redhat.com, peterz@infradead.org,
 daniel.vetter@ffwll.ch, mchehab+samsung@kernel.org, will@kernel.org,
 bhe@redhat.com, ath10k@lists.infradead.org, tiwai@suse.de, mingo@redhat.com,
 dyoung@redhat.com, pmladek@suse.com, keescook@chromium.org, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, kvalo@codeaurora.org,
 netdev@vger.kernel.org, schlad@suse.de, linux-kernel@vger.kernel.org,
 jeyu@kernel.org, akpm@linux-foundation.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Sat, May 16, 2020 at 03:24:01PM +0200, Johannes Berg wrote:
> On Fri, 2020-05-15 at 21:28 +0000, Luis Chamberlain wrote:> module_firmware_crashed
> 
> You didn't CC me or the wireless list on the rest of the patches, so I'm
> replying to a random one, but ...
> 
> What is the point here?
> 
> This should in no way affect the integrity of the system/kernel, for
> most devices anyway.

Keyword you used here is "most device". And in the worst case, *who*
knows what other odd things may happen afterwards.

> So what if ath10k's firmware crashes? If there's a driver bug it will
> not handle it right (and probably crash, WARN_ON, or something else),
> but if the driver is working right then that will not affect the kernel
> at all.

Sometimes the device can go into a state which requires driver removal
and addition to get things back up.

> So maybe I can understand that maybe you want an easy way to discover -
> per device - that the firmware crashed, but that still doesn't warrant a
> complete kernel taint.

That is one reason, another is that a taint helps support cases *fast*
easily detect if the issue was a firmware crash, instead of scraping
logs for driver specific ways to say the firmware has crashed.

> Instead of the kernel taint, IMHO you should provide an annotation in
> sysfs (or somewhere else) for the *struct device* that had its firmware
> crash.

It would seem the way some folks are thinking about getting more details
would be through devlink.

> Or maybe, if it's too complex to walk the entire hierarchy
> checking for that, have a uevent,  or add the ability for the kernel to
> print out elsewhere in debugfs the list of devices that crashed at some
> point... All of that is fine, but a kernel taint?

debugfs is optional, a taint is simple, and device agnostic. From a
support perspective it is very easy to see if a possible issue may
be device firmware specific.

  Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
