Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3FE1E09BA
	for <lists+ath10k@lfdr.de>; Mon, 25 May 2020 11:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dW1EbYvMtAB9gXMl0Ak+xNC1/wXcZSNo2mq+Lxhxz80=; b=doLSD1j919t5mC
	dhyyoUNjNPJHTv3+hqlL67syDDD1VMysR6FF4luSSQD96sgMP21oyfHrAdJEWn/YqJO4IAmLP7onM
	t9VWZZr7oo4qNR3S9UiZ3TP/TAyO8264I8fJiBLJ0j4+SxbDXG3k+RK7feu66mleWpub15ibzhdzA
	xnQxQPNEYGF+9DIZ/5m5AKSNrCLowopxfPzfF4j4EeA+fwRhMSXol+sIon6hYv33tQnvuuDVoMJr9
	cc5z8NEH+nHkt/G6z82cg1pf5Ak9b/yC149tnrnvaq7fy6cjMB7pZVuI6xw6zQ3h8ie3UkT+YeCFE
	ovQeh1aCy1mfi6Gtzg/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd95y-0008Ea-Bx; Mon, 25 May 2020 09:08:30 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd95R-0007qy-Ir
 for ath10k@lists.infradead.org; Mon, 25 May 2020 09:07:59 +0000
IronPort-SDR: 7vdT6mH8xZpvJuA/kj2kDWGg6+HyyAN2XhIt19EenGUoA6xdIId16jUY6GZrFTg8xKP3k53Rut
 RJqF/uTB4jlg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 02:07:55 -0700
IronPort-SDR: 2hLbY16UNixp9uKwA+HoIovAgK51uxmidktw1TbuKfD5n9hRLrdAJfizedCATlB4/xfOf6J+bL
 +7VHvJIgi+Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,432,1583222400"; d="scan'208";a="301770713"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 25 May 2020 02:07:47 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jd95J-008ktF-4y; Mon, 25 May 2020 12:07:49 +0300
Date: Mon, 25 May 2020 12:07:49 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Steve deRosier <derosier@gmail.com>
Subject: Re: [RFC 1/2] devlink: add simple fw crash helpers
Message-ID: <20200525090749.GJ1634618@smile.fi.intel.com>
References: <20200519010530.GS11244@42.do-not-panic.com>
 <20200519211531.3702593-1-kuba@kernel.org>
 <20200522052046.GY11244@42.do-not-panic.com>
 <20200522101738.1495f4cc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <2e5199edb433c217c7974ef7408ff8c7253145b6.camel@sipsolutions.net>
 <20200522215145.GC11244@42.do-not-panic.com>
 <CALLGbR+QPcECtJbYmzztV_Qysc5qtwujT_qc785zvhZMCH50fg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALLGbR+QPcECtJbYmzztV_Qysc5qtwujT_qc785zvhZMCH50fg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_020757_688885_8BC1179B 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 peterz@infradead.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 mchehab+samsung@kernel.org, will@kernel.org,
 Ben Greear <greearb@candelatech.com>, bhe@redhat.com, briannorris@chromium.org,
 ath10k@lists.infradead.org, Takashi Iwai <tiwai@suse.de>, mingo@redhat.com,
 Jakub Kicinski <kuba@kernel.org>, dyoung@redhat.com, pmladek@suse.com,
 jiri@resnulli.us, Kees Cook <keescook@chromium.org>, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 Johannes Berg <johannes@sipsolutions.net>, Kalle Valo <kvalo@codeaurora.org>,
 Network Development <netdev@vger.kernel.org>, schlad@suse.de,
 LKML <linux-kernel@vger.kernel.org>, Luis Chamberlain <mcgrof@kernel.org>,
 jeyu@kernel.org, akpm@linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 04:23:55PM -0700, Steve deRosier wrote:
> On Fri, May 22, 2020 at 2:51 PM Luis Chamberlain <mcgrof@kernel.org> wrote:

> I had to go RTFM re: kernel taints because it has been a very long
> time since I looked at them. It had always seemed to me that most were
> caused by "kernel-unfriendly" user actions.  The most famous of course
> is loading proprietary modules, out-of-tree modules, forced module
> loads, etc...  Honestly, I had forgotten the large variety of uses of
> the taint flags. For anyone who hasn't looked at taints recently, I
> recommend: https://www.kernel.org/doc/html/latest/admin-guide/tainted-kernels.html
> 
> In light of this I don't object to setting a taint on this anymore.
> I'm a little uneasy, but I've softened on it now, and now I feel it
> depends on implementation.
> 
> Specifically, I don't think we should set a taint flag when a driver
> easily handles a routine firmware crash and is confident that things
> have come up just fine again. In other words, triggering the taint in
> every driver module where it spits out a log comment that it had a
> firmware crash and had to recover seems too much. Sure, firmware
> shouldn't crash, sure it should be open source so we can fix it,
> whatever...

While it may sound idealistic the firmware for the end-user, and even for mere
kernel developer like me, is a complete blackbox which has more access than
root user in the kernel. We have tons of firmwares and each of them potentially
dangerous beast. As a user I really care about my data and privacy (hacker can
oops a firmware in order to set a specific vector attack). So, tainting kernel
is _a least_ we can do there, the strict rules would be to reboot immediately.

> those sort of wishful comments simply ignore reality and
> our ability to affect effective change.

We can encourage users not to buy cheap crap for the starter.

> A lot of WiFi firmware crashes
> and for well-known cases the drivers handle them well. And in some
> cases, not so well and that should be a place the driver should detect
> and thus raise a red flag.  If a WiFi firmware crash can bring down
> the kernel, there's either a major driver bug or some very funky
> hardware crap going on. That sort of thing we should be able to
> detect, mark with a taint (or something), and fix if within our sphere
> of influence. I guess what it comes down to me is how aggressive we
> are about setting the flag.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
