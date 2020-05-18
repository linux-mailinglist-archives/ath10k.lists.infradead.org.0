Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA7B1D7FE4
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 19:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzkXdYskd7DmRKak7p83HYzjGRTlbcADDuJ7/SMll98=; b=CZl89iNJ2fDF7r
	PlphyGjUcVwowj+AOpxKrpBJEasdUdYKW1+IcPjsPx4um8vcxWFfY2aVRxbsoDIFaYN6YoH47P67K
	It+Fx2WwG80qxCnFNN9T7jDfMgabuqdbx7XlkchhojEn4QJlt8aMn4zbGunS7IvFd6KVFNk3DAwtZ
	IY1sGaj2+7Mb2PnFHeTB1d8fsUpHrzNQIYAby1f+PyvGfcWTLDs3vSEr6RCQFNPpF2GAyskBjdRqL
	WZeO4e9/P3jiSZnxpqklJlLM58g4Ete+WW8Q2tORXb8URrhQvMIRlG6jjEXaHvWimm/lIYONoeSpP
	b9Q7gKny0BQwrOpFF+1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajOy-0003wz-BB; Mon, 18 May 2020 17:18:08 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajOu-0003w9-Gu
 for ath10k@lists.infradead.org; Mon, 18 May 2020 17:18:05 +0000
Received: by mail-pf1-f195.google.com with SMTP id x15so5265105pfa.1
 for <ath10k@lists.infradead.org>; Mon, 18 May 2020 10:18:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=o/LRAU6oORjP4bOuNDVY0R1e1/6YnNXq8W0dWZnejw4=;
 b=Q4xPbtCFQOFN8dBgyrXnMcBcVaEPMYaPscLuLcwtzlWj2kYc5HwjEYmSIHLMr/DFad
 t+cDf8obvUqObxliUbX8jpWRgiVve/Ch7KoDKew4hYh/vGR93bZcJm6m+wuG05f0zPzK
 3Ak0iW2+vqikvq2/Lh69GW+6JfJuf+t2/6LFGEu+7hvxA9Jkksf4ZkA9UDLYorbr78bl
 PRuRLTdeHjsCpAVRxHIynpBQ1pGlDkGDbHqyAXKMRFecGbU5+kxkl0kf88IV+/nJRHkM
 KnxNNIvmfM5yLHrv4mUBOT0XEoXI2xPml3bipZRhXxBE1zb834pg+ZdJ2MWtiRcUT2rJ
 1lxg==
X-Gm-Message-State: AOAM53128oQB4ZOGxTdQq/t3IaubGKI73oTZdzYRYzxM/nuhZI4LiTjj
 xbWiAwvLz/8uY+1rcuWDanY=
X-Google-Smtp-Source: ABdhPJyOKQx6snLdV6SH5a4e989iVV2McRYJsKuizKPK18IX2sbTdIBU1x9WLjpUX0KewZZXJA0nqQ==
X-Received: by 2002:a62:754f:: with SMTP id q76mr18380695pfc.14.1589822283147; 
 Mon, 18 May 2020 10:18:03 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id q100sm132531pjc.11.2020.05.18.10.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 10:18:02 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 5D797404B0; Mon, 18 May 2020 17:18:01 +0000 (UTC)
Date: Mon, 18 May 2020 17:18:01 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Ben Greear <greearb@candelatech.com>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200518171801.GL11244@42.do-not-panic.com>
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <20200518165154.GH11244@42.do-not-panic.com>
 <4ad0668d-2de9-11d7-c3a1-ad2aedd0c02d@candelatech.com>
 <20200518170934.GJ11244@42.do-not-panic.com>
 <abf22ef3-93cb-61a4-0af2-43feac6d7930@candelatech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <abf22ef3-93cb-61a4-0af2-43feac6d7930@candelatech.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_101804_562163_9669F2E7 
X-CRM114-Status: GOOD (  27.84  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
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
 andriy.shevchenko@linux.intel.com, akpm@linux-foundation.org,
 kvalo@codeaurora.org, netdev@vger.kernel.org, schlad@suse.de,
 linux-kernel@vger.kernel.org, jeyu@kernel.org,
 Johannes Berg <johannes@sipsolutions.net>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 10:15:45AM -0700, Ben Greear wrote:
> 
> 
> On 05/18/2020 10:09 AM, Luis Chamberlain wrote:
> > On Mon, May 18, 2020 at 09:58:53AM -0700, Ben Greear wrote:
> > > 
> > > 
> > > On 05/18/2020 09:51 AM, Luis Chamberlain wrote:
> > > > On Sat, May 16, 2020 at 03:24:01PM +0200, Johannes Berg wrote:
> > > > > On Fri, 2020-05-15 at 21:28 +0000, Luis Chamberlain wrote:> module_firmware_crashed
> > > > > 
> > > > > You didn't CC me or the wireless list on the rest of the patches, so I'm
> > > > > replying to a random one, but ...
> > > > > 
> > > > > What is the point here?
> > > > > 
> > > > > This should in no way affect the integrity of the system/kernel, for
> > > > > most devices anyway.
> > > > 
> > > > Keyword you used here is "most device". And in the worst case, *who*
> > > > knows what other odd things may happen afterwards.
> > > > 
> > > > > So what if ath10k's firmware crashes? If there's a driver bug it will
> > > > > not handle it right (and probably crash, WARN_ON, or something else),
> > > > > but if the driver is working right then that will not affect the kernel
> > > > > at all.
> > > > 
> > > > Sometimes the device can go into a state which requires driver removal
> > > > and addition to get things back up.
> > > 
> > > It would be lovely to be able to detect this case in the driver/system
> > > somehow!  I haven't seen any such cases recently,
> > 
> > I assure you that I have run into it. Once it does again I'll report
> > the crash, but the problem with some of this is that unless you scrape
> > the log you won't know. Eventually, a uevent would indeed tell inform
> > me.
> > 
> > > but in case there is
> > > some common case you see, maybe we can think of a way to detect it?
> > 
> > ath10k is just one case, this patch series addresses a simple way to
> > annotate this tree-wide.
> > 
> > > > > So maybe I can understand that maybe you want an easy way to discover -
> > > > > per device - that the firmware crashed, but that still doesn't warrant a
> > > > > complete kernel taint.
> > > > 
> > > > That is one reason, another is that a taint helps support cases *fast*
> > > > easily detect if the issue was a firmware crash, instead of scraping
> > > > logs for driver specific ways to say the firmware has crashed.
> > > 
> > > You can listen for udev events (I think that is the right term),
> > > and find crashes that way.  You get the actual crash info as well.
> > 
> > My follow up to this was to add uevent to add_taint() as well, this way
> > these could generically be processed by userspace.
> 
> I'm not opposed to the taint, though I have not thought much on it.
> 
> But, if you can already get the crash info from uevent, and it automatically
> comes without polling or scraping logs, then what benefit beyond that does
> the taint give you?

From a support perspective it is a *crystal* clear sign that the device
and / or device driver may be in a very bad state, in a generic way.

  Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
