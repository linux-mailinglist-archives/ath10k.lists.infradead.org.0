Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF281D87F1
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 21:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WPmDu+mkduZI2kviddxrmyaFq6TrJzZN7PN3RV+ELM=; b=M6bUXrz5SlCqtD
	Hu0eqWS8es3roo4GyuxvF2Fbox/RzmTPArSXaPZbQmJE8T1bvfc75pnUr23l9ULNF5j0DBBnHlvRT
	xH1MGQFVJiN+SIR/Sb67IqSSz6zlN6ft4e03eL8314MLzOVnD8+OV54VIK/ASixquF/JoVlxP/qwA
	f1z4HGGFgZ+1ux64s2Xr2e8qW1r7Bq1sQq7WPR7tY9ANlBZVHmoKyALKZrYSUgrQrPgmXF3dJTsb6
	KDZrqzIIhqS+cyHzZkrqU8zUxY8t8taHzVytRaQmLUpo1OFSNXv0h1qTizg7MjRZkFYdgykKTeM9H
	ImIyfjfYilRRsMWfF2Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jal8r-0003ul-EK; Mon, 18 May 2020 19:09:37 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jal8n-0003uE-Nt
 for ath10k@lists.infradead.org; Mon, 18 May 2020 19:09:35 +0000
Received: by mail-pg1-f196.google.com with SMTP id f23so5283797pgj.4
 for <ath10k@lists.infradead.org>; Mon, 18 May 2020 12:09:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=optcfcz9D+ja/9wb2m7YbvOvyTdqQ3XVuhu+JjEoz4s=;
 b=twBzWeXaod3jDUPNE/QTCfinQuR/fMjconG/+u6snlVN7u2dMQqE1JU0L0xLWHyxqm
 3JypKBxWW5jCCG4m5+GUFQNvGUD8BGLXMRFoYhV8Yr2fwQGTcQQyBtifMACUAeaOTESZ
 JyEqJlm1IwGUi5RB2VnkGTvirWvDX/Er5vT+D3xzfMcxR7oqbSepaTxDsAEVa6BPVC7D
 3x1krfMHsgagqELFUp7jRuqP4YbH9RxeYgkIVqOjg9BHGVdcOuUWvv51/aFPSCshB9we
 dgfWq46Z/uVlXNopTuY53Zuqq4KLLzSADD+45yB1VJFPb0CEeEyxDcnLOaCEZ2Dioi1d
 AGng==
X-Gm-Message-State: AOAM532c03Fy1aRFku3kkzSoiJ+xmeOK8B4lZ9cXRaaTQi/uqScyL4lO
 bx6zdls4JQDIVl5lLE/uGcM=
X-Google-Smtp-Source: ABdhPJyt1msTeiE8t2U7hvEnds+2fmRUVsBEjK93qHSSKFraZnPO6frtAUXOyMJQx/L2Vbkvr8vnuw==
X-Received: by 2002:a62:7f03:: with SMTP id a3mr11884771pfd.113.1589828972804; 
 Mon, 18 May 2020 12:09:32 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id u17sm8598882pgo.90.2020.05.18.12.09.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 12:09:31 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 9D2D2404B0; Mon, 18 May 2020 19:09:30 +0000 (UTC)
Date: Mon, 18 May 2020 19:09:30 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Steve deRosier <derosier@gmail.com>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200518190930.GO11244@42.do-not-panic.com>
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <20200518165154.GH11244@42.do-not-panic.com>
 <4ad0668d-2de9-11d7-c3a1-ad2aedd0c02d@candelatech.com>
 <20200518170934.GJ11244@42.do-not-panic.com>
 <abf22ef3-93cb-61a4-0af2-43feac6d7930@candelatech.com>
 <20200518171801.GL11244@42.do-not-panic.com>
 <CALLGbR+ht2V3m5f-aUbdwEMOvbsX8ebmzdWgX4jyWTbpHrXZ0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALLGbR+ht2V3m5f-aUbdwEMOvbsX8ebmzdWgX4jyWTbpHrXZ0Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_120933_780097_55E8599C 
X-CRM114-Status: GOOD (  26.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
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
 ath10k@lists.infradead.org, Takashi Iwai <tiwai@suse.de>, mingo@redhat.com,
 dyoung@redhat.com, pmladek@suse.com, keescook@chromium.org, arnd@arndb.de,
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

On Mon, May 18, 2020 at 11:06:27AM -0700, Steve deRosier wrote:
> On Mon, May 18, 2020 at 10:19 AM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > From a support perspective it is a *crystal* clear sign that the device
> > and / or device driver may be in a very bad state, in a generic way.
> >
> 
> Unfortunately a "taint" is interpreted by many users as: "your kernel
> is really F#*D up, you better do something about it right now."
> Assuming they're paying attention at all in the first place of course.

Taint historically has been used and still is today to help rule out
whether or not you get support, or how you get support.

For instance, a staging driver is not supported by some upstream
developers, but it will be by those who help staging and Greg. TAINT_CRAP
cannot be even more clear.

So, no, it is not just about "hey your kernel is messed up", there are
clear support boundaries being drawn.

> The fact is, WiFi chip firmware crashes, and in most cases the driver
> is able to recover seamlessly. At least that is the case with most QCA
> chipsets I work with. 

That has not been my exerience with the same driver, and so how do we
know? And this patch set is not about ath10k alone, I want you to
think about *all* device drivers with firmware. In my journey to scrape
the kernel for these cases I was very surprised by the amount of code
which clearly annotates these situations.

> And the users or our ability to do anything
> about it is minimal to none as we don't have access to firmware
> source.

This is not true, we have open firmware in WiFi. Some vendors choose
to not open source their firmware, that is their decision.

These days though, I think we all admit, that firmware crashes can use
a better generic infrastructure for ensuring that clearly affecting-user
experience issues. This patch is about that *when and if these happen*,
we annotate it in the kernel for support pursposes.

> It's too bad and I wish it weren't the case, but we have
> embraced reality and most drivers have a recovery mechanism built in
> for this case.

The mentality about firmware crashes being the end of the world is
certainly what will lead developers to often hide these. Where this
is openly clear, and not obfucscated I'd argue that firmware issues
get fixed likely more common.

So what you describe is not bad, its just accepting evolution.

> In short, it's a non-event. I fear that elevating this
> to a kernel taint will significantly increase "support" requests that
> really are nothing but noise;

That will depend on where you put this on the driver, and that is
why it is important to place it in the right place, if any.

> similar to how the firmware load failure
> messages (fail to load fw-2.bin, fail to load fw-1.bin, yay loaded
> fw-0.bin) cause a lot of noise.

That can be fixed, the developers behind this series gave up on it.
It has to do with a range version of supported firmwares, and all
being optional, but at least one is required.

> Not specifically opposed, but I wonder what it really accomplishes in
> a world where the firmware crashing is pretty much a normal
> occurrence.

Recovery without affecting user experience would be great, the taint is
*not* for those cases. The taint definition has:

+ 18) ``Q`` used by device drivers to annotate that the device driver's firmware
+     has crashed and the device's operation has been severely affected. The    
+     device may be left in a crippled state, requiring full driver removal /   
+     addition, system reboot, or it is unclear how long recovery will take.

Let me know if this is not clear.

> If it goes in, I think that the drivers shouldn't trigger the taint if
> they're able to recover normally. Only trigger on failure to come back
> up.  In other words, the ideal place in the ath10k driver isn't where
> you have proposed as at that point operation is normal and we're doing
> a routine recovery.

Sure, happy to remove it if indeed it is the case that the firwmare
crash is not happening to cripple the device, but I can vouch for the
fact that the exact place where I placed it left my device driver in a
state where I had to remove / add again.

  Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
