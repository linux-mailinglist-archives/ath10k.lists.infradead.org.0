Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D53C31D5E86
	for <lists+ath10k@lfdr.de>; Sat, 16 May 2020 06:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fU75b1lZykWT/am3mNF+HO0X4UKFWGT2rZjZboaRyws=; b=WgVXJfmAWBbakS
	32Uv3xq+6PYll/ZeluyHQn9LPc0P6BgGDGpygmCUssuDBmcq2+d54PpArcGI+md/qOSzzZiVL6s0E
	Fk4YWMnF/YGhJUz0phy+idz101PzrJpmxm16whtaraM0OSX1TvUdCbdvOtqdHRX/ZnLPSbOjFKw4z
	jVE8oZ6wDnz4XU+XEv2QhBrWBXGDJREmB2GDKY39+triz6d3/YUjFBONxbe5BIY8782Uq+IKesK1u
	3syRnEzDNNcQGJu1hUrnmgy+Yb/7aet3Fb/rUQ4T7Jq+2ImL4URPmSNu5JBOZWI9qYd5pU4TgsM//
	+u0rQUxOaxR7qRUYmhtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZoCE-0001UU-0t; Sat, 16 May 2020 04:13:10 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZoCA-0001Te-MJ
 for ath10k@lists.infradead.org; Sat, 16 May 2020 04:13:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589602384;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0bdKPgDfEqRHaFGgl0l5EeNjW2TBnfhGDrlpUieGoaY=;
 b=ZgvgHP2x0ESak87U9hXzdM3vfjhacFwEeDrFC8pmbRWlqjIZdA/ww+G+s/vB9ROPxaloIa
 YlSrOkLLwKWG1cvZapZ0wKJD1y5q6r3wFC9vXFz74CZuOOv5uycakRHKbU4KheSjOzV4PV
 fUW6gRr4uRvM24SExFB4yT5zgVNim7w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-356-rxgNGu-MNmaHc0lwQ6C4lw-1; Sat, 16 May 2020 00:13:00 -0400
X-MC-Unique: rxgNGu-MNmaHc0lwQ6C4lw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4CE45BFC2;
 Sat, 16 May 2020 04:12:57 +0000 (UTC)
Received: from x1-fbsd (unknown [10.3.128.10])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AFC4F5C1B0;
 Sat, 16 May 2020 04:12:46 +0000 (UTC)
Date: Sat, 16 May 2020 00:12:43 -0400
From: Rafael Aquini <aquini@redhat.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH v2 13/15] ath6kl: use new module_firmware_crashed()
Message-ID: <20200516041243.GM3182@x1-fbsd>
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-14-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515212846.1347-14-mcgrof@kernel.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_211306_800772_EF6765C3 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-wireless@vger.kernel.org, peterz@infradead.org,
 daniel.vetter@ffwll.ch, mchehab+samsung@kernel.org, will@kernel.org,
 bhe@redhat.com, ath10k@lists.infradead.org, tiwai@suse.de, mingo@redhat.com,
 dyoung@redhat.com, pmladek@suse.com, keescook@chromium.org, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, kvalo@codeaurora.org,
 netdev@vger.kernel.org, schlad@suse.de, linux-kernel@vger.kernel.org,
 jeyu@kernel.org, akpm@linux-foundation.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 09:28:44PM +0000, Luis Chamberlain wrote:
> This makes use of the new module_firmware_crashed() to help
> annotate when firmware for device drivers crash. When firmware
> crashes devices can sometimes become unresponsive, and recovery
> sometimes requires a driver unload / reload and in the worst cases
> a reboot.
> 
> Using a taint flag allows us to annotate when this happens clearly.
> 
> Cc: linux-wireless@vger.kernel.org
> Cc: ath10k@lists.infradead.org
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
> ---
>  drivers/net/wireless/ath/ath6kl/hif.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/wireless/ath/ath6kl/hif.c b/drivers/net/wireless/ath/ath6kl/hif.c
> index d1942537ea10..cfd838607544 100644
> --- a/drivers/net/wireless/ath/ath6kl/hif.c
> +++ b/drivers/net/wireless/ath/ath6kl/hif.c
> @@ -120,6 +120,7 @@ static int ath6kl_hif_proc_dbg_intr(struct ath6kl_device *dev)
>  	int ret;
>  
>  	ath6kl_warn("firmware crashed\n");
> +	module_firmware_crashed();
>  
>  	/*
>  	 * read counter to clear the interrupt, the debug error interrupt is
> -- 
> 2.26.2
> 
Acked-by: Rafael Aquini <aquini@redhat.com>


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
