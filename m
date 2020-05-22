Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3511DF0BE
	for <lists+ath10k@lfdr.de>; Fri, 22 May 2020 22:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZ1DeDxDiswgNbG768Ecwlf+xsxREGsXeNKeuzWtdWY=; b=mE2gPwXysjH7Qx
	J9KWAdj87BEEmeNCmd4tPpTSEGvMNSCBNJ0N396YOwqV5PZP5BOlhpjo8xDODPgC1UijX8sISo5mF
	+aDhz7dbIwymPOJHzuRJMdpwFIqOPp8gntHsjN/zF3aBn89WPuO+tGK9t6BoNXRrt3A3FqyRVZ+Rm
	3IkFrySVb/lV/KrUkODW51BECzW+ddL1izUhp7fqkbqm21s5NW4SsQ0xhIDExSbm8jkoHop0y/x5I
	PBXu/pvtjQ3/h11EPfESZwhhLPxnMZSy0rP3gDnd3aMjkahl8RmQ8J+E4H/1zN13juUh2ysorlMmj
	0UC2FrLfJhZjWqz6q5eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcEZk-0000Z4-1l; Fri, 22 May 2020 20:47:28 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcEZg-0000YO-MP
 for ath10k@lists.infradead.org; Fri, 22 May 2020 20:47:25 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jcEYU-000zou-Ao; Fri, 22 May 2020 22:46:10 +0200
Message-ID: <2e5199edb433c217c7974ef7408ff8c7253145b6.camel@sipsolutions.net>
Subject: Re: [RFC 1/2] devlink: add simple fw crash helpers
From: Johannes Berg <johannes@sipsolutions.net>
To: Jakub Kicinski <kuba@kernel.org>, Luis Chamberlain <mcgrof@kernel.org>
Date: Fri, 22 May 2020 22:46:07 +0200
In-Reply-To: <20200522101738.1495f4cc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20200519010530.GS11244@42.do-not-panic.com>
 <20200519211531.3702593-1-kuba@kernel.org>
 <20200522052046.GY11244@42.do-not-panic.com>
 <20200522101738.1495f4cc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_134724_730598_F2B15F7F 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
 greearb@candelatech.com, bhe@redhat.com, briannorris@chromium.org,
 ath10k@lists.infradead.org, derosier@gmail.com, tiwai@suse.de,
 mingo@redhat.com, dyoung@redhat.com, pmladek@suse.com, jiri@resnulli.us,
 keescook@chromium.org, arnd@arndb.de, gpiccoli@canonical.com,
 rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, kvalo@codeaurora.org,
 netdev@vger.kernel.org, schlad@suse.de, linux-kernel@vger.kernel.org,
 jeyu@kernel.org, akpm@linux-foundation.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, 2020-05-22 at 10:17 -0700, Jakub Kicinski wrote:

> > > --- a/net/core/Makefile
> > > +++ b/net/core/Makefile
> > > @@ -31,7 +31,7 @@ obj-$(CONFIG_LWTUNNEL_BPF) += lwt_bpf.o
> > >  obj-$(CONFIG_BPF_STREAM_PARSER) += sock_map.o
> > >  obj-$(CONFIG_DST_CACHE) += dst_cache.o
> > >  obj-$(CONFIG_HWBM) += hwbm.o
> > > -obj-$(CONFIG_NET_DEVLINK) += devlink.o
> > > +obj-$(CONFIG_NET_DEVLINK) += devlink.o devlink_simple_fw_reporter.o  
> > 
> > This was looking super sexy up to here. This is networking specific.
> > We want something generic for *anything* that requests firmware.
> 
> You can't be serious. It's network specific because of how the Kconfig
> is named?

Wait, yeah, what?

> Working for a company operating large data centers I would strongly
> prefer if we didn't have ten different ways of reporting firmware
> problems in the fleet.

Agree. I don't actually operate anything, but still ...

Thinking about this - maybe there's a way to still combine devcoredump
and devlink somehow?

Or (optionally) make devlink trigger devcoredump while userspace
migrates?

> > So networking may want to be aware that a firmware crash happened as
> > part of this network device health thing, but firmware crashing is a
> > generic thing.
> > 
> > I have now extended my patch set to include uvents and I am more set on
> > that we need the taint now more than ever.

FWIW, I still completely disagree on that taint. You (Luis) obviously
have been running into a bug in that driver, I doubt the firmware
actually managed to wedge the hardware.

But even if it did, that's still not really a kernel taint. The kernel
itself isn't in any way affected by this.

Yes, the system is in a weird state now. But that's *not* equivalent to
"kernel tainted".

> The irony is you have a problem with a networking device and all the
> devices your initial set touched are networking. Two of the drivers 
> you touched either have or will soon have devlink health reporters
> implemented.

Like I said above, do you think it'd be feasible to make a devcoredump
out of devlink health reports? And can the report be in a way that we
control the file format, or are there limits? I guess I should read the
code to find out, but I figure you probably just know. But feel free to
tell me to read it :)

The reason I'm asking is that it's starting to sound like we really
ought to be implementing devlink, but we've got a bunch of
infrastructure that uses the devcoredump, and it'll take time
(significantly so) to change all that...

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
