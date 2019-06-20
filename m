Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 870384C489
	for <lists+ath10k@lfdr.de>; Thu, 20 Jun 2019 02:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZqI6vNMlPVoMzk6iSPOo4ZIZxvEKKhXhuHUvh0HynE=; b=LRzT1xe2dw6o6I
	+x7vYucajxjU9ikQVyT+fgzIUrzWkJ9qqUNLRz21pppqHzaH+7q9MOqYe3dw+6ujPWjyG7hUoH8Zg
	9iUDR6dFdFVT/0UfG1fTX3kVIQpgsW765Sz/WbQyHv+sCtdyOkYDmJDBZGKVv+zI/K16L/hrcfA2J
	/20myM2T9TaR4JhOKiPJiQIZb8hCuzF97ARddQw6sBN8v/i7SXrCJO+0g2SJpByE6nssKaeAkHzZb
	4y99cb02amKHcbSfnBz4DoJO9BzdLJem79fD7g5RH2rE+U8u8jO08eFdQYraWkLK+qKmus/SPXe0Y
	cT1/P/kwBJAJA0pSToRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdl35-0001Oj-B3; Thu, 20 Jun 2019 00:35:31 +0000
Received: from smtprelay0184.hostedemail.com ([216.40.44.184]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdl31-0001Nd-99
 for ath10k@lists.infradead.org; Thu, 20 Jun 2019 00:35:28 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 4743D18032D42;
 Thu, 20 Jun 2019 00:35:19 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 
X-HE-Tag: slope21_83935d3c81a36
X-Filterd-Recvd-Size: 3615
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Thu, 20 Jun 2019 00:35:03 +0000 (UTC)
Message-ID: <d8316be322f33ea67640ff83f2248fe433078407.camel@perches.com>
Subject: Re: [PATCH v3 0/7] Hexdump Enhancements
From: Joe Perches <joe@perches.com>
To: Alastair D'Silva <alastair@d-silva.org>
Date: Wed, 19 Jun 2019 17:35:01 -0700
In-Reply-To: <c68cb819257f251cbb66f8998a95c31cebe2d72e.camel@d-silva.org>
References: <20190617020430.8708-1-alastair@au1.ibm.com>
 <9a000734375c0801fc16b71f4be1235f9b857772.camel@perches.com>
 <c68cb819257f251cbb66f8998a95c31cebe2d72e.camel@d-silva.org>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_173527_395228_A644F881 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.184 listed in list.dnswl.org]
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

On Thu, 2019-06-20 at 09:15 +1000, Alastair D'Silva wrote:
> On Wed, 2019-06-19 at 09:31 -0700, Joe Perches wrote:
> > On Mon, 2019-06-17 at 12:04 +1000, Alastair D'Silva wrote:
> > > From: Alastair D'Silva <alastair@d-silva.org>
> > > 
> > > Apologies for the large CC list, it's a heads up for those
> > > responsible
> > > for subsystems where a prototype change in generic code causes a
> > > change
> > > in those subsystems.
> > > 
> > > This series enhances hexdump.
> > 
> > Still not a fan of these patches.
> 
> I'm afraid there's not too much action I can take on that, I'm happy to
> address specific issues though.
> 
> > > These improve the readability of the dumped data in certain
> > > situations
> > > (eg. wide terminals are available, many lines of empty bytes exist,
> > > etc).

I think it's generally overkill for the desired uses.

> > Changing hexdump's last argument from bool to int is odd.
> > 
> 
> Think of it as replacing a single boolean with many booleans.

I understand it.  It's odd.

I would rather not have a mixture of true, false, and apparently
random collections of bitfields like 0xd or 0b1011 or their
equivalent or'd defines.


> There's only a handful of consumers, I don't think there is a value-add 
> in creating more wrappers vs updating the existing callers.

Perhaps more reason not to modify the existing api.



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
