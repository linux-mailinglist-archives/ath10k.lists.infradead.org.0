Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B234BA465B
	for <lists+ath10k@lfdr.de>; Sat, 31 Aug 2019 23:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9nwnzGvu4jgYru0+ySMQLknvmTvixOQjB8kQLLoHtM=; b=Kz2vnNlzgvM9uh
	zxS12JCisVYrlSq+JVhzaXVVBdVwiVJZcJNagx5eIOrdHhcfFof9hgemQK7nwqj3Dwxm0b8vUS920
	VUECeubxa9+TNCBLVSsDWj7K15nlVJApXOsxVaDtm1Jd20WS58vCP0mjvunG3Rt9jhKixthUqbO0u
	KH3uLfdj4i61cRf0FTHZrXGDpV9v/Eatbjn+6ATMbZ+tfjjKqmaYsro4d2a2SbPDNJpX/28G1P1OF
	1LqQREUSiF6VKphzjM4ISnxXRi4V8d0Vc+wyvp18jfBKG4i+AglYz/yYT70VjR0Tu3n+VSL6kRE0J
	oruRPmoCVnmaOx5k5VIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4AyS-00075Y-93; Sat, 31 Aug 2019 21:31:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4AyH-00074w-4I
 for ath10k@lists.infradead.org; Sat, 31 Aug 2019 21:31:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id w16so6716264pfn.7
 for <ath10k@lists.infradead.org>; Sat, 31 Aug 2019 14:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+MuizemRZBK7y4EPhOqkcNh+j3OitGqWAcLb/tYmDlY=;
 b=TYMs+h7XCkfnxW83esvEWCGtDELyZlP8PT7UFYEOYvWJlufam6JCZZ41EigPpYgj+H
 Rzh63zgCszHOICTd4uVZqVWkungT0vepiqQQCl/nQTxWDiCt9BMmgoAYswM889QuOJb+
 svvv2J3bs3yJ1CrrHkrxYcoKmJvq5lpybFwgjMLKnn3pjiMp0FMTLYxFrtkq7QxjUTeE
 uGsRPPmXTJ8McFUtRlfCx/jaLJi8/7IdMPKMn0vbAS4V+TCBsF0en1RJQgai/nipxFjQ
 hQRXoJPP6DXGDl0ruz9HqR/X7zg54oZmH3WmW3yzLzWnoWYqcNhVtu40J6kn1bf8PSzG
 5L7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=+MuizemRZBK7y4EPhOqkcNh+j3OitGqWAcLb/tYmDlY=;
 b=jUbML7Z//HvQhdi/fHUUSAszV5MU9nJ2wP6/b77Uw4Ybu8VEmKYcdJLW4eGzHrFIwR
 14vCgYmJiCSCtrPa4p13y41TRjRxONc3e90EF15YVNMZ/ozWb2Bz182W9pNKToLZSVQD
 JNLW07yEd2dd1/t9FXQJPkXC2+9qvaBkmHQgpQrwcyIHc6yWtf4PbRqUL3yQPmphoAQr
 rEzzpPDGgBuVLWs7p8UcRQysbSj0BbLtBIPEOYm52P3DHinzffby9KYrVhx59N+6rXH3
 U/n/6K9DjddhdqhA1GvWmuEvvYpJrJZmnc301Wl90NmCbY5cHfyZ2v82ApxKeJG7fMrN
 ZOjw==
X-Gm-Message-State: APjAAAU1BMP4OpsGJ/iZ0kz2nkNCotyk7zcTlOskg9a/Vqf27DThI6fo
 XnO5XzSxf9pyjR/qdKDTtJc=
X-Google-Smtp-Source: APXvYqx6dkz/egpBz/ct/gn7oOQDRpCEXLMhME5Je/qRTDtWscVFP6YpGe7O1hPZaouNPMMKrHAggg==
X-Received: by 2002:aa7:908b:: with SMTP id i11mr24179327pfa.199.1567287101743; 
 Sat, 31 Aug 2019 14:31:41 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id g14sm11062488pfb.150.2019.08.31.14.31.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 31 Aug 2019 14:31:40 -0700 (PDT)
Date: Sat, 31 Aug 2019 14:31:39 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Hui Peng <benquike@gmail.com>
Subject: Re: [PATCH 2/2] Fix a NULL-ptr-deref bug in
 ath10k_usb_alloc_urb_from_pipe
Message-ID: <20190831213139.GA32507@roeck-us.net>
References: <20190804003101.11541-1-benquike@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804003101.11541-1-benquike@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_143145_198572_88D57773 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 ath10k@lists.infradead.org, davem@davemloft.net, kvalo@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi,

On Sat, Aug 03, 2019 at 08:31:01PM -0400, Hui Peng wrote:
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

This patch fixes CVE-2019-15099, which has CVSS scores of 7.5 (CVSS 3.0)
and 7.8 (CVSS 2.0). Yet, I don't find it in the upstream kernel or in Linux
next.

Is the patch going to be applied to the upstream kernel anytime soon ? If
not, is there reason to believe that its severity may not be as high as the
CVSS score indicates ?

Thanks,
Guenter

> ---
>  drivers/net/wireless/ath/ath10k/usb.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/usb.c b/drivers/net/wireless/ath/ath10k/usb.c
> index e1420f67f776..14d86627b47f 100644
> --- a/drivers/net/wireless/ath/ath10k/usb.c
> +++ b/drivers/net/wireless/ath/ath10k/usb.c
> @@ -38,6 +38,10 @@ ath10k_usb_alloc_urb_from_pipe(struct ath10k_usb_pipe *pipe)
>  	struct ath10k_urb_context *urb_context = NULL;
>  	unsigned long flags;
>  
> +	/* bail if this pipe is not initialized */
> +	if (!pipe->ar_usb)
> +		return NULL;
> +
>  	spin_lock_irqsave(&pipe->ar_usb->cs_lock, flags);
>  	if (!list_empty(&pipe->urb_list_head)) {
>  		urb_context = list_first_entry(&pipe->urb_list_head,
> @@ -55,6 +59,10 @@ static void ath10k_usb_free_urb_to_pipe(struct ath10k_usb_pipe *pipe,
>  {
>  	unsigned long flags;
>  
> +	/* bail if this pipe is not initialized */
> +	if (!pipe->ar_usb)
> +		return NULL;
> +
>  	spin_lock_irqsave(&pipe->ar_usb->cs_lock, flags);
>  
>  	pipe->urb_cnt++;
> -- 
> 2.22.0
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
