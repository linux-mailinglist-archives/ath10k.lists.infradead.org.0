Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B26174EC
	for <lists+ath10k@lfdr.de>; Wed,  8 May 2019 11:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqS87oaejw9jTRyflN/hAcjs/d70uG9/KPjKj7yqNv0=; b=WJKup5rLOHlxwA
	gnF+n5P0CkvHcLzumaMZJBcuLNWSkbIfyj5wpweKvVSafz88eAWhrY/tLuFSZl54V6K567Q6mubr+
	ArLj4rACssYDMpOR3jCu9I+oy9BgW2WDRf9Sb9gxO8rR+JYYuzP6it+8GLdY/Xw6XROeFy11lnLpe
	TCVKobuyoL6bdjQdyAzKbClrQxwgE0DqCnBSWc7FukzV/Y91IR4gp0G0bzcQxa193Jx6cWRSvQoF8
	QzBYwxe2Qn7/BbIesTuDY96NC6V32VbyFGlYAEbqnqUUuCYY/h7rerJSBiygH58HXc49yuG8mOsuv
	AgBGkCGZxxNAGI/5aDqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIk5-0005Qd-TG; Wed, 08 May 2019 09:20:01 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOIk2-0005Ps-M9
 for ath10k@lists.infradead.org; Wed, 08 May 2019 09:20:00 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-20-fr8XoZJNPVSqTqULhvI6mg-1; Wed, 08 May 2019 10:19:52 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b::d117) by AcuMS.aculab.com
 (fd9f:af1c:a25b::d117) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed,
 8 May 2019 10:19:51 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Wed, 8 May 2019 10:19:51 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Alastair D'Silva' <alastair@au1.ibm.com>, "alastair@d-silva.org"
 <alastair@d-silva.org>
Subject: RE: [PATCH v2 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
Thread-Topic: [PATCH v2 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
Thread-Index: AQHVBWwP4v5z/92cRUaSHokPgMaM4aZg8Maw
Date: Wed, 8 May 2019 09:19:51 +0000
Message-ID: <c98a499a4e824bcd824d5ad53d037c67@AcuMS.aculab.com>
References: <20190508070148.23130-1-alastair@au1.ibm.com>
 <20190508070148.23130-5-alastair@au1.ibm.com>
In-Reply-To: <20190508070148.23130-5-alastair@au1.ibm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: fr8XoZJNPVSqTqULhvI6mg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_021958_987264_B2EADB55 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [207.82.80.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 Stanislaw Gruszka <sgruszka@redhat.com>, Petr Mladek <pmladek@suse.com>,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, Dan
 Carpenter <dan.carpenter@oracle.com>, Jose
 Abreu <Jose.Abreu@synopsys.com>, Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Benson Leung <bleung@chromium.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Alastair D'Silva
> Sent: 08 May 2019 08:02
> To: alastair@d-silva.org
...
> --- a/include/linux/printk.h
> +++ b/include/linux/printk.h
> @@ -480,13 +480,13 @@ enum {
>  	DUMP_PREFIX_OFFSET
>  };
> 
> -extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
> -			      int groupsize, char *linebuf, size_t linebuflen,
> -			      bool ascii);
> -
>  #define HEXDUMP_ASCII			(1 << 0)
>  #define HEXDUMP_SUPPRESS_REPEATED	(1 << 1)

These ought to be BIT(0) and BIT(1)

> +extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
> +			      int groupsize, char *linebuf, size_t linebuflen,
> +			      u64 flags);

Why 'u64 flags' ?
How many flags do you envisage ??
Your HEXDUMP_ASCII (etc) flags are currently signed values and might
get sign extended causing grief.
'unsigned int flags' is probably sufficient.

I've not really looked at the code, it seems OTT in places though.

If someone copies it somewhere where the performance matters
(I've user space code which is dominated by its tracing!)
then you don't want all the function calls and conditionals
even if you want some of the functionality.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
