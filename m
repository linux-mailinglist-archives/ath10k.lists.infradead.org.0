Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBF61D840C
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 20:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfFKbwKXxxXwzRECACuKLPp/AFQtgiZ3wXclJxL7bGE=; b=aX55UG/+G9ubSK
	ewPeB+x7SZcxEVi6SF8yXz5GFcbuOC1bbUEwspqnR4AJlgBRIQMufoyYqIYL9b0QBCv2DEwY5/+Ev
	AR85ehsWa1vji0xuuP4sZmO4Nfmg2sqKNJHrcl0Azd6CHwvb3LFeYQVDyOnCY3vvL8wstYhdRZzjN
	mwyUaDp/21DZmbt76d+J6sIZXim+GDtcmoZhA0tFmlcZCH3XalxemtWmRxKoJiA+Fzrz7HUTHQBWt
	FGbWgLcEeg05HdVo6bVfudvVqNbxTY6yLqtNwBsT+IKyVpP12T55Ek3b74q3U/Xtlkx7GmWzZ7ljP
	Ci9rWK1xYFjv1QLPd7mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakEB-0006TI-Pj; Mon, 18 May 2020 18:11:03 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jakAM-0000b5-VJ
 for ath10k@lists.infradead.org; Mon, 18 May 2020 18:07:10 +0000
Received: by mail-qv1-xf43.google.com with SMTP id g20so5164047qvb.9
 for <ath10k@lists.infradead.org>; Mon, 18 May 2020 11:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FGe0cYU7QRQrBub6kPg7LS2mMokuizGPeM+/vsZpJ0c=;
 b=DDZsqjev9pPgykILD6UPID2QV3+WLOgbGPXNX7VGKiD5foIMBD6Ig3QA44tRzLmGib
 1mKKZilQ5ETaljO5EYgpRnJptRjnAUOLxPH4gdu5+sMzcEgSRjVuhvaeSTM9YoycCwCk
 2A+TY4cjxjhxNxZiLYT2ruZPcxJNu7umH6Vu9aSZIYrrv9XJn+MInwstXFCAlIHw1WUb
 sCqyfCtYVo5dQrNv3xg086881Zd5saQlxNJu53IiQDzlfrTSmR2Y3bav8kaCWopJzt5B
 qVeDKeGSnlwZcimXa9kVFJ6abIibigsiCpI3x/x/V3LmORYeovnqdMuYBqB3p76Djc/9
 VAsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FGe0cYU7QRQrBub6kPg7LS2mMokuizGPeM+/vsZpJ0c=;
 b=G/9Fa4UNdlVEptX1ET3Sah3RAbND9g/1JoR/eW+US1VDO1kKVg8vA6WC6UEb3YG+wl
 vhTvxg38Xr5oJ8RVMjgLi/twqSN0czK/4dJMdA/E/Z+m/bqWybSabg3YDD60LR/xphLD
 NHaJMTzNTel3DBmD+/jQzAfUjASTwAZPP9isXItrN2KKmYOHBw7m7iU6LLZppz1V2KYt
 p83RHNJQqcWpoL5OKjryVx+rwRwqoPHPCsX3fD6Z+KGVouW91CyHrWARa6FpYPqsyqmN
 bbgeKk6vCPmEqLV8XqOa3PGfYc/BwOJtMPu+fkiXriJLHJmN1LD2X6/jU/k16L+OEYIx
 U6gw==
X-Gm-Message-State: AOAM532nR4Ll9+60bB4gfmGGcMlFxzmH0vB9UY9Cwk2qBFv7Z9WjMI/R
 8LU6b8F14N0ifwhY2Sr8+7oMs2Xp7gq+zk3SGuo=
X-Google-Smtp-Source: ABdhPJx7gFJZCHG8pAYfJs0PbDVHs9Ww5BXdE3nVr2Ovp/YWIgWIKSJgkqjadmT/fF2jdRU64gjBY21G4Xm8cOd52zo=
X-Received: by 2002:a0c:e48f:: with SMTP id n15mr15724904qvl.73.1589825224064; 
 Mon, 18 May 2020 11:07:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <20200518165154.GH11244@42.do-not-panic.com>
 <4ad0668d-2de9-11d7-c3a1-ad2aedd0c02d@candelatech.com>
 <20200518170934.GJ11244@42.do-not-panic.com>
 <abf22ef3-93cb-61a4-0af2-43feac6d7930@candelatech.com>
 <20200518171801.GL11244@42.do-not-panic.com>
In-Reply-To: <20200518171801.GL11244@42.do-not-panic.com>
From: Steve deRosier <derosier@gmail.com>
Date: Mon, 18 May 2020 11:06:27 -0700
Message-ID: <CALLGbR+ht2V3m5f-aUbdwEMOvbsX8ebmzdWgX4jyWTbpHrXZ0Q@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110707_438964_C1FBB4C6 
X-CRM114-Status: GOOD (  32.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [derosier[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, May 18, 2020 at 10:19 AM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Mon, May 18, 2020 at 10:15:45AM -0700, Ben Greear wrote:
> >
> >
> > On 05/18/2020 10:09 AM, Luis Chamberlain wrote:
> > > On Mon, May 18, 2020 at 09:58:53AM -0700, Ben Greear wrote:
> > > >
> > > >
> > > > On 05/18/2020 09:51 AM, Luis Chamberlain wrote:
> > > > > On Sat, May 16, 2020 at 03:24:01PM +0200, Johannes Berg wrote:
> > > > > > On Fri, 2020-05-15 at 21:28 +0000, Luis Chamberlain wrote:> module_firmware_crashed
> > > > > >
> > > > > > You didn't CC me or the wireless list on the rest of the patches, so I'm
> > > > > > replying to a random one, but ...
> > > > > >
> > > > > > What is the point here?
> > > > > >
> > > > > > This should in no way affect the integrity of the system/kernel, for
> > > > > > most devices anyway.
> > > > >
> > > > > Keyword you used here is "most device". And in the worst case, *who*
> > > > > knows what other odd things may happen afterwards.
> > > > >
> > > > > > So what if ath10k's firmware crashes? If there's a driver bug it will
> > > > > > not handle it right (and probably crash, WARN_ON, or something else),
> > > > > > but if the driver is working right then that will not affect the kernel
> > > > > > at all.
> > > > >
> > > > > Sometimes the device can go into a state which requires driver removal
> > > > > and addition to get things back up.
> > > >
> > > > It would be lovely to be able to detect this case in the driver/system
> > > > somehow!  I haven't seen any such cases recently,
> > >
> > > I assure you that I have run into it. Once it does again I'll report
> > > the crash, but the problem with some of this is that unless you scrape
> > > the log you won't know. Eventually, a uevent would indeed tell inform
> > > me.
> > >
> > > > but in case there is
> > > > some common case you see, maybe we can think of a way to detect it?
> > >
> > > ath10k is just one case, this patch series addresses a simple way to
> > > annotate this tree-wide.
> > >
> > > > > > So maybe I can understand that maybe you want an easy way to discover -
> > > > > > per device - that the firmware crashed, but that still doesn't warrant a
> > > > > > complete kernel taint.
> > > > >
> > > > > That is one reason, another is that a taint helps support cases *fast*
> > > > > easily detect if the issue was a firmware crash, instead of scraping
> > > > > logs for driver specific ways to say the firmware has crashed.
> > > >
> > > > You can listen for udev events (I think that is the right term),
> > > > and find crashes that way.  You get the actual crash info as well.
> > >
> > > My follow up to this was to add uevent to add_taint() as well, this way
> > > these could generically be processed by userspace.
> >
> > I'm not opposed to the taint, though I have not thought much on it.
> >
> > But, if you can already get the crash info from uevent, and it automatically
> > comes without polling or scraping logs, then what benefit beyond that does
> > the taint give you?
>
> From a support perspective it is a *crystal* clear sign that the device
> and / or device driver may be in a very bad state, in a generic way.
>

Unfortunately a "taint" is interpreted by many users as: "your kernel
is really F#*D up, you better do something about it right now."
Assuming they're paying attention at all in the first place of course.

The fact is, WiFi chip firmware crashes, and in most cases the driver
is able to recover seamlessly. At least that is the case with most QCA
chipsets I work with. And the users or our ability to do anything
about it is minimal to none as we don't have access to firmware
source. It's too bad and I wish it weren't the case, but we have
embraced reality and most drivers have a recovery mechanism built in
for this case. In short, it's a non-event. I fear that elevating this
to a kernel taint will significantly increase "support" requests that
really are nothing but noise; similar to how the firmware load failure
messages (fail to load fw-2.bin, fail to load fw-1.bin, yay loaded
fw-0.bin) cause a lot of noise.

Not specifically opposed, but I wonder what it really accomplishes in
a world where the firmware crashing is pretty much a normal
occurrence.

If it goes in, I think that the drivers shouldn't trigger the taint if
they're able to recover normally. Only trigger on failure to come back
up.  In other words, the ideal place in the ath10k driver isn't where
you have proposed as at that point operation is normal and we're doing
a routine recovery.

- Steve





>   Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
