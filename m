Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A28B41B13D
	for <lists+ath10k@lfdr.de>; Mon, 13 May 2019 09:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwFZ4vuukx4oB2R+o1nVVRD4V/FLDt3fOaAwKLxjr10=; b=QzjzVzP8und4iE
	VRGaTTmzzBGVhC/JN8NAVplqGrYZpBFML2wmo68808zCJ5VUGIoLZGdU1uYqmEOPc2v9wZVIxDjRf
	Dw+YI9q2D7x0NrUIDhhJ1UmwWr7a7BLFD2h459zklpWw98JO2GJqJ9n9hLBsFqSm2OVXtb4DKcWFW
	EuZknx1TrJp5/OhzKiPA5Hd7r64lvpObgIyNHia/+z5qheNlLKkZ/YxAlBJMfRWS3ikkw4BjXw6QS
	Tc2dKf5CS9Iu41fCcYwLVAmTc0lqhffixpW+ekYR1rJ6wcGhLnK4cl/uaZ0VL4YqIGP9RlJ6bOqLC
	rFUyksj5LNQTIQ5wHzRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5VL-0005ae-AO; Mon, 13 May 2019 07:36:11 +0000
Received: from ushosting.nmnhosting.com ([66.55.73.32])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5VH-0005a6-JU
 for ath10k@lists.infradead.org; Mon, 13 May 2019 07:36:09 +0000
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id 231832DC0069;
 Mon, 13 May 2019 03:35:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1557732958;
 bh=aa+i95blYOSxhGwoRx9zFnMo5oG4XUfXT748BNmFJIU=;
 h=From:To:Cc:References:In-Reply-To:Subject:Date:From;
 b=aSet9rLYykQxcyXFS2GF9u8JjdaPfKwlu1qpX3Ek5B3X+zmGgF+1WtmJH8QDHUKVR
 POJW18jnNWqKlc9WV/y9wswfLzQAdORTjoBGt6wbLb+XQzz+YSA8YT8exQIamI1hKA
 NgBZZqdAOIFcj5X4mKMcpOALzVECo4ayuE60g+CPH7CvPt6lSOfmFpWRNnpn+wYPF4
 P6SqYrz3uRsFocaNWbLb6GRXp8TE8CKtYMYUEeB/QfMAnGJ7U/FZrL/hYqxDE0ryBG
 /8/mtlXRqGs0pBJCO5WKEQDm1lzWRXt40l8YPyEBjUBm/McmvG1Iafbx2EfRhysC43
 vKIF2BpJNTxkposUCWaXgJuoNekulC6f7wlHUlNkNooeQHpAKXYuClI/ikmvCrnCff
 Vy/fK7azMrun4S9M5k0UdX9IUayiM9Y1AVv1iAHjIJrMhP8ELgeNkTypKa35MyJMjx
 LmIQVy3zVwlAOW1mMnZhrLapo90FKO26dOcJq140LOTx0ZahhIuR6KISKy+FuwYBfp
 cNemDFNeNEkfGRWxw0VhCsOArzkI9iJJSDwhVYx2DI4O1xJX2kFEObBeq4rx25ClRK
 PDCjVeuymuPU3aUBQKrJtdTxur1fcbH6SvSnl3OKtvCVGly9Za8zstBXG1KdRUNuvp
 kOJclMVcOxeDGLfkA1Mcr7AQ=
Received: from Hawking (ntp.lan [10.0.1.1]) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x4D7ZjC4057687
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 13 May 2019 17:35:46 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
From: "Alastair D'Silva" <alastair@d-silva.org>
To: "'Geert Uytterhoeven'" <geert@linux-m68k.org>,
 "'Alastair D'Silva'" <alastair@au1.ibm.com>
References: <20190508070148.23130-1-alastair@au1.ibm.com>
 <20190508070148.23130-4-alastair@au1.ibm.com>
 <CAMuHMdVefYTgHzGKBc0ebku1z8V3wsM0ydN+6-S2nFKaB8eH_Q@mail.gmail.com>
In-Reply-To: <CAMuHMdVefYTgHzGKBc0ebku1z8V3wsM0ydN+6-S2nFKaB8eH_Q@mail.gmail.com>
Subject: RE: [PATCH v2 3/7] lib/hexdump.c: Optionally suppress lines of
 repeated bytes
Date: Mon, 13 May 2019 17:35:47 +1000
Message-ID: <04de01d5095e$7f6af730$7e40e590$@d-silva.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-au
Thread-Index: AQGz7QD7bMLLz3XdMyQiMIIzLY+D4AJkmwv+AXBy99KmjDiokA==
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Mon, 13 May 2019 17:35:53 +1000 (AEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_003607_657754_5732249B 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: 'Linux Fbdev development list' <linux-fbdev@vger.kernel.org>,
 'Stanislaw Gruszka' <sgruszka@redhat.com>, 'Petr Mladek' <pmladek@suse.com>,
 'David Airlie' <airlied@linux.ie>,
 'Joonas Lahtinen' <joonas.lahtinen@linux.intel.com>,
 'DRI Development' <dri-devel@lists.freedesktop.org>,
 'driverdevel' <devel@driverdev.osuosl.org>,
 'scsi' <linux-scsi@vger.kernel.org>, 'Jassi Brar' <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org,
 'Intel Graphics Development' <intel-gfx@lists.freedesktop.org>,
 'Dan Carpenter' <dan.carpenter@oracle.com>,
 'Jose Abreu' <Jose.Abreu@synopsys.com>,
 'Tom Lendacky' <thomas.lendacky@amd.com>,
 "'James E.J. Bottomley'" <jejb@linux.ibm.com>,
 'Jani Nikula' <jani.nikula@linux.intel.com>,
 'Linux FS Devel' <linux-fsdevel@vger.kernel.org>,
 'Steven Rostedt' <rostedt@goodmis.org>,
 'Rodrigo Vivi' <rodrigo.vivi@intel.com>, 'Benson Leung' <bleung@chromium.org>,
 'Kalle Valo' <kvalo@codeaurora.org>, 'Karsten Keil' <isdn@linux-pingi.de>,
 "'Martin K. Petersen'" <martin.petersen@oracle.com>,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 'linux-wireless' <linux-wireless@vger.kernel.org>,
 'Linux Kernel Mailing List' <linux-kernel@vger.kernel.org>,
 'Sergey Senozhatsky' <sergey.senozhatsky@gmail.com>,
 'David Laight' <David.Laight@aculab.com>, 'Daniel Vetter' <daniel@ffwll.ch>,
 'netdev' <netdev@vger.kernel.org>,
 'Enric Balletbo i Serra' <enric.balletbo@collabora.com>,
 'Andrew Morton' <akpm@linux-foundation.org>,
 "'David S. Miller'" <davem@davemloft.net>,
 'Alexander Viro' <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Geert Uytterhoeven <geert@linux-m68k.org>
> Sent: Monday, 13 May 2019 5:01 PM
> To: Alastair D'Silva <alastair@au1.ibm.com>
> Cc: alastair@d-silva.org; Jani Nikula <jani.nikula@linux.intel.com>; Joonas
> Lahtinen <joonas.lahtinen@linux.intel.com>; Rodrigo Vivi
> <rodrigo.vivi@intel.com>; David Airlie <airlied@linux.ie>; Daniel Vetter
> <daniel@ffwll.ch>; Dan Carpenter <dan.carpenter@oracle.com>; Karsten
> Keil <isdn@linux-pingi.de>; Jassi Brar <jassisinghbrar@gmail.com>; Tom
> Lendacky <thomas.lendacky@amd.com>; David S. Miller
> <davem@davemloft.net>; Jose Abreu <Jose.Abreu@synopsys.com>; Kalle
> Valo <kvalo@codeaurora.org>; Stanislaw Gruszka <sgruszka@redhat.com>;
> Benson Leung <bleung@chromium.org>; Enric Balletbo i Serra
> <enric.balletbo@collabora.com>; James E.J. Bottomley
> <jejb@linux.ibm.com>; Martin K. Petersen <martin.petersen@oracle.com>;
> Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Alexander Viro
> <viro@zeniv.linux.org.uk>; Petr Mladek <pmladek@suse.com>; Sergey
> Senozhatsky <sergey.senozhatsky@gmail.com>; Steven Rostedt
> <rostedt@goodmis.org>; David Laight <David.Laight@aculab.com>; Andrew
> Morton <akpm@linux-foundation.org>; Intel Graphics Development <intel-
> gfx@lists.freedesktop.org>; DRI Development <dri-
> devel@lists.freedesktop.org>; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>; netdev <netdev@vger.kernel.org>;
> ath10k@lists.infradead.org; linux-wireless <linux-wireless@vger.kernel.org>;
> scsi <linux-scsi@vger.kernel.org>; Linux Fbdev development list <linux-
> fbdev@vger.kernel.org>; driverdevel <devel@driverdev.osuosl.org>; Linux
> FS Devel <linux-fsdevel@vger.kernel.org>
> Subject: Re: [PATCH v2 3/7] lib/hexdump.c: Optionally suppress lines of
> repeated bytes
> 
> Hi Alastair,
> 
> Thanks for your patch!

And thanks for your politeness :)

> 
> On Wed, May 8, 2019 at 9:04 AM Alastair D'Silva <alastair@au1.ibm.com>
> wrote:
> > From: Alastair D'Silva <alastair@d-silva.org>
> >
> > Some buffers may only be partially filled with useful data, while the
> > rest is padded (typically with 0x00 or 0xff).
> >
> > This patch introduces a flag to allow the supression of lines of
> > repeated bytes,
> 
> Given print_hex_dump() operates on entities of groupsize (1, 2, 4, or 8)
> bytes, wouldn't it make more sense to consider repeated groups instead of
> repeated bytes?

Maybe, it would mean that subsequent addresses may not be a multiple of rowsize though, which is useful.

> > which are replaced with '** Skipped %u bytes of value 0x%x **'
> 
> Using a custom message instead of just "*", like "hexdump" uses, will require
> preprocessing the output when recovering the original binary data by
> feeding it to e.g. "xxd".
> This may sound worse than it is, though, as I never got "xxd" to work without
> preprocessing anyway ;-)

I think showing the details of the skipped values is useful when reading the output directly. In situations where binary extracts are desired, the feature can always be disabled.

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva     msn: alastair@d-silva.org
blog: http://alastair.d-silva.org    Twitter: @EvilDeece




_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
