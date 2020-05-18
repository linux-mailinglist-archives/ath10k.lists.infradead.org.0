Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A9D1D88AA
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 22:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTSlb8kdiaichi4hZsXbj6Lqfk34o7x7XJHGWxnrv9U=; b=T+DgUPuMt161KA
	RPx8Zpt1lGJ1cyo4262CK35e8oXxZXDi7gHfMiVjsodrpla0PmKP8iHkRxPRgtTKoay8a40SWjCYs
	V/mpaBSwDEClfGUDJEhaaXWnQFbdb9R8FzsZg6Yybl2Z51y3WMoJ10WeadEOZMfn80j89Jf+gxdZZ
	E8Oc1RFEIKxKCmQ4QZ0HURY2ZC5SNEXAHfQ33vh6huW41jrbvAyJwHD7yiCK4SZIZp0c3VYhyKIfM
	iZ07ayUFt1zhzy86yxcicWQHuBXYON+buP7oDLqW1D63yYm++xeYlnFjCD5fHb/qkrpGj/MVG+njE
	XHGEjAvI8o+4tO2bWAeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jalvZ-0002e3-IU; Mon, 18 May 2020 19:59:57 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jalvV-0002dc-Co
 for ath10k@lists.infradead.org; Mon, 18 May 2020 19:59:54 +0000
Received: by mail-pj1-f67.google.com with SMTP id k7so327568pjs.5
 for <ath10k@lists.infradead.org>; Mon, 18 May 2020 12:59:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aj1xZpMnVA3x+kJm7X/0LI6rc+dHdrwpfJIQAOKnjiw=;
 b=K6El5lzsYgGjolEoI/rQ+8feimrRprSQQrSp/qzRkq6NaCih3ASpGTW4rZ9kn7RXKf
 aYqRgQAExx3dJE9JnHjRmuxVvTMv1wGRQcoAcg7IKMPC8KWdzow9VgeVsxeCHrNMXsRd
 icmv/2pmxTy/gxJdqIaQLclRj0sZqhd+Ba1Jt+pp/+sQOLk3DfC3Y8ps57Nt+lwNCbET
 SgRX7jNNVoIOKX//PQZAfoz6VWfknC4MUeZjtmA7Uofr8ozD9k8Cs4G77xNADPFb7Xj0
 CCrNdaKuH2CiPiXpY071R7cWo6ZxWOwlfxSkde+H9XbFUwkq3fPS4jcilFCvHaHQje5+
 Rlyw==
X-Gm-Message-State: AOAM530l3ejdKQ7cZaCltyQ3fo8UagR8FR8xKf9W1OW7UxQglx3CxtT+
 HEGA+AJdAL4I0jzzWcAy/4I=
X-Google-Smtp-Source: ABdhPJzstjncLL1Pa6WoPiWI0iTEbP3pqQuPkP5Nmh12sc6FmfH/dXgoEDbYs7yqGBBK4bjkTNucAg==
X-Received: by 2002:a17:90a:6a0f:: with SMTP id
 t15mr1097314pjj.121.1589831992465; 
 Mon, 18 May 2020 12:59:52 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id s13sm5573431pfh.118.2020.05.18.12.59.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 12:59:51 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 94E14404B0; Mon, 18 May 2020 19:59:50 +0000 (UTC)
Date: Mon, 18 May 2020 19:59:50 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200518195950.GP11244@42.do-not-panic.com>
References: <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <20200518165154.GH11244@42.do-not-panic.com>
 <4ad0668d-2de9-11d7-c3a1-ad2aedd0c02d@candelatech.com>
 <20200518170934.GJ11244@42.do-not-panic.com>
 <abf22ef3-93cb-61a4-0af2-43feac6d7930@candelatech.com>
 <20200518171801.GL11244@42.do-not-panic.com>
 <CALLGbR+ht2V3m5f-aUbdwEMOvbsX8ebmzdWgX4jyWTbpHrXZ0Q@mail.gmail.com>
 <20200518190930.GO11244@42.do-not-panic.com>
 <e3d978c8fa6a4075f12e843548d41e2c8ab537d1.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e3d978c8fa6a4075f12e843548d41e2c8ab537d1.camel@sipsolutions.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_125953_437996_4278375A 
X-CRM114-Status: GOOD (  32.60  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
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
 andriy.shevchenko@linux.intel.com, Kalle Valo <kvalo@codeaurora.org>,
 Network Development <netdev@vger.kernel.org>, schlad@suse.de,
 LKML <linux-kernel@vger.kernel.org>, jeyu@kernel.org,
 akpm@linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 09:25:09PM +0200, Johannes Berg wrote:
> On Mon, 2020-05-18 at 19:09 +0000, Luis Chamberlain wrote:
> 
> > > Unfortunately a "taint" is interpreted by many users as: "your kernel
> > > is really F#*D up, you better do something about it right now."
> > > Assuming they're paying attention at all in the first place of course.
> > 
> > Taint historically has been used and still is today to help rule out
> > whether or not you get support, or how you get support.
> > 
> > For instance, a staging driver is not supported by some upstream
> > developers, but it will be by those who help staging and Greg. TAINT_CRAP
> > cannot be even more clear.
> > 
> > So, no, it is not just about "hey your kernel is messed up", there are
> > clear support boundaries being drawn.
> 
> Err, no. Those two are most definitely related. Have you looked at (most
> or some or whatever) staging drivers recently? Those contain all kinds
> of garbage that might do whatever with your kernel.

No, I stay away :)

> Of course that's not a completely clear boundary, maybe you can find a
> driver in staging that's perfect code just not written to kernel style?
> But I find that hard to believe, in most cases.
> 
> So no, it's really not about "[a] staging driver is not supported" vs.
> "your kernel is messed up". The very fact that you loaded one of those
> things might very well have messed up your kernel entirely.
> 
> > These days though, I think we all admit, that firmware crashes can use
> > a better generic infrastructure for ensuring that clearly affecting-user
> > experience issues. This patch is about that *when and if these happen*,
> > we annotate it in the kernel for support pursposes.
> 
> That's all fine, I just don't think it's appropriate to pretend that
> your kernel is now 'tainted' (think about the meaning of that word) when
> the firmware of some random device crashed.

If the firmware crash *does* require driver remove / addition again,
or a reboot, would you think that this is a situation that merits a taint?

> > Recovery without affecting user experience would be great, the taint is
> > *not* for those cases. The taint definition has:
> > 
> > + 18) ``Q`` used by device drivers to annotate that the device driver's firmware
> > +     has crashed and the device's operation has been severely affected. The    
> > +     device may be left in a crippled state, requiring full driver removal /   
> > +     addition, system reboot, or it is unclear how long recovery will take.
> > 
> > Let me know if this is not clear.
> 
> It's pretty clear, but even then, first of all I doubt this is the case
> for many of the places that you've sprinkled the annotation on,

We can remove it, for this driver I can vouch for its location as it did
reach a state where I required a reboot. And its not the first time this
has happened. This got me thinking about the bigger picture of the lack
of proper way to address these cases in the kernel, and how the user is
left dumbfounded.

> and secondly it actually hides useful information.

What is it hiding?

> Regardless of the support issue, I think this hiding of information is
> also problematic.
> 
> I really think we'd all be better off if you just made a sysfs file (I
> mistyped debugfs in some other email, sorry, apparently you didn't see
> the correction in time) that listed which device(s) crashed and how many
> times. 

Ah yes, count. The taint does not address count.

> That would actually be useful. Because honestly, if a random
> device crashed for some random reason, that's pretty much a non-event.
> If it keeps happening, then we might even want to know about it.

True.

> You can obviously save the contents of this file into your bug reports
> automatically and act accordingly, but I think you'll find that this is
> far more useful than saying "TAINT_FIRMWARE_CRASHED" so I'll ignore this
> report.

Absolutely.

> Yeah, that might be reasonable thing if the bug report is about
> slow wifi *and* you see that ath10k firmware crashed every 10 seconds,
> but if it just crashed once a few days earlier it's of no importance to
> the system anymore ... And certainly a reasonable driver (which I
> believe ath10k to be) would _not_ randomly start corrupting memory
> because its firmware crashed. Which really is what tainting the kernel
> is about.

I still see it as a support thing too. But discussing this further is
pointless as I agree that taint does not cover count and that it is
important.


  Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
