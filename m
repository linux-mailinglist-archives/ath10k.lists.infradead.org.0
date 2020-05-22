Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105EC1DF2EC
	for <lists+ath10k@lfdr.de>; Sat, 23 May 2020 01:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTOVMxNyA/IBRCmx5bDm8I8oZ6lvsURHQRm7nPFDt0I=; b=ZSPDz3XTpRf2qb
	d0lyM9lXfzS7x8F6AF9aZWmmZO7Ig1jlUqNdyfbpyMqSD9CnTF7NSP2+0+fmNIKEcmbP6YYOE/sa/
	VE6wS/yrqLG6SF0G1wL4SFWIIvKFBiukg3z2apKbpYKc8wZ0X4Ipxc27t6lw4W7Eu+MOGvyJoS0Cs
	rmruDyg5SFKCasH3ZGRLEjqmngaKudxnT9RsCVAcMSktC+txI5hWK1/W2aYx9ejLBk2W/42P2vk66
	YJ8vPmPQ2ibiC+mI+GPGQ+4NqRAfa2z6H5xfbcWMGvdBO/rI+NdVQ0g4uPgxPP5SjKeDmG0nBLK2h
	BznWcVQpoIEH+xEjDOqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcH1p-0004oS-CC; Fri, 22 May 2020 23:24:37 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcH1l-0004mo-Pf
 for ath10k@lists.infradead.org; Fri, 22 May 2020 23:24:35 +0000
Received: by mail-qv1-xf44.google.com with SMTP id l3so5524821qvo.7
 for <ath10k@lists.infradead.org>; Fri, 22 May 2020 16:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p3DOwgx50lHaOYH/y9NF0WRQ9Ja31vmsw+vc99//yd8=;
 b=cRe1Q0LpdKC1fFLtFRt0iy1U8UOw08DyLWTpDvNkZTCMRvCW2MbsPxkBFNnPyOigYP
 Ri3z371nh3MlGmkEJLxfQo3RNLbznUMwIq+ijREpBh9h+zFrfQZDB8yx9kyL7fpgj9Ni
 vgGs/M89F8xeUiI1OSgG39x+nHhSLFabisERtnRb6JCIUvtgM/h+1K89DF9f4G5g5C6P
 kDcwAye3TywnKLYJ46Nwbqj8/tUKWtXDoPd+ktOeGXQQbyAx7VFIt+j3rQdV8SA3VMyU
 oyBxMJpz+db2N/52oG2pNEYrvp1wfDzgguTwv5LNyfqIik+gSy00RgB5i25uuIaGN+6e
 s++w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p3DOwgx50lHaOYH/y9NF0WRQ9Ja31vmsw+vc99//yd8=;
 b=YOnevIpWUdMgbZNzzyw0e5N8lIV4P9d/D8DhS+xq3jhVM7WmMYdSvBHiHPyChejHjY
 aL3av83HEuBDqXFbq/YDj0iiYSD2JOo5ZMFeBpbWCwenatRkD4qJskBfMKjgRRXyUT8O
 aBUbXyVtQMbe26jp1glL4F/K15938BDJdoA9k48SEQObfkp3pA7Koe5IkuboWB6b6f/N
 1chOx3cC3+EhUMjUWXz2M2/qb/1V58sm5rj9T0WACs2GL1+fFspu8cWEWecqpQ2ECMSG
 7fX7qIP2b8oFtNgaECVSElhzZPvRxPCOcBnu6OVpObBZpbQ48T9U0LbRG6C4TAeL9mNC
 rFPw==
X-Gm-Message-State: AOAM530e223DK37MNyfgqZzT/lsiUCoqkxcRBilw9YjoWq7+AnpcAXDQ
 gsF/832E6m16FmkCUunQ4lbw2rPla/vwrwZCpoo=
X-Google-Smtp-Source: ABdhPJyONXtwaNSOSYLXwVMotvNgibyETSqzfSzBJG08UQWtvZoltYGqNRcszNvI7/n5dP2gIMR1JKoMcyYH7mDK7Uw=
X-Received: by 2002:ad4:4b26:: with SMTP id s6mr6198033qvw.146.1590189872044; 
 Fri, 22 May 2020 16:24:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200519010530.GS11244@42.do-not-panic.com>
 <20200519211531.3702593-1-kuba@kernel.org>
 <20200522052046.GY11244@42.do-not-panic.com>
 <20200522101738.1495f4cc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <2e5199edb433c217c7974ef7408ff8c7253145b6.camel@sipsolutions.net>
 <20200522215145.GC11244@42.do-not-panic.com>
In-Reply-To: <20200522215145.GC11244@42.do-not-panic.com>
From: Steve deRosier <derosier@gmail.com>
Date: Fri, 22 May 2020 16:23:55 -0700
Message-ID: <CALLGbR+QPcECtJbYmzztV_Qysc5qtwujT_qc785zvhZMCH50fg@mail.gmail.com>
Subject: Re: [RFC 1/2] devlink: add simple fw crash helpers
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_162433_836121_1FA9C7EF 
X-CRM114-Status: GOOD (  25.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [derosier[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, aquini@redhat.com,
 peterz@infradead.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 mchehab+samsung@kernel.org, will@kernel.org,
 Ben Greear <greearb@candelatech.com>, bhe@redhat.com, briannorris@chromium.org,
 ath10k@lists.infradead.org, Takashi Iwai <tiwai@suse.de>, mingo@redhat.com,
 Jakub Kicinski <kuba@kernel.org>, dyoung@redhat.com, pmladek@suse.com,
 jiri@resnulli.us, Kees Cook <keescook@chromium.org>, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, Johannes Berg <johannes@sipsolutions.net>,
 Kalle Valo <kvalo@codeaurora.org>,
 Network Development <netdev@vger.kernel.org>, schlad@suse.de,
 LKML <linux-kernel@vger.kernel.org>, jeyu@kernel.org,
 akpm@linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 2:51 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Fri, May 22, 2020 at 10:46:07PM +0200, Johannes Berg wrote:
> > FWIW, I still completely disagree on that taint. You (Luis) obviously
> > have been running into a bug in that driver, I doubt the firmware
> > actually managed to wedge the hardware.
>
> This hasn't happened just once, its happed many times sporadically now,
> once a week or two weeks I'd say. And the system isn't being moved
> around.
>
> > But even if it did, that's still not really a kernel taint. The kernel
> > itself isn't in any way affected by this.
>
> Of course it is, a full reboot is required.
>
> > Yes, the system is in a weird state now. But that's *not* equivalent to
> > "kernel tainted".
>
> Requiring a full reboot is a dire situation to be in, and loosing
> connectivity to the point this is not recoverable likewise.
>
> You guys are making out a taint to be the end of the world. We have a
> taint even for a kernel warning, and as others have mentioned mac80211
> already produces these.
>

I had to go RTFM re: kernel taints because it has been a very long
time since I looked at them. It had always seemed to me that most were
caused by "kernel-unfriendly" user actions.  The most famous of course
is loading proprietary modules, out-of-tree modules, forced module
loads, etc...  Honestly, I had forgotten the large variety of uses of
the taint flags. For anyone who hasn't looked at taints recently, I
recommend: https://www.kernel.org/doc/html/latest/admin-guide/tainted-kernels.html

In light of this I don't object to setting a taint on this anymore.
I'm a little uneasy, but I've softened on it now, and now I feel it
depends on implementation.

Specifically, I don't think we should set a taint flag when a driver
easily handles a routine firmware crash and is confident that things
have come up just fine again. In other words, triggering the taint in
every driver module where it spits out a log comment that it had a
firmware crash and had to recover seems too much. Sure, firmware
shouldn't crash, sure it should be open source so we can fix it,
whatever... those sort of wishful comments simply ignore reality and
our ability to affect effective change. A lot of WiFi firmware crashes
and for well-known cases the drivers handle them well. And in some
cases, not so well and that should be a place the driver should detect
and thus raise a red flag.  If a WiFi firmware crash can bring down
the kernel, there's either a major driver bug or some very funky
hardware crap going on. That sort of thing we should be able to
detect, mark with a taint (or something), and fix if within our sphere
of influence. I guess what it comes down to me is how aggressive we
are about setting the flag.

I would like there to be a single solution, or a minimized set
depending on what makes sense for the requirements. I haven't had time
to look into the alternatives mentioned here so I don't have an
informed opinion about the solution. I do think Luis is trying to
solve a real problem though. Can we look at this from the point of
view of what are the requirements?  What is it we're trying to solve?

I _think_ that the goal of Luis's original proposal is to report up to
the user, at some future point when the user is interested (because
something super drastic just occured, but long after the fw crash),
that there was a firmware crash without the user having to grep
through all logs on the machine. And then if the user sees that flag
and suspects it, then they can bother to find it in the logs or do
more drastic debugging steps like finding the fw crash in the log and
pulling firmware crash dumps, etc.

I think the various alternate solutions are great but perhaps solving
a superset of features (like adding in user-space notifications etc)?
Perhaps different people on these related threads are trying to solve
different problems?


- Steve

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
