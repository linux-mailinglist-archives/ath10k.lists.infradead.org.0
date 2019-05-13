Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E2A1B0A4
	for <lists+ath10k@lfdr.de>; Mon, 13 May 2019 09:01:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jekWxNitcXWAzJeCyeDfGYQ5ggfj6uI6NO6XUOn4WYU=; b=SIVZZrdFq6goHT
	XjnVhzE3+EWXuqC9SYJRYAXkp/hEFQW4SMsW42Kg0Xq98uDxFKYviD6qioqjOphfdQXqrgfvJm1XT
	uqoS9x920W0p8bpaLFmlXDS4R3+T2b3z4EWPbBZAnBniec3YP/Stuz2EgG93xu8Ole79gd1dz0rb7
	eTc71OF5LpFYbRAFGcxcFQmFhNZROQlFR5uhz4Nc1LHvD0jfQME3vksXUfm06pHIS/PzJOxXRHRK5
	IOWSA86tQolaIyaYkTE7yY7TarNS07+OOlHsH9I+ltB+0ALj3kZ+JdlYaSalLL+EI6kRnerzX8pWq
	Vr50hNFgyEpC3sQ+QjNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4xn-0007LZ-56; Mon, 13 May 2019 07:01:31 +0000
Received: from mail-vs1-f65.google.com ([209.85.217.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4xj-0007LF-LY
 for ath10k@lists.infradead.org; Mon, 13 May 2019 07:01:28 +0000
Received: by mail-vs1-f65.google.com with SMTP id q64so7352118vsd.1
 for <ath10k@lists.infradead.org>; Mon, 13 May 2019 00:01:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KZeUlM9HFwsoPba3BedCeGi13MK+EsvDzCuCOHnSeSU=;
 b=PbvnaKdLgHFr3UHY9USx5nBROJiw55Qj+sGn6qHmHLWnMFby9fVVd4k9XHoHcnevb0
 RBK1xoTs6ZOFZOzR4Dsj4nURG0jH4mLHb+dqw6JWVMSczbONi2n8l0aM+3+Xqw26SSlb
 1WienkM958ywW1DYGTJkSHUk7UGnH1JQRhPBjKpMQWvhJwL9YWKKO1J6KLb6/hUQ3Yxt
 oacZOVZe+JG+LJX8rWkhA1YZj5t7e6vCrF1IF3w5t9gwHs2HdlBS5jNlup9s/whj9OIM
 pG9wCL01XIngEujro7a8rsJw43ByOcx804FCXdCuQ2ANG2PXQRtq1lEV+6jGjZrfMJGi
 rDOg==
X-Gm-Message-State: APjAAAXpKPUuwG4EXjRTAxRbqD1AJMwmn1TXwY4T5IX7bCJgZlV0/90K
 UelOd3OtXhWLCYAMTMnacPylMJ69PnGvq217vjo=
X-Google-Smtp-Source: APXvYqxs4U9cC6qSMiyVDwFNxNbvddkvfAvZ+WOBelGbmcS7WwGSJect4/Alo1+2rHfzk8JgMisDv2BcZmORdVLPpig=
X-Received: by 2002:a67:770f:: with SMTP id s15mr4419527vsc.11.1557730886319; 
 Mon, 13 May 2019 00:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190508070148.23130-1-alastair@au1.ibm.com>
 <20190508070148.23130-4-alastair@au1.ibm.com>
In-Reply-To: <20190508070148.23130-4-alastair@au1.ibm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 May 2019 09:01:14 +0200
Message-ID: <CAMuHMdVefYTgHzGKBc0ebku1z8V3wsM0ydN+6-S2nFKaB8eH_Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] lib/hexdump.c: Optionally suppress lines of
 repeated bytes
To: "Alastair D'Silva" <alastair@au1.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_000127_701145_6631C124 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 Stanislaw Gruszka <sgruszka@redhat.com>, Petr Mladek <pmladek@suse.com>,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 driverdevel <devel@driverdev.osuosl.org>, scsi <linux-scsi@vger.kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, ath10k@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, alastair@d-silva.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Benson Leung <bleung@chromium.org>,
 Kalle Valo <kvalo@codeaurora.org>, Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@aculab.com>, Daniel Vetter <daniel@ffwll.ch>,
 netdev <netdev@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Alastair,

Thanks for your patch!

On Wed, May 8, 2019 at 9:04 AM Alastair D'Silva <alastair@au1.ibm.com> wrote:
> From: Alastair D'Silva <alastair@d-silva.org>
>
> Some buffers may only be partially filled with useful data, while the rest
> is padded (typically with 0x00 or 0xff).
>
> This patch introduces a flag to allow the supression of lines of repeated
> bytes,

Given print_hex_dump() operates on entities of groupsize (1, 2, 4, or 8)
bytes, wouldn't it make more sense to consider repeated groups instead
of repeated bytes?

> which are replaced with '** Skipped %u bytes of value 0x%x **'

Using a custom message instead of just "*", like "hexdump" uses, will
require preprocessing the output when recovering the original binary
data by feeding it to e.g. "xxd".
This may sound worse than it is, though, as I never got "xxd" to work
without preprocessing anyway ;-)

    $ cat $(type -p unhexdump)
    #!/bin/sh
    sed 's/^[0-9a-f]*//' $1 | xxd -r -p | dd conv=swab

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
