Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7527A55D2D
	for <lists+ath10k@lfdr.de>; Wed, 26 Jun 2019 03:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44UrpYmBnuupd3glhw1qoHKT4aQW0Nas7IlfPWaixeU=; b=lpI9Nfm1hEc6K7
	pd5h/vDkHsA2ClZia8rpdtCz00IBBCk1ulGPfgy9YbZd6IehnxoIC0PiBuTtnCe7GZE+ySmDitBOY
	eUHzlc7kG0ycadGZFAL5B5PJulul+CKJK5xTqUObqbjrcpFq0NVZBNfhPt3ZWzVA9Z0hM55rCCaNm
	BAbD3g0AcFr2tPJWzpmYqiE7m04NfEs/roWxGTe7MPzgNCWSTOehELd6GtDh4DkQmpoz/p07bS+Pi
	Spgm08bA64KGcWFlnK2TIIQZCmxy8gxDkuK7HiPjdLiywQb9ViURmMreeqRDwJlvMNkNxtM1mYegA
	LYNRRXlwXZByMUrFCo3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfwL5-0002h5-CM; Wed, 26 Jun 2019 01:03:07 +0000
Received: from ushosting.nmnhosting.com ([66.55.73.32])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfwKy-0002ft-D4
 for ath10k@lists.infradead.org; Wed, 26 Jun 2019 01:03:01 +0000
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id E27A72DC0076;
 Tue, 25 Jun 2019 21:02:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1561510978;
 bh=alTGTolfSOaJib81/HV1xk13UMDoyRYklK/SpUrmd7w=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=NoxHUcByzLTCusX5pVe1lsXlBMGElTVDnI/XfJAy1Nl2CPCT+1tOht6i2EK/ciNkm
 K9KG5Y432fz/6LApPs3O84qtWA9SlyMmA/wuAdUcSD4rSsw1vczNmq2IadH3d8Yjjj
 5s/aRpOn+J8LZ+0EdQegjtRsGUm+NIxhK/RJ9SV1bF1UePOw1rCMB/TgxdowIewNFZ
 Ra5cgiPNVLsA+gWt+IwCMHonGdcRTTyshPS7dwjlm4RdNgxtOKDy+eQbfRQfotbzjs
 B5QQnvu0X2cSsH+yxVwnjSR18+Dt0Tt9kbJq7vhB7kczzOGw3vGeE9Nsk1oow8i/1I
 3EN2KiSeiTlphcIF4jujWhyKJYRq8hKZqgXXkbYQ8cniR0sy1e4f3msouuG7u7FAGN
 4N62OPQDxWHpA6QCR2bkcmJBVH1Jb6OE2kFfBG7EgyAY7YE5RDCG3qHf3x06F/DOxs
 QIPziAUS4TwpT/g1pYu4AH2VTerslwlrRiUj0wkS6makKQ6LJI017iD3ClsF1dCjvw
 9OKcxJoGQDOPUyeiE1V2QvnozdCZZJ0tZIwv2ngVO0Y5g38kYMSlrgiQm08cGPPyV1
 1vTrS9K7ZJD22fxteol1WonkF1zHEWTT8Eu6rNYpH6cAVTxvZ5Uw16GXOQ+goHTzVz
 m6Ftvv6Q+FYsWPnR2eqrJFq0=
Received: from adsilva.ozlabs.ibm.com (static-82-10.transact.net.au
 [122.99.82.10] (may be forged)) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x5Q12T29029544
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Jun 2019 11:02:45 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
Message-ID: <e16caf5b98aafea4033bfc0e49845ef987c02678.camel@d-silva.org>
Subject: Re: [PATCH v4 0/7] Hexdump Enhancements
From: "Alastair D'Silva" <alastair@d-silva.org>
To: Joe Perches <joe@perches.com>
Date: Wed, 26 Jun 2019 11:02:29 +1000
In-Reply-To: <3ae4c1a4a72f8ee6b75c45adfbe543fc0a7b5da1.camel@perches.com>
References: <20190625031726.12173-1-alastair@au1.ibm.com>
 <3ae4c1a4a72f8ee6b75c45adfbe543fc0a7b5da1.camel@perches.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Wed, 26 Jun 2019 11:02:53 +1000 (AEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_180300_467164_654FB640 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, 2019-06-24 at 22:01 -0700, Joe Perches wrote:
> On Tue, 2019-06-25 at 13:17 +1000, Alastair D'Silva wrote:
> > From: Alastair D'Silva <alastair@d-silva.org>
> > 
> > Apologies for the large CC list, it's a heads up for those
> > responsible
> > for subsystems where a prototype change in generic code causes a
> > change
> > in those subsystems.
> []
> > The default behaviour of hexdump is unchanged, however, the
> > prototype
> > for hex_dump_to_buffer() has changed, and print_hex_dump() has been
> > renamed to print_hex_dump_ext(), with a wrapper replacing it for
> > compatibility with existing code, which would have been too
> > invasive to
> > change.
> 
> I believe this cover letter is misleading.
> 
> The point of the wrapper is to avoid unnecessary changes
> in existing
> code.
> 
> 

The wrapper is for print_hex_dump(), which has many callers.

The changes to existing code are for hex_dump_to_buffer(), which is
called in relatively few places.

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva    
Twitter: @EvilDeece
blog: http://alastair.d-silva.org



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
