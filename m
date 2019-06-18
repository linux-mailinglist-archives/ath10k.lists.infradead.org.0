Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3811949680
	for <lists+ath10k@lfdr.de>; Tue, 18 Jun 2019 02:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsJSFe6OIO4Kz3hWBBA0eWHgp1HF/wV4BHBCEOp6SwI=; b=ZGlpanjJHS4Rnb
	R8CWo/gwJKntxRtjz+7rrnXMqXa6d9WRakp9Gs2K1C9L2P9+lf/YiUoSDD8H+8IyXwMMgfMnyHQlq
	A3OfxDR5ugpl2iIL0hACp48i02QE4Uv0Uqq/QPUkgeCRrkcNSIjAZTmyLHP6kxp8dCNirutuEtEXO
	LuMSvNUpPeQNPqNoBdlOfWD0Lutg4pBP0gKOHyuK0N1dx82QolWFMRTJMPtMRwiVnzUsIDmaWsFHO
	fs/kEcpeVA3iO6yxONK5q0Zv/waFvHDgsB2my21t50vH9NVlxMj2lVFPeSW+XTIxixCsKGNdsKt8E
	rWvTdq5QFfZwkGzKQ/mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd2RM-00075n-Sh; Tue, 18 Jun 2019 00:57:36 +0000
Received: from ushosting.nmnhosting.com ([66.55.73.32])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hd2RJ-00075T-8d
 for ath10k@lists.infradead.org; Tue, 18 Jun 2019 00:57:34 +0000
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id 2797C2DC0096;
 Mon, 17 Jun 2019 20:57:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1560819452;
 bh=u7VpYNn8JpTLdyHPUljh2Z7wehVtDH+n9nHQNgN6N2A=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=jvSabEdrNHOl7NlBGL5YcdZQfi+fpB9BO+GaqBWlR/PP+V/1JX3MOC/vdfprE+d4q
 W0UTx/depws8/q6fCe4qsmxzaHqtVkUa+v+Mp2PYjaUrKq1XeKLKJ3TPmwKDKYb7Ix
 tm9Ggg2c204E7SWf1Kzm3b7UURvQRUF+YtE1qaFXWb7M1bSsECs2dxPGyAy4TwdTwu
 YrzjrIAdGWVZDKXuSQHyDOqmmePgS4sV2lw+tlA9IZJRT1DXVvYEFcSGBy5FTId/0l
 fqkDcrBYmDhMWn+3CZbnwx7qgnLFWM0LDHsbAyxHAnRZtM+pOmK0XpTf0aiYcsAURz
 JAHTKkLHxAgXWfC3qIJOHW9mN0wLp5AYzfNmMC3C5ks7bZYsWq3PGnPXMMgDkMzyop
 xeuPVBo2+37GGuWiHd1PVStu6wl0eKfSBJgyWJvhXbnAdDsbuqzYFH9Boz+O6C1oWT
 2Stkwa1MvSezs7en91awfFUNUzrvwbjOv/IZIK0ZFoGni+dz4kIbQSJzdLLHGKQkgV
 TVlkQn6TAJU90DRRiC92kuMldKfElutBjDwzhohJifPcEvF9T9IrE1SS4Zaz3ft2Rz
 ho6zF2/9j+ouJCRd5AcHglBo4L8CMDItufZhI5pCGZ7PhbKy0bPXekMmqRlgelk8er
 vDFIJF20+9ye5cMw79l/tHxg=
Received: from adsilva.ozlabs.ibm.com (static-82-10.transact.net.au
 [122.99.82.10] (may be forged)) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x5I0v17n063106
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 18 Jun 2019 10:57:17 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
Message-ID: <b2651117ca8a55d94b7e14e273d25199515039c3.camel@d-silva.org>
Subject: Re: [PATCH v3 2/7] lib/hexdump.c: Relax rowsize checks in
 hex_dump_to_buffer
From: "Alastair D'Silva" <alastair@d-silva.org>
To: Randy Dunlap <rdunlap@infradead.org>
Date: Tue, 18 Jun 2019 10:57:00 +1000
In-Reply-To: <94413756-c927-a4ca-dd59-47e3cc87d58d@infradead.org>
References: <20190617020430.8708-1-alastair@au1.ibm.com>
 <20190617020430.8708-3-alastair@au1.ibm.com>
 <94413756-c927-a4ca-dd59-47e3cc87d58d@infradead.org>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Tue, 18 Jun 2019 10:57:27 +1000 (AEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_175733_329704_159D2B76 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, 2019-06-17 at 15:47 -0700, Randy Dunlap wrote:
> Hi,
> Just a comment style nit below...
> 
> On 6/16/19 7:04 PM, Alastair D'Silva wrote:
> > From: Alastair D'Silva <alastair@d-silva.org>
> > 
> > This patch removes the hardcoded row limits and allows for
> > other lengths. These lengths must still be a multiple of
> > groupsize.
> > 
> > This allows structs that are not 16/32 bytes to display on
> > a single line.
> > 
> > This patch also expands the self-tests to test row sizes
> > up to 64 bytes (though they can now be arbitrarily long).
> > 
> > Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
> > ---
> >  lib/hexdump.c      | 48 ++++++++++++++++++++++++++++--------------
> >  lib/test_hexdump.c | 52 ++++++++++++++++++++++++++++++++++++++--
> > ------
> >  2 files changed, 75 insertions(+), 25 deletions(-)
> > 
> > diff --git a/lib/hexdump.c b/lib/hexdump.c
> > index 81b70ed37209..3943507bc0e9 100644
> > --- a/lib/hexdump.c
> > +++ b/lib/hexdump.c
> > @@ -246,17 +248,29 @@ void print_hex_dump(const char *level, const
> > char *prefix_str, int prefix_type,
> >  {
> >  	const u8 *ptr = buf;
> >  	int i, linelen, remaining = len;
> > -	unsigned char linebuf[32 * 3 + 2 + 32 + 1];
> > +	unsigned char *linebuf;
> > +	unsigned int linebuf_len;
> >  
> > -	if (rowsize != 16 && rowsize != 32)
> > -		rowsize = 16;
> > +	if (rowsize % groupsize)
> > +		rowsize -= rowsize % groupsize;
> > +
> > +	/* Worst case line length:
> > +	 * 2 hex chars + space per byte in, 2 spaces, 1 char per byte
> > in, NULL
> > +	 */
> 
> According to Documentation/process/coding-style.rst:
> 
> The preferred style for long (multi-line) comments is:
> 
> .. code-block:: c
> 
> 	/*
> 	 * This is the preferred style for multi-line
> 	 * comments in the Linux kernel source code.
> 	 * Please use it consistently.
> 	 *
> 	 * Description:  A column of asterisks on the left side,
> 	 * with beginning and ending almost-blank lines.
> 	 */
> 

Thanks Randy, I'll address this.


-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva    
Twitter: @EvilDeece
blog: http://alastair.d-silva.org



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
