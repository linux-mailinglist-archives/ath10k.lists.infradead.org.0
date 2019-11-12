Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E874F94BB
	for <lists+ath10k@lfdr.de>; Tue, 12 Nov 2019 16:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hz0ItHRplrQVoYHt06O8YTi1w8FoPRLmfOdKHVXXVRw=; b=b1RnNF4TRpZU5s
	1X0Je6kgLQodXlv/Srbj4CAwpwXFWwT8VFoDPztxX/AnzJUhQX7TnW/ouDlOFsjdYM7f29DtIisLw
	vPYdkTeiz5bWzt+yiAFoI7wXPJjbAjwtyGE2I3R00/tGFahFQ2Cvl1IuH1p7p7iuNW2BQdhllQMKR
	mUDO/nKN1FA52u7sP7j8ez467aptsjO63JaRIS9V9fawBDH81Gom+TKte9jnu/nOJh282WdOogrs0
	YSRaG1jXTlwFCYv3dQH+3g3dnG+M62oj/EAN4wlXHBSQ8WxbosrMeEd6fEhKQeJXH1Vt2/Oxa34Se
	J+prxT2npElLPoxjhZDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYSH-0002b4-MJ; Tue, 12 Nov 2019 15:51:45 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYSD-0002a3-Li
 for ath10k@lists.infradead.org; Tue, 12 Nov 2019 15:51:43 +0000
Received: by mail-qt1-x841.google.com with SMTP id l24so20204663qtp.10
 for <ath10k@lists.infradead.org>; Tue, 12 Nov 2019 07:51:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LQBXaQZ8sYLX3FvyToEo9vTTZBjJQsr8E1LEgLzRPXs=;
 b=RsE9lrNVKHVIjj4mLDlw3H/mypAihdMOWqmZd+CTUbTTAjq0/uplgxGeoxMwaJtIU8
 JSxXfXBrRZtwLtJQBpO/wtp+ER6o35mC+oW16bJleR6ygLAc0ps7Z7PYt0zU14i3wtF2
 CUhXzZkHnbnUtfjy+gfeX2iL5kE1bErsZS0DSx5nck/gJ7OlhzV8zgP/IoNJGTxz+kd3
 ib98Gio8uq13GOr1ylMTj0i6YxTDDaPpqUtMCpVqbW2KuwgT677J8zkoCZW/qieBgJNs
 K9xNmiY9uibdCWd+69izfCe4yNKpWjml7LQ7zUw4TNljpcqQOrsL2dNGI0Zq87SOlgsG
 /TCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LQBXaQZ8sYLX3FvyToEo9vTTZBjJQsr8E1LEgLzRPXs=;
 b=hy32r/40y/IjDLjYNAjAberYmTNDZ5+aGxnO1IlNIEfBfCOl7SuyNPEhCS8l8q7T8I
 9yNG9fGxmvFEa0UJQ/gQfCkd2OvR00oeWA3JIIA0Ip3CADaWMUwIA3dANNVaQZGIN5BA
 L7Am+sTXwMobIBuFSuD43dAxq0i8vK5p2bYIWvBzzMKbbqjpQLSQGP8kWYkzi8doOKUS
 2LHweCfae2jQDa2R7o7GAKXo3wxRi7BPpy6n+AjOjt+9LTYlwIo/Y6JHqf9bLyUG9siS
 M502b1DyF4d7B9dxJlwgLF70jEPBd9vU1dE1GHF+mFIJs4P2xUrD8nFZSTkyRjMC2Hnb
 xdJQ==
X-Gm-Message-State: APjAAAViSEp4fu9a7g2ScFLfBO14TRXihY03806ftW04NPhBDRBnG794
 0RPgbZChLuz5BQxWImXMl6E/9qSAitA+8ETD3HU=
X-Google-Smtp-Source: APXvYqw2USUknyNH12Zul6mHL6lqDlsWSFY9lTdDbwPKg2Pz6XlR6gnfvP35zB3LnBBhMSCqM3nWOFtORufpMc4G9HU=
X-Received: by 2002:ac8:293a:: with SMTP id y55mr32569355qty.118.1573573899944; 
 Tue, 12 Nov 2019 07:51:39 -0800 (PST)
MIME-Version: 1.0
References: <20191106231650.1580-1-jeffrey.l.hugo@gmail.com>
 <20191112084225.casuncbo7z54vu4g@netronome.com>
In-Reply-To: <20191112084225.casuncbo7z54vu4g@netronome.com>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Tue, 12 Nov 2019 08:51:28 -0700
Message-ID: <CAOCk7NpNgtTSus2KtBMe=jGLFyBumVfRVxKxtHoEDUEt2-6tqQ@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Fix qmi init error handling
To: Simon Horman <simon.horman@netronome.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_075141_711245_0171B3D2 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
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

On Tue, Nov 12, 2019 at 1:42 AM Simon Horman <simon.horman@netronome.com> wrote:
>
> On Wed, Nov 06, 2019 at 03:16:50PM -0800, Jeffrey Hugo wrote:
> > When ath10k_qmi_init() fails, the error handling does not free the irq
> > resources, which causes an issue if we EPROBE_DEFER as we'll attempt to
> > (re-)register irqs which are already registered.
> >
> > Fixes: ba94c753ccb4 ("ath10k: add QMI message handshake for wcn3990 client")
> > Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> > ---
> >  drivers/net/wireless/ath/ath10k/snoc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
> > index fc15a0037f0e..f2a0b7aaad3b 100644
> > --- a/drivers/net/wireless/ath/ath10k/snoc.c
> > +++ b/drivers/net/wireless/ath/ath10k/snoc.c
> > @@ -1729,7 +1729,7 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
> >       ret = ath10k_qmi_init(ar, msa_size);
> >       if (ret) {
> >               ath10k_warn(ar, "failed to register wlfw qmi client: %d\n", ret);
> > -             goto err_core_destroy;
> > +             goto err_free_irq;
> >       }
>
> From a casual examination of the code this seems like a step in the right
> direction. But does this error path also need to call ath10k_hw_power_off() ?

It probably should.  I don't see any fatal errors from the step being
skipped, although it might silence some regulator warnings about being
left on.  Unlikely to be observed by most folks as I was initing the
driver pretty early to debug some things.  Looks like Kalle already
picked up this patch though, so I guess your suggestion would need to
be a follow up.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
