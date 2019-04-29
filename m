Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E81A3DE47
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 10:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YI3GEXHk1+12NLdaXoBpUuK60CbEXCj4Aor8nDnIb9c=; b=bfMQsdtGE1jBuM
	NtBZgVn28HQrC5yKb73X2wNJyttMLbDgcuQ3yklqoKQ0ZDJvV8u9TRwGE+w28X0eMF7WzWnMsjqQO
	pQJqFr5rG+FypvzsXmhjtT7Q9rLR57Ii5FYgaWiR0dKF+SJK2uTR1dIt5zloVWxO0UiAPHSQwt86l
	yb3rVZJfusX43IGkCRfgclTMxnwcySyh3aR1PnxmNVf6L5/36AsZXneGc/62gBdJuPB6r9zp6Yshr
	PK7WpELpyryEyCknAWT+dpg/q2LpVmqcu9ZCafLsq3vj3w71PXiNXzRnxRwL65/yHt9hViUr3XGFG
	AugZk6YJukvNGpxNQivQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1y0-0004mo-T0; Mon, 29 Apr 2019 08:48:52 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1xw-0004mF-CU
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 08:48:50 +0000
Received: by mail-oi1-f194.google.com with SMTP id v23so7508671oif.8
 for <ath10k@lists.infradead.org>; Mon, 29 Apr 2019 01:48:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8DkL30STsaxgYUCGgLF1HNO5dyfcD0gOWg9WjzksmEw=;
 b=q3W3Ql7Rlm5M9bti9D4Cl9w5LyZZdp1nl/1XdQtFKYslu8+gbiuRwceeotztn1tW7R
 wXTqKlMT4pI6yOICCC4OYk2Hs2gHx/qvy8PdrgGCx4Y6snFxSKIVxkHyqMGZ6jFo8wT6
 jqSy7dikAjpO+oG1OW/boHS8nE4dOb8JfLEDaFrsS3DLvCvsHgM2R4++2AWxdZRcvlFo
 +zMMr1K7NBrD9ZGEb9SScXoZHE4DFNgy8tGoG07y+UypyXeGCVj6SDxGWniUPU53Rcci
 qfJUIldD3wGY/84xqeeK0yT1YbPOZ8W80isA3AaT8wa43Pmd9G3025jGuBdfs81jaFrn
 znHw==
X-Gm-Message-State: APjAAAVMPQFvM3qre4l5BRSDt+hiMs3XpMkB7zSVTvb5uH2DnXvrxtz9
 XQV5dwoac+wkGg9ZjBUVg5x4vXdxpy6l0fKO2DY=
X-Google-Smtp-Source: APXvYqyLJGa7+HnvOpfZY8x6Fch1od+pFueZwowvEwEsz9duuDJOvZrKhA1V/swPDl6mm+4EGDvD+SUxVsA5B/E186I=
X-Received: by 2002:aca:5304:: with SMTP id h4mr4059265oib.115.1556527726758; 
 Mon, 29 Apr 2019 01:48:46 -0700 (PDT)
MIME-Version: 1.0
References: <2884043.Jv1Mn93hE8@aspire.rjw.lan>
 <20190403195718.GA74723@google.com>
 <87o94tutdz.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87o94tutdz.fsf@kamboji.qca.qualcomm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 29 Apr 2019 10:48:35 +0200
Message-ID: <CAJZ5v0ifD=DATprUeeO2_LGs04aEEhPB6AcGVPxWUdQaOma+ww@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Drop WARN_ON()s that always trigger during system
 resume
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_014848_426776_B100B590 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Claire Chang <tientzu@google.com>, Sriram R <srirrama@codeaurora.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Pradeep Kumar Chitrapu <pradeepc@codeaurora.org>,
 "open list:NETWORKING DRIVERS \(WIRELESS\)" <linux-wireless@vger.kernel.org>,
 Brian Norris <briannorris@chromium.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, ath10k@lists.infradead.org,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Todd Brandt <todd.e.brandt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 9:18 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Brian Norris <briannorris@chromium.org> writes:
>
> > + Sriram, Pradeep, Claire
> >
> > On Sun, Mar 03, 2019 at 06:24:33PM +0100, Rafael J. Wysocki wrote:
> >
> > Ooh, exactly 1 month ago!
> >
> >> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> >>
> >> ath10k_mac_vif_chan() always returns an error for the given vif
> >> during system-wide resume which reliably triggers two WARN_ON()s
> >> in ath10k_bss_info_changed() and they are not particularly
> >> useful in that code path, so drop them.
> >>
> >
> > Particularly, when WOWLAN isn't enabled, we get called during resume via
> > ieee80211_reconfig(), where we're not associated and don't have any
> > channel contexts. AFAICT, we shouldn't need to communicate anything in
> > particular to the firmware here, and so failing the 'if' is definitely
> > not worth WARN-ing about.
> >
> > I'd love to see this get applied with:
> >
> > Fixes: cd93b83ad927 ("ath10k: support for multicast rate control")
> > Fixes: f279294e9ee2 ("ath10k: add support for configuring management packet rate")
> >
> > and sent to stable. This has been bugging people since 4.19. Spurious
> > WARN_ON()s can trigger reports to various crash trackers, and on some
> > systems appear as user-visible warnings ("System problem detected").
> >
> >> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> >
> > Reviewed-by: Brian Norris <briannorris@chromium.org>
> > Tested-by: Brian Norris <briannorris@chromium.org>
>
> I added these now to the commit log, thanks Brian.
>
> Rafael, could you please provide the hardware and firmware versions you
> tested this on? We have so many different firmware branches to support
> that I prefer to have that documented in the commit log. Providing
> ath10k startup messages in dmesg are enough,

There you go:

[    4.695349] ath10k_pci 0000:3a:00.0: enabling device (0000 -> 0002)
[    4.698165] ath10k_pci 0000:3a:00.0: pci irq msi oper_irq_mode 2
irq_mode 0 reset_mode 0
[    4.912240] ath10k_pci 0000:3a:00.0: qca6174 hw3.2 target
0x05030000 chip_id 0x00340aff sub 1a56:1535
[    4.912255] ath10k_pci 0000:3a:00.0: kconfig debug 0 debugfs 0
tracing 0 dfs 0 testmode 0
[    4.912716] ath10k_pci 0000:3a:00.0: firmware ver
WLAN.RM.2.0-00180-QCARMSWPZ-1 api 4 features
wowlan,ignore-otp,no-4addr-pad crc32 75dee6c5
[    4.982563] ath10k_pci 0000:3a:00.0: board_file api 2 bmi_id N/A
crc32 19644295

> I can then add it to the commit log.

Still, I'm quite sure that the WARN_ON()s trigger during system resume
regardless of the hw/fw combination.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
