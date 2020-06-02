Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4585C1EC427
	for <lists+ath10k@lfdr.de>; Tue,  2 Jun 2020 23:07:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQdjHkJ7xNASS5kGIqJFS2tnYFjH+91rE9psI2QII6o=; b=ppNkXf2VhCQi2n
	ZganpfS0F5ktPrPP5NS6/d8REaItWUrEwPaxyOfm3YYQ9Ads/3379qlrCu6dWMtcu+2n3catlHmV3
	lPJICZ3dcTiyDH9whQdw2+xgHaQkjld6//0UgNCidUUrJ1TfZQ8YmnqnAL2y8DK7EklOiRmhA2uca
	P7Xeq72UKHhDvXXZdTk4tQ2d4j+zbbuI+SF+DnakkPNpFCGkLHg1d3p/Sd3hWm1iv6KWwWTSVlVn8
	ZdGjT6hW6nbXf+XXatLk6c3phj2ORy/vzES+kDzFScZknCX8pTbujw6Gg7PZ1UTzAhSaYJt+IcsVK
	JlXxNiC6LsoiCOph9Eiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgE88-000899-0T; Tue, 02 Jun 2020 21:07:28 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgE84-00088I-Dm
 for ath10k@lists.infradead.org; Tue, 02 Jun 2020 21:07:26 +0000
Received: by mail-ej1-x644.google.com with SMTP id a25so7004527ejg.5
 for <ath10k@lists.infradead.org>; Tue, 02 Jun 2020 14:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QGf11SbLkxX4fJOwT9kGUgWEGfA4VGBgNO6kWFPFsRk=;
 b=XM3q8pho/PiowJ76NeZ46OC8b/u0qzNDKNLp7cEGV3nGiBc2PGReStjvx1Vz8tUMND
 4apoBJ3u14oElCS0buaQvzQDvSszTwAsZ6Yhd5EN54LStE+ICJI6tZsQZF7P75x4vh38
 Hlaj5tBKyfVXGXv4gKJiwm0zV3L6emG1YczkM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QGf11SbLkxX4fJOwT9kGUgWEGfA4VGBgNO6kWFPFsRk=;
 b=d8XnSF66iSXb4GxOZhOfZ+NohKMX1adGZ8jIQewYZiram4yyklw0ayccj24U0A8YvH
 y9PKO0e3CyspNtsbZV4gfFqfrykGG7QjOiXch65za/toHDGJlvJ3nRSXAoBMfTdNIK/D
 B4eP8fFngCgHCI7Jk/zDPppe1zUkxC40kI5AljrgqAIKvjW/IUe4jNgrtUQojgJnmJsB
 TMdqYYDCfJFMh6kSEV1sVLbrIduGcuei4e58NkvSPfrsb++HpMkyOpMk4cKrlH8YiD8i
 je/zB9V+Km5N0RWX9NBIfwEdcmiOWDLXnvKu0hgO8ASvNrAPvWxVBQPIL0ZW98pFLyR6
 9umA==
X-Gm-Message-State: AOAM530zHrEjYTfhyhFXwGhVQKIuFZW5btkfVr7btCEp/R+4Me0ciD+c
 2v7chQluE2iKfdWZFrGvFAPRQszvATgqWw==
X-Google-Smtp-Source: ABdhPJwgUjL4cMFHbp/fCcVv+qy9q1I9tX7u/KsG6plya4+y1by9IapYEu7T4IuDBMZGkCPiZJQNVQ==
X-Received: by 2002:a17:906:b88c:: with SMTP id
 hb12mr24309637ejb.483.1591132039944; 
 Tue, 02 Jun 2020 14:07:19 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id w13sm637eju.124.2020.06.02.14.07.19
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 14:07:19 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id l10so77206wrr.10
 for <ath10k@lists.infradead.org>; Tue, 02 Jun 2020 14:07:19 -0700 (PDT)
X-Received: by 2002:a2e:7f02:: with SMTP id a2mr429268ljd.138.1591131684280;
 Tue, 02 Jun 2020 14:01:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200526145815.6415-1-mcgrof@kernel.org>
 <20200526145815.6415-6-mcgrof@kernel.org>
In-Reply-To: <20200526145815.6415-6-mcgrof@kernel.org>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 2 Jun 2020 14:01:12 -0700
X-Gmail-Original-Message-ID: <CA+ASDXMR-Aa9322QjUTxiD2zwXDUig1eyG7GAAJJDvuUg1AXdA@mail.gmail.com>
Message-ID: <CA+ASDXMR-Aa9322QjUTxiD2zwXDUig1eyG7GAAJJDvuUg1AXdA@mail.gmail.com>
Subject: Re: [PATCH v3 5/8] ath10k: use new taint_firmware_crashed()
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_140724_464737_8A4A1977 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aquini@redhat.com, linux-doc@vger.kernel.org, peterz@infradead.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux@dominikbrodowski.net,
 Doug Anderson <dianders@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, glider@google.com,
 GR-everest-linux-l2@marvell.com, mchehab+samsung@kernel.org, will@kernel.org,
 tglx@linutronix.de, Rob Herring <robh@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, bhe@redhat.com, corbet@lwn.net,
 mchehab+huawei@kernel.org, ath10k <ath10k@lists.infradead.org>,
 derosier@gmail.com, Takashi Iwai <tiwai@suse.de>, mingo@redhat.com,
 Kalle Valo <kvalo@codeaurora.org>, Sami Tolvanen <samitolvanen@google.com>,
 kuba@kernel.org, yzaikin@google.com, dyoung@redhat.com, mhiramat@kernel.org,
 pmladek@suse.com, elver@google.com, gpiccoli@canonical.com, aelior@marvell.com,
 Kees Cook <keescook@chromium.org>, paulmck@kernel.org, sfr@canb.auug.org.au,
 sburla@marvell.com, Steven Rostedt <rostedt@goodmis.org>,
 fmanlunas@marvell.com, cai@lca.pw, michael.chan@broadcom.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>, rdunlap@infradead.org,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>, vkoul@kernel.org, schlad@suse.de,
 jeyu@kernel.org, Johannes Berg <johannes@sipsolutions.net>,
 dchickles@marvell.com, "David S. Miller" <davem@davemloft.net>,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 7:58 AM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> This makes use of the new taint_firmware_crashed() to help
> annotate when firmware for device drivers crash. When firmware
> crashes devices can sometimes become unresponsive, and recovery
> sometimes requires a driver unload / reload and in the worst cases
> a reboot.

Just for the record, the underlying problem you seem to be complaining
about does not appear to be a firmware crash at all. It does happen to
result in a firmware crash report much later on (because when the PCIe
endpoint is this hosed, sooner or later the driver thinks the firmware
is dead), but it's not likely the root cause. More below.

> Using a taint flag allows us to annotate when this happens clearly.
>
> I have run into this situation with this driver with the latest
> firmware as of today, May 21, 2020 using v5.6.0, leaving me at
> a state at which my only option is to reboot. Driver removal and
> addition does not fix the situation. This is reported on kernel.org
> bugzilla korg#207851 [0].

I took a look, and replied there:
https://bugzilla.kernel.org/show_bug.cgi?id=207851#c2

Per the above, it seems more likely you have a PCI or power management
problem, not an ath10k or ath10k-firmware problem.

> But this isn't the first firmware crash reported,
> others have been filed before and none of these bugs have yet been
> addressed [1] [2] [3].  Including my own I see these firmware crash
> reports:

Yes, firmware does crash. Sometimes repeatedly. It also happens to be
closed source, so it's nearly impossible for the average Linux dev to
debug. But FWIW, those 3 all appear to be recoverable -- and then they
crash again a few minutes later. So just as claimed on prior
iterations of this patchset, ath10k is doing fine at recovery [*] --
it's "only" the firmware that's a problem. (And, if a WiFi firmware
doesn't like something in the RF environment...it's totally
understandable that the crash will happen more than once. Of course
that sucks, but it's not unexpected.) Crucially, rebooting won't
really do anything to help these people, AIUI.

Maybe what you really want is to taint the kernel every time a
non-free firmware is loaded ;)

I'd also note that those 3 reports are 3 years old. There have been
many ath10k-firmware updates since then, so it's not necessarily fair
to dig those back up. Also, bugzilla.kernel.org is totally ignored by
many linux-wireless@ folks. But I digress...

All in all, I have no interest in this proposal, for many of the
reasons already mentioned on previous iterations. It's way too coarse
and won't be useful in understanding what's going on in a system, IMO,
at least for ath10k. But it's also easy enough to ignore, so if it
makes somebody happy to claim a taint, then so be it.

Regards,
Brian

[*] Although, at least one of those doesn't appear to be as "clean" of
a recovery attempt as typical. Maybe there are some lurking driver
bugs in there too.


>   * korg#207851 [0]
>   * korg#197013 [1]
>   * korg#201237 [2]
>   * korg#195987 [3]
>
> [0] https://bugzilla.kernel.org/show_bug.cgi?id=207851
> [1] https://bugzilla.kernel.org/show_bug.cgi?id=197013
> [2] https://bugzilla.kernel.org/show_bug.cgi?id=201237
> [3] https://bugzilla.kernel.org/show_bug.cgi?id=195987

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
