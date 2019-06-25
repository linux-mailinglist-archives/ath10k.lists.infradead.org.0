Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC55052274
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 07:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUSEaZ1hjQbgApEQY0s/Fda+WNWPdQeIlBL3ta28VVQ=; b=euhQZwAnLtpDuH
	Mbbgob256gES4MnLNJFJ/rt2Ey569FeemxXM3NM8C7JDI68vOXrfBsYSQWv1DsxRot5AShfRa3E1x
	nCjuBb2ZeuV50sUFMj4XB1tws4c+JLSarhFWMWxnyErKlxCB2+X7ReGcmP1eyx9QIRyhv+o9iPr3z
	DwNA7ZMOUGkHTOhnxPh5PXQ5/uXxC/ecbgl/vmuV9hkGC0HNtrdElTrKmFhJGpaOM43Wx72R3+RPY
	vG0FNDIFa8B8QlITnfaCt/4q3rk8bgIc8JBVyTfysr7nMtPMDmrcuEmB371w+/OBThbdRUiL+rd9z
	nNHNNbnwM8LPaEZ8+Iqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfdai-0002Po-Vo; Tue, 25 Jun 2019 05:02:01 +0000
Received: from smtprelay0183.hostedemail.com ([216.40.44.183]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfdaW-0002MW-Ti
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 05:01:50 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 8D503180295A0;
 Tue, 25 Jun 2019 05:01:46 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 
X-HE-Tag: line56_832b716e87755
X-Filterd-Recvd-Size: 3467
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Tue, 25 Jun 2019 05:01:41 +0000 (UTC)
Message-ID: <3340b520a57e00a483eae170be97316c8d18c22c.camel@perches.com>
Subject: Re: [PATCH v4 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
From: Joe Perches <joe@perches.com>
To: Alastair D'Silva <alastair@au1.ibm.com>, alastair@d-silva.org
Date: Mon, 24 Jun 2019 22:01:40 -0700
In-Reply-To: <20190625031726.12173-5-alastair@au1.ibm.com>
References: <20190625031726.12173-1-alastair@au1.ibm.com>
 <20190625031726.12173-5-alastair@au1.ibm.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_220149_029943_B3B899D0 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.183 listed in list.dnswl.org]
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

On Tue, 2019-06-25 at 13:17 +1000, Alastair D'Silva wrote:
> From: Alastair D'Silva <alastair@d-silva.org>
> 
> In order to support additional features, rename hex_dump_to_buffer to
> hex_dump_to_buffer_ext, and replace the ascii bool parameter with flags.
[]
> diff --git a/drivers/gpu/drm/i915/intel_engine_cs.c b/drivers/gpu/drm/i915/intel_engine_cs.c
[]
> @@ -1338,9 +1338,8 @@ static void hexdump(struct drm_printer *m, const void *buf, size_t len)
>  		}
>  
>  		WARN_ON_ONCE(hex_dump_to_buffer(buf + pos, len - pos,
> -						rowsize, sizeof(u32),
> -						line, sizeof(line),
> -						false) >= sizeof(line));
> +						rowsize, sizeof(u32), line,
> +						sizeof(line)) >= sizeof(line));

Huh?  Why do this?

> diff --git a/drivers/isdn/hardware/mISDN/mISDNisar.c b/drivers/isdn/hardware/mISDN/mISDNisar.c
[]
> @@ -70,8 +70,9 @@ send_mbox(struct isar_hw *isar, u8 his, u8 creg, u8 len, u8 *msg)
>  			int l = 0;
>  
>  			while (l < (int)len) {
> -				hex_dump_to_buffer(msg + l, len - l, 32, 1,
> -						   isar->log, 256, 1);
> +				hex_dump_to_buffer_ext(msg + l, len - l, 32, 1,
> +						       isar->log, 256,
> +						       HEXDUMP_ASCII);

Again, why do any of these?

The point of the wrapper is to avoid changing these.



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
