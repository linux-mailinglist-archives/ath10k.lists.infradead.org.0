Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7362178CD
	for <lists+ath10k@lfdr.de>; Wed,  8 May 2019 13:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWlikqEE1vM/zkNrr5YMbpIaYIAxD0aR46IGjC+ZRLU=; b=g+bXUGwpR2gJap
	fJouV3fY2RBi8ii2exwC+ijuuuL47WS3Q7uOeQWu0NUAbtKhhYvzwfQmRTMXYT2aZtlPSGLvHdRH0
	yHGVpo0uq0RQCbfFZlJfWZTZAxXxIcx77W0tiHfoyTN7KT+U9LHzmmc+x4YqZtU5RzMnO3rfcMCmM
	NM5pcAlrkNnsgeIbdNhwKa8I0SqCJwxZyEbYGS7Aj0qV0ubH37FAWeNf3JnvYPFY4/gKskbeGByjI
	rHlVAFGTLN/i3QiUOvGuObM99zUDPv9MC4hpXctLQsGGhkF7H8rnZB02+asRGiWBsQJMa8lMhKdfD
	rQzqXzQfTUOYj+iZgIsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOL51-0007IR-Jz; Wed, 08 May 2019 11:49:47 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOL4X-0006el-EB
 for ath10k@bombadil.infradead.org; Wed, 08 May 2019 11:49:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GokriSx99OtTYNclvVAWT2CMn9llMAI4oT+y0253DpQ=; b=DZME5cO3v0nHVz1kMwCWRhVzgu
 qal6gcvsFapPHxiNwjQTrZtkSzDO8pAc03pyjww7YWMDGNzGOOshuFJuI84Q87y5YDjYEjaiDGRav
 f/MSdQTHZTeiPLRrmbuYcUdEg9Q9LWU02KPbcuBSPlVtfk1sLEdz39Ew5jxktU4tWwl7ghnT6WSwx
 gDW4NNqCkFzbIlWcFLcIZNSu9WXtZrjldsuo6rzyaZCyDx4sIjHrcU2fxwIrwcMXzc6dCHC+id8vP
 79qZPci3M+3pb8eeca+Te3uZmKGKZ1Fgxn387GcculWRPY+oDZXxOJ6U+V0YeeuwLbDoG4yp/ZY+Z
 B/Gav28w==;
Received: from [66.55.73.32] (helo=ushosting.nmnhosting.com)
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOL4U-0006ZI-Bx
 for ath10k@lists.infradead.org; Wed, 08 May 2019 11:49:15 +0000
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id DDDBC2DC005C;
 Wed,  8 May 2019 07:41:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1557315692;
 bh=qGJ1gft/kRGbomR5Gk2AnhkGNE1jEj5BAJb5oyv/unk=;
 h=From:To:Cc:References:In-Reply-To:Subject:Date:From;
 b=D+zmQJifkhs/X6hPId/5NOett9ofrnDtUcWmjqgDQKc3MmGh9k5veKFfjfUsCtBRf
 FZFf+wE05oyytQb7I5QSxpb8YxDDNMe6ras9l+lOOdI2I4wiVfcvVdJcxhmp074fZd
 eRfG22Mm+p4YPGTk3H20/tVbabqxfxaCBFrcWbKEadAx4wluAml+keUbhh37xxzXH1
 jtnTkpsPpKimyEG7DXFY/jeFQeaJwfUkTK4Y4DMRUEvIV24VAnYN4wKYIXpQo7fIGQ
 VGyU0Ocndb2O+pHLhMLiHTXnhHlfJTLiOr/fkcrymF6eMLuTxDHq2RU1TzLj/TXOk3
 0DHxjm3K4DlaD2QfxJxOwBDRpmGvsUA8eIUifWm1Sn5HQZJb+LlRhYErwP2ZYDV3+C
 49RUeWCn3gF4iQu8ftb0irqDnHSyUrWFqyq4nWWgrsBOv2CSo+ZX1rkDkY6YAan0OZ
 R5UsEzcVLiOBK726gA7kr8p0v149w9/LtDfcs4XWO4JVXsDJSNWwTjckKovyK9ONYa
 5CpWuRo7c7nrXNmuqkuBSzsJddB0icDr3C5q9J7R5hsEiM6ZjPf1kRCxaGMNO/56Lw
 6LX/sDBs5uEivJwatqdQjgbEIoWnyCHietGWGP4y8wVI8SHGxaoZVonCIdFTE8Jl3v
 W7xdnNfZrPNxEU3wwX3/F4u4=
Received: from Hawking (ntp.lan [10.0.1.1]) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x48BfEeD017421
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 8 May 2019 21:41:15 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
From: "Alastair D'Silva" <alastair@d-silva.org>
To: "'David Laight'" <David.Laight@ACULAB.COM>,
 "'Alastair D'Silva'" <alastair@au1.ibm.com>
References: <20190508070148.23130-1-alastair@au1.ibm.com>
 <20190508070148.23130-5-alastair@au1.ibm.com>
 <c98a499a4e824bcd824d5ad53d037c67@AcuMS.aculab.com>
In-Reply-To: <c98a499a4e824bcd824d5ad53d037c67@AcuMS.aculab.com>
Subject: RE: [PATCH v2 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
Date: Wed, 8 May 2019 21:41:15 +1000
Message-ID: <0a1c01d50592$f90f6f00$eb2e4d00$@d-silva.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGz7QD7bMLLz3XdMyQiMIIzLY+D4AHts+RHAcfZVGymhZij0A==
Content-Language: en-au
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Wed, 08 May 2019 21:41:26 +1000 (AEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_074914_556034_805648C1 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: linux-fbdev@vger.kernel.org, 'Stanislaw Gruszka' <sgruszka@redhat.com>,
 'Petr Mladek' <pmladek@suse.com>, 'David Airlie' <airlied@linux.ie>,
 'Joonas Lahtinen' <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, 'Jassi Brar' <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 'Dan Carpenter' <dan.carpenter@oracle.com>,
 'Jose Abreu' <Jose.Abreu@synopsys.com>,
 'Tom Lendacky' <thomas.lendacky@amd.com>,
 "'James E.J. Bottomley'" <jejb@linux.ibm.com>,
 'Jani Nikula' <jani.nikula@linux.intel.com>, linux-fsdevel@vger.kernel.org,
 'Steven Rostedt' <rostedt@goodmis.org>,
 'Rodrigo Vivi' <rodrigo.vivi@intel.com>, 'Benson Leung' <bleung@chromium.org>,
 'Kalle Valo' <kvalo@codeaurora.org>, 'Karsten Keil' <isdn@linux-pingi.de>,
 "'Martin K. Petersen'" <martin.petersen@oracle.com>,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 'Sergey Senozhatsky' <sergey.senozhatsky@gmail.com>,
 'Daniel Vetter' <daniel@ffwll.ch>, netdev@vger.kernel.org,
 'Enric Balletbo i Serra' <enric.balletbo@collabora.com>,
 'Andrew Morton' <akpm@linux-foundation.org>,
 "'David S. Miller'" <davem@davemloft.net>,
 'Alexander Viro' <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: David Laight <David.Laight@ACULAB.COM>
> Sent: Wednesday, 8 May 2019 7:20 PM
> To: 'Alastair D'Silva' <alastair@au1.ibm.com>; alastair@d-silva.org
> Cc: Jani Nikula <jani.nikula@linux.intel.com>; Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com>; Rodrigo Vivi <rodrigo.vivi@intel.com>;
> David Airlie <airlied@linux.ie>; Daniel Vetter <daniel@ffwll.ch>; Dan
> Carpenter <dan.carpenter@oracle.com>; Karsten Keil <isdn@linux-
> pingi.de>; Jassi Brar <jassisinghbrar@gmail.com>; Tom Lendacky
> <thomas.lendacky@amd.com>; David S. Miller <davem@davemloft.net>;
> Jose Abreu <Jose.Abreu@synopsys.com>; Kalle Valo
> <kvalo@codeaurora.org>; Stanislaw Gruszka <sgruszka@redhat.com>;
> Benson Leung <bleung@chromium.org>; Enric Balletbo i Serra
> <enric.balletbo@collabora.com>; James E.J. Bottomley
> <jejb@linux.ibm.com>; Martin K. Petersen <martin.petersen@oracle.com>;
> Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Alexander Viro
> <viro@zeniv.linux.org.uk>; Petr Mladek <pmladek@suse.com>; Sergey
> Senozhatsky <sergey.senozhatsky@gmail.com>; Steven Rostedt
> <rostedt@goodmis.org>; Andrew Morton <akpm@linux-foundation.org>;
> intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; linux-
> kernel@vger.kernel.org; netdev@vger.kernel.org;
> ath10k@lists.infradead.org; linux-wireless@vger.kernel.org; linux-
> scsi@vger.kernel.org; linux-fbdev@vger.kernel.org;
> devel@driverdev.osuosl.org; linux-fsdevel@vger.kernel.org
> Subject: RE: [PATCH v2 4/7] lib/hexdump.c: Replace ascii bool in
> hex_dump_to_buffer with flags
> 
> From: Alastair D'Silva
> > Sent: 08 May 2019 08:02
> > To: alastair@d-silva.org
> ...
> > --- a/include/linux/printk.h
> > +++ b/include/linux/printk.h
> > @@ -480,13 +480,13 @@ enum {
> >  	DUMP_PREFIX_OFFSET
> >  };
> >
> > -extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
> > -			      int groupsize, char *linebuf, size_t linebuflen,
> > -			      bool ascii);
> > -
> >  #define HEXDUMP_ASCII			(1 << 0)
> >  #define HEXDUMP_SUPPRESS_REPEATED	(1 << 1)
> 
> These ought to be BIT(0) and BIT(1)

Thanks, I'll address that.

> 
> > +extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
> > +			      int groupsize, char *linebuf, size_t linebuflen,
> > +			      u64 flags);
> 
> Why 'u64 flags' ?
> How many flags do you envisage ??
> Your HEXDUMP_ASCII (etc) flags are currently signed values and might get
> sign extended causing grief.
> 'unsigned int flags' is probably sufficient.

I was trying to avoid having to change the prototype again in the future, but it's not a big deal, if enough work goes in to require more than 32 bits, it can be updated at that point.

> 
> I've not really looked at the code, it seems OTT in places though.

I'll wait for more concrete criticisms here, this it a bit too vague to take any action on.

> If someone copies it somewhere where the performance matters (I've user
> space code which is dominated by its tracing!) then you don't want all the
> function calls and conditionals even if you want some of the functionality.

Calling hexdump (even in it's unaltered form) in performance critical code is always going to suck. As you mentioned before, it's all based around printf. A performance conscious user would be better off building their code around hex_asc_hi/lo instead (see lib/vsprintf.c:hex_string).

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva     msn: alastair@d-silva.org
blog: http://alastair.d-silva.org    Twitter: @EvilDeece




_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
