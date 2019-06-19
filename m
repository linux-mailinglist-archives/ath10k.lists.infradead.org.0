Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE684BE48
	for <lists+ath10k@lfdr.de>; Wed, 19 Jun 2019 18:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyriMj3FqffpxBnM8JbonvrTVm9PJe8wVzvw/l9IYbo=; b=Dvg3fmBIE+3oqf
	GyMdfrOxfE6Lkb5Qpb6bItkfAtuWGAKSSaSHWiq7EM+cQS3KisHD7dRebUPyPekQ5BxZFX5w5lpgY
	xURpTco3hOWeX32WlJzilfNt5hGFwpCZl241RPWTMChPb7l7jE1odqJ08dUl6YI1wmKrN0MCit23v
	5gt4rh0loRGzq6ozN6y2M61AqUnjq0haE4vLlbTC8jWylekGhxry8yndZbMVucr9uY7qVtylHXqLV
	VAG6o6ZnvUNlRCcqWfeL722hSPnneu06UwscYQ+OJbZ5viigCi8BIgswfz2V0iLSH6aiv4PRRqP+q
	AycpN//PxIX08kR3DdDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddV2-0008HS-F7; Wed, 19 Jun 2019 16:31:52 +0000
Received: from smtprelay0081.hostedemail.com ([216.40.44.81]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddUx-0008GW-TN
 for ath10k@lists.infradead.org; Wed, 19 Jun 2019 16:31:49 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id D3FFA1801A0B4;
 Wed, 19 Jun 2019 16:31:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 
X-HE-Tag: cakes27_80e37c98d9d58
X-Filterd-Recvd-Size: 3106
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Wed, 19 Jun 2019 16:31:25 +0000 (UTC)
Message-ID: <9a000734375c0801fc16b71f4be1235f9b857772.camel@perches.com>
Subject: Re: [PATCH v3 0/7] Hexdump Enhancements
From: Joe Perches <joe@perches.com>
To: Alastair D'Silva <alastair@au1.ibm.com>, alastair@d-silva.org
Date: Wed, 19 Jun 2019 09:31:24 -0700
In-Reply-To: <20190617020430.8708-1-alastair@au1.ibm.com>
References: <20190617020430.8708-1-alastair@au1.ibm.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_093148_022882_AAA325A4 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.81 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, 2019-06-17 at 12:04 +1000, Alastair D'Silva wrote:
> From: Alastair D'Silva <alastair@d-silva.org>
> 
> Apologies for the large CC list, it's a heads up for those responsible
> for subsystems where a prototype change in generic code causes a change
> in those subsystems.
> 
> This series enhances hexdump.

Still not a fan of these patches.

> These improve the readability of the dumped data in certain situations
> (eg. wide terminals are available, many lines of empty bytes exist, etc).

Changing hexdump's last argument from bool to int is odd.

Perhaps a new function should be added instead of changing
the existing hexdump.

> The default behaviour of hexdump is unchanged, however, the prototype
> for hex_dump_to_buffer() has changed, and print_hex_dump() has been
> renamed to print_hex_dump_ext(), with a wrapper replacing it for
> compatibility with existing code, which would have been too invasive to
> change.
> 
> Hexdump selftests have be run & confirmed passed.



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
