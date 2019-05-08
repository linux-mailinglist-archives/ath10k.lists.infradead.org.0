Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C8F174C7
	for <lists+ath10k@lfdr.de>; Wed,  8 May 2019 11:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9UTyHwc/7miz0zYT+ZeoLg1XePPlRiQDQmqAlDlqoYI=; b=DfFEQLj+YUN1bV
	SkrrA3DNPV2Eo9NrLCnO370gYwhOhOoYwt+tdGgY7a0+x1NHdhEvBqTjWFjdD2CYxVeX7MeQ+9LmQ
	9DwoCwptO36FnUg6zI2vOWKWpr3JGxPwF8MB/TWWe234gETAhOSQQ00CxChS8ILwivmiK5T4g7Uc+
	f1qZvFkPCHc6qu50tzI5PMM0c63Qs+GuABiOtCvC0ufFWLwEO4kB2XCBCOEDZqOOOtD5SF0GmCthB
	BfbEjolIhD/C/Tsda1Ccp9ZPV611yyoIbgitiH5eNKeVgjBX4GaqCmYLUlkk8/eGJbOkUOoP8qOdC
	m36lfdLWEOh0n2hk1KWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIej-0003Qd-GL; Wed, 08 May 2019 09:14:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOIee-0003QG-Sq
 for ath10k@lists.infradead.org; Wed, 08 May 2019 09:14:26 +0000
Received: from localhost (unknown [84.241.196.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC7AE20656;
 Wed,  8 May 2019 09:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557306863;
 bh=zepv94OHfkba3xbpvBTN7GO3YZ8l+U6nzIqdU9DMmB8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wa4AAzW6bKcVh7iubvvk3GvJcvX9eh9Ton6QrU6XEE4kYPzzMrW5IHFBOY1vybSPG
 /wtvTtJVfunzm6H4nT5HQc0T+zSmcxhBr+uYF1athP68gTxTE8SNNLlVwcpysi2lYW
 IFxa5soU7yPrrlENXIMWDlxa1//6jkZdyOT5fL7A=
Date: Wed, 8 May 2019 11:14:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alastair D'Silva <alastair@au1.ibm.com>
Subject: Re: [PATCH v2 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
Message-ID: <20190508091419.GA1615@kroah.com>
References: <20190508070148.23130-1-alastair@au1.ibm.com>
 <20190508070148.23130-5-alastair@au1.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508070148.23130-5-alastair@au1.ibm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_021424_952247_39842B1A 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, alastair@d-silva.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Petr Mladek <pmladek@suse.com>, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Steven Rostedt <rostedt@goodmis.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Benson Leung <bleung@chromium.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@aculab.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 05:01:44PM +1000, Alastair D'Silva wrote:
> From: Alastair D'Silva <alastair@d-silva.org>
> 
> In order to support additional features in hex_dump_to_buffer, replace
> the ascii bool parameter with flags.
> 
> Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
> ---
>  drivers/gpu/drm/i915/intel_engine_cs.c            |  2 +-
>  drivers/isdn/hardware/mISDN/mISDNisar.c           |  6 ++++--
>  drivers/mailbox/mailbox-test.c                    |  2 +-
>  drivers/net/ethernet/amd/xgbe/xgbe-drv.c          |  2 +-
>  drivers/net/ethernet/synopsys/dwc-xlgmac-common.c |  2 +-
>  drivers/net/wireless/ath/ath10k/debug.c           |  3 ++-
>  drivers/net/wireless/intel/iwlegacy/3945-mac.c    |  2 +-
>  drivers/platform/chrome/wilco_ec/debugfs.c        |  2 +-
>  drivers/scsi/scsi_logging.c                       |  8 +++-----
>  drivers/staging/fbtft/fbtft-core.c                |  2 +-
>  fs/seq_file.c                                     |  3 ++-
>  include/linux/printk.h                            |  8 ++++----
>  lib/hexdump.c                                     | 15 ++++++++-------
>  lib/test_hexdump.c                                |  5 +++--
>  14 files changed, 33 insertions(+), 29 deletions(-)

For staging stuff:

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
