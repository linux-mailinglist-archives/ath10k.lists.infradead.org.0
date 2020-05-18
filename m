Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 132201D892A
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 22:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ql6Xkk2dKGTmzOlS4YUVtOiYdjSL7CkdC9l9OGJDvos=; b=RR+Yazav6NZ8ts
	pvlX+YtTuI2pMtWo8Uix39iJqbS43grwcdo/up53lgsqZckoLAXeIIDMcL0o/Opg8r0kQOad4HBsH
	s9HDGnF0scBwxKKmdGF+AApx5mouSqBTN7Lbmdi6w+UHL6w4J7BEJ9JS/NVT3SpGiUpIcMP6idEJN
	wHAxLgCwALlxSYDWrOwA/1UJwjE3pi/rJrpxSO6dc/DuHQRAxZCM/ib8UsFC7rLlFaw0fxNerUFej
	0wEZbQiNyP6z0D8DAiA+kNB/iV15DRNHe3O4TWgfIU/geuuDoGOQ6F3XCAreL0M4ps/01SMAWmLNv
	aJ0vDx8ZNU1Lp8nExHLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jamPm-0006RX-Ff; Mon, 18 May 2020 20:31:10 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jamPi-0006Qm-Tk
 for ath10k@lists.infradead.org; Mon, 18 May 2020 20:31:08 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jamOZ-00FkWP-9n; Mon, 18 May 2020 22:29:55 +0200
Message-ID: <8d7a3bed242ac9d3ec55a4c97e008081230f1f6d.camel@sipsolutions.net>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
From: Johannes Berg <johannes@sipsolutions.net>
To: Jakub Kicinski <kuba@kernel.org>
Date: Mon, 18 May 2020 22:29:53 +0200
In-Reply-To: <20200518132828.553159d9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_133106_960923_7D00B1FA 
X-CRM114-Status: GOOD (  14.40  )
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

On Mon, 2020-05-18 at 13:28 -0700, Jakub Kicinski wrote:
> On Mon, 18 May 2020 21:25:09 +0200 Johannes Berg wrote:
> > It's pretty clear, but even then, first of all I doubt this is the case
> > for many of the places that you've sprinkled the annotation on, and
> > secondly it actually hides useful information.
> > 
> > Regardless of the support issue, I think this hiding of information is
> > also problematic.
> > 
> > I really think we'd all be better off if you just made a sysfs file (I
> > mistyped debugfs in some other email, sorry, apparently you didn't see
> > the correction in time) that listed which device(s) crashed and how many
> > times. That would actually be useful. Because honestly, if a random
> > device crashed for some random reason, that's pretty much a non-event.
> > If it keeps happening, then we might even want to know about it.
> 
> Johannes - have you seen devlink health? I think we should just use
> that interface, since it supports all the things you're requesting,
> rather than duplicate it in sysfs.

I haven't, and I'm glad to hear that's there, sounds good!

I suspect that Luis wants something more generic though, that isn't just
applicable to netdevices, unless devlink grew some kind of non-netdev
stuff while I wasn't looking? :)

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
