Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2A61DA9FC
	for <lists+ath10k@lfdr.de>; Wed, 20 May 2020 07:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6XnDm7laSti0KOW4i4PALptJay0avJvCYzjOBR7q0f4=; b=eO4Aamit0UoVJ2
	hu0O5dtQGGFoQRZ9/FXY1e5VXbgXgqPbl/qGNJ6HpCMKjZ7rTt2untye/pKNJuiCIeQ6T6V6m846/
	TfrOjG8B855XwylayEZVrcwTAQFKVlvjWquuYdPPpj8KCPUe9WwV05plRwL2YLKEurGtgHCbkNfrs
	SAJe6PxaouwgeXYSvjU+AxNCkLXRkHTOgEI2LjLGgG1WxyAD/V2RYlk8Cu1EIeY3roRNNNZB6CaVd
	Uq7qgg5AfjDKAhwsCHcg/uNig1jqcbgag4O6tSr+t07WFvqcgDjcQ2NxF7Sl8Rn4mepQun3S0RCW/
	p7yG3L2mx0etSFXJsC5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbHQM-0007iX-Tv; Wed, 20 May 2020 05:37:50 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbHQI-0007i6-Bn
 for ath10k@lists.infradead.org; Wed, 20 May 2020 05:37:48 +0000
Received: by mail-vk1-xa41.google.com with SMTP id v192so471719vkd.3
 for <ath10k@lists.infradead.org>; Tue, 19 May 2020 22:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/bNfpWukY4vVaaKWY1WTWjyz9jcivE596+1XcXziFr4=;
 b=IwnpD1VzMAucNejdE26HEkqFjAKgZXJpBxGGmilSP/+rHNJhUfRGHs/4ld4ja5pq83
 nyOj5Jl3hL6XPjpc+NtwkBvppb6XST/B7ErxHpG4bOHh7vI/kjAIysuyLLGhroMcJW+/
 GEgUJxJlwH5rCTPk/jlFSAfoq4K2Y7vOfqGX6k1ZNlt+RGZTPoM4exnLAEWHfftB8juv
 s/geaBKfera/WiNSMohai06bQjJ1xkckVT6S8gOfFGdUiuPgO+nDuZnHDZ3VV38Kfkpc
 xOPFF44QlgNGbE+IFvkOiyQMwbDPoj9HI9Lj76vouyWyTHNf2H0kKivtxQcPIeRpebL0
 v28Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/bNfpWukY4vVaaKWY1WTWjyz9jcivE596+1XcXziFr4=;
 b=GLctJH9wEux0HMJyCciSIqYaKXfBH2ljXPKFxFqzk0k4Cj8m6YwGBdAmt6Dso0NkZ7
 ueiRIE/FQ/zJOeJMi+NWnxtACGQjZ0cTtU0Thwp9pCa5S1NLpO6znryRuVxJrX/Z/4Vt
 +/wB1ly3qhb8rUNrMzA+n5CXs8BS+ZEr7dE4HWhGaUJDz47EJmy/8Kg1MFB1WVcyLgjo
 CUdeArIDU9mXhPYE0szBfx6aYZJMnwExg56ZGF6TWXEEtK6eBUGLVmmsazeT5LAoMqP1
 BL6HuEPhIto1U0q1TxyN4pChdXOoI2sybjXxaUD4awkJ4V/rgfYM/8oB6hAJIYGhwi+N
 DPAQ==
X-Gm-Message-State: AOAM531+u4g0ialIzAGvzzFq4Nge8PNQVwmh1sKCkQ5mVHUnx/YpFdfd
 oRiddbjckRU65zqPlhpAEHFmo6OdQvzqvNyKa+A=
X-Google-Smtp-Source: ABdhPJwTKRHKdOW31s0ryngsBWdfDfa96K8KXNsWbUDfMpuDnXqfnd/ER/CftWvcK4yaHOy3z2ONAzibuxUhC0pVI0o=
X-Received: by 2002:ac5:c92c:: with SMTP id u12mr2590018vkl.93.1589953062127; 
 Tue, 19 May 2020 22:37:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <7306323c35e6f44d7c569e689b48f380f80da5e5.camel@sipsolutions.net>
 <CA+ASDXOg9oKeMJP1Mf42oCMMM3sVe0jniaWowbXVuaYZ=ZpDjQ@mail.gmail.com>
 <20200519140212.GT11244@42.do-not-panic.com>
 <CA+ASDXMUHOcvJ_7UWgyANMxSz15Ji7TcLDXVCtSPa+fOr=+FGA@mail.gmail.com>
In-Reply-To: <CA+ASDXMUHOcvJ_7UWgyANMxSz15Ji7TcLDXVCtSPa+fOr=+FGA@mail.gmail.com>
From: Emmanuel Grumbach <egrumbach@gmail.com>
Date: Wed, 20 May 2020 08:37:31 +0300
Message-ID: <CANUX_P1pnV46gOo0aL6QV0b+49ubB7C5nuUOuOfoT7aOM+ye9w@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
To: Brian Norris <briannorris@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_223746_423231_4BD39F95 
X-CRM114-Status: GOOD (  51.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [egrumbach[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 will@kernel.org, schlad@suse.de, bhe@redhat.com, ath10k@lists.infradead.org,
 Takashi Iwai <tiwai@suse.de>, mingo@redhat.com, dyoung@redhat.com,
 pmladek@suse.com, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, gpiccoli@canonical.com,
 Steven Rostedt <rostedt@goodmis.org>, cai@lca.pw, tglx@linutronix.de,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Kalle Valo <kvalo@codeaurora.org>,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, jeyu@kernel.org,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi all,

<top post intro>

Since I have been involved quite a bit in the firmware debugging
features in iwlwifi, I think I can give a few insights here.

But before this, we need to understand that there are several sources of issues:
1) the firmware may crash but the bus is still alive, you can still
use the bus to get the crash data
2) the bus is dead, when that happens, the firmware might even be in a
good condition, but since the bus is dead, you stop getting any
information about the firmware, and then, at some point, you get to
the conclusion that the firmware is dead. You can't get the crash data
that resides on the other side of the bus (you may have gathered data
in the DRAM directly, but that's a different thing), and you don't
have much recovery to do besides re-starting the PCI enumeration.

At Intel, we have seen both unfortunately. The bus issues are the ones
that are trickier obviously. Trickier to detect (because you just get
garbage from any request you issue on the bus), and trickier to
handle. One can argue that the kernel should *not* handle those and
let this in userspace hands. I guess it all depends on what component
you ship to your customer and what you customer asks from you  :).

</top post intro>

>
> Hi Luis,
>
> On Tue, May 19, 2020 at 7:02 AM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > On Mon, May 18, 2020 at 06:23:33PM -0700, Brian Norris wrote:
> > > On Sat, May 16, 2020 at 6:51 AM Johannes Berg <johannes@sipsolutions.net> wrote:
> > > > In addition, look what we have in iwl_trans_pcie_removal_wk(). If we
> > > > detect that the device is really wedged enough that the only way we can
> > > > still try to recover is by completely unbinding the driver from it, then
> > > > we give userspace a uevent for that. I don't remember exactly how and
> > > > where that gets used (ChromeOS) though, but it'd be nice to have that
> > > > sort of thing as part of the infrastructure, in a sort of two-level
> > > > notification?
> > >
> > > <slight side track>
> > > We use this on certain devices where we know the underlying hardware
> > > has design issues that may lead to device failure
> >
> > Ah, after reading below I see you meant for iwlwifi.
>
> Sorry, I was replying to Johannes, who I believe had his "we"="Intel"
> hat (as iwlwifi maintainer) on, and was pointing at
> iwl_trans_pcie_removal_wk().
>

This pcie_removal thing is for the bus dead thing. My 2) above.

> > If userspace can indeed grow to support this, that would be fantastic.
>
> Well, Chrome OS tailors its user space a bit more to the hardware (and
> kernel/drivers in use) than the average distro might. We already do
> this (for some values of "this") today. Is that "fantastic" to you? :D

I guess it can be fantastic if other vendors also suffer from this. Or
maybe that could be done as part of the PCI bus driver inside the
kernel?

>
> > > -- then when we see
> > > this sort of unrecoverable "firmware-death", we remove the
> > > device[*]+driver, force-reset the PCI device (SBR), and try to
> > > reload/reattach the driver. This all happens by way of a udev rule.
> >
> > So you've sprikled your own udev event here as part of your kernel delta?
>
> No kernel delta -- the event is there already:
> iwl_trans_pcie_removal_wk()
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/net/wireless/intel/iwlwifi/pcie/trans.c?h=v5.6#n2027
>
> And you can see our udev rules and scripts, in all their ugly details
> here, if you really care:
> https://chromium.googlesource.com/chromiumos/overlays/chromiumos-overlay/+/master/net-wireless/iwlwifi_rescan/files/
>
> > > We
> > > also log this sort of stuff (and metrics around it) for bug reports
> > > and health statistics, since we really hope to not see this happen
> > > often.
> >
> > Assuming perfection is ideal but silly. So, what infrastructure do you
> > use for this sort of issue?
>
> We don't yet log firmware crashes generally, but for all our current
> crash reports (including WARN()), they go through this:
> https://chromium.googlesource.com/chromiumos/platform2/+/master/crash-reporter/README.md
>
> For example, look for "cut here" in:
> https://chromium.googlesource.com/chromiumos/platform2/+/master/crash-reporter/anomaly_detector.cc
>
> For other specific metrics (like counting "EVENT=INACCESSIBLE"), we
> use the Chrome UMA system:
> https://chromium.googlesource.com/chromiumos/platform2/+/master/metrics/README.md
>
> I don't imagine the "infrastructure" side of any of that would be
> useful to you, but maybe the client-side gathering can at least show
> you what we do.
>
> > > [*] "We" (user space) don't actually do this...it happens via the
> > > 'remove_when_gone' module parameter abomination found in iwlwifi.
> >
> > BTW is this likely a place on iwlwifi where the firmware likely crashed?
>
> iwl_trans_pcie_removal_wk() is triggered because HW accesses timed out
> in a way that is likely due to a dead PCIe endpoint. It's not directly
> a firmware crash, although there may be firmware crashes reported
> around the same time.

iwl_trans_pcie_removal_wk()  is only because of a dead bus, not
because of a firmware crash.
>
> Intel folks can probably give a more nuanced answer, but their
> firmware crashes usually land in something like iwl_mvm_nic_error() ->
> iwl_mvm_dump_nic_error_log() + iwl_mvm_nic_restart(). If you can make
> your proposal less punishing (e.g., removing the "taint" as Johannes
> requested), maybe iwlwifi would be another good candidate for
> $subject. iwlwifi generally expects to recover seamlessly, but it's
> also good to know if you've seen a hundred of these in a row.

Yes, you are right, mvm_nic_error is the place.

So here is the proposal.
I think that a standard interface that can allow a driver to report a
firmware crash along with a proprietary unique id that makes sense to
the vendor can be useful. Then, yes, distros can listen to this,
optionally open bugs (automatically?) when that happens. I even
planned to do this long ago and integrated with a specific distro, but
it never rolled out. The vendor supplied unique id is very important
for the bug de-duplication part. For iwlwifi, we have the SYSASSERT
number which is basically how the firmware tells us briefly what
happened. Of course, there is always more data that can be useful, but
for a first level of bug de-duplication this can be enough. Then, you
have a standard way to track the firmware crashes.
We need to remember that the firmware recovery path is expected to
work, it is, yet, less tested. I specifically remember a bug where a
crash because by a bad handling of a CSA frame caused a firmware crash
in a flow that caused the driver not to re-add a station or something
like that, and because of that, you get another firmware crash. So
sometimes it is interesting to see not only the data on which firmware
crash happened and how many times, but if there is a timing
relationship between them. I guess that's for the next level though...
Not really critical for now.

The next problem here is that when you tell the firmware folks that
they have a bug, the first they'll do is to ask for more data. Back
then, I enabled our firmware debug infra on Linux, and from there
devcoredump infra was born (thanks Johannes). What we do at Intel, is
that we have a script that runs when a udev event reports the creation
of a devcoredump. It parses the kernel log (dmesg) to determine the
unique id I mentioned earlier (the SYSSASSERT number basically) and
then it creates a file in /var/log/ whose name contain the SYSSASSERT
number. It is then quite easy to match the firmware data with the
firmware crash.
So I believe the right way to do this is to create the devcoredump
along with the id. Meaning that we basically don't need another
interface, we just need to use the same one, but to provide the unique
id of the crash. This unique id can then be part of the uevent that is
thrown to the userspace and userspace can use it to name the dump file
with the right id. This way, it is fairly easy (and standard across
vendors) to track the firmware crashes, but the most important is that
you already have the firmware data that goes along with it. It would
look like this.


driver_code.c:
void my_vendor_error_interrupt()
{
  u64 uid = get_the_unique_id_from_your_device();
  void *firmware_data = get_the_data_you_need();

 dev_coredumpsg(dev_struct, firmware_data, firmware_data_len,
                              GFP_whatver, uid);
}

And then, this would cause a:
/var/log/wifi-crash-$(KBUILD_MODNAME)-,uid.bin to appear our your filesystem.

>
> > > A uevent
> > > would suit us very well I think, although it would be nice if drivers
> > > could also supply some small amount of informative text along with it
> >
> > A follow up to this series was to add a uevent to add_taint(), however
> > since a *count* is not considered I think it is correct to seek
> > alternatives at this point. The leaner the solution the better though.
> >
> > Do you have a pointer to what guys use so I can read?
>
> Hopefully the above pointers are useful to you. We don't yet have
> firmware-crash parsing implemented, so I don't have pointers for that
> piece yet.

See above. I don't think it is the device driver's role to count those.
We can add this count this in userspace I think. Debatable though.

>
> > > (e.g., a sort of "reason code", in case we can possibly aggregate
> > > certain failure types). We already do this sort of thing for WARN()
> > > and friends (not via uevent, but via log parsing; at least it has nice
> > > "cut here" markers!).
> >
> > Indeed, similar things can indeed be argued about WARN*()... this
> > however can be non-device specific. With panic-on-warn becoming a
> > "thing", the more important it becomes to really tally exactly *why*
> > these WARN*()s may trigger.
>
> panic-on-warn? Yikes. I guess such folks don't run mac80211... I'm
> probably not supposed to publicize information related to how many
> Chromebooks are out there, but we regularly see a scary number of
> non-fatal warnings (WARN(), WARN_ON(), etc.) logged by Chrome OS users
> every day, and a scary number of those are in WiFi drivers...
>
> > > Perhaps
> >
> > Note below.
>
> (My use of "perhaps" is only because I'm not familiar with devlink at all.)
>
> > > devlink (as proposed down-thread) would also fit the bill. I
> > > don't think sysfs alone would fit our needs, as we'd like to process
> > > these things as they happen, not only when a user submits a bug
> > > report.
> >
> > I think we've reached a point where using "*Perhaps*" does not suffice,
> > and if there is already a *user* of similar desired infrastructure I
> > think we should jump on the opportunity to replace what you have with
> > something which could be used by other devices / subsystems which
> > require firmware. And indeed, also even consider in the abstract sense,
> > the possibility to leverage something like this for WARN*()s later too.
>
> To precisely lay out what Chrome OS does today:
>
> * WARN() and similar: implemented, see anomaly_detector.cc above. It's
> just log parsing, and that handy "cut here" stuff -- I'm nearly
> certain there are other distros using this already? A uevent would
> probably be nice, but log parsing is good enough for us today.
> * EVENT=INACCESSIBLE: iwlwifi-specific, but reference code is linked
> above. It's a uevent, and we handle it via udev. Code is linked above.
> * Other firmware crashes: not yet implemented here, but we're looking
> at it. Currently, we plan to do something similar to WARN(), but it
> will be ugly and non-generic. A uevent would be a lovely replacement,
> if it has some basic metadata with it. Stats in sysfs might be icing
> on the cake, but mostly redundant for us, if we can grab it on the fly
> via uevent.

So I believe we already have this uevent, it is the devcoredump. All
we need is to add the unique id.
Note that all this is good for firmware crashes, and not for bus dead
scenarios, but those two are fundamentally different even if they look
alike at the beginning of your error detection flow.
>
> HTH,
> Brian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
