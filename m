Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FF21D89F7
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 23:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmYCLIO3Ke6IeDX4uhHgbK0YdyORRoOWin8J/60fSDY=; b=TivRd/+yvXybda
	q1yJDE0Dj7oWOx3h+17pfqbh463T4EgxSewux6rqIr0dkzhg1XZFz7ggtEpuFJxxXl0DeFpb1XcWu
	BjfSeGNRsLQQgCGbVDneB90rGloVIlOZrA+ohzl3f7UatJ367ECCMuNLLjFV8EajQAEFIAY5PXv+u
	RREA1ktdb5I6uRNzedjH5vluR47hBRocA6GM9r5UicJddm9nE9ecRHdw4NJ0MNONU49kuNdJ3KmSR
	XuguzwdeYhakEzWQ/hc+VIHdC5hf/sFsb0ygyHRCZm6uPGjDdw8TIymG+t1AflF5VJxGVxuUR3Nb7
	VqyqPnhSesVg9vtNhjQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1janD7-00038e-Ix; Mon, 18 May 2020 21:22:09 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1janD3-00036z-C1
 for ath10k@lists.infradead.org; Mon, 18 May 2020 21:22:06 +0000
Received: by mail-pf1-f194.google.com with SMTP id v63so5536649pfb.10
 for <ath10k@lists.infradead.org>; Mon, 18 May 2020 14:22:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y/wo2Runc9bAB/6pd6AKP8cw8s6s3rSoWBtx05F6YCY=;
 b=rd71P2VRkCRRn5xlUtfOZ3M7ukDEqsFaEyVR2zAH86RSg737GCFDlS+QvUljOjFFsQ
 B2z3XVcbTQWcuH1EpY1k/FSwVf5UeuFU6Jold6ubSQs9k4EzRBKJ7u5qo+YzeyT08b0w
 9vTsCre1FF34wf7gl5gSIufvq28AH3f3eodmwNilu2JeBDjevO9z2qqlJxtP9FF/w7M4
 ykdBKSHyuITkuIalyRdaPbTv8RNSXEVCOJIvBHGNroBK7pwQ3H4I7QeDh0JvXH5A6Bjz
 xjACi7Ema2PTgFCc6QpiTu2Qc7tWIOCLfk0r4zOM/0fCrXMotFTUX3WRL8Sn/wwBQdYq
 8PRA==
X-Gm-Message-State: AOAM533WuWgWP8BnryQJ6sxObT0nyARLfxugnYRs4akL7GBZ2UkL2h1d
 HxFYrMYoj/HTJZle24+YdHQ=
X-Google-Smtp-Source: ABdhPJxRLL0rTq2IGsFVxmB6BhC8z1lsUdqt1OZAfIGKtPauSAho1gbrv5Utwt5N1LUfBc32tNhgtg==
X-Received: by 2002:a62:15c7:: with SMTP id 190mr8308823pfv.190.1589836924550; 
 Mon, 18 May 2020 14:22:04 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id l6sm9387019pfl.128.2020.05.18.14.22.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 14:22:03 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 90999404B0; Mon, 18 May 2020 21:22:02 +0000 (UTC)
Date: Mon, 18 May 2020 21:22:02 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200518212202.GR11244@42.do-not-panic.com>
References: <abf22ef3-93cb-61a4-0af2-43feac6d7930@candelatech.com>
 <20200518171801.GL11244@42.do-not-panic.com>
 <CALLGbR+ht2V3m5f-aUbdwEMOvbsX8ebmzdWgX4jyWTbpHrXZ0Q@mail.gmail.com>
 <20200518190930.GO11244@42.do-not-panic.com>
 <e3d978c8fa6a4075f12e843548d41e2c8ab537d1.camel@sipsolutions.net>
 <20200518132828.553159d9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <8d7a3bed242ac9d3ec55a4c97e008081230f1f6d.camel@sipsolutions.net>
 <20200518133521.6052042e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <d81601b17065d7dc3b78bf8d68faf0fbfdb8c936.camel@sipsolutions.net>
 <20200518134643.685fcb0e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518134643.685fcb0e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_142205_409689_7CCE3FC1 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, aquini@redhat.com,
 peterz@infradead.org, daniel.vetter@ffwll.ch, mchehab+samsung@kernel.org,
 will@kernel.org, Ben Greear <greearb@candelatech.com>, bhe@redhat.com,
 ath10k@lists.infradead.org, Steve deRosier <derosier@gmail.com>,
 Takashi Iwai <tiwai@suse.de>, mingo@redhat.com, dyoung@redhat.com,
 pmladek@suse.com, keescook@chromium.org, arnd@arndb.de, gpiccoli@canonical.com,
 rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, Johannes Berg <johannes@sipsolutions.net>,
 Kalle Valo <kvalo@codeaurora.org>,
 Network Development <netdev@vger.kernel.org>, schlad@suse.de,
 LKML <linux-kernel@vger.kernel.org>, jeyu@kernel.org,
 akpm@linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 01:46:43PM -0700, Jakub Kicinski wrote:
> On Mon, 18 May 2020 22:41:48 +0200 Johannes Berg wrote:
> > On Mon, 2020-05-18 at 13:35 -0700, Jakub Kicinski wrote:
> > > It's intended to be a generic netlink channel for configuring devices.
> > > 
> > > All the firmware-related interfaces have no dependencies on netdevs,
> > > in fact that's one of the reasons we moved to devlink - we don't want
> > > to hold rtnl lock just for talking to device firmware.  
> > 
> > Sounds good :)
> > 
> > So I guess Luis just has to add some way in devlink to hook up devlink
> > health in a simple way to drivers, perhaps? I mean, many drivers won't
> > really want to use devlink for anything else, so I guess it should be as
> > simple as the API that Luis proposed ("firmware crashed for this struct
> > device"), if nothing more interesting is done with devlink?
> > 
> > Dunno. But anyway sounds like it should somehow integrate there rather
> > than the way this patchset proposed?
> 
> Right, that'd be great. Simple API to register a devlink instance with
> whatever number of reporters the device would need. I'm happy to help.

Indeed my issue with devlink is that it did not seem generic enough for
all devices which use firmware and for which firmware can crash. Support
should not have to be "add devlink support" + "now use this new hook",
but rather a very lighweight devlink_crash(device) call we can sprinkly
with only the device as a functional requirement.

  Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
