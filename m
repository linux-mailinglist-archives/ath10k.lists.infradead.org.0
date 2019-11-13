Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431D8FAA91
	for <lists+ath10k@lfdr.de>; Wed, 13 Nov 2019 08:00:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIJQPzYRpia9fT9E7dMrkojJPNQnevtahRiEomIbwNc=; b=shW1XkdIOrLZ5a
	3q4TtnmYJdN8IbHRYFbcQ6s7ul+pzMd2lDkJZiOPE3KVa40ZKL7ao9OtLT18Q7xLY0DnIMK2qFdCh
	vIw+Aa8I5l6J0CifdeaNmf4OOBCuVU2jfqtySx0zLXYtBiMfUixI9nN+c5OvkYpAbif4dqbgUMjwQ
	jNpWjShqT7LnutURQiaWZnfnNl0556DrncrloedyTEqt3U6ytIp9cZPGlNfuDR5l63LRC4rqKSKaJ
	uiDrUDwAJsEweTWM2rUcQQXmqV440vqfmNPD/Y9Kga1Q9qk48k9IM2nXkM+N5+jRVGgFXjDmddwcO
	m6rboVoDDTx2zxJjwVGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUmds-0002Mc-0c; Wed, 13 Nov 2019 07:00:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUmdo-0002Le-7h
 for ath10k@lists.infradead.org; Wed, 13 Nov 2019 07:00:37 +0000
Received: by mail-wr1-x442.google.com with SMTP id f2so962412wrs.11
 for <ath10k@lists.infradead.org>; Tue, 12 Nov 2019 23:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rugrYaxZCiP2gM4hsS0PmTY/T9FiVMFS6xWRRwp7Uks=;
 b=iLRBNzKe3Ty81HmbP7CV1b8+p7WvR524FmbkGbeQglx6vlgdPRIEtlT5aQ667wL1tT
 fa5Jk+lPWh5Aba5vbf7Qv0SxdNsfarPP+m89qaVpdBD6q1y1SSlKcVdKojOZpKOD6o6d
 jEoXGrwvFyn1VDH2BV6jkMVVKdGisEZ2TLc3U1/71aFYAsETXJS68fekfL7x/wRPQzTg
 d/pWhoDmZkQTwAmliusnRed7o+iNesnwRFxbNsvtQbpgkOmFNOCfJIHBwFSiHBHwIe+b
 t9EiLrDZ3+fQ7fkIi/BH3hCQgdP8zNfLg+akdBk7LMt23LTHtzUqpviZYkD8Uxx8o59Z
 8yWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rugrYaxZCiP2gM4hsS0PmTY/T9FiVMFS6xWRRwp7Uks=;
 b=Sj+ibShp1gUCjeGAqQ0OtWU/BOPFBZBmJ1PcUShH/okT0ZtHWIBNA7uznM2eKWhqoD
 o3FcCEC370romM4UGlnkddZZ4JWR15Xy71vMOjnsRw2WEz2nn+ESlHeFoClticj8W0kg
 j3/DZ8QDD3lw3aqeTQlV5MlIfuNM/vF6oP6vzHAUEwsr9phWvC0Xkndb/8nKZvLMAvEs
 AAi31cfTMfb3ZpoYBVP1GHgDwWsmI+hmiS8YtGx1nX9BGuwdpokPnhVSl7zcVXrHGWq+
 RH5yx6yuTR2brz9DGFKJBPs7lL+A+v91NvwaWDH1N2TXqZ161vu7nOdKx+XtlgcRnJN0
 Gt1g==
X-Gm-Message-State: APjAAAUTtU5IuQ+/RIzi09Uudw2Z8aEHqstdLvlSz8Me1KpIvvxDl+Vy
 1ZVxIs77hlgQ5sNKxkWkhgdByw==
X-Google-Smtp-Source: APXvYqzxXo5+THKRrJBHRbmsw/q0KRwfVf5UnS3F6vDui9Ylkubka0wc+vrYEI1WSLZkHjvVSA2Odw==
X-Received: by 2002:adf:e8ce:: with SMTP id k14mr1149133wrn.393.1573628432175; 
 Tue, 12 Nov 2019 23:00:32 -0800 (PST)
Received: from netronome.com ([2001:982:756:703:d63d:7eff:fe99:ac9d])
 by smtp.gmail.com with ESMTPSA id 4sm1292022wmd.33.2019.11.12.23.00.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 Nov 2019 23:00:32 -0800 (PST)
Date: Wed, 13 Nov 2019 08:00:31 +0100
From: Simon Horman <simon.horman@netronome.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] ath10k: Handle "invalid" BDFs for msm8998 devices
Message-ID: <20191113070031.qlikjctfnoxtald5@netronome.com>
References: <20191106234712.2380-1-jeffrey.l.hugo@gmail.com>
 <20191112090444.ak2xu67eawfgpdgb@netronome.com>
 <CAOCk7NoXv2-8GO=VYS8dNPJF6sj=S3RbkfqQGW0kvvVmR8V1kw@mail.gmail.com>
 <878soks77y.fsf@kamboji.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878soks77y.fsf@kamboji.qca.qualcomm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_230036_275561_DE5B1A9F 
X-CRM114-Status: GOOD (  26.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, lkml <linux-kernel@vger.kernel.org>,
 ath10k@lists.infradead.org, MSM <linux-arm-msm@vger.kernel.org>,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 06:58:25AM +0200, Kalle Valo wrote:
> Jeffrey Hugo <jeffrey.l.hugo@gmail.com> writes:
> 
> > On Tue, Nov 12, 2019 at 2:04 AM Simon Horman <simon.horman@netronome.com> wrote:
> >>
> >> On Wed, Nov 06, 2019 at 03:47:12PM -0800, Jeffrey Hugo wrote:
> >> > When the BDF download QMI message has the end field set to 1, it signals
> >> > the end of the transfer, and triggers the firmware to do a CRC check.  The
> >> > BDFs for msm8998 devices fail this check, yet the firmware is happy to
> >> > still use the BDF.  It appears that this error is not caught by the
> >> > downstream drive by concidence, therefore there are production devices
> >> > in the field where this issue needs to be handled otherwise we cannot
> >> > support wifi on them.  So, attempt to detect this scenario as best we can
> >> > and treat it as non-fatal.
> >> >
> >> > Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> >> > ---
> >> >  drivers/net/wireless/ath/ath10k/qmi.c | 11 +++++++----
> >> >  1 file changed, 7 insertions(+), 4 deletions(-)
> >> >
> >> > diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
> >> > index eb618a2652db..5ff8cfc93778 100644
> >> > --- a/drivers/net/wireless/ath/ath10k/qmi.c
> >> > +++ b/drivers/net/wireless/ath/ath10k/qmi.c
> >> > @@ -265,10 +265,13 @@ static int ath10k_qmi_bdf_dnld_send_sync(struct ath10k_qmi *qmi)
> >> >                       goto out;
> >> >
> >> >               if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
> >> > -                     ath10k_err(ar, "failed to download board data file: %d\n",
> >> > -                                resp.resp.error);
> >> > -                     ret = -EINVAL;
> >> > -                     goto out;
> >> > +                     if (!(req->end == 1 &&
> >> > +                           resp.resp.result == QMI_ERR_MALFORMED_MSG_V01)) {
> >>
> >> Would it make sense to combine the inner and outer condition,
> >> something like this (completely untested) ?
> >
> > I guess, make sense from what perspective?  Looks like the assembly
> > ends up being the same, so it would be down to "readability" which is
> > subjective - I personally don't see a major advantage to one way or
> > the other.  It does look like Kalle already picked up this patch, so
> > I'm guessing that if folks feel your suggestion is superior, then it
> > would need to be a follow on.

My feeling is that it would reduce the churn in the patch making the
patch more readable and likewise improving the readability of the code.
But I do agree this does not affect run-time and I am ambivalent about
updating the patch if it has already been (semi-)accepted.

> 
> Same here, it's only on the pending branch so changes are still
> possible.
> 
> -- 
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
