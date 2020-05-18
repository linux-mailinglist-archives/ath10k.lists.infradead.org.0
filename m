Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146371D8986
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 22:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLoHhkcNDUU60qCNKeZ/fop2hBw6cm2dlz3td8VKXrY=; b=JyIaREXso5gWe3
	hryepw0ef5eolil7GkH0evgwtJDNx9peZSmmhRzL0knldOFK09qfIUlKIZEYm+8N5v+ta3HsQErkC
	40zTqSCI9qSlzfjS7msMOSygXXvpMy9DECZT/r9dIG+uFHONXTQ0qEffONtqeFxqZ+xA84HiXopgx
	2VAN4AzxScuiVCx8bAxNA1JoMqgG3ZM3b377Aq7Jd+pj/5ov1yWh7mBZSem4BuhYwGbnMAfFDxnMH
	Tgulih7wNu0NfhoU95DmrD/2zpK6bDcTG5vcKkaelaFDHoacb5SRVxWRI8V5EENloW3ZvYczpivq2
	nA9OG3rDWrGuyizI2hIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jamew-0007yF-Ah; Mon, 18 May 2020 20:46:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1james-0007xi-D2
 for ath10k@lists.infradead.org; Mon, 18 May 2020 20:46:47 +0000
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D87B420756;
 Mon, 18 May 2020 20:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589834806;
 bh=6/VqxVcF/eBMEiGqW5lrFQdbgd19nfTpUOXb5ymbNhM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DsmPLLdF8iyoK3doOUyzI8Q/z79p2b5CVpiLKw71ZAflO+M0fF/EpmqH3+/AmZYmN
 1MOfOMtfx589oKthcSfovPOYhC+VVIY2ur11x1zWmmNKkqZ0C/V5s6cGI4/FZitYmL
 PGFbnH2QwjtaaHiu/WatJ4eLvtBA+XtC8KCuWcFY=
Date: Mon, 18 May 2020 13:46:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200518134643.685fcb0e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <d81601b17065d7dc3b78bf8d68faf0fbfdb8c936.camel@sipsolutions.net>
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
 <20200518133521.6052042e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <d81601b17065d7dc3b78bf8d68faf0fbfdb8c936.camel@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_134646_465688_E81EE52E 
X-CRM114-Status: GOOD (  12.25  )
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

On Mon, 18 May 2020 22:41:48 +0200 Johannes Berg wrote:
> On Mon, 2020-05-18 at 13:35 -0700, Jakub Kicinski wrote:
> > It's intended to be a generic netlink channel for configuring devices.
> > 
> > All the firmware-related interfaces have no dependencies on netdevs,
> > in fact that's one of the reasons we moved to devlink - we don't want
> > to hold rtnl lock just for talking to device firmware.  
> 
> Sounds good :)
> 
> So I guess Luis just has to add some way in devlink to hook up devlink
> health in a simple way to drivers, perhaps? I mean, many drivers won't
> really want to use devlink for anything else, so I guess it should be as
> simple as the API that Luis proposed ("firmware crashed for this struct
> device"), if nothing more interesting is done with devlink?
> 
> Dunno. But anyway sounds like it should somehow integrate there rather
> than the way this patchset proposed?

Right, that'd be great. Simple API to register a devlink instance with
whatever number of reporters the device would need. I'm happy to help.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
