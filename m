Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D440478F7
	for <lists+ath10k@lfdr.de>; Mon, 17 Jun 2019 06:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZ1r81+jXIRY5cvlLDfBw3I25kgwB1tf11pBEgcfmNQ=; b=JoElqL/Fl4Su6t
	LLwCVGvqxJI9TS3cs8Et8a+W50PICV2/uq7ZBUEREXIplOcLBfpcmNoGZ+1GwzXszgkGSLMHq/QNa
	7qggLJV/T+iU7PKNB6HhIOXLL10HM/AxbTEjyeemq6ZTKOyTwSNlvZvR1xgHAG14gwX7gVzCg5G/g
	K1NeJtMDXlM03fElgdFXc4tlrghdir2tttNix6yp2a6g5MgEHwYPvaH3/b7Wr+Fz+XDa9A7l1XAS4
	P41CnNnozCzyDktTqPPBF1cTzXTfN5E0eVoS6/ku1Bbcay4CRQZWjrPBGpNixAa74C7YhtyGRThHC
	bH/GEFd6s38bzJqeru+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcivq-00012p-Iu; Mon, 17 Jun 2019 04:07:46 +0000
Received: from ushosting.nmnhosting.com ([66.55.73.32])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcivm-00012E-Co
 for ath10k@lists.infradead.org; Mon, 17 Jun 2019 04:07:43 +0000
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id E75102DC007F;
 Mon, 17 Jun 2019 00:07:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1560744460;
 bh=fcIJWb9zFrSz2UB8a7mxef1I4k9iDutEwQyvrCEDLlQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=WCFaSA53OEIg+og8L/naQbQPlaTsOoXPKsvTwtmXP2Vk09oVK0XuS5AD3x5/CqLrM
 G0GIng39m1v0lZ4sKpUf3T99/+YBxM9RX44WLALuhESqgh+r5BAShy10176lEQBE3q
 DQvd2fgD6zwuDb2r3HtAMEKvNfyGEklzY4KUQ+U+VxMilUgRO+yfLfvjALw1DuedIj
 U07cuyKZx46E0NJINEB5+8FVHhYvvSWxSY7sKWAoGvSBG/TJ18P0TuXGu+r+H6bH0e
 aXUQ8ilJHofP52ff/zDalxsvFnS/I19R0WtGSyZHeql8nV+rZAy3ckW9tGr7DubBUl
 qpbsJvQK16Hb/jOSoEHhPkG1VKXuLKMb1qy/wzkUplRpkQy3lck+ggy2ukzRhUgkqh
 N1Q6mMJi30A9PGd1HWpWuLWkLg4LedcJItJ961IWPw6XnamogZOK4OajearEtq6Wug
 Q7fZpUvUrqSKSyRRBPeipKEoLRw/YY+95nWqf7l5GKHjuTC0GylNVU3e6c29Aa3j+X
 5pRuwG5Xw/zIJlIzmObseyKrpDD4TC7M/3O2j/4ernSmXnXxPfSq1dRv9DqHM2oKIk
 cA8ovQOzGfvEiJha5fCrgByfWUnR6D8Ngp3/azplb/9QJOs0SiH1pg9yh8F/C3rFek
 9RkRnoy0sArwZ3E9Df8kzHf0=
Received: from adsilva.ozlabs.ibm.com (static-82-10.transact.net.au
 [122.99.82.10] (may be forged)) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x5H47CvI055927
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 17 Jun 2019 14:07:28 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
Message-ID: <da2ff58290c4b6f08eb5ac25c288bdd03b5688f7.camel@d-silva.org>
Subject: Re: [PATCH v3 3/7] lib/hexdump.c: Optionally suppress lines of
 repeated bytes
From: "Alastair D'Silva" <alastair@d-silva.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Date: Mon, 17 Jun 2019 14:07:12 +1000
In-Reply-To: <20190617020430.8708-4-alastair@au1.ibm.com>
References: <20190617020430.8708-1-alastair@au1.ibm.com>
 <20190617020430.8708-4-alastair@au1.ibm.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Mon, 17 Jun 2019 14:07:35 +1000 (AEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_210742_471775_869CD735 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Steven Rostedt <rostedt@goodmis.org>, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Benson Leung <bleung@chromium.org>,
 Kalle Valo <kvalo@codeaurora.org>, Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, 2019-06-17 at 12:04 +1000, Alastair D'Silva wrote:
> From: Alastair D'Silva <alastair@d-silva.org>
> 
> Some buffers may only be partially filled with useful data, while the
> rest
> is padded (typically with 0x00 or 0xff).
> 
> This patch introduces a flag to allow the supression of lines of
> repeated
> bytes, which are replaced with '** Skipped %u bytes of value 0x%x **'
> 
> An inline wrapper function is provided for backwards compatibility
> with
> existing code, which maintains the original behaviour.
> 
> Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
> ---
>  include/linux/printk.h | 25 +++++++++---
>  lib/hexdump.c          | 91 ++++++++++++++++++++++++++++++++++++--
> ----
>  2 files changed, 99 insertions(+), 17 deletions(-)
> 
> diff --git a/include/linux/printk.h b/include/linux/printk.h
> index cefd374c47b1..d7754799cfe0 100644
> --- a/include/linux/printk.h
> +++ b/include/linux/printk.h
> @@ -481,13 +481,18 @@ enum {
>  	DUMP_PREFIX_ADDRESS,
>  	DUMP_PREFIX_OFFSET
>  };
> +
>  extern int hex_dump_to_buffer(const void *buf, size_t len, int
> rowsize,
>  			      int groupsize, char *linebuf, size_t
> linebuflen,
>  			      bool ascii);
> +
> +#define HEXDUMP_ASCII			BIT(0)
> +#define HEXDUMP_SUPPRESS_REPEATED	BIT(1)
> +

This is missing the include of linux/bits.h, I'll fix this in the next
version.

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva    
Twitter: @EvilDeece
blog: http://alastair.d-silva.org



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
