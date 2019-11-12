Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D9DF94CB
	for <lists+ath10k@lfdr.de>; Tue, 12 Nov 2019 16:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2FiYff10e/FcA6VKQmHqH/Yq+1dKuLPHfjWhSn/2Oz8=; b=srStX7IpFKzJcd
	Ifu4MqAvdHi/yrKlL/5/x7h5fOSjTCCDO6bPpIGjzRgMKO1w0RNbTG/ZOh9l5ldaagrpI/KFioldw
	quOvP55ucfdir0RsZjEh/wPXw51nMkUtpYSety2ZN9DY7sajuYGQL3vAxAYr4+d9DL0UeAQxtI1pp
	8ujnY3Sdu5pdBxe0sc5ElAjaZaeRBycShTN/9P/aNHPhX22URSRhTrRz2B0znfpAT5wmiCPZgwFwA
	d75nVnK+zpDZKumCfv6zRpltAg1KtUsidFgV/YFYlY2DwgYepI4KE0TpkhGa+tZuKqCVM1P35z0CV
	1rhzNhDTHx/boPRLbjKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYUb-0003Lz-Qc; Tue, 12 Nov 2019 15:54:09 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYUV-0003K2-GN
 for ath10k@lists.infradead.org; Tue, 12 Nov 2019 15:54:05 +0000
Received: by mail-io1-xd43.google.com with SMTP id q83so19256658iod.1
 for <ath10k@lists.infradead.org>; Tue, 12 Nov 2019 07:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+1IEojNQRKaJ8R6eORbksbI7U86NwchAf1hHUgJqjpo=;
 b=vYzeDsKt+LCERvwGBGKTwYAcLMKlX8aTKqabbg0JK21GrAPQcAhDLvykQYDpYPAfJD
 YSLYQ/FE+wZZfSIQTQ/Yfl7Kw7kSvXi9QyWB6LnGZyemMZ6LiHXsf8SBT7XwYboj2/fu
 Kc+wpOunu+fXCe3b7ri344w3kI5J9edQYl1tiVytFiYlbAwhRtaT0WXT5jCSWw716too
 Q02zA9iTCBInKENJ51YRMfMNNCjJ5PauBVoxh0PBk6wdYk9bDhvS9ZKW0ilYrVAtX7W1
 Yn6Rx7f6IU9i++q919E5gjvTNU0yqQ0AZ4FGOiMGZB4HJ2Iq9ooJBWBWz0aO7yYrfqu8
 BgbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+1IEojNQRKaJ8R6eORbksbI7U86NwchAf1hHUgJqjpo=;
 b=IBFT9JoMmrPX8Ka7d4Bha4M6tH3Lb43wBIbtYUtQtU6dcrNlukYgIwBK4kghbgp9pb
 Md8/mO7wTy3pdOwV9BpjzP4fMGhcX87IuqvBMWtDmlytxSab1c7B3g4NJay+zgLi2PxA
 JualASj25oBWuZ8dMoq/4keRPqqwhnnbFGMcTZ7NzWgW8DXzUAjps2oWM2YWGUN0DJII
 +mlUAIX6dW+VJ6s9VKvbEMU6UEJ5EGlYDm6bwYkSLU5Sp+rk/zNa1bk7ujDVRJpUy/P5
 NCu3LTu4UHa3WakjT7mABBNBhLtRyQV2LaPBUpu4dQsIGo3TAF2ZttSWmPv7nem2Pz6y
 CLlQ==
X-Gm-Message-State: APjAAAU5qVZK4IbZtrukRPW3E6h2RkTXZCfezTYak7/5F3i3VTmM2e9h
 IWAAhu/kDzcWaag8O5AjvPNo4Bcrj6ju61kcmwk=
X-Google-Smtp-Source: APXvYqynO/p313AXOl/WdxEoymEYNA7twP36L4Z5wcKFago9vMAZVo1EBJvr39aEvnOSMtl/ae0Wh7uuhz+Vh0aPrHg=
X-Received: by 2002:a5e:8a04:: with SMTP id d4mr31139489iok.42.1573574042003; 
 Tue, 12 Nov 2019 07:54:02 -0800 (PST)
MIME-Version: 1.0
References: <20191106234712.2380-1-jeffrey.l.hugo@gmail.com>
 <20191112090444.ak2xu67eawfgpdgb@netronome.com>
In-Reply-To: <20191112090444.ak2xu67eawfgpdgb@netronome.com>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Tue, 12 Nov 2019 08:53:51 -0700
Message-ID: <CAOCk7NoXv2-8GO=VYS8dNPJF6sj=S3RbkfqQGW0kvvVmR8V1kw@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Handle "invalid" BDFs for msm8998 devices
To: Simon Horman <simon.horman@netronome.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_075404_178920_B471725F 
X-CRM114-Status: GOOD (  21.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 lkml <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org,
 MSM <linux-arm-msm@vger.kernel.org>, davem@davemloft.net, kvalo@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 2:04 AM Simon Horman <simon.horman@netronome.com> wrote:
>
> On Wed, Nov 06, 2019 at 03:47:12PM -0800, Jeffrey Hugo wrote:
> > When the BDF download QMI message has the end field set to 1, it signals
> > the end of the transfer, and triggers the firmware to do a CRC check.  The
> > BDFs for msm8998 devices fail this check, yet the firmware is happy to
> > still use the BDF.  It appears that this error is not caught by the
> > downstream drive by concidence, therefore there are production devices
> > in the field where this issue needs to be handled otherwise we cannot
> > support wifi on them.  So, attempt to detect this scenario as best we can
> > and treat it as non-fatal.
> >
> > Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> > ---
> >  drivers/net/wireless/ath/ath10k/qmi.c | 11 +++++++----
> >  1 file changed, 7 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
> > index eb618a2652db..5ff8cfc93778 100644
> > --- a/drivers/net/wireless/ath/ath10k/qmi.c
> > +++ b/drivers/net/wireless/ath/ath10k/qmi.c
> > @@ -265,10 +265,13 @@ static int ath10k_qmi_bdf_dnld_send_sync(struct ath10k_qmi *qmi)
> >                       goto out;
> >
> >               if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
> > -                     ath10k_err(ar, "failed to download board data file: %d\n",
> > -                                resp.resp.error);
> > -                     ret = -EINVAL;
> > -                     goto out;
> > +                     if (!(req->end == 1 &&
> > +                           resp.resp.result == QMI_ERR_MALFORMED_MSG_V01)) {
>
> Would it make sense to combine the inner and outer condition,
> something like this (completely untested) ?

I guess, make sense from what perspective?  Looks like the assembly
ends up being the same, so it would be down to "readability" which is
subjective - I personally don't see a major advantage to one way or
the other.  It does look like Kalle already picked up this patch, so
I'm guessing that if folks feel your suggestion is superior, then it
would need to be a follow on.

>
>                 if (resp.resp.result != QMI_RESULT_SUCCESS_V01 &&
>                     !(req->end == 1 &&
>                       resp.resp.result == QMI_ERR_MALFORMED_MSG_V01)) {
>
> > +                             ath10k_err(ar, "failed to download board data file: %d\n",
> > +                                        resp.resp.error);
> > +                             ret = -EINVAL;
> > +                             goto out;
> > +                     }
> >               }
> >
> >               remaining -= req->data_len;
> > --
> > 2.17.1
> >

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
