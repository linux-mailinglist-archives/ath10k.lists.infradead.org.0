Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE561D893D
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 22:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpcIR9bgz6ViK3qhbCVH8t5jRQ0QJpeGet8tfcB9xIw=; b=ZJFk0HKJpQOqHQ
	/tCPXf23cfR0lDRtxnuGjAGCnTjwGgyhmFUG2ftagsT4GH/DLmTgxsFU4wADrJmatLJnT9CheGbdP
	i7FzlXH63c4ijFhy9B7OVBKWUZn5zBwObBboci2QICgO1E1Tvc+AvWWolq5qvaFTFmHZKgS0iry92
	9yOmhKqH6vtf2nz0bZ1xkEd1Y1NvXyeFQqPK//qzlNBZX8yRjgIgCL5JB6XCW3YT/OKdu6Ka5LxNY
	4eZOi130rEYG3AZkgHlyYebBmv5WmqzaLE+lLf7UG8WnniV1s/dY02IbxBE9VEUaaC65dJyXt0Qdz
	4oSPDknqFLpVTBcVexRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jamTz-0001d5-3B; Mon, 18 May 2020 20:35:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jamTt-0001c2-KA
 for ath10k@lists.infradead.org; Mon, 18 May 2020 20:35:26 +0000
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA71720643;
 Mon, 18 May 2020 20:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589834125;
 bh=EebWMw2/BKiwkL0PdmpH4pmdEuuBamIWeyLtE/PbjDM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=0NV+O35TlHkZPw5ugdanjgmtCGbOX0t0hFYRBxjBtzDNjth/O3q+acWeLbthxRWNw
 SNKAZd0DdRSjYTHrZ0PZRjHHhDLSPqY0xusmfSDo0mYGrDhJRMT7+40ZzFowp5D85t
 Jh8T14s82+k6v/rjkjLSG3OwrgsvmAEAHZrw7WH8=
Date: Mon, 18 May 2020 13:35:21 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200518133521.6052042e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <8d7a3bed242ac9d3ec55a4c97e008081230f1f6d.camel@sipsolutions.net>
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <20200518165154.GH11244@42.do-not-panic.com>
 <4ad0668d-2de9-11d7-c3a1-ad2aedd0c02d@candelatech.com>
 <20200518170934.GJ11244@42.do-not-panic.com>
 <abf22ef3-93cb-61a4-0af2-43feac6d7930@candelatech.com>
 <20200518171801.GL11244@42.do-not-panic.com>
 <CALLGbR+ht2V3m5f-aUbdwEMOvbsX8ebmzdWgX4jyWTbpHrXZ0Q@mail.gmail.com>
 <20200518190930.GO11244@42.do-not-panic.com>
 <e3d978c8fa6a4075f12e843548d41e2c8ab537d1.camel@sipsolutions.net>
 <20200518132828.553159d9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <8d7a3bed242ac9d3ec55a4c97e008081230f1f6d.camel@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_133525_704433_021D9E43 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, aquini@redhat.com,
 peterz@infradead.org, daniel.vetter@ffwll.ch, mchehab+samsung@kernel.org,
 will@kernel.org, Ben Greear <greearb@candelatech.com>, bhe@redhat.com,
 ath10k@lists.infradead.org, Steve deRosier <derosier@gmail.com>,
 Takashi Iwai <tiwai@suse.de>, mingo@redhat.com, dyoung@redhat.com,
 pmladek@suse.com, keescook@chromium.org, arnd@arndb.de, gpiccoli@canonical.com,
 rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, Kalle Valo <kvalo@codeaurora.org>,
 Network Development <netdev@vger.kernel.org>, schlad@suse.de,
 LKML <linux-kernel@vger.kernel.org>, Luis Chamberlain <mcgrof@kernel.org>,
 jeyu@kernel.org, akpm@linux-foundation.org, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 22:29:53 +0200 Johannes Berg wrote:
> On Mon, 2020-05-18 at 13:28 -0700, Jakub Kicinski wrote:
> > On Mon, 18 May 2020 21:25:09 +0200 Johannes Berg wrote:  
> > > It's pretty clear, but even then, first of all I doubt this is the case
> > > for many of the places that you've sprinkled the annotation on, and
> > > secondly it actually hides useful information.
> > > 
> > > Regardless of the support issue, I think this hiding of information is
> > > also problematic.
> > > 
> > > I really think we'd all be better off if you just made a sysfs file (I
> > > mistyped debugfs in some other email, sorry, apparently you didn't see
> > > the correction in time) that listed which device(s) crashed and how many
> > > times. That would actually be useful. Because honestly, if a random
> > > device crashed for some random reason, that's pretty much a non-event.
> > > If it keeps happening, then we might even want to know about it.  
> > 
> > Johannes - have you seen devlink health? I think we should just use
> > that interface, since it supports all the things you're requesting,
> > rather than duplicate it in sysfs.  
> 
> I haven't, and I'm glad to hear that's there, sounds good!
> 
> I suspect that Luis wants something more generic though, that isn't just
> applicable to netdevices, unless devlink grew some kind of non-netdev
> stuff while I wasn't looking? :)

It's intended to be a generic netlink channel for configuring devices.

All the firmware-related interfaces have no dependencies on netdevs,
in fact that's one of the reasons we moved to devlink - we don't want
to hold rtnl lock just for talking to device firmware.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
