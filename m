Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2081D8832
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 21:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdOFVfAoEPKzmlJjMKCDsW3TrIDKrh6xqqarOYU/1ZM=; b=mHxtYD4EbqVXI2
	r1euUTFPWJ7QwX5Sqq8m9g6Sk3kL271KtopPCv1SYEwnboV3lneBpKnIPpmyhFpWiUrDsQlrSDByq
	un+96pxqnQgcWurx1D2pS9UmyOIn5Mr7+ySJgqffpqOfKAfWO1LYWqdTL3d+tvnvEDMt3jZo9HAnM
	Z5GyyfHsyQ1E27Qa2uEqBhPw127lE3Be+BwfwmNTsb5cNXmH2dfukrtIu2uo5AL1VxDUZ0tdqDney
	+LTYR4hahjvtzd/ytlhNKuJcOoEXgwPnDzHx8+wiSLdYilcLRtNq3ADXTJNLTguP98zjvGNhwSjB4
	pMbg1Eas2eO4/XfJbFnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jalPV-0007Po-4R; Mon, 18 May 2020 19:26:49 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jalPS-0007Nk-Ap
 for ath10k@lists.infradead.org; Mon, 18 May 2020 19:26:47 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jalNw-00Fhxr-7e; Mon, 18 May 2020 21:25:14 +0200
Message-ID: <e3d978c8fa6a4075f12e843548d41e2c8ab537d1.camel@sipsolutions.net>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
From: Johannes Berg <johannes@sipsolutions.net>
To: Luis Chamberlain <mcgrof@kernel.org>, Steve deRosier <derosier@gmail.com>
Date: Mon, 18 May 2020 21:25:09 +0200
In-Reply-To: <20200518190930.GO11244@42.do-not-panic.com>
 (sfid-20200518_210935_354047_0199DB8F)
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
 (sfid-20200518_210935_354047_0199DB8F)
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_122646_372468_280F556D 
X-CRM114-Status: GOOD (  21.64  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
 ath10k@lists.infradead.org, Takashi Iwai <tiwai@suse.de>, mingo@redhat.com,
 dyoung@redhat.com, pmladek@suse.com, keescook@chromium.org, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, Kalle Valo <kvalo@codeaurora.org>,
 Network Development <netdev@vger.kernel.org>, schlad@suse.de,
 LKML <linux-kernel@vger.kernel.org>, jeyu@kernel.org,
 akpm@linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, 2020-05-18 at 19:09 +0000, Luis Chamberlain wrote:

> > Unfortunately a "taint" is interpreted by many users as: "your kernel
> > is really F#*D up, you better do something about it right now."
> > Assuming they're paying attention at all in the first place of course.
> 
> Taint historically has been used and still is today to help rule out
> whether or not you get support, or how you get support.
> 
> For instance, a staging driver is not supported by some upstream
> developers, but it will be by those who help staging and Greg. TAINT_CRAP
> cannot be even more clear.
> 
> So, no, it is not just about "hey your kernel is messed up", there are
> clear support boundaries being drawn.

Err, no. Those two are most definitely related. Have you looked at (most
or some or whatever) staging drivers recently? Those contain all kinds
of garbage that might do whatever with your kernel.

Of course that's not a completely clear boundary, maybe you can find a
driver in staging that's perfect code just not written to kernel style?
But I find that hard to believe, in most cases.

So no, it's really not about "[a] staging driver is not supported" vs.
"your kernel is messed up". The very fact that you loaded one of those
things might very well have messed up your kernel entirely.

> These days though, I think we all admit, that firmware crashes can use
> a better generic infrastructure for ensuring that clearly affecting-user
> experience issues. This patch is about that *when and if these happen*,
> we annotate it in the kernel for support pursposes.

That's all fine, I just don't think it's appropriate to pretend that
your kernel is now 'tainted' (think about the meaning of that word) when
the firmware of some random device crashed. Heck, that could have been a
USB device that was since unplugged. Unless the driver is complete
garbage (hello staging again?) that really should have no lasting effect
on the system itself.

> Recovery without affecting user experience would be great, the taint is
> *not* for those cases. The taint definition has:
> 
> + 18) ``Q`` used by device drivers to annotate that the device driver's firmware
> +     has crashed and the device's operation has been severely affected. The    
> +     device may be left in a crippled state, requiring full driver removal /   
> +     addition, system reboot, or it is unclear how long recovery will take.
> 
> Let me know if this is not clear.

It's pretty clear, but even then, first of all I doubt this is the case
for many of the places that you've sprinkled the annotation on, and
secondly it actually hides useful information.

Regardless of the support issue, I think this hiding of information is
also problematic.

I really think we'd all be better off if you just made a sysfs file (I
mistyped debugfs in some other email, sorry, apparently you didn't see
the correction in time) that listed which device(s) crashed and how many
times. That would actually be useful. Because honestly, if a random
device crashed for some random reason, that's pretty much a non-event.
If it keeps happening, then we might even want to know about it.

You can obviously save the contents of this file into your bug reports
automatically and act accordingly, but I think you'll find that this is
far more useful than saying "TAINT_FIRMWARE_CRASHED" so I'll ignore this
report. Yeah, that might be reasonable thing if the bug report is about
slow wifi *and* you see that ath10k firmware crashed every 10 seconds,
but if it just crashed once a few days earlier it's of no importance to
the system anymore ... And certainly a reasonable driver (which I
believe ath10k to be) would _not_ randomly start corrupting memory
because its firmware crashed. Which really is what tainting the kernel
is about.

So no, even with all that, I still really believe you're solving the
wrong problem. Having information about firmware crashes, preferably
with some kind of frequency information attached, and *clearly* with
information about which device attached would be _great_. Munging it all
into one bit is actively harmful, IMO.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
