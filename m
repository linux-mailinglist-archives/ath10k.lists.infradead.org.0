Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 982C4182FC
	for <lists+ath10k@lfdr.de>; Thu,  9 May 2019 02:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WE7IdJtL2X7KrGMQ+ldAZei6FVxPWCJsG44q9U6RxgQ=; b=VF/bMSAZneyPOL
	w6p6pL3LuOwPfG2Me6VDMC+FIgMuptVnRJm26l73ygF49tyFQE600u6cqJ1hup3TMrl46AFL1Yrt+
	Sqh46xl6K1V7e3E0LirTfJ41k5mX/xWUtq+b919WW7QZFGhIVhJBF+60dryDjbHzLDFCuAx3jICNA
	HfHjp4T6cOUtpuufw8cMB/QKvHIiesq1yDx4rdSgyD0EJfXlVqMPNnvAofYiJmKpc/lUUAbdGHR8K
	rWRknKFEkItpKBYILZGs9B3HTRHXBYBi00JOre5ji69ZcvA1CTrJgE5WYJE+tdpBKWwuw7YT/2eRQ
	a8a/k6YBkZGRmrJtm7Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOXOi-0001bu-49; Thu, 09 May 2019 00:58:56 +0000
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=midway.dunlab)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOXOb-0001bQ-J1; Thu, 09 May 2019 00:58:49 +0000
Subject: Re: [PATCH v2 3/7] lib/hexdump.c: Optionally suppress lines of
 repeated bytes
To: Alastair D'Silva <alastair@au1.ibm.com>, alastair@d-silva.org
References: <20190508070148.23130-1-alastair@au1.ibm.com>
 <20190508070148.23130-4-alastair@au1.ibm.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <dc093079-43a0-0a45-f5dd-88b20702fd93@infradead.org>
Date: Wed, 8 May 2019 17:58:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508070148.23130-4-alastair@au1.ibm.com>
Content-Language: en-US
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Petr Mladek <pmladek@suse.com>, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Steven Rostedt <rostedt@goodmis.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Benson Leung <bleung@chromium.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 5/8/19 12:01 AM, Alastair D'Silva wrote:
> From: Alastair D'Silva <alastair@d-silva.org>
> 
> Some buffers may only be partially filled with useful data, while the rest
> is padded (typically with 0x00 or 0xff).
> 
> This patch introduces a flag to allow the supression of lines of repeated
> bytes, which are replaced with '** Skipped %u bytes of value 0x%x **'
> 
> An inline wrapper function is provided for backwards compatibility with
> existing code, which maintains the original behaviour.
> 
> Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
> ---
>  include/linux/printk.h | 25 +++++++++---
>  lib/hexdump.c          | 91 ++++++++++++++++++++++++++++++++++++------
>  2 files changed, 99 insertions(+), 17 deletions(-)
> 

Hi,
Did you do "make htmldocs" or something similar on this?

> diff --git a/lib/hexdump.c b/lib/hexdump.c
> index 3943507bc0e9..d61a1e4f19fa 100644
> --- a/lib/hexdump.c
> +++ b/lib/hexdump.c
> @@ -212,8 +212,44 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
>  EXPORT_SYMBOL(hex_dump_to_buffer);
>  
>  #ifdef CONFIG_PRINTK
> +
> +/**
> + * Check if a buffer contains only a single byte value
> + * @buf: pointer to the buffer
> + * @len: the size of the buffer in bytes
> + * @val: outputs the value if if the bytes are identical

Does this work without a function name?
Documentation/doc-guide/kernel-doc.rst says the general format is:

  /**
   * function_name() - Brief description of function.
   * @arg1: Describe the first argument.
   * @arg2: Describe the second argument.
   *        One can provide multiple line descriptions
   *        for arguments.
   *

> + */

>  /**
> - * print_hex_dump - print a text hex dump to syslog for a binary blob of data
> + * print_hex_dump_ext: dump a binary blob of data to syslog in hexadecimal

Also not in the general documented format.

>   * @level: kernel log level (e.g. KERN_DEBUG)
>   * @prefix_str: string to prefix each line with;
>   *  caller supplies trailing spaces for alignment if desired


-- 
~Randy

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
