Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CCB5228C
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 07:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k6kh2GHI/4QestnxPe3/v/1wN7gqhprWVNp3/ZkaTo0=; b=EoZ5IJI7Af4hol
	zYx6OeconzIsC2o/p35Xp6taB3vJSgCRUbt+H1wgHNoKZdByTXvwS35hVnIu/ZLfgykZwUwNUrETp
	FedMa17bFrbJEXy4hTN0U0rGyh1PRI3SH55YQeWRBba7Ft8saRGBE26JIUAG+4fJFbPQ1CqESBXUr
	axbM5pISdVYaCg/aKaPe/FCH7MkxCllBxtIdfvBOVxoYeAb3lRM69C+ACKjJSH+5Tufq4SrxHxEYU
	V70u3W/wZ30sYTp2kD6hqGgfC7YMT+T31xUmKTamYs8aThf7ihNIk2BISFOZCvk8UADmHDTQoEhPR
	QoJjx1Ap9jm304Xa1kzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfdfe-0003zA-1s; Tue, 25 Jun 2019 05:07:06 +0000
Received: from ushosting.nmnhosting.com ([66.55.73.32])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfdfY-0003yb-Hs
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 05:07:02 +0000
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id A2C4A2DC005B;
 Tue, 25 Jun 2019 01:06:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1561439202;
 bh=ciUqZASdiG9qaTP/PKSFriQCA2JczzepFyCfhQPhnVk=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=K4gLgQWu25eleaN8DIeSz5E82cI8K0smK5D3ZMpLjBFJrknUqV9V+eylalpbQXRAM
 nmEfhzWvgda7JuxTqo/SzkupuQp4odwSE5eKSMo5RCVBzSG9hQgA/2yqBEFIexBxOT
 i9vCKnVN9a9mDTxg3U1oNbYXq0GD4w40bt+gnrvVfRfHlUt7CzmQxv2ITaF01BU5v0
 qZonJ/jE4kiTWy7bQrfjqbazrpEygb0DU6gCobQX5qblC7fRwhvF4Sq1I5FxM2qyhg
 8GI0GBlW0Lvvwa7ilfXZ4x3AaZQNQL9XQbQNvJOLXG+h38c4UU6rLCHqjUeiUTV7I9
 9YOGia5GJedY1w/4Tr8d8CBihfAg/swFyuKTugjzhJ3nduRG/LNj+cPcUZRU9QpFNl
 2JMD91ZFIq08WBl0d90UMFWl7mSZfbGc4bFGkopV/6ReOk/vUtz69zueTfYfrFWzSU
 s+Er1jtAFNs/BmK+rQ0XkTqVSRlwAjaqyFZOLj6kw381sp7VTpaEupsP/8y3Je8A6v
 4UugchG2zDEWWEYN/tFyApbfSvLIe6pKK/LvgAQvjqkwlyRa0sBz8pzBqHKDxO1zyV
 JYMRMzTpGfe9MrWWhqER/P+y3YGfeX1gbEPw1Scpeut1XCY2CNUcsoDJlTQlBXKJk2
 DpMk176r7iASSHUrxiLPF0zo=
Received: from adsilva.ozlabs.ibm.com (static-82-10.transact.net.au
 [122.99.82.10] (may be forged)) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x5P56DR4022607
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 25 Jun 2019 15:06:29 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
Message-ID: <746098160c4ff6527d573d2af23c403b6d4e5b80.camel@d-silva.org>
Subject: Re: [PATCH v4 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
From: "Alastair D'Silva" <alastair@d-silva.org>
To: Joe Perches <joe@perches.com>
Date: Tue, 25 Jun 2019 15:06:13 +1000
In-Reply-To: <3340b520a57e00a483eae170be97316c8d18c22c.camel@perches.com>
References: <20190625031726.12173-1-alastair@au1.ibm.com>
 <20190625031726.12173-5-alastair@au1.ibm.com>
 <3340b520a57e00a483eae170be97316c8d18c22c.camel@perches.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Tue, 25 Jun 2019 15:06:37 +1000 (AEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_220700_622945_9107BAAE 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
> 
> 

The change actions Jani's suggestion:
https://lkml.org/lkml/2019/6/20/343


-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva    
Twitter: @EvilDeece
blog: http://alastair.d-silva.org



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
