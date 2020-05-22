Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4B31DEE05
	for <lists+ath10k@lfdr.de>; Fri, 22 May 2020 19:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHgKGwFGc1lEKPg+TDNiBHL1lsIGvlWkjnVFZE4uPl4=; b=pCt8rUcKbruNvL
	uafVyDpRxpPjVz9B84jwcDOrKJJbMqaPDxemE3OOLnWMcC4aXyCwzRQN1F6pCryYJpO9ihqG0DiVP
	N+TFS/D1SYyF3VqD4DusSTHOLhm6eHJZNVEihk01KJzo+z/NIbajdiWKukrxPP8klpmxLafjepL+5
	sg9RtsmBC6uOlt/aOoABplG+ix9/0S97Qs8AsPLfSgd0NOIlAEzzjTuJI6uwjJaYOAO30/OSICtiu
	IDKWcIhePHbU+/Es0lC8/c+FmN91Z3ymxULuy1WJmtCg3fafYWOf36aBzCBREhVKf+lnWNqxhr2Q2
	VhAjyN1DjFXPvBMFXGMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcBIo-0004zb-8y; Fri, 22 May 2020 17:17:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcBIk-0004yy-Un
 for ath10k@lists.infradead.org; Fri, 22 May 2020 17:17:44 +0000
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8464720738;
 Fri, 22 May 2020 17:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590167861;
 bh=JHvmQjCIw6/VvDscVfT+qCoWQLdg5aBrXbxB+sIlVv0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GWXiRViM+TXrBlInvfPJxiOUc0PtnWfYnR+Kujxt16bktx0kcR2oZWEzGOIuQm1fL
 r82t5OiPZMiJUTvwWrR1pwArgfPhI6rQ9oGnsHR601aIjzsQ5I+LDFuvPR1kdmqmiO
 cZkTQP4IInjzhZbjCiGd3ZDDM+Y8IkZ2KIm3oeRE=
Date: Fri, 22 May 2020 10:17:38 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [RFC 1/2] devlink: add simple fw crash helpers
Message-ID: <20200522101738.1495f4cc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200522052046.GY11244@42.do-not-panic.com>
References: <20200519010530.GS11244@42.do-not-panic.com>
 <20200519211531.3702593-1-kuba@kernel.org>
 <20200522052046.GY11244@42.do-not-panic.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_101743_013214_56A82281 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, 22 May 2020 05:20:46 +0000 Luis Chamberlain wrote:
> > diff --git a/net/core/Makefile b/net/core/Makefile
> > index 3e2c378e5f31..6f1513781c17 100644
> > --- a/net/core/Makefile
> > +++ b/net/core/Makefile
> > @@ -31,7 +31,7 @@ obj-$(CONFIG_LWTUNNEL_BPF) += lwt_bpf.o
> >  obj-$(CONFIG_BPF_STREAM_PARSER) += sock_map.o
> >  obj-$(CONFIG_DST_CACHE) += dst_cache.o
> >  obj-$(CONFIG_HWBM) += hwbm.o
> > -obj-$(CONFIG_NET_DEVLINK) += devlink.o
> > +obj-$(CONFIG_NET_DEVLINK) += devlink.o devlink_simple_fw_reporter.o  
> 
> This was looking super sexy up to here. This is networking specific.
> We want something generic for *anything* that requests firmware.

You can't be serious. It's network specific because of how the Kconfig
is named?

Working for a company operating large data centers I would strongly
prefer if we didn't have ten different ways of reporting firmware
problems in the fleet.

> I'm afraid this won't work for something generic. I don't think its
> throw-away work though, the idea to provide a generic interface to
> dump firmware through netlink might be nice for networking, or other
> things.
> 
> But I have a feeling we'll want something still more generic than this.

Please be specific. Saying generic a lot is not helpful. The code (as
you can see in this patch) is in no way network specific. Or are you
saying there are machines out there running without netlink sockets?

> So networking may want to be aware that a firmware crash happened as
> part of this network device health thing, but firmware crashing is a
> generic thing.
> 
> I have now extended my patch set to include uvents and I am more set on
> that we need the taint now more than ever.

Please expect my nack if you're trying to add this to networking
drivers.

The irony is you have a problem with a networking device and all the
devices your initial set touched are networking. Two of the drivers 
you touched either have or will soon have devlink health reporters
implemented.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
