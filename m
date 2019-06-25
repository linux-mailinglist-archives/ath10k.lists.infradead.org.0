Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A36522C5
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 07:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLgsaZiFxNjm0wgVtQJZRRcKNsDiWmrp7v2RgXjVxCE=; b=a/7LGwMs2iJg9h
	YR40Zyz1gIWpOLnSGXdoEZSrHQiHq58IovWdeYQLF7HrVVL27rWZhY7TTjKgSOTYcpcuzQDfIfLto
	ENCfefcgBAjV67VyUm9ra67KWyvEJ4SdzjwQ1JNc4n6Joc3mYZYAXfZEdqsQ2t9AqS3ESLGr6j/P6
	ktrPTx3adhfNloJNkprLjt2Lv7U2uZIrFaEFKBUsaKqjhYUnLgSURSmxsI3IrjtQc9VImbporGYu4
	z2t+8rvvuKhxHOTtm6+cdWIzIHq764X1YNLwp9QEvcSC3NOx+Ng4F3dZ+9L9/DKiReEFckSDVTsAs
	ycBS9Pw7aCevTH3olyYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfdrW-000762-HG; Tue, 25 Jun 2019 05:19:22 +0000
Received: from smtprelay0151.hostedemail.com ([216.40.44.151]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfdrP-000758-Pk
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 05:19:18 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 694D7100E86C1;
 Tue, 25 Jun 2019 05:19:10 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 
X-HE-Tag: crown72_8991fd23cb832
X-Filterd-Recvd-Size: 2612
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf04.hostedemail.com (Postfix) with ESMTPA;
 Tue, 25 Jun 2019 05:19:05 +0000 (UTC)
Message-ID: <4ba3b835fb3675ea685390903a082bf8b7f9e955.camel@perches.com>
Subject: Re: [PATCH v4 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
From: Joe Perches <joe@perches.com>
To: Alastair D'Silva <alastair@d-silva.org>
Date: Mon, 24 Jun 2019 22:19:03 -0700
In-Reply-To: <746098160c4ff6527d573d2af23c403b6d4e5b80.camel@d-silva.org>
References: <20190625031726.12173-1-alastair@au1.ibm.com>
 <20190625031726.12173-5-alastair@au1.ibm.com>
 <3340b520a57e00a483eae170be97316c8d18c22c.camel@perches.com>
 <746098160c4ff6527d573d2af23c403b6d4e5b80.camel@d-silva.org>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_221916_976923_AAF8019E 
X-CRM114-Status: UNSURE (   4.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.151 listed in list.dnswl.org]
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

On Tue, 2019-06-25 at 15:06 +1000, Alastair D'Silva wrote:
> The change actions Jani's suggestion:
> https://lkml.org/lkml/2019/6/20/343

I suggest not changing any of the existing uses of
hex_dump_to_buffer and only use hex_dump_to_buffer_ext
when necessary for your extended use cases.




_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
