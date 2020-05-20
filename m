Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D211DA6C3
	for <lists+ath10k@lfdr.de>; Wed, 20 May 2020 02:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LquyfuenIr2kyLZLYIf2ANG24edClwtKuPvTszBViuQ=; b=QNCHEAuxxYSf5f
	HSviTdpcB48GOc+S8AxxXIZRqwp29W/Ph2rNdiOwEWgMUw+wXb7JMJVIHn+hq0q0PjZ6jFhSlpBM8
	d3IqJVXnyWRPuBB+I/XapD53jGrxiMmMiz9vMEi6bkiNT7pTtktBjILzuAC80Q4FWTk0RnkTCDomD
	1FkBYNfUqxi98bTryXLAo54sTDVFW5hUMGPvLK5uLblVPTMdYCYyKl1/pO5n9Q17C/RNwUuVEjB8V
	QKLwaaEXra+YGSGiJvqutguOQzxq8Nx6ulSzgmhkjJn7X2zWsa86gV4Nj8tufZ/fv8uuZusIBaaI5
	Z2RRwQ/gIGUxkMbdiMbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCtS-0003q3-P7; Wed, 20 May 2020 00:47:34 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCtP-0003pZ-3q
 for ath10k@lists.infradead.org; Wed, 20 May 2020 00:47:32 +0000
Received: by mail-lj1-x244.google.com with SMTP id l15so1330053lje.9
 for <ath10k@lists.infradead.org>; Tue, 19 May 2020 17:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5ATl/YyNFGir4smvEUTlq/KkR2CgcH9y6IS3q99jhLs=;
 b=Q53CpEuCe5BAQWGjzWeuXrHorlioHrVowYwDVRiGCloTfuif1brMeniDptNuvB9yzj
 upKasxGIWWovsRAyO3Aoi8vYxGFsUQ9jjjFsAarCnLT0J/MA13Q/+JAiZnrbUHX6YGm9
 vltH82MgNYHuhHxgfK179xa5qdoWmv0z6EaCI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5ATl/YyNFGir4smvEUTlq/KkR2CgcH9y6IS3q99jhLs=;
 b=mzotlgt1y/XAp0sb0PhbS+CZzIsXNdTxLNPLxLg5kuDHZ98IdvGAgOwv4S46z2v2rD
 AjK4WkHCax2anqJeNHNpCmOkCmPNaZ+tuiFTNGGlKzTon0G0/N3ziD6J/Kv7mWVjGmOm
 r1yvWAG44oASVLvI4rxnWgiq+7sT/vfGV+UWoegaJxNUTf2faJdagZAQzLcjwsT3qbRp
 bMQl0ATSyJpChG7EZ/cCCnCFyoLnvDpMhRYw+1wM/iG0IuJhiZ8DoE7W52ZAPxPYVYC7
 U9SVEsHCGatNBp4pKbEmKHP5OIrU1W6Xj7AdA3P7goQ9A++ONP7DYuyU3ydVdMTwxWyb
 N11g==
X-Gm-Message-State: AOAM531HncpOv//+t3qRn+bvCGu+OKh3YZdWNne9KFppzT6vHKJhDgAY
 EewERZQy50U1I1ffLGs0GFyMQhZgTJw=
X-Google-Smtp-Source: ABdhPJxfVi9khvk4ukH5kkeUKIZobIgpdG/Ojcde5jZqRF3WsAKXC5dkvca+a8PEO0BHMIQMIOIk5g==
X-Received: by 2002:a2e:9dcf:: with SMTP id x15mr1118838ljj.154.1589935648092; 
 Tue, 19 May 2020 17:47:28 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id t15sm496277lfg.57.2020.05.19.17.47.24
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 17:47:25 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id h26so1089680lfg.6
 for <ath10k@lists.infradead.org>; Tue, 19 May 2020 17:47:24 -0700 (PDT)
X-Received: by 2002:ac2:4113:: with SMTP id b19mr930771lfi.143.1589935643824; 
 Tue, 19 May 2020 17:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <7306323c35e6f44d7c569e689b48f380f80da5e5.camel@sipsolutions.net>
 <CA+ASDXOg9oKeMJP1Mf42oCMMM3sVe0jniaWowbXVuaYZ=ZpDjQ@mail.gmail.com>
 <20200519140212.GT11244@42.do-not-panic.com>
In-Reply-To: <20200519140212.GT11244@42.do-not-panic.com>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 19 May 2020 17:47:12 -0700
X-Gmail-Original-Message-ID: <CA+ASDXMUHOcvJ_7UWgyANMxSz15Ji7TcLDXVCtSPa+fOr=+FGA@mail.gmail.com>
Message-ID: <CA+ASDXMUHOcvJ_7UWgyANMxSz15Ji7TcLDXVCtSPa+fOr=+FGA@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_174731_173379_B0613434 
X-CRM114-Status: GOOD (  36.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Linux Kernel <linux-kernel@vger.kernel.org>, jeyu@kernel.org,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Luis,

On Tue, May 19, 2020 at 7:02 AM Luis Chamberlain <mcgrof@kernel.org> wrote:
> On Mon, May 18, 2020 at 06:23:33PM -0700, Brian Norris wrote:
> > On Sat, May 16, 2020 at 6:51 AM Johannes Berg <johannes@sipsolutions.net> wrote:
> > > In addition, look what we have in iwl_trans_pcie_removal_wk(). If we
> > > detect that the device is really wedged enough that the only way we can
> > > still try to recover is by completely unbinding the driver from it, then
> > > we give userspace a uevent for that. I don't remember exactly how and
> > > where that gets used (ChromeOS) though, but it'd be nice to have that
> > > sort of thing as part of the infrastructure, in a sort of two-level
> > > notification?
> >
> > <slight side track>
> > We use this on certain devices where we know the underlying hardware
> > has design issues that may lead to device failure
>
> Ah, after reading below I see you meant for iwlwifi.

Sorry, I was replying to Johannes, who I believe had his "we"="Intel"
hat (as iwlwifi maintainer) on, and was pointing at
iwl_trans_pcie_removal_wk().

> If userspace can indeed grow to support this, that would be fantastic.

Well, Chrome OS tailors its user space a bit more to the hardware (and
kernel/drivers in use) than the average distro might. We already do
this (for some values of "this") today. Is that "fantastic" to you? :D

> > -- then when we see
> > this sort of unrecoverable "firmware-death", we remove the
> > device[*]+driver, force-reset the PCI device (SBR), and try to
> > reload/reattach the driver. This all happens by way of a udev rule.
>
> So you've sprikled your own udev event here as part of your kernel delta?

No kernel delta -- the event is there already:
iwl_trans_pcie_removal_wk()
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/net/wireless/intel/iwlwifi/pcie/trans.c?h=v5.6#n2027

And you can see our udev rules and scripts, in all their ugly details
here, if you really care:
https://chromium.googlesource.com/chromiumos/overlays/chromiumos-overlay/+/master/net-wireless/iwlwifi_rescan/files/

> > We
> > also log this sort of stuff (and metrics around it) for bug reports
> > and health statistics, since we really hope to not see this happen
> > often.
>
> Assuming perfection is ideal but silly. So, what infrastructure do you
> use for this sort of issue?

We don't yet log firmware crashes generally, but for all our current
crash reports (including WARN()), they go through this:
https://chromium.googlesource.com/chromiumos/platform2/+/master/crash-reporter/README.md

For example, look for "cut here" in:
https://chromium.googlesource.com/chromiumos/platform2/+/master/crash-reporter/anomaly_detector.cc

For other specific metrics (like counting "EVENT=INACCESSIBLE"), we
use the Chrome UMA system:
https://chromium.googlesource.com/chromiumos/platform2/+/master/metrics/README.md

I don't imagine the "infrastructure" side of any of that would be
useful to you, but maybe the client-side gathering can at least show
you what we do.

> > [*] "We" (user space) don't actually do this...it happens via the
> > 'remove_when_gone' module parameter abomination found in iwlwifi.
>
> BTW is this likely a place on iwlwifi where the firmware likely crashed?

iwl_trans_pcie_removal_wk() is triggered because HW accesses timed out
in a way that is likely due to a dead PCIe endpoint. It's not directly
a firmware crash, although there may be firmware crashes reported
around the same time.

Intel folks can probably give a more nuanced answer, but their
firmware crashes usually land in something like iwl_mvm_nic_error() ->
iwl_mvm_dump_nic_error_log() + iwl_mvm_nic_restart(). If you can make
your proposal less punishing (e.g., removing the "taint" as Johannes
requested), maybe iwlwifi would be another good candidate for
$subject. iwlwifi generally expects to recover seamlessly, but it's
also good to know if you've seen a hundred of these in a row.

> > A uevent
> > would suit us very well I think, although it would be nice if drivers
> > could also supply some small amount of informative text along with it
>
> A follow up to this series was to add a uevent to add_taint(), however
> since a *count* is not considered I think it is correct to seek
> alternatives at this point. The leaner the solution the better though.
>
> Do you have a pointer to what guys use so I can read?

Hopefully the above pointers are useful to you. We don't yet have
firmware-crash parsing implemented, so I don't have pointers for that
piece yet.

> > (e.g., a sort of "reason code", in case we can possibly aggregate
> > certain failure types). We already do this sort of thing for WARN()
> > and friends (not via uevent, but via log parsing; at least it has nice
> > "cut here" markers!).
>
> Indeed, similar things can indeed be argued about WARN*()... this
> however can be non-device specific. With panic-on-warn becoming a
> "thing", the more important it becomes to really tally exactly *why*
> these WARN*()s may trigger.

panic-on-warn? Yikes. I guess such folks don't run mac80211... I'm
probably not supposed to publicize information related to how many
Chromebooks are out there, but we regularly see a scary number of
non-fatal warnings (WARN(), WARN_ON(), etc.) logged by Chrome OS users
every day, and a scary number of those are in WiFi drivers...

> > Perhaps
>
> Note below.

(My use of "perhaps" is only because I'm not familiar with devlink at all.)

> > devlink (as proposed down-thread) would also fit the bill. I
> > don't think sysfs alone would fit our needs, as we'd like to process
> > these things as they happen, not only when a user submits a bug
> > report.
>
> I think we've reached a point where using "*Perhaps*" does not suffice,
> and if there is already a *user* of similar desired infrastructure I
> think we should jump on the opportunity to replace what you have with
> something which could be used by other devices / subsystems which
> require firmware. And indeed, also even consider in the abstract sense,
> the possibility to leverage something like this for WARN*()s later too.

To precisely lay out what Chrome OS does today:

* WARN() and similar: implemented, see anomaly_detector.cc above. It's
just log parsing, and that handy "cut here" stuff -- I'm nearly
certain there are other distros using this already? A uevent would
probably be nice, but log parsing is good enough for us today.
* EVENT=INACCESSIBLE: iwlwifi-specific, but reference code is linked
above. It's a uevent, and we handle it via udev. Code is linked above.
* Other firmware crashes: not yet implemented here, but we're looking
at it. Currently, we plan to do something similar to WARN(), but it
will be ugly and non-generic. A uevent would be a lovely replacement,
if it has some basic metadata with it. Stats in sysfs might be icing
on the cake, but mostly redundant for us, if we can grab it on the fly
via uevent.

HTH,
Brian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
