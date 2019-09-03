Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE58A6AF5
	for <lists+ath10k@lfdr.de>; Tue,  3 Sep 2019 16:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EeaPwDko3FVb6gZxWAh19xZC1FjhGmTwTdBW4Xl2klY=; b=jyGtWqYzuj/q0Q
	XOJN8l3wEGGhrxxgeneBsm1hbMQTe0Ztxgo3HACrbavTGqjwbpWx+rwrWyGoQBGjuDi8IX9d2S+2q
	gMganfWIdiecgRHI6dm9XL9vVSCAZvpJThhkHZnc/JESrfe7cTjvQEmJHJDHDKAIdAwlmhSOrDpf1
	5K/19cIGN7gIsBFZuY9e/+HUU4tlho2c8quOU/RtD+RT3JbkxCP+quGBirOuYgPi3Q3a+ZXU4HbO0
	eTVPhqmdGUyC90Hc4FFToFhO0DvC6qkT+gG4v/T+ngV/kN2vZkafAENRmKt7nMsZ6RCOorzD7IFQY
	GoN8gYcEz6XWsFzIot7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59Zg-0006bb-JK; Tue, 03 Sep 2019 14:14:24 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59Zb-0006ad-P7
 for ath10k@lists.infradead.org; Tue, 03 Sep 2019 14:14:22 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 225AE60592; Tue,  3 Sep 2019 14:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567520058;
 bh=zXyYEMXgxwMe5kM6w/V7cIEreB+fNKc7naZiALNTuV0=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=KR7O4omXDdJVgVOktNwz2l07lzRkNlhUfAesBHmgWGrW+1kBMN5ePWKcLfbqlH0co
 KTODznEXOXvvhRRG9SN84/9k4cnI2ihOhBhdo/nF5s3e64dVguQsw/WgVdc+5f2pZh
 BMNwzSIVL/tg5UlLZGTkuQnY9y3WBlwfdVxz1yJE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4C3D56013C;
 Tue,  3 Sep 2019 14:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567520056;
 bh=zXyYEMXgxwMe5kM6w/V7cIEreB+fNKc7naZiALNTuV0=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=Y/go4IHw5C2+Czr7z7sw1YY2om5Qpc43pr14YwOkFu3rW4sx63XNo/9WjnRnjEz+h
 iOaeD/GBzmWPmUWxK3+bY5oueaSiTPPfbPWaG4cxjaHKbHJiOIIm3MULYdr94wPRpL
 HK760yQDod/5l0ijZ3wIKP/xYHSIgKWNfWytub+g=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4C3D56013C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] Fix a NULL-ptr-deref bug in
 ath10k_usb_alloc_urb_from_pipe
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190804003101.11541-1-benquike@gmail.com>
References: <20190804003101.11541-1-benquike@gmail.com>
To: Hui Peng <benquike@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190903141418.225AE60592@smtp.codeaurora.org>
Date: Tue,  3 Sep 2019 14:14:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_071419_879835_CC847C3C 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathias Payer <mathias.payer@nebelwelt.net>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, Hui Peng <benquike@gmail.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hui Peng <benquike@gmail.com> wrote:

> The `ar_usb` field of `ath10k_usb_pipe_usb_pipe` objects
> are initialized to point to the containing `ath10k_usb` object
> according to endpoint descriptors read from the device side, as shown
> below in `ath10k_usb_setup_pipe_resources`:
> 
> for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
>         endpoint = &iface_desc->endpoint[i].desc;
> 
>         // get the address from endpoint descriptor
>         pipe_num = ath10k_usb_get_logical_pipe_num(ar_usb,
>                                                 endpoint->bEndpointAddress,
>                                                 &urbcount);
>         ......
>         // select the pipe object
>         pipe = &ar_usb->pipes[pipe_num];
> 
>         // initialize the ar_usb field
>         pipe->ar_usb = ar_usb;
> }
> 
> The driver assumes that the addresses reported in endpoint
> descriptors from device side  to be complete. If a device is
> malicious and does not report complete addresses, it may trigger
> NULL-ptr-deref `ath10k_usb_alloc_urb_from_pipe` and
> `ath10k_usb_free_urb_to_pipe`.
> 
> This patch fixes the bug by preventing potential NULL-ptr-deref.
> 
> Signed-off-by: Hui Peng <benquike@gmail.com>
> Reported-by: Hui Peng <benquike@gmail.com>
> Reported-by: Mathias Payer <mathias.payer@nebelwelt.net>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

This causes a new warning, please build test your patches.

In file included from ./include/uapi/linux/posix_types.h:5,
                 from ./include/uapi/linux/types.h:14,
                 from ./include/linux/types.h:6,
                 from ./include/linux/list.h:5,
                 from ./include/linux/module.h:9,
                 from drivers/net/wireless/ath/ath10k/usb.c:8:
drivers/net/wireless/ath/ath10k/usb.c: In function 'ath10k_usb_free_urb_to_pipe':
./include/linux/stddef.h:8:14: warning: 'return' with a value, in function returning void
 #define NULL ((void *)0)
              ^
drivers/net/wireless/ath/ath10k/usb.c:64:10: note: in expansion of macro 'NULL'
   return NULL;
          ^~~~
drivers/net/wireless/ath/ath10k/usb.c:57:13: note: declared here
 static void ath10k_usb_free_urb_to_pipe(struct ath10k_usb_pipe *pipe,
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/11074657/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
