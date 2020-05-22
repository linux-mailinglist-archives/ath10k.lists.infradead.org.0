Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419411DF17C
	for <lists+ath10k@lfdr.de>; Fri, 22 May 2020 23:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yni0Wd3+od70SK69kmE1DTU92JSyawcWt56fdXtyWSU=; b=MfMlJK/dv8CceO
	RfzPPoazBsCysmLegq/G92d9pXd6vIXcReBdrbmgIRMPxJqLb8BzARgbWP8iND3VJh7h5YSgeq6Rv
	nN+2UQ0Jjy70VKCnxJhJxU43QFYtmd84sGS3H0IdulEF4tdoJO/ctRDnAILeRkU2tsAyaPTXNXXwJ
	XkZUSXVHnWyuEFpl9JJcIpRgU23j6rzWsuLsn9oHcKCjsu/TzxYwH7trmgCF5g6u1e1X5kgaucr+K
	bqoHVeKDREMQkI3PHBKfs+ac+xymnWrOiq4WcrrFsV+mEHZbH6up/viDbZiSwbazfCB9vZn3WsHQs
	j9VSCEiQOQqRXgVmiIVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcFa6-0006OA-Ih; Fri, 22 May 2020 21:51:54 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcFa3-0006N4-2f
 for ath10k@lists.infradead.org; Fri, 22 May 2020 21:51:52 +0000
Received: by mail-pg1-f195.google.com with SMTP id p21so5605059pgm.13
 for <ath10k@lists.infradead.org>; Fri, 22 May 2020 14:51:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z9B4bZk+E5XNnSc8/L/uVYEy0FFzcjh8GSMiMFaQ5cU=;
 b=OZPbiaU4DV9i/Y3r0eG9zCAgumRuTbSCcf9c0M4U4s1PB03seC4e2uVj+353G/Rm9K
 2lNTc89n2StZp21ETVbdQmGTntPAroHBzjTbWWpFwWZHAqbDjmAmkyppj5klAKF2Pvh4
 ctyGzfEDW4sOph4J8MqAyJ2t9xOSAT3tPLlLoMxv/8KecvV9AVIgjvbelok8PJDQ4kh2
 rUXqYj4zL79DYQ5deb1gxslRVvQZSm9bbiI/c7iIWKxBLqnGmC0tDZf4juSZn+ZFhABF
 yJTCMDFMetGsB3MucDDR0H/5yL2IipP0Jjky9Uspn2fT5AqcTdOMyiur4ezYXXlGEiSE
 PHrw==
X-Gm-Message-State: AOAM531R3bzz8qcpDO25uYLcVF8SwYW9DiTnR/gNPqc0AGnVam3SwV7d
 zjgG5T4hMbyvA6uyzKH7KFI=
X-Google-Smtp-Source: ABdhPJzcUJoVZSYg2I5qX4WrfgIvy28/Y0K9mfCZGDbP1o1kz3N2Ybs2nMxPYUjAV7xiLzsbiPVsyA==
X-Received: by 2002:a05:6a00:843:: with SMTP id
 q3mr5601514pfk.107.1590184307967; 
 Fri, 22 May 2020 14:51:47 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id a142sm7175101pfa.6.2020.05.22.14.51.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 14:51:46 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id CEDDD40321; Fri, 22 May 2020 21:51:45 +0000 (UTC)
Date: Fri, 22 May 2020 21:51:45 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [RFC 1/2] devlink: add simple fw crash helpers
Message-ID: <20200522215145.GC11244@42.do-not-panic.com>
References: <20200519010530.GS11244@42.do-not-panic.com>
 <20200519211531.3702593-1-kuba@kernel.org>
 <20200522052046.GY11244@42.do-not-panic.com>
 <20200522101738.1495f4cc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <2e5199edb433c217c7974ef7408ff8c7253145b6.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e5199edb433c217c7974ef7408ff8c7253145b6.camel@sipsolutions.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_145151_119008_32E97DF0 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
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
 mingo@redhat.com, Jakub Kicinski <kuba@kernel.org>, dyoung@redhat.com,
 pmladek@suse.com, jiri@resnulli.us, keescook@chromium.org, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, kvalo@codeaurora.org,
 netdev@vger.kernel.org, schlad@suse.de, linux-kernel@vger.kernel.org,
 jeyu@kernel.org, akpm@linux-foundation.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 10:46:07PM +0200, Johannes Berg wrote:
> FWIW, I still completely disagree on that taint. You (Luis) obviously
> have been running into a bug in that driver, I doubt the firmware
> actually managed to wedge the hardware.

This hasn't happened just once, its happed many times sporadically now,
once a week or two weeks I'd say. And the system isn't being moved
around.

> But even if it did, that's still not really a kernel taint. The kernel
> itself isn't in any way affected by this.

Of course it is, a full reboot is required.

> Yes, the system is in a weird state now. But that's *not* equivalent to
> "kernel tainted".

Requiring a full reboot is a dire situation to be in, and loosing
connectivity to the point this is not recoverable likewise.

You guys are making out a taint to be the end of the world. We have a
taint even for a kernel warning, and as others have mentioned mac80211
already produces these.

What exactly is the opposition to a taint to clarify that a device
firmware has crashed and your system requires a full reboot?

  Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
