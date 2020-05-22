Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD551DF321
	for <lists+ath10k@lfdr.de>; Sat, 23 May 2020 01:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNbEkcW11f4lqWl4DqZljKWTmtxRQnXqk+c1mxBtVpg=; b=OJnCHQnWU4RaOt
	K+O4YPrJemSVpPh0SB88B+WdYeSQ0Xhi0x1hASOchZNjanuakgoYEcV/IYdhrPXXvfT1cj5j7TcMl
	mlG36FiRxzEq4e44yaDZi30ELlxHU2u+xq0IrrCrjm0N4u4nnsDjSofnVZxL1QW1A5ZFqNwqkW6if
	EyVTB4vuV4Z4C8Q6zg56N2zsdu4oHc/qZuRapXzgy6rKuNSqGoc0d8w28CWUbELCoV/8AFwHPpTd9
	LtT6TE66omUQspoNyRTeieuwWANnHq8zmFxtbndYsZdZbOX66mXXpp5gaehdveST868V0PUcKO7KJ
	C66frws4XgXULXaRHUrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHKr-0000Q6-Bc; Fri, 22 May 2020 23:44:17 +0000
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHKn-0000PI-Kf
 for ath10k@lists.infradead.org; Fri, 22 May 2020 23:44:15 +0000
Received: by mail-pj1-f65.google.com with SMTP id k7so5662782pjs.5
 for <ath10k@lists.infradead.org>; Fri, 22 May 2020 16:44:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qwBCXfH3p/Q+vVVyulpo5RbTtF9OgkKNjUK7JBnoUUc=;
 b=TMs1zN/HBaRh2wLPVI2jalgJFlUeYdd/YwfwCxxW36bpGBcoDerjyyAMO6RcCQZ3i+
 13mc2rq/E3cMA+jTywRqxxgGqtN8dNI2zSqWyM7Oc0Xpw8iJI7kRQkv/0M7di5uE4WHx
 t0sMn0GlK1QRjphB131SyHTrc7lI52HNhXI7Cpd7l8DovZ8ICjro1WXwUw5vDFrh/To1
 y7YdQTaLJJMrwroM362ytabnvhdqumGzmFaCYk2yL4E9xnLYGacMmY+KrJInw4PdYjC4
 4wH+OByHLGfh555U2DFn9FBGe7rZlSeWkWqXcNH9DrErJLf/Uc3syXAmTRxlMnlC6zPx
 owMQ==
X-Gm-Message-State: AOAM533DnoqyKRhycklYu9OP6YqX12xQwG+qSH8Rb2y+qEfnKniWQnDT
 wpSQRSFosS0x3Iw4PKhVXQk=
X-Google-Smtp-Source: ABdhPJxH0UgigagwiX+j+Sh0IiHJq/UtU9464U2bbx9EQXaHcu8Jt446U8JYth1jEeGTt/TQ3L8OXg==
X-Received: by 2002:a17:90b:1082:: with SMTP id
 gj2mr7642106pjb.225.1590191052196; 
 Fri, 22 May 2020 16:44:12 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id 10sm7565945pfx.138.2020.05.22.16.44.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:44:10 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id B4B5740321; Fri, 22 May 2020 23:44:09 +0000 (UTC)
Date: Fri, 22 May 2020 23:44:09 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Steve deRosier <derosier@gmail.com>
Subject: Re: [RFC 1/2] devlink: add simple fw crash helpers
Message-ID: <20200522234409.GH11244@42.do-not-panic.com>
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
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164413_680289_429BA692 
X-CRM114-Status: GOOD (  23.82  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.65 listed in list.dnswl.org]
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

On Fri, May 22, 2020 at 04:23:55PM -0700, Steve deRosier wrote:
> Specifically, I don't think we should set a taint flag when a driver
> easily handles a routine firmware crash and is confident that things
> have come up just fine again. In other words, triggering the taint in
> every driver module where it spits out a log comment that it had a
> firmware crash and had to recover seems too much. Sure, firmware
> shouldn't crash, sure it should be open source so we can fix it,
> whatever... those sort of wishful comments simply ignore reality and
> our ability to affect effective change. A lot of WiFi firmware crashes
> and for well-known cases the drivers handle them well. And in some
> cases, not so well and that should be a place the driver should detect
> and thus raise a red flag.  If a WiFi firmware crash can bring down
> the kernel, there's either a major driver bug or some very funky
> hardware crap going on. That sort of thing we should be able to
> detect, mark with a taint (or something), and fix if within our sphere
> of influence. I guess what it comes down to me is how aggressive we
> are about setting the flag.

Exactly the crux of the issue.

I hope that by now we should all be in agreement that at least a
firmware crash requiring a reboot is something we should record and
inform the user of. A taint seems like a reasonable standard practice
for these sorts of things.

> I would like there to be a single solution, or a minimized set
> depending on what makes sense for the requirements. I haven't had time
> to look into the alternatives mentioned here so I don't have an
> informed opinion about the solution. I do think Luis is trying to
> solve a real problem though. Can we look at this from the point of
> view of what are the requirements?  What is it we're trying to solve?
> 
> I _think_ that the goal of Luis's original proposal is to report up to
> the user, at some future point when the user is interested (because
> something super drastic just occured, but long after the fw crash),
> that there was a firmware crash without the user having to grep
> through all logs on the machine. And then if the user sees that flag
> and suspects it, then they can bother to find it in the logs or do
> more drastic debugging steps like finding the fw crash in the log and
> pulling firmware crash dumps, etc.

Yes, that's exactly it. Not all users are clueful to inspect logs. I now
have a generic uevent mechanism drafted which sends a uevent for *any*
taint. So that is, it does not even depend on this series. But it
accomplishes the goal of informing the user of taints.

> I think the various alternate solutions are great but perhaps solving
> a superset of features (like adding in user-space notifications etc)?
> Perhaps different people on these related threads are trying to solve
> different problems?

The uevent mechanism I implemented (but not yet posted for review) at
least sends out a smoke signal. I think that if each subsystem wants
to expand on this with dumping facilities that is great too!

  Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
