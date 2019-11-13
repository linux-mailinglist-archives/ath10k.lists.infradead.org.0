Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFE4FB340
	for <lists+ath10k@lfdr.de>; Wed, 13 Nov 2019 16:12:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQquoRvcgOKSxRAgNLi9ZC864VF1gmGaGecLatu9TIQ=; b=Z4S3g7bmHn31sj
	3U8Yz6yAjQmDl7hNxNbKr1NXYx9Ujx0tRb4LS1E0RFVOaT+EIFawyy3CuVAWpJk5tozeiIRX9jN8R
	21nnuaZwH+yajr6rwPLaq5e5G8IMMAMSOoT6ToY0lxD9v5PPAQefFjTecTrL0QJeppDly8Mn4n3If
	CmSI8IwfuURfAvCJ51rtQ6eg7KCjxVrwTy4tfQsX8EMUdvjrgHz646NK5gmafdVqnUwxT8Amh3VDx
	IoHd6RryrXzxoPOwZmPM9ZQ/CtOdujIiU9kVZZTQWJbhPoxrB8JalUIaA6qTufT6fpuzrK5rvJmBP
	9Cw8BympnLDBt6Ic3TRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUuJK-0004Mw-Ed; Wed, 13 Nov 2019 15:11:58 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUuJG-0004Mc-Nq
 for ath10k@lists.infradead.org; Wed, 13 Nov 2019 15:11:56 +0000
Received: by mail-il1-x142.google.com with SMTP id a7so2086072ild.6
 for <ath10k@lists.infradead.org>; Wed, 13 Nov 2019 07:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Oet7iN8luRIwm2cG0enPN1WO0bfm28VO//v3gW2hBng=;
 b=GQ3XKwp2AaghEayclfUYMtj06s+kNJ3pPo2qy6o3BVVu+8If5uf39XUbSZkODmmU33
 WDeAJ8hMYpRvi0cUuO/9lrc5XrrtCMRY0onKyQX+VhaWxmTI+Lz9TJj1GRzi3MxLdt04
 tekoOYGqFXTHSJzb8/GuwS7hRrbPZtwG2eVfgxdjpZDVr/iJ7aDlFDftc6szgU1vzaZZ
 WeINd1UMXpiaoHmo3QdKl8f0o0Ow/3SUmeyIp8xIT1lRCsIZfWVSQ879lYWJ+YbUDZFI
 II3F90tO59YT4Nw3DJh9VTEt4ev51KZP3sH1tQ8GQslbwz1aAb4/uPva7x6OjUoSOp5j
 K0/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Oet7iN8luRIwm2cG0enPN1WO0bfm28VO//v3gW2hBng=;
 b=Ove23iKoqmuX+yzqLOyPF5hH2i5UDnm7F56UtCvrvSGupNICK5H6BeuJ9xechFoY//
 mImuqBW2y+6Riazw8Qm1c9EW+JKb4aeAFRieIVsQj3eV8oPAaLDFO1NklCIPLo7of5vF
 Wxs5HrkwhUdKLV83iEp0Cj06nyEl53EJid/9j+cTxok9QrT6lUkP7SDzpE+PYgjCfVWe
 S+kFLdHB9uu62i3RcyWWQyx64XXKQxAAhzlm+nhDU9BT3sePmyEDSL0VMIapcjJgbDvB
 zX3AU6KiasyJmJjpK2I2B1KhyeIy3uO212H4Lfj0hxd6L+wwhuzqYKYZ5CMtMmga2h7r
 caOw==
X-Gm-Message-State: APjAAAWBPRxqgABKkYKOGkbkipPWjWB3+BzKq9iZaGJu6kXOVShDpAzW
 paxpdBcqCqe+C2L/LgExp2wnsbZo74rN9exKw/U=
X-Google-Smtp-Source: APXvYqzJ6RcpW1AKYY64DcFg31Q3abj110+k7vsmWtJerlFCp+aLmBxLTxWeV9e9dqahFbq36N/70b0ruDZgONRDz9Y=
X-Received: by 2002:a92:831d:: with SMTP id f29mr4564735ild.263.1573657912726; 
 Wed, 13 Nov 2019 07:11:52 -0800 (PST)
MIME-Version: 1.0
References: <20191106231650.1580-1-jeffrey.l.hugo@gmail.com>
 <20191112084225.casuncbo7z54vu4g@netronome.com>
 <CAOCk7NpNgtTSus2KtBMe=jGLFyBumVfRVxKxtHoEDUEt2-6tqQ@mail.gmail.com>
 <87d0dws79m.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87d0dws79m.fsf@kamboji.qca.qualcomm.com>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Wed, 13 Nov 2019 08:11:41 -0700
Message-ID: <CAOCk7NpGm7jLH-z9CdJaYAGkg_WuiBxtxgwby+BJef=asFbavw@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Fix qmi init error handling
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_071154_800515_EA00AC2C 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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
Cc: Simon Horman <simon.horman@netronome.com>, linux-wireless@vger.kernel.org,
 lkml <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org,
 netdev@vger.kernel.org, MSM <linux-arm-msm@vger.kernel.org>,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 9:57 PM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Jeffrey Hugo <jeffrey.l.hugo@gmail.com> writes:
>
> > On Tue, Nov 12, 2019 at 1:42 AM Simon Horman <simon.horman@netronome.com> wrote:
> >>
> >> On Wed, Nov 06, 2019 at 03:16:50PM -0800, Jeffrey Hugo wrote:
> >> > When ath10k_qmi_init() fails, the error handling does not free the irq
> >> > resources, which causes an issue if we EPROBE_DEFER as we'll attempt to
> >> > (re-)register irqs which are already registered.
> >> >
> >> > Fixes: ba94c753ccb4 ("ath10k: add QMI message handshake for wcn3990 client")
> >> > Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> >> > ---
> >> >  drivers/net/wireless/ath/ath10k/snoc.c | 2 +-
> >> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >> >
> >> > diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
> >> > index fc15a0037f0e..f2a0b7aaad3b 100644
> >> > --- a/drivers/net/wireless/ath/ath10k/snoc.c
> >> > +++ b/drivers/net/wireless/ath/ath10k/snoc.c
> >> > @@ -1729,7 +1729,7 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
> >> >       ret = ath10k_qmi_init(ar, msa_size);
> >> >       if (ret) {
> >> >               ath10k_warn(ar, "failed to register wlfw qmi client: %d\n", ret);
> >> > -             goto err_core_destroy;
> >> > +             goto err_free_irq;
> >> >       }
> >>
> >> From a casual examination of the code this seems like a step in the right
> >> direction. But does this error path also need to call ath10k_hw_power_off() ?
> >
> > It probably should.  I don't see any fatal errors from the step being
> > skipped, although it might silence some regulator warnings about being
> > left on.  Unlikely to be observed by most folks as I was initing the
> > driver pretty early to debug some things.  Looks like Kalle already
> > picked up this patch though, so I guess your suggestion would need to
> > be a follow up.
>
> Actually it's only in the pending branch, which means that the patch can
> be changed or a new version can be submitted:

Thats an interesting flow.  Ok.

>
> https://wireless.wiki.kernel.org/en/users/drivers/ath10k/submittingpatches#patch_flow
>
> The easiest way to check the state of a wireless patch is from
> patchwork:
>
> https://patchwork.kernel.org/patch/11231325/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#checking_state_of_patches_from_patchwork
>
> --
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
