Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9181D89E1
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 23:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8Kc7OAQADse55Xi3f8MFVwnkcmSF//cXHYdYhcbmaM=; b=Q6K9PvJ12v1+oT
	9D5hPAsUJh8WXrcTryhBwBH17iGTixTyKmm6Z/rJufrMOm/7eK6b4IN6R8nmVZ+N1WmVWjxLTp59t
	mxMzHdzfYdnKB3Db9OjTlze1QwEWhY+7ydstC92ufOFAUyxaOoeuzgu26dm47koMUc8qZNfNBGKwF
	bpKGwt9d8DivjisSvShK+gD3u2mqvTNvurq+VJdaxxbMOZi46skUUttd9ON1VyIJo5pLqRmHXExFs
	Jw9ggVTIPE5Ar3DnR1cclkyV6rbOMnTe/Uq6Sj8yGXVyshjf7J3ymyVS5guuoUls87MmCiRD+WEaO
	YCSCbUX3mNGj9ndfytrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jan9N-0000Jk-4N; Mon, 18 May 2020 21:18:17 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jan9J-0000Ie-KE
 for ath10k@lists.infradead.org; Mon, 18 May 2020 21:18:15 +0000
Received: by mail-pj1-f67.google.com with SMTP id q24so423598pjd.1
 for <ath10k@lists.infradead.org>; Mon, 18 May 2020 14:18:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l7e4wKCO02j4byrVDyWhWctfhv6l8FZHk8XSWR2z0vo=;
 b=Dz4bjmIGwB3xb5ywJ8OqybEKXxEo1ye62YlD80M4jh4F0Hdekm8WPAjMvWn581GgIK
 9ps6rqN3FiLMmL61AmibZklYsUGN7UcM8FV3PvQV1Bfpu/64/uioSgX22qhN+bV/se2d
 lfVX1sH41vcf+TQ9AM/ZHqLiodACsalvtrcGKL0xyRLVkfTwgVoM2dT+syu40psa7+I/
 /gDfdLmsri+hW9UWbOQWsY9+BFGQokpFDF66VNd9F9BRFCy8tvRncwjTKuNAsFS/NcMu
 fFdYSUK48gr4ph7k8rHZuM0X4o/zmZP0ph/70dfyk7dkF5NBwdqMD9XvyuTIox2R6X+n
 Tj0w==
X-Gm-Message-State: AOAM530Ytkpp8Y/bkGZ7SXJxf48pNgp8ihQZAigkJqU6jBsmDP8iigXS
 IH754PKMxFgmFYAak2Ls1og=
X-Google-Smtp-Source: ABdhPJzkdRsgH22dj2g8Hm1MTTSw8RzHY7IB5l/iNmXwB4OiLU+K1Uzi5CZ4z9dHoULajnN+bWOrAg==
X-Received: by 2002:a17:902:5a8c:: with SMTP id
 r12mr15373937pli.51.1589836691939; 
 Mon, 18 May 2020 14:18:11 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id o15sm371753pjq.28.2020.05.18.14.18.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 14:18:10 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 4F1A4404B0; Mon, 18 May 2020 21:18:09 +0000 (UTC)
Date: Mon, 18 May 2020 21:18:09 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200518211809.GQ11244@42.do-not-panic.com>
References: <20200518165154.GH11244@42.do-not-panic.com>
 <4ad0668d-2de9-11d7-c3a1-ad2aedd0c02d@candelatech.com>
 <20200518170934.GJ11244@42.do-not-panic.com>
 <abf22ef3-93cb-61a4-0af2-43feac6d7930@candelatech.com>
 <20200518171801.GL11244@42.do-not-panic.com>
 <CALLGbR+ht2V3m5f-aUbdwEMOvbsX8ebmzdWgX4jyWTbpHrXZ0Q@mail.gmail.com>
 <20200518190930.GO11244@42.do-not-panic.com>
 <e3d978c8fa6a4075f12e843548d41e2c8ab537d1.camel@sipsolutions.net>
 <20200518195950.GP11244@42.do-not-panic.com>
 <bb0b9a2da99c16a28c1dbee93d08abfa2aecdc8b.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb0b9a2da99c16a28c1dbee93d08abfa2aecdc8b.camel@sipsolutions.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_141813_668051_6E1AF25B 
X-CRM114-Status: GOOD (  25.56  )
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

On Mon, May 18, 2020 at 10:07:49PM +0200, Johannes Berg wrote:
> On Mon, 2020-05-18 at 19:59 +0000, Luis Chamberlain wrote:
> 
> > > Err, no. Those two are most definitely related. Have you looked at (most
> > > or some or whatever) staging drivers recently? Those contain all kinds
> > > of garbage that might do whatever with your kernel.
> > 
> > No, I stay away :)
> 
> :)
> 
> > > That's all fine, I just don't think it's appropriate to pretend that
> > > your kernel is now 'tainted' (think about the meaning of that word) when
> > > the firmware of some random device crashed.
> > 
> > If the firmware crash *does* require driver remove / addition again,
> > or a reboot, would you think that this is a situation that merits a taint?
> 
> Not really. In my experience, that's more likely a hardware issue (card
> not properly seated, for example) that a bus reset happens to "fix".
> 
> > > It's pretty clear, but even then, first of all I doubt this is the case
> > > for many of the places that you've sprinkled the annotation on,
> > 
> > We can remove it, for this driver I can vouch for its location as it did
> > reach a state where I required a reboot. And its not the first time this
> > has happened. This got me thinking about the bigger picture of the lack
> > of proper way to address these cases in the kernel, and how the user is
> > left dumbfounded.
> 
> Fair, so the driver is still broken wrt. recovery here. I still don't
> think that's a situation where e.g. the system should say "hey you have
> a taint here, if your graphics go bad now you should not report that
> bug" (which is effectively what the single taint bit does).

But again, let's think about the generic type of issue, and the
unexpected type of state that can be reached. The circumstance here
*does* lead to a case which is not recoverable. Now, consider how
many cases in the kernel where similar situations can happen and leave
the device or driver in a non-functional state.

> > > and secondly it actually hides useful information.
> > 
> > What is it hiding?
> 
> Most importantly, which device crashed. Secondarily I'd say how many
> times (*).

The device is implied by the module, the taint is applied to both.
If you had multiple devices, however, yes, it would not be possible
to distinguish from the taint which exact device it happened on.

So the only thing *generic* which would be left out is count.

> The information "firmware crashed" is really only useful in relation to
> the device.

If you have to reboot to get a functional network again then the device
is quite useless for many people, regardless of which device that
happened on.

But from a support perspective a sysfs interface which provides a tiny
bit more generic information indeed provides more value than a taint.

  Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
