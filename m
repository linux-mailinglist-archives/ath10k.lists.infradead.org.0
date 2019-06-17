Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 154B14956B
	for <lists+ath10k@lfdr.de>; Tue, 18 Jun 2019 00:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QiQGwXEEeLxfQqdoD/NyprMtHC9JUsgUX4vZrZ65xWo=; b=W0VHFnpl+yGooV
	alufWub9X9qKxY+Kx7fgbEe8auawUZpZ7lo6/CEqOpwPAAWEogIaNFYLQh2YxpMEBXtwS6+q9XFgh
	qrrEsROaQ9IQAcmS60KRYz5buHr1U8EcHBdPzx1foBK0+WZ8d4Q6HgRR1osnNfxHU/PcYM3h/DCYY
	aFIxdyZabZ3sNqpO+/6kruXmGSzt+4dPNTKyVEYGCsgGwLecEjntpu2cAA1/tJIl5O9IjMHX7Q9Xp
	BHhUs7RTxGa16SIZmaIv+udjeRD68zwstX/ED6mlj37STwUjf16Fn0DbJ/BjGmpI801QXQ7BzMLmd
	sSMBebNczC6hIcYo4VBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd0PS-00032Q-FR; Mon, 17 Jun 2019 22:47:30 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd0PP-00032I-Ty
 for ath10k@bombadil.infradead.org; Mon, 17 Jun 2019 22:47:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oWCvapawJTmHWfTi4W/xQzd/vam+JtASkBkdfBDmQPA=; b=n2EkBbCtepqSck3LcKcBk9ucLP
 OopaIKVxH7Ft5pKUkNM6axeXE0K/dN0KlZBFHBkuZUjcuBojBVwA6eyj3zIf/SrSJ0AXP+ap36Tfr
 X0WYpzcQ34E0H9clamwWKVPA2G5AqZgtlebPbdol2VZl3hzV0WHHKTyO/DPw8RjqxrUZIc7QdVFKM
 vHCGFyYLYGCxZF9eADucfOb8FK17P9rwh5jOCnBGSKiVmNRqoUfswvbapl0LJeUcbgsSotAmzefsG
 BuQwk3FdoCSOiq6Zwz2/pJMld3yRBwfY9eWtfMYCawPt2uqyoLPRXHwia2hme5jMcDzrgP6F97p9i
 1TAbXIzA==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=midway.dunlab)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hd0P6-0004pi-Aw; Mon, 17 Jun 2019 22:47:08 +0000
Subject: Re: [PATCH v3 2/7] lib/hexdump.c: Relax rowsize checks in
 hex_dump_to_buffer
To: Alastair D'Silva <alastair@au1.ibm.com>, alastair@d-silva.org
References: <20190617020430.8708-1-alastair@au1.ibm.com>
 <20190617020430.8708-3-alastair@au1.ibm.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <94413756-c927-a4ca-dd59-47e3cc87d58d@infradead.org>
Date: Mon, 17 Jun 2019 15:47:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617020430.8708-3-alastair@au1.ibm.com>
Content-Language: en-US
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Petr Mladek <pmladek@suse.com>, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-fsdevel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Benson Leung <bleung@chromium.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi,
Just a comment style nit below...

On 6/16/19 7:04 PM, Alastair D'Silva wrote:
> From: Alastair D'Silva <alastair@d-silva.org>
> 
> This patch removes the hardcoded row limits and allows for
> other lengths. These lengths must still be a multiple of
> groupsize.
> 
> This allows structs that are not 16/32 bytes to display on
> a single line.
> 
> This patch also expands the self-tests to test row sizes
> up to 64 bytes (though they can now be arbitrarily long).
> 
> Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
> ---
>  lib/hexdump.c      | 48 ++++++++++++++++++++++++++++--------------
>  lib/test_hexdump.c | 52 ++++++++++++++++++++++++++++++++++++++--------
>  2 files changed, 75 insertions(+), 25 deletions(-)
> 
> diff --git a/lib/hexdump.c b/lib/hexdump.c
> index 81b70ed37209..3943507bc0e9 100644
> --- a/lib/hexdump.c
> +++ b/lib/hexdump.c

> @@ -246,17 +248,29 @@ void print_hex_dump(const char *level, const char *prefix_str, int prefix_type,
>  {
>  	const u8 *ptr = buf;
>  	int i, linelen, remaining = len;
> -	unsigned char linebuf[32 * 3 + 2 + 32 + 1];
> +	unsigned char *linebuf;
> +	unsigned int linebuf_len;
>  
> -	if (rowsize != 16 && rowsize != 32)
> -		rowsize = 16;
> +	if (rowsize % groupsize)
> +		rowsize -= rowsize % groupsize;
> +
> +	/* Worst case line length:
> +	 * 2 hex chars + space per byte in, 2 spaces, 1 char per byte in, NULL
> +	 */

According to Documentation/process/coding-style.rst:

The preferred style for long (multi-line) comments is:

.. code-block:: c

	/*
	 * This is the preferred style for multi-line
	 * comments in the Linux kernel source code.
	 * Please use it consistently.
	 *
	 * Description:  A column of asterisks on the left side,
	 * with beginning and ending almost-blank lines.
	 */


except in networking software.


> +	linebuf_len = rowsize * 3 + 2 + rowsize + 1;
> +	linebuf = kzalloc(linebuf_len, GFP_KERNEL);
> +	if (!linebuf) {
> +		printk("%s%shexdump: Could not alloc %u bytes for buffer\n",
> +			level, prefix_str, linebuf_len);
> +		return;
> +	}


-- 
~Randy

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
