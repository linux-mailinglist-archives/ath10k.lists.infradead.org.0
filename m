Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9251E4B3B
	for <lists+ath10k@lfdr.de>; Wed, 27 May 2020 18:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SwCmxKf0kp7nvsWjssMwr+FwxsKtzCMfof9qv415KXo=; b=d6F//yYIOt5Ad3
	GENMwXBFoPagHfnAGUYiQt0wD9mk+EKSfJIm8zrv/s53kg82vyid38l94bBJICLsUMZyhDHWC97tR
	XgI8G20o23llmAGY9m3Vkw3X9W3dKvppZU2cQX5Dd9x1Hp2QFVQyodUpzSiVLj78fF7+iJrOZ/OpM
	C9jN+vARo3sOuCbR+yMrq9MBJWHtmWepXe8KiJ4FtjUBUfo4Nb71I/mmFzfC6duCuOQi+qpX1qf03
	ch8WEflzDT9PzzqQyYp8vCbBV1XErim+W2odxynfKko16+QQrjxuxiLxOgvi+KPQhBqJhYlVKb3A0
	EwjP1EPDNFx4DH3Wu9eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzOW-0000SV-TF; Wed, 27 May 2020 16:59:08 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzOS-0000Rm-9P
 for ath10k@lists.infradead.org; Wed, 27 May 2020 16:59:05 +0000
Received: by mail-lf1-x141.google.com with SMTP id e125so14900279lfd.1
 for <ath10k@lists.infradead.org>; Wed, 27 May 2020 09:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jTgpqmW9zWetLwvqT+U0dMSUr76enxEYfjzcwja3MnA=;
 b=RivIrxQ6qtN6TCAybWtH41mZPU3I6ld6ahxMHLmRJ4DTDW7cSef+od2q8PjC3+goTZ
 eahpq8H2LvS9S2U0fmmzMdENAqtUsS47ajcTQWmnJo6edc98lZbd2pcC7YCl4vjSG3LF
 yuk9ObVEaERbgNDYNAHNf6Cs6kcRZkmIM11Xs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jTgpqmW9zWetLwvqT+U0dMSUr76enxEYfjzcwja3MnA=;
 b=dF7ZGQ8qYLMiN81I0KOrLljTNhPs0HG+LKFTc05vDbqvC2R3APH3PkDMdjLwqlLmxN
 JU9ka6KSPtPbb7GWdynIz98wBsMQ4vaxZAo5YxJYsvL6o0BZYV+3LhxbB+/XKUUC+deV
 pvjo06CujZivq2L42Mh49QWd4vIiIVjs8151z12D/PWEMFhSlyvJqmxObDDddFwtXHPT
 3gUI+TldP6wpw9IQbAZC5RGVuaPIVfcdJrlk9wlFCw+1NvT1COmOZYCEHq01oVJjrTFX
 kh1J5NpQmg9ry5rP31fKg01a/eGSp8CurlX91zB+PlbadOxtj3oj7KOKTo5WfiT620WW
 4l2g==
X-Gm-Message-State: AOAM533zrhZ8k7Cpx2qChYUWEN9GUWQEpiku7h9FUfkDY/uVW61l2/wt
 TrguH18AfttUHJNBKGnFabozzdTKSSg=
X-Google-Smtp-Source: ABdhPJzi0n/kQ7XU4jwd+Ag7/26c/+EJwFTDSPLP+SmJLaAkdr5MAja1+UZvtKtA85VBwHoMTvQ19Q==
X-Received: by 2002:a19:d52:: with SMTP id 79mr3630987lfn.125.1590598742479;
 Wed, 27 May 2020 09:59:02 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com.
 [209.85.167.41])
 by smtp.gmail.com with ESMTPSA id h26sm914280lja.0.2020.05.27.09.59.01
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 09:59:02 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id x27so14872981lfg.9
 for <ath10k@lists.infradead.org>; Wed, 27 May 2020 09:59:01 -0700 (PDT)
X-Received: by 2002:a05:6512:691:: with SMTP id
 t17mr3657519lfe.85.1590598740978; 
 Wed, 27 May 2020 09:59:00 -0700 (PDT)
MIME-Version: 1.0
References: <24512086-0248-d273-5255-7d6504b0ad2c@gmail.com>
In-Reply-To: <24512086-0248-d273-5255-7d6504b0ad2c@gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Wed, 27 May 2020 09:58:49 -0700
X-Gmail-Original-Message-ID: <CA+ASDXNmOvygoKMLOS_saJAzv0oJbYq+u1_6ix-FKbb9U=GB+g@mail.gmail.com>
Message-ID: <CA+ASDXNmOvygoKMLOS_saJAzv0oJbYq+u1_6ix-FKbb9U=GB+g@mail.gmail.com>
Subject: Re: Compex WLE600VX AP mode 5GHz doesn't work since kernel 5.6
To: Michael Berg <michaeljberg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_095904_344117_4BB8724B 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nick@marriott.org, Kalle Valo <kvalo@codeaurora.org>,
 ath10k@lists.infradead.org, Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Sat, May 23, 2020 at 7:37 PM Michael Berg <michaeljberg@gmail.com> wrote:
>
> More follow up on the following patch that broke 5GHz AP mode on Compex
> cards
> https://github.com/torvalds/linux/commit/2dc016599cfa9672a147528ca26d70c3654a5423
>
> I just downloaded and checked the linux-5.7-rc6 kernel source,
> and the problematic code is still in drivers/net/wireless/ath/regd.c.
>
> Are they any updates on when this patch will be corrected/reverted?

I submitted a revert here:

https://patchwork.kernel.org/patch/11573585/

Hopefully Kalle can pick that up. Thanks for reporting.

Brian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
