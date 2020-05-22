Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007261DF173
	for <lists+ath10k@lfdr.de>; Fri, 22 May 2020 23:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpnYYR3Mc+QLqVl6RflZqWk2f4fER4W2isvupRuWVdc=; b=oh9+Soh7i+QbTA
	1UJ2nrVk9sF557rexb851vELA6aPVDwhGqkS+3KaVZ/INme4jTTLJ3TKcF0JzEfKvk54fH8lctapH
	k/riN8cmWWUS7x9i5DpBR3KyNE1K5zLdpph1GNI7l0dE7Z6tf2Jv1tmyMmqX8nCr7wjLIFnGtf7LM
	BysGrF4XZbpwL5o9r6g9/0RATKvXMAmwSg5lxgUzKnCueLm9u4+j2Ud0HLpa4PUo7WHyVeDhKWJZR
	F0xoGz3dyGOcGQEGZzQznJIu2VklFN3Pn5cK3CH2Q9QpsASRQtHPqzrrDFnfjkqf9ATwzoDmkv77K
	8qUV9orXz/XhJv3JkxgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcFXt-0003ky-9W; Fri, 22 May 2020 21:49:37 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcFXp-0003kR-E7
 for ath10k@lists.infradead.org; Fri, 22 May 2020 21:49:34 +0000
Received: by mail-pg1-f194.google.com with SMTP id s10so5632406pgm.0
 for <ath10k@lists.infradead.org>; Fri, 22 May 2020 14:49:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=witZhMJ16Agl4OwIfL5pB8EM3wxhLaftmrS7Z3KmwGo=;
 b=AwW6M+d0gDPWZ3g4RYA1iqQyLlRnkgTmpm/M6CIQiP80Dus5Zk/CSF0/J6QUrfAVLp
 viofEY3Foavo9ZvtyW5QbT3jfpk0DjWHWpxrNMf80a46Ew/d7q9yRgc2tb+n4R5h7K7z
 QT4CM1JwrEoFHTscB8/I27xKfdjiz65N9LQEpGyk0dmSRWU8UDH26iQ/1ewhsAxLAbQx
 6eTU9MnzXw2MPv8xv/kGClEIJ6H8u4Vtg407fxu0sDFe/eZpv7e0wTl2UphyYgtGPWu6
 FWGaTE8QyhwTZGb5eMG1Yy6UFqYVJ2kWwVnZTolqU0cUcv3TyxkeiV/1hIlFo1fTtP1g
 6vsA==
X-Gm-Message-State: AOAM530eo4mjN9vLIGgfEo0G+asLr0x8PN/4NZ52iHMXKkkqjD4d7nXP
 tUcA863M0kaX+R9/HQ9q5is=
X-Google-Smtp-Source: ABdhPJyBq9LZCZJmpi4fQfFbSbNhR4Ql67aNRQjxVYgQP0yBZhIDm5eUIjVEbj0mW3rKV0Gj+0RIIQ==
X-Received: by 2002:a65:52c3:: with SMTP id z3mr15634431pgp.146.1590184172241; 
 Fri, 22 May 2020 14:49:32 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id y7sm7633645pjn.13.2020.05.22.14.49.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 14:49:30 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id D524C40321; Fri, 22 May 2020 21:49:29 +0000 (UTC)
Date: Fri, 22 May 2020 21:49:29 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [RFC 1/2] devlink: add simple fw crash helpers
Message-ID: <20200522214929.GB11244@42.do-not-panic.com>
References: <20200519010530.GS11244@42.do-not-panic.com>
 <20200519211531.3702593-1-kuba@kernel.org>
 <20200522052046.GY11244@42.do-not-panic.com>
 <20200522101738.1495f4cc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522101738.1495f4cc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_144933_474548_73D9EB15 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 andriy.shevchenko@linux.intel.com, johannes@sipsolutions.net,
 kvalo@codeaurora.org, netdev@vger.kernel.org, schlad@suse.de,
 linux-kernel@vger.kernel.org, jeyu@kernel.org, akpm@linux-foundation.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 10:17:38AM -0700, Jakub Kicinski wrote:
> On Fri, 22 May 2020 05:20:46 +0000 Luis Chamberlain wrote:
> > > diff --git a/net/core/Makefile b/net/core/Makefile
> > > index 3e2c378e5f31..6f1513781c17 100644
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

Kconfig? What has that to do with anything? The issue I have is that the
solution I am looking for is for it to be agnostic to the subsystem. I
have found similar firmware crashes on gpu, media, scsci.

> Working for a company operating large data centers I would strongly
> prefer if we didn't have ten different ways of reporting firmware
> problems in the fleet.

Indeed.

> > I'm afraid this won't work for something generic. I don't think its
> > throw-away work though, the idea to provide a generic interface to
> > dump firmware through netlink might be nice for networking, or other
> > things.
> > 
> > But I have a feeling we'll want something still more generic than this.
> 
> Please be specific. Saying generic a lot is not helpful. The code (as
> you can see in this patch) is in no way network specific. Or are you
> saying there are machines out there running without netlink sockets?

No, I am saying I want something to work with any struct device.

> > So networking may want to be aware that a firmware crash happened as
> > part of this network device health thing, but firmware crashing is a
> > generic thing.
> > 
> > I have now extended my patch set to include uvents and I am more set on
> > that we need the taint now more than ever.
> 
> Please expect my nack if you're trying to add this to networking
> drivers.

The uevent mechanism is not for networking.

The taint however is, and I'd like to undertand how it is you do not see
that an undesirable requirement for a reboot is a clear case for a taint.

> The irony is you have a problem with a networking device and all the
> devices your initial set touched are networking. Two of the drivers 
> you touched either have or will soon have devlink health reporters
> implemented.

That is all great, and I don't think its a bad idea to add
infrastructure / extend it to get more information about a firmware
crash dump. However, suggesting that devlink is the only solution we
need in the kernel without considering other subsystems is what I am
suggesting doesn't suit my needs. Networking was just the first
subsystem I am taclking now but I have patches where similar situations
happen across the kernel.

  Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
