Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7F31E156D
	for <lists+ath10k@lfdr.de>; Mon, 25 May 2020 22:57:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jADjIUGf215ICifCm9Ljxmf6ou1oykVsPESmsRkqKq4=; b=HYSYVFT8WyR5X+
	3O6BcRYPftf7UruEHF4iIybv8OSiYXIx4uBC0Y3vlDC9uEVmAcUZJ+urlMxWSXoWj4LyrbXFBIn/c
	ZKPjiZa2BW65Aiab6GforsKFQgWiZF6Xt+2wLNTK0Tzy3MTmFKALEl9WwDHlZvEn1L2i2E1fgngre
	F+sfsX9qw23Rf0d80euS9DE/ToZXQW38OrKX8YbOHX99FwVFWzxeYEKNm3pK70FKYgRqJC58mpkxu
	J2ZtMx1sKIpryiri/3Yg/z4rVQ9V7kjgS2GNeZP7Ch3UskkO0FnXv0vDE45R4+8un+2m2B/5VyL0e
	lHfw1pUkrwem79uChA3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdKAT-0003W1-4Q; Mon, 25 May 2020 20:57:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdKAP-0003VQ-HT
 for ath10k@lists.infradead.org; Mon, 25 May 2020 20:57:50 +0000
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net
 (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B8262065F;
 Mon, 25 May 2020 20:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590440268;
 bh=lR7NOEwZSW7Lg+I18yIGiKJF3iGfsiCFNOxqNlZ1mDc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=swt24vm+6Bdjwmpc/k3E1NGlCiAfDgyqBkQ3G8Ce/iyqkrFCZLuItGHYd7e+lhuit
 2p/8FdJfvjSP6yy44RRgmPkzZ0fXJ6Hm3oE4qCNX4na//sgiBAFsr9XmKyyD1l5QJB
 5v9UiseaC98juTrEUehmaFTAJxgDK718S2RLobhk=
Date: Mon, 25 May 2020 13:57:46 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [RFC 1/2] devlink: add simple fw crash helpers
Message-ID: <20200525135746.45e764de@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <2e5199edb433c217c7974ef7408ff8c7253145b6.camel@sipsolutions.net>
References: <20200519010530.GS11244@42.do-not-panic.com>
 <20200519211531.3702593-1-kuba@kernel.org>
 <20200522052046.GY11244@42.do-not-panic.com>
 <20200522101738.1495f4cc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <2e5199edb433c217c7974ef7408ff8c7253145b6.camel@sipsolutions.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_135749_600471_5A176ABC 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [67.180.217.166 listed in dnsbl.sorbs.net]
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
 andriy.shevchenko@linux.intel.com, kvalo@codeaurora.org,
 netdev@vger.kernel.org, schlad@suse.de, linux-kernel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, jeyu@kernel.org,
 akpm@linux-foundation.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 22:46:07 +0200 Johannes Berg wrote:
> > The irony is you have a problem with a networking device and all the
> > devices your initial set touched are networking. Two of the drivers 
> > you touched either have or will soon have devlink health reporters
> > implemented.  
> 
> Like I said above, do you think it'd be feasible to make a devcoredump
> out of devlink health reports? And can the report be in a way that we
> control the file format, or are there limits? I guess I should read the
> code to find out, but I figure you probably just know. But feel free to
> tell me to read it :)
> 
> The reason I'm asking is that it's starting to sound like we really
> ought to be implementing devlink, but we've got a bunch of
> infrastructure that uses the devcoredump, and it'll take time
> (significantly so) to change all that...

In devlink world pure FW core dumps are exposed by devlink regions.
An API allowing reading device memory, registers, etc., but also 
creating dumps of memory regions when things go wrong. It should be
a fairly straightforward migration.

Devlink health is more targeted, the dump is supposed to contain only
relevant information, selected and formatted by the driver. When device
misbehaves driver reads the relevant registers and FW state and creates
a formatted state dump. I believe each element of the dump must fit
into a netlink message (but there may be multiple elements, see
devlink_fmsg_prepare_skb()).

We should be able to convert dl-regions dumps and dl-health dumps into
devcoredumps, but since health reporters are supposed to be more
targeted there's usually multiple of them per device.

Conversely devcoredumps can be trivially exposed as dl-region dumps,
but I believe dl-health would require driver changes to format the
information appropriately.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
