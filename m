Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C137D1D7FB8
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 19:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvpdISuxtbo7bt9fG96bNMfzOn/xI4nN9Ez9OS2O/KE=; b=fHLW1dyRqA5vMd
	WBzF8AfEYNMW6WD/ldP87XWPmwnu8pCr8sYC7+t1GufG7ewIadq8hrwbttQ8dYNUWcBzqY2BNtvEY
	z0F1sUBGsdmKxUeJf54UHW+vDfZnutn8Bpt4PauyDEgldLAWd34BaW6e1kQYprgwb+q8hNXr1C+X8
	KS1G4uz0sA57GzsecOXpcMBNARnx6xEikMpLtwtPMVLehb8aLELztumCIkwvoGeVnTewDAdZOsTKB
	e98svAFFVigZCm1CyVao2n/8iHHMSTdCCsE4R72evOmlA8E5zoibeZMxwrCZqxDXytyqqsMJ3qgpD
	CRIy50ldDHDUVqk9yR+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajGo-0005A2-CJ; Mon, 18 May 2020 17:09:42 +0000
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajGj-00058u-Hy
 for ath10k@lists.infradead.org; Mon, 18 May 2020 17:09:38 +0000
Received: by mail-pj1-f65.google.com with SMTP id ci23so104303pjb.5
 for <ath10k@lists.infradead.org>; Mon, 18 May 2020 10:09:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BpdZFKBxjPy5g9XACLYMs2Py89NvcD1b96UVdrU1huk=;
 b=oUyx6LViUu57Ynbw7/s8GUzsxD9FF9+IvGBYfjWe9yYm9J9Dl0vEZl29UXfp6BYZhn
 09EI8L8ZPQFHRo7QIRnHlKJrixfd60x5N+tn+JafBYTO0pxzplIMyXLudg62EdzstjND
 JNCL8DcmpBiuxGdxaYrSie3i1oCleNz8+e4DCAZ3yIAjH71NgoKUmE22y0zcVxqEW7gO
 uTRdzVG06oZNNW7Rfge5zVOHRRTt4BvXd77WcCsFSeCkSM/Gz0rWJhOovob80GfD4SMY
 G3dYLqH75XnQftsVrk6DS/BNkjwSsl+69HgZzhCXXXYGJStEpNShZGUmZQvgiP+BFBdU
 6DtQ==
X-Gm-Message-State: AOAM530H4Kteiz/alEUI30H5vTtP268F0wEJVmWWxitnCoQolJnSbF5y
 JTPLFdmUhqMd7rqDZ0h6DMk=
X-Google-Smtp-Source: ABdhPJw35pB+pM+AMb3AfYK730hICV8dwuHZ+BlWJw6Xe+cZu5OTn9VjdyZ0zAS4Kzq+3W/z+TyFsQ==
X-Received: by 2002:a17:902:8a8d:: with SMTP id
 p13mr16933969plo.32.1589821776222; 
 Mon, 18 May 2020 10:09:36 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id q4sm4572021pfu.42.2020.05.18.10.09.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 10:09:35 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 73E02404B0; Mon, 18 May 2020 17:09:34 +0000 (UTC)
Date: Mon, 18 May 2020 17:09:34 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Ben Greear <greearb@candelatech.com>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200518170934.GJ11244@42.do-not-panic.com>
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <20200518165154.GH11244@42.do-not-panic.com>
 <4ad0668d-2de9-11d7-c3a1-ad2aedd0c02d@candelatech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ad0668d-2de9-11d7-c3a1-ad2aedd0c02d@candelatech.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_100937_601214_18197A45 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
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

On Mon, May 18, 2020 at 09:58:53AM -0700, Ben Greear wrote:
> 
> 
> On 05/18/2020 09:51 AM, Luis Chamberlain wrote:
> > On Sat, May 16, 2020 at 03:24:01PM +0200, Johannes Berg wrote:
> > > On Fri, 2020-05-15 at 21:28 +0000, Luis Chamberlain wrote:> module_firmware_crashed
> > > 
> > > You didn't CC me or the wireless list on the rest of the patches, so I'm
> > > replying to a random one, but ...
> > > 
> > > What is the point here?
> > > 
> > > This should in no way affect the integrity of the system/kernel, for
> > > most devices anyway.
> > 
> > Keyword you used here is "most device". And in the worst case, *who*
> > knows what other odd things may happen afterwards.
> > 
> > > So what if ath10k's firmware crashes? If there's a driver bug it will
> > > not handle it right (and probably crash, WARN_ON, or something else),
> > > but if the driver is working right then that will not affect the kernel
> > > at all.
> > 
> > Sometimes the device can go into a state which requires driver removal
> > and addition to get things back up.
> 
> It would be lovely to be able to detect this case in the driver/system
> somehow!  I haven't seen any such cases recently,

I assure you that I have run into it. Once it does again I'll report
the crash, but the problem with some of this is that unless you scrape
the log you won't know. Eventually, a uevent would indeed tell inform
me.

> but in case there is
> some common case you see, maybe we can think of a way to detect it?

ath10k is just one case, this patch series addresses a simple way to
annotate this tree-wide.

> > > So maybe I can understand that maybe you want an easy way to discover -
> > > per device - that the firmware crashed, but that still doesn't warrant a
> > > complete kernel taint.
> > 
> > That is one reason, another is that a taint helps support cases *fast*
> > easily detect if the issue was a firmware crash, instead of scraping
> > logs for driver specific ways to say the firmware has crashed.
> 
> You can listen for udev events (I think that is the right term),
> and find crashes that way.  You get the actual crash info as well.

My follow up to this was to add uevent to add_taint() as well, this way
these could generically be processed by userspace.

  Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
