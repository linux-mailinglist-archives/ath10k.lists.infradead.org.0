Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5249BDBBB5
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 06:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQFhNN6sp63xRDz7HGYevA60Tq/7H5gRZ+WrRdOEvxw=; b=pQAkc/0JWDAdFC
	djk4Sr1AgJgXYuAnEEw+SS819olV2GqleskFt2xSPQxjQtAni9w5QhJvAm8WX9HLsG329TNAXn/ov
	o0AsdohQQF8ZxMljCMyo72MpobwReguUeKVPbiDJzysUYQIoiQO585dEUT2+7Wzf3CdD3O/l+h84W
	Q2BcyjNLnEcYdG6weioekGnDzvzBz79T4gMgoojsgI2065VkZ9L/AX16UBwXoz7FuGMwTDN4WGem5
	9C0xrCn5oOCx2PcmDdhsdBhbafETe6MBQDkX311LKCQ0k7QjVVygdytpO3jHAva5tuhKBSXH/9U8b
	KF4azJEqoejTdzbK791w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLJWE-0002Ze-Ff; Fri, 18 Oct 2019 04:05:38 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLJWA-0002Z9-BM
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 04:05:35 +0000
Received: by mail-pg1-x543.google.com with SMTP id i32so2573497pgl.10
 for <ath10k@lists.infradead.org>; Thu, 17 Oct 2019 21:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Dxf8j2dEp3gTKMidNHZOyi9cs38t6awcBjwDt5BGhco=;
 b=kRzCl2sU8HhkN2FXU+AB6DHrD5pGZGK8OzQmjA2iRV6j8bod6JDJwCXwZC8OqJep3i
 QNOn6QPM8Bq+xIddUidzOPgmu00nR5ZPwUV7rrfcXd2kzv461ggEh4UgeDVYvC0n30Pq
 RaU1oHJXZyKXREXUNgwJr6IkVla6HHwlvRVaZ5SDQcJwXNjhLA+evDK9MEmFovwM5Bfc
 HLqGNtPyecQjdt66rCHEz+h+1dr028s9/pFc3Fs65iCHDm/IGdPVpX9sDB1W1FIRzrJ5
 YFC3yFRe0G0Fs+luyOzFip9poCXoUo8sJAN3HXEZu9QoPJzGJGsHl5eIUCZctGMuOeEf
 2oYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Dxf8j2dEp3gTKMidNHZOyi9cs38t6awcBjwDt5BGhco=;
 b=FdmmgHc/xbWOVK9lAXVayF5PF+z/QkQHbhDnCXqEE4cKE+nmKXRlfyM6xPmZ13jeEU
 LHC2fLsxEsMD0Pgunw5sKMcFenbctbPlCJKr+fjUylNeVderwGzmXFgujHYjgUkusA28
 PzJNJiIamJTfobHy2ZYtO+mGlu07k4vZ/5D9mJIktk86brC/5dUQQyuT1N1fPaA8xIbc
 7IKjvtI3TrdpbZifUiuF88mm6Pjj0WElEEtX4LgcRCMyiysc+yhjWvbwg5Y4VcqaqkX7
 v4yOrQoJZavHqA2/fdZPGKnxmJZF4Na8+VgpgGzfhnkbkoln3OjY/WcQWUcERmGHLkSs
 7aLA==
X-Gm-Message-State: APjAAAVFw5ISuneSph2IjK8bv5iJi9+KUUHDv1DmK6xOXZQ7j3RAml65
 kOBg6CqefojvCGti9CpfHhk=
X-Google-Smtp-Source: APXvYqx7/HwYNBy93h+fmNaI9cnTLMGY7XFYbErDicOBeRlQ0eTPm/1tR+ecZKuvPeC4oiDJ4HVdmw==
X-Received: by 2002:a17:90a:9201:: with SMTP id
 m1mr8641712pjo.74.1571371532978; 
 Thu, 17 Oct 2019 21:05:32 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id m2sm6433577pff.154.2019.10.17.21.05.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 21:05:31 -0700 (PDT)
Date: Thu, 17 Oct 2019 21:05:30 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH 2/2] Fix a NULL-ptr-deref bug in
 ath10k_usb_alloc_urb_from_pipe
Message-ID: <20191018040530.GA28167@roeck-us.net>
References: <20190804003101.11541-1-benquike@gmail.com>
 <20190831213139.GA32507@roeck-us.net>
 <87ftlgqw42.fsf@kamboji.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ftlgqw42.fsf@kamboji.qca.qualcomm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_210534_394634_9BE70F3A 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Sun, Sep 01, 2019 at 11:06:05AM +0300, Kalle Valo wrote:
> Guenter Roeck <linux@roeck-us.net> writes:
> 
> > Hi,
> >
> > On Sat, Aug 03, 2019 at 08:31:01PM -0400, Hui Peng wrote:
> >> The `ar_usb` field of `ath10k_usb_pipe_usb_pipe` objects
> >> are initialized to point to the containing `ath10k_usb` object
> >> according to endpoint descriptors read from the device side, as shown
> >> below in `ath10k_usb_setup_pipe_resources`:
> >> 
> >> for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
> >>         endpoint = &iface_desc->endpoint[i].desc;
> >> 
> >>         // get the address from endpoint descriptor
> >>         pipe_num = ath10k_usb_get_logical_pipe_num(ar_usb,
> >>                                                 endpoint->bEndpointAddress,
> >>                                                 &urbcount);
> >>         ......
> >>         // select the pipe object
> >>         pipe = &ar_usb->pipes[pipe_num];
> >> 
> >>         // initialize the ar_usb field
> >>         pipe->ar_usb = ar_usb;
> >> }
> >> 
> >> The driver assumes that the addresses reported in endpoint
> >> descriptors from device side  to be complete. If a device is
> >> malicious and does not report complete addresses, it may trigger
> >> NULL-ptr-deref `ath10k_usb_alloc_urb_from_pipe` and
> >> `ath10k_usb_free_urb_to_pipe`.
> >> 
> >> This patch fixes the bug by preventing potential NULL-ptr-deref.
> >> 
> >> Signed-off-by: Hui Peng <benquike@gmail.com>
> >> Reported-by: Hui Peng <benquike@gmail.com>
> >> Reported-by: Mathias Payer <mathias.payer@nebelwelt.net>
> >
> > This patch fixes CVE-2019-15099, which has CVSS scores of 7.5 (CVSS 3.0)
> > and 7.8 (CVSS 2.0). Yet, I don't find it in the upstream kernel or in Linux
> > next.
> >
> > Is the patch going to be applied to the upstream kernel anytime soon ?
> 
> Same answer as in patch 1:
> 
> https://patchwork.kernel.org/patch/11074655/
> 

Sorry to bring this up again. The ath6k patch made it into the upstream
kernel, but the ath10k patch didn't. Did it get lost, or was there a
reason not to apply this patch ?

Thanks,
Guenter

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
