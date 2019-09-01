Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A353DA4B73
	for <lists+ath10k@lfdr.de>; Sun,  1 Sep 2019 21:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Subject:To:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACVozuhlgWoEa2S1Xd67T/gJy0ti5598XmjlYp6oYe8=; b=EehfWy1UMyKlvo
	dv8LfG2jx8hFFqVLZETRoofU2OXlNNjEbt25cybtXvQKbRckZNGVz4IbZjwajnGqVEYXe6cFywiKx
	WH+UjygDPSEDxp8oz/SwhaIoeOOYlRSmj9+aS7pmOWxk6Kkj08P64o87tYsmpN8k3pD2eNxaC4uAw
	g+cMsD9njIjbS8YZ62Raq6H5qVZQgB0FNi41H3RoWJ8f9UDr4yGV9r1IEz/nTAokTeLM0UfyLgcJZ
	ayqE4QwwpffiohwlTvk1pUkJySJiHdoQjLlR5XqmH+81G7BKNf+YFLFUSTQKpvSK2LRKCOqIxnhuC
	KdP3z9vaHxxMn8uySMbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Vnd-0002cV-Hw; Sun, 01 Sep 2019 19:46:09 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4VnW-0002c8-GV
 for ath10k@lists.infradead.org; Sun, 01 Sep 2019 19:46:03 +0000
Received: by mail-io1-xd43.google.com with SMTP id u185so21337054iod.10
 for <ath10k@lists.infradead.org>; Sun, 01 Sep 2019 12:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=exATxEDmVr8tY6PaCJvDBgnaUkdR9wAvkh7ugWPQO1Q=;
 b=n7yyqs0ZR2xE5OTPJqC89jRK0yhI+I0BvGnhxY0Ky14lTnNmu4jhvTgsRNd+H7qPGY
 BUUxu56UaShPGyBxZCApNsbsVT8DzGDIzLMNOMlrbMDtXka40+8w5RztQ2T/bDqppqfu
 cIe/chZKnRBDLJD4khJtGaa5tLQUf0bRg31sKka3LPH3H3vxZ8dmu8D/LA1y/x4ezTPH
 M1Qz+ReQYjER9Ap4bJGNiDaB1qAI7aD6j9DYLgMHGFdA75NDBsTHZD2Hog4T2Jspm9hh
 7H9M3wOinAE2XM4v8Zl4tq4P4SVOpRjfVqRosJCGQ1jDsKFs3vq/edvGvxTdTcotmkr+
 N6UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=exATxEDmVr8tY6PaCJvDBgnaUkdR9wAvkh7ugWPQO1Q=;
 b=nnV7RDAURi4IdK4rUtoyPh2tNIx/HUbWx79TUhZmN6c8d9w0NAy0+wd84H7LNiM3bk
 1hgaWzhQsVQbKnk+duhyZMiv3w6UXH/ACJPRd9v40ZyWs/zuYJAR3IMb44bvMvpYkUv0
 ykiyj9JkwwE0yjcsEmPRvVPDb2/o48xfx3BULopHlslqb8vGBjwPZFbItgPg9WQGvbVS
 aJqh/+V7+HJAHTp3W8nwLp1cdd65VU4hO/FaCs3jmpzBlp0Lfmg87spKk15ATVXCiiL1
 FG4o/Wyd3IFIlMS2CX0TuLMZSMSc/fQrRDdGejKabD4HPta4IwLJFACNnbRAuIrAXlC2
 p50A==
X-Gm-Message-State: APjAAAW1jeigmXaRWUIDYMoCA3wFe3OnJaSB3f8rgqLmun1q5m55/QDW
 PXDmu6zDZx5O9XEIwlvLw+o=
X-Google-Smtp-Source: APXvYqx/IFGQPxOLc9+Miz1/cdCffAShZlB11L3b4JxW75EkyltoizXA0mq064XzbIjbHfL1fIpqXg==
X-Received: by 2002:a02:a909:: with SMTP id n9mr12910812jam.57.1567367160836; 
 Sun, 01 Sep 2019 12:46:00 -0700 (PDT)
Received: from [10.164.9.36] (cos-128-210-107-27.science.purdue.edu.
 [128.210.107.27])
 by smtp.gmail.com with ESMTPSA id d9sm9018277ioo.15.2019.09.01.12.45.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 01 Sep 2019 12:46:00 -0700 (PDT)
From: Hui Peng <benquike@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 2/2] Fix a NULL-ptr-deref bug in
 ath10k_usb_alloc_urb_from_pipe
References: <20190804003101.11541-1-benquike@gmail.com>
 <20190831213139.GA32507@roeck-us.net>
Message-ID: <8bc83a3f-2c14-1abe-9add-eb9cfca6917f@gmail.com>
Date: Sun, 1 Sep 2019 15:45:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190831213139.GA32507@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_124602_579514_52EC6223 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (benquike[at]gmail.com)
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
Cc: Mathias Payer <mathias.payer@nebelwelt.net>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, davem@davemloft.net, kvalo@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 8/31/19 5:31 PM, Guenter Roeck wrote:
> Hi,
>
> On Sat, Aug 03, 2019 at 08:31:01PM -0400, Hui Peng wrote:
>> The `ar_usb` field of `ath10k_usb_pipe_usb_pipe` objects
>> are initialized to point to the containing `ath10k_usb` object
>> according to endpoint descriptors read from the device side, as shown
>> below in `ath10k_usb_setup_pipe_resources`:
>>
>> for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
>>         endpoint = &iface_desc->endpoint[i].desc;
>>
>>         // get the address from endpoint descriptor
>>         pipe_num = ath10k_usb_get_logical_pipe_num(ar_usb,
>>                                                 endpoint->bEndpointAddress,
>>                                                 &urbcount);
>>         ......
>>         // select the pipe object
>>         pipe = &ar_usb->pipes[pipe_num];
>>
>>         // initialize the ar_usb field
>>         pipe->ar_usb = ar_usb;
>> }
>>
>> The driver assumes that the addresses reported in endpoint
>> descriptors from device side  to be complete. If a device is
>> malicious and does not report complete addresses, it may trigger
>> NULL-ptr-deref `ath10k_usb_alloc_urb_from_pipe` and
>> `ath10k_usb_free_urb_to_pipe`.
>>
>> This patch fixes the bug by preventing potential NULL-ptr-deref.
>>
>> Signed-off-by: Hui Peng <benquike@gmail.com>
>> Reported-by: Hui Peng <benquike@gmail.com>
>> Reported-by: Mathias Payer <mathias.payer@nebelwelt.net>
> This patch fixes CVE-2019-15099, which has CVSS scores of 7.5 (CVSS 3.0)
> and 7.8 (CVSS 2.0). Yet, I don't find it in the upstream kernel or in Linux
> next.
>
> Is the patch going to be applied to the upstream kernel anytime soon ? If
> not, is there reason to believe that its severity may not be as high as the
> CVSS score indicates ?
The score was assigned by MITRE.
Same as previous ones, it is under review, once passed, it will be applied.
> Thanks,
> Guenter
>
>> ---
>>  drivers/net/wireless/ath/ath10k/usb.c | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/drivers/net/wireless/ath/ath10k/usb.c b/drivers/net/wireless/ath/ath10k/usb.c
>> index e1420f67f776..14d86627b47f 100644
>> --- a/drivers/net/wireless/ath/ath10k/usb.c
>> +++ b/drivers/net/wireless/ath/ath10k/usb.c
>> @@ -38,6 +38,10 @@ ath10k_usb_alloc_urb_from_pipe(struct ath10k_usb_pipe *pipe)
>>  	struct ath10k_urb_context *urb_context = NULL;
>>  	unsigned long flags;
>>  
>> +	/* bail if this pipe is not initialized */
>> +	if (!pipe->ar_usb)
>> +		return NULL;
>> +
>>  	spin_lock_irqsave(&pipe->ar_usb->cs_lock, flags);
>>  	if (!list_empty(&pipe->urb_list_head)) {
>>  		urb_context = list_first_entry(&pipe->urb_list_head,
>> @@ -55,6 +59,10 @@ static void ath10k_usb_free_urb_to_pipe(struct ath10k_usb_pipe *pipe,
>>  {
>>  	unsigned long flags;
>>  
>> +	/* bail if this pipe is not initialized */
>> +	if (!pipe->ar_usb)
>> +		return NULL;
>> +
>>  	spin_lock_irqsave(&pipe->ar_usb->cs_lock, flags);
>>  
>>  	pipe->urb_cnt++;
>> -- 
>> 2.22.0
>>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
