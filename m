Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA6A55D64
	for <lists+ath10k@lfdr.de>; Wed, 26 Jun 2019 03:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85iPiJoKccqe3Gp/+ugKpmzzCddKRbLz8MTdFjbkepU=; b=TJRNZyTwDLvdsJ
	QyyaS6kyDmpsCKi/9t135ohwmqvo3bUyj5p/FCDNNDhN9lt8T1kUGX3leid/hMR6BX1U4GpyTtG48
	F2tIeSI/MAvohkrB+jeJgz2zRflZJme+T44jTy1TkLx2QWfzaF+0YkRC2C8Xctpx9zkS5YpOIu3RO
	bfLAaWG5YtxPg9JlFihTa5jv/2O1TlYs9750zarMmpAnvWSsYueKb5mON0emVfRgOHSopoSQXsxf7
	oSnjNP8CEBGjxW/3tjPLofRAaaiNXZCejHuP4qPfaKUpKby9h2p1kPMairEYRc30CPf5fvn+RBPv2
	gzLfVGRRSMPBC/9BDb5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfwjX-0004Xk-Pr; Wed, 26 Jun 2019 01:28:23 +0000
Received: from ushosting.nmnhosting.com ([66.55.73.32])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfwjM-0004VJ-Dp
 for ath10k@lists.infradead.org; Wed, 26 Jun 2019 01:28:16 +0000
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id 723DA2DC0076;
 Tue, 25 Jun 2019 21:28:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1561512491;
 bh=97Ya+I+vpFl+/ylzKO5YVmt37vPd4AhTqo0+iiUyHFE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=EAancEyWaLZKLsqaXUD4dxjOqzDLwe4lEdFjaUlTi0IPpwEjhV2Lo5HHFrHoHBh2g
 3MDeWki71oPJXdWUsJWNMYOx8NwJHQt5G3pmWQB5uPepknhUpUhYU0mYJXOBwDiK6A
 ODDQvsJyAK0AIfYDx3e+IsOTOY7NiAdvATlbPxipbpKq304o7wbTnKpJt0EUaWhn8e
 sMrKgGepRlTB2n1hCKRdNLkJgZVLQXBGvgA/XI9Z7Mk4SODNPlWoH7HUbrUbYB6t3a
 DzLfo/OgyaAE08wRoYauv2h+LD5rQhqPCF0v+stxxp4hq5ugyHWnh7GEew5OQPKnTX
 cIRx/ZrPOQMxal2eJ1J79ak9/Xqc95+dEEj2W5TlCayJ6qdDL1Luzk9j5siHQakecd
 HlisONDRWhssRGUxa/YJ7248r7KMIi1R6WNO955WFW68WlcZaaAQNvRo+WkbKhnqqd
 PHbBrJM22zjhIfonkwMmksCc4pycRvJe5PH/jpbbdnhui2wrG6A0Q/ay6ewcb3v+XY
 s9pyCYwZuY2K1S6TQriWyXgPwBvVkkOZhQIx35frrWoBacHJeNXHSSACxRRi0VdV8h
 o7ttOA5+FQFRd6i5TqT/JpwzhNRyf2qBzskdYrlE2qP+idDjNSR2mvltiXOnrL51ff
 OIl4Mj+FZzR5JoYFtWTWvI/U=
Received: from adsilva.ozlabs.ibm.com (static-82-10.transact.net.au
 [122.99.82.10] (may be forged)) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x5Q1RmGQ029656
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Jun 2019 11:28:04 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
Message-ID: <1166c97d5f0ff750e5871937eb1d7e3c0423bbdd.camel@d-silva.org>
Subject: Re: [PATCH v4 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
From: "Alastair D'Silva" <alastair@d-silva.org>
To: Joe Perches <joe@perches.com>
Date: Wed, 26 Jun 2019 11:27:48 +1000
In-Reply-To: <3340b520a57e00a483eae170be97316c8d18c22c.camel@perches.com>
References: <20190625031726.12173-1-alastair@au1.ibm.com>
 <20190625031726.12173-5-alastair@au1.ibm.com>
 <3340b520a57e00a483eae170be97316c8d18c22c.camel@perches.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Wed, 26 Jun 2019 11:28:07 +1000 (AEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_182812_502569_90FB46C6 
X-CRM114-Status: GOOD (  10.16  )
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
> > In order to support additional features, rename hex_dump_to_buffer
> > to
> > hex_dump_to_buffer_ext, and replace the ascii bool parameter with
> > flags.
> []
> > diff --git a/drivers/gpu/drm/i915/intel_engine_cs.c
> > b/drivers/gpu/drm/i915/intel_engine_cs.c
> []
> > @@ -1338,9 +1338,8 @@ static void hexdump(struct drm_printer *m,
> > const void *buf, size_t len)
> >  		}
> >  
> >  		WARN_ON_ONCE(hex_dump_to_buffer(buf + pos, len - pos,
> > -						rowsize, sizeof(u32),
> > -						line, sizeof(line),
> > -						false) >=
> > sizeof(line));
> > +						rowsize, sizeof(u32),
> > line,
> > +						sizeof(line)) >=
> > sizeof(line));
> 
> Huh?  Why do this?

The ascii parameter was removed from the simple API as per Jani's
suggestion. The remainder was reformatted to avoid exceeding the line
length limits.

> 
> > diff --git a/drivers/isdn/hardware/mISDN/mISDNisar.c
> > b/drivers/isdn/hardware/mISDN/mISDNisar.c
> []
> > @@ -70,8 +70,9 @@ send_mbox(struct isar_hw *isar, u8 his, u8 creg,
> > u8 len, u8 *msg)
> >  			int l = 0;
> >  
> >  			while (l < (int)len) {
> > -				hex_dump_to_buffer(msg + l, len - l,
> > 32, 1,
> > -						   isar->log, 256, 1);
> > +				hex_dump_to_buffer_ext(msg + l, len -
> > l, 32, 1,
> > +						       isar->log, 256,
> > +						       HEXDUMP_ASCII);
> 
> Again, why do any of these?
> 
> The point of the wrapper is to avoid changing these.

Jani made a pretty good point that about half the callers didn't want
an ASCII dump, and presenting a simplified API makes sense.

I would actually put forward that we consider dropping rowsize from the
simplified API too, as most callers use 32, and those that use 16 would
probably be OK with 32.

Your proposal, on the other hand, only makes sense if there were many
callers, and even so, not in the form that you presented, since that
result in a mix of booleans & bitfields that you were critical of.

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva    
Twitter: @EvilDeece
blog: http://alastair.d-silva.org



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
