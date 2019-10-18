Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C016DC635
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 15:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EPxyCuyhAH1sQx9onISVFjQUT3BIYHU3FZ0KdGVadGw=; b=EkSr53fHVLF5DOXcMSHIXAb41
	bcmGrz1l9MKLxw0pY4AT/f61W68CatB/jSkXDNnZFDrL4CZUbnrPuyeRQEiApqWabV0XjTo7GjZEd
	VbAxmhjORTn4/Ou48ubYAQotT8aieQbH3iPripCkwXoQ0wgc1NTScXYzCCn75EL2AUMN+hNtiulFs
	XDUvkZDTSJqw4SSjOti6fwPE45BUDLcr+6814wGyquHVVUM35kUzQb1VKqJVJHknN3HBFjDfnazFJ
	Yt9RyxH30SF4Oyrsf83FjcFjCpVhmY3BWwpCBWg4xKWEsg/o15AMtqrh4FGPXhAbjo8WcpTmM9Ybm
	IwrZhtq0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLSQ5-0006I0-7r; Fri, 18 Oct 2019 13:35:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLSQ1-0006Hg-Jm
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 13:35:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id h195so3918539pfe.5
 for <ath10k@lists.infradead.org>; Fri, 18 Oct 2019 06:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=c+eVa0dX1kop+2tsq8KrMiGw2+4GgT6C7+BH1dW27GI=;
 b=aHYcGgCaJslTpUkam+cYawYj1EaRI6rZvzNRxBcoYsQsVAUeK30TqNO+a87PL2sdmc
 k2XY2kJOCh+NkZd51OE+x0vW1s818gsI/FX7cjt7ZvnB6/TcTa4BNHL8SEW7+hpfc9zU
 VHHR+s/zt5ZBbUTrobNAW1K+9T8y0+BGJMT9SkRnGPPZGIaWU8HKwrIuvcAepvtJy/8n
 gFF0X7vmGycIcihrIwt1ah57qxhOwhrGit/OOwQ446fA7z6gF96pIyhnDZph58x1s7Um
 utsmLi918pqdLq0aBxbimq8aDtAm/RKC8ojpHq6A/InesFi7iQzy7ln0UOrsGWryk95O
 Qszg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=c+eVa0dX1kop+2tsq8KrMiGw2+4GgT6C7+BH1dW27GI=;
 b=O70USkWp+VwWCjGUE8CXXee0fvpvoImGi1Jwwl+eLxLGZ1l7h/lULP0AG6JWsmk/k1
 zwih2onMk1PmdjGQ+0eDnxWg6Ehmo8Mi8ftbKmAkWP5hcV3eRbMBOX+X2466ZFsrKXPe
 ey5liHV9pTDo8h9U+MymOfzbCnDudy+4yDr1Y4KADBBRb3GiXKnoUONjJgVifkW8vHJI
 lbjMImjoNWbENq21/BMVKRLAVolGP6MRNapuNvblX9JNl8NYCGFSAUtekQAu3QQRFCEP
 lqGKsUjV072zVAcdL14aOOKgGFFeQZwuhjQyYf0UDV/X4cyPbHrK0Ej6Q4j/t6xc7+84
 aLXw==
X-Gm-Message-State: APjAAAV/Tp8sG+mxgPuInt6OD8Ca1gckMrf8wDqIU44V1b0zpoijBWda
 KUFEm7WfQpLBpPDNyDyxsfaBsJaK
X-Google-Smtp-Source: APXvYqwxSMNs5esLdkoYCG6yzU0JGtKPvY5fdNDQDDB062FoWx32+QY1xWLP+X4HM9LEsUJPEbDq3g==
X-Received: by 2002:a63:4d09:: with SMTP id a9mr9953861pgb.229.1571405748967; 
 Fri, 18 Oct 2019 06:35:48 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 r185sm6728195pfr.68.2019.10.18.06.35.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Oct 2019 06:35:48 -0700 (PDT)
Subject: Re: [PATCH 2/2] Fix a NULL-ptr-deref bug in
 ath10k_usb_alloc_urb_from_pipe
To: Kalle Valo <kvalo@codeaurora.org>
References: <20190804003101.11541-1-benquike@gmail.com>
 <20190831213139.GA32507@roeck-us.net>
 <87ftlgqw42.fsf@kamboji.qca.qualcomm.com>
 <20191018040530.GA28167@roeck-us.net>
 <875zkmxz6f.fsf@kamboji.qca.qualcomm.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <5e0e1760-07ee-efa1-1c33-3276dc81cc67@roeck-us.net>
Date: Fri, 18 Oct 2019 06:35:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <875zkmxz6f.fsf@kamboji.qca.qualcomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_063549_650136_DB4433A3 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 ath10k@lists.infradead.org, Hui Peng <benquike@gmail.com>, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 10/18/19 12:58 AM, Kalle Valo wrote:
> Guenter Roeck <linux@roeck-us.net> writes:
> 
>> On Sun, Sep 01, 2019 at 11:06:05AM +0300, Kalle Valo wrote:
>>> Guenter Roeck <linux@roeck-us.net> writes:
>>>
>>>> Hi,
>>>>
>>>> On Sat, Aug 03, 2019 at 08:31:01PM -0400, Hui Peng wrote:
>>>>> The `ar_usb` field of `ath10k_usb_pipe_usb_pipe` objects
>>>>> are initialized to point to the containing `ath10k_usb` object
>>>>> according to endpoint descriptors read from the device side, as shown
>>>>> below in `ath10k_usb_setup_pipe_resources`:
>>>>>
>>>>> for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
>>>>>          endpoint = &iface_desc->endpoint[i].desc;
>>>>>
>>>>>          // get the address from endpoint descriptor
>>>>>          pipe_num = ath10k_usb_get_logical_pipe_num(ar_usb,
>>>>>                                                  endpoint->bEndpointAddress,
>>>>>                                                  &urbcount);
>>>>>          ......
>>>>>          // select the pipe object
>>>>>          pipe = &ar_usb->pipes[pipe_num];
>>>>>
>>>>>          // initialize the ar_usb field
>>>>>          pipe->ar_usb = ar_usb;
>>>>> }
>>>>>
>>>>> The driver assumes that the addresses reported in endpoint
>>>>> descriptors from device side  to be complete. If a device is
>>>>> malicious and does not report complete addresses, it may trigger
>>>>> NULL-ptr-deref `ath10k_usb_alloc_urb_from_pipe` and
>>>>> `ath10k_usb_free_urb_to_pipe`.
>>>>>
>>>>> This patch fixes the bug by preventing potential NULL-ptr-deref.
>>>>>
>>>>> Signed-off-by: Hui Peng <benquike@gmail.com>
>>>>> Reported-by: Hui Peng <benquike@gmail.com>
>>>>> Reported-by: Mathias Payer <mathias.payer@nebelwelt.net>
>>>>
>>>> This patch fixes CVE-2019-15099, which has CVSS scores of 7.5 (CVSS 3.0)
>>>> and 7.8 (CVSS 2.0). Yet, I don't find it in the upstream kernel or in Linux
>>>> next.
>>>>
>>>> Is the patch going to be applied to the upstream kernel anytime soon ?
>>>
>>> Same answer as in patch 1:
>>>
>>> https://patchwork.kernel.org/patch/11074655/
>>>
>>
>> Sorry to bring this up again. The ath6k patch made it into the upstream
>> kernel, but the ath10k patch didn't. Did it get lost, or was there a
>> reason not to apply this patch ?
> 
> This patch had a build warning, you can see it from patchwork:
> 
> https://patchwork.kernel.org/patch/11074657/
> 
> Can someone fix it and resend the patch, please?
> 

Done.

Guenter

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
