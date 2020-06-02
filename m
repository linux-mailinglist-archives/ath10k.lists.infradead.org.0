Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BEA1EC35B
	for <lists+ath10k@lfdr.de>; Tue,  2 Jun 2020 22:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLDIdsMgnSYTG8DLZJwtkryBact9DdbXX02QgCv00dk=; b=pR4eS0Qw4W5dPn
	n2deV8A9pRZHucReddJZsFG7txsu8TpjaE/1OQz7Dz3YgmKgbGrOOaarVyhwLZjRW01RvEq5YTk94
	02shXOuQOas6wb97/+1vJEubrvZyJMv9jqr5wsKuk5NXni6kIKhlYSKzCOtvbFFDSJ5fNVi4wS99R
	mNecy4fnndpQH05KIeMn2hY0dnmlC/i85svOPZVAtrxh7eLcCemgpAGFo4pGt1U9+rRwsTnLClfJn
	pw1vHFQBw/4Pojl9s4CyRc7sQ83wt1QLivwpdLXZFDmGQl+rWUxqrTCON72LovA/fsSMjGAilIVxV
	X26b85IQPm9er8odCwEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgD9R-00008L-Ut; Tue, 02 Jun 2020 20:04:45 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgD9N-00007r-O9
 for ath10k@lists.infradead.org; Tue, 02 Jun 2020 20:04:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id o9so14155405ljj.6
 for <ath10k@lists.infradead.org>; Tue, 02 Jun 2020 13:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YwRmnpMyYSKsuBVaIf/H8HlQR4v0H9X4t/FINDNUlCo=;
 b=Om1H0Oeuuzm5pUwKfcMbsOt8vaAj1s6JaK5NLFAGjfyPxB+d2R41pm4vcvTRwOZbJw
 6t2QIqGoC2cEfXn3pIKNxqt82rqVLsvBx6eYwhSdB9Vrkz9eufuFpbZC6Aeydk8hwL1f
 e9cWaeaUDPSpFvgqJE/5wrybB8Hc2xLMOhdyg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YwRmnpMyYSKsuBVaIf/H8HlQR4v0H9X4t/FINDNUlCo=;
 b=Kk+tlIfl5u4/05FkUvIBmYqt83t8yOsxWkqmTMts+mSg/MTHxXZGVwio3coW0OGSjz
 neqdRW7m7Kmdc//ypk5iy0AJsw7XEou1QhEJ82VrkGfNoWmOjid7bE5xf5GG643RY4EE
 4wWfFIHtNdbXP5hY2vjEvJijkLZQ+atlmq9o68DQKCbtP7zIboX0gFAKdEfrm+yE8ZDo
 5CBsc0k5cn18E+B9OxLHMe1t2Y2zDOED/ppQQkvq5h4tg7e79I5sB04nACuJLp8KjIrd
 08VV+6n7gHpBh32eEuVVATO5dWPKfpGw+RkpwmLNx3byNG5VVthPj2zHxJ+J9z+5PpiR
 L8iA==
X-Gm-Message-State: AOAM531L2WzeK08sDFupmGHK1DVLlkCEvZyvbgnhO0WR9ieWZ0/jiPM+
 RiXq9ynJuuWGkDW7YZeyHdXwwcgFdXE=
X-Google-Smtp-Source: ABdhPJxYc1+t9PlM1ilaPAkBpxxkb2P/L4Q5y5o1pDQ7BlLHFaKLRu0n7VpoivfMlzss0gihiLjj4Q==
X-Received: by 2002:a2e:8903:: with SMTP id d3mr342204lji.298.1591128279689;
 Tue, 02 Jun 2020 13:04:39 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com.
 [209.85.167.41])
 by smtp.gmail.com with ESMTPSA id b5sm9146lfj.57.2020.06.02.13.04.38
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 13:04:38 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id 202so6950999lfe.5
 for <ath10k@lists.infradead.org>; Tue, 02 Jun 2020 13:04:38 -0700 (PDT)
X-Received: by 2002:a19:c1c3:: with SMTP id r186mr509343lff.49.1591128278047; 
 Tue, 02 Jun 2020 13:04:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200602052533.15048-1-john.stultz@linaro.org>
 <CA+ASDXMbNvbBdsC11dzUPX7RkMFYhJev2npPsRD_SnGQB+1hag@mail.gmail.com>
 <CALAqxLVA1ZQjwEdbX5KGbSyLnMBAzm9PoN_Ta_Z7rBf4w3GOvQ@mail.gmail.com>
In-Reply-To: <CALAqxLVA1ZQjwEdbX5KGbSyLnMBAzm9PoN_Ta_Z7rBf4w3GOvQ@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 2 Jun 2020 13:04:26 -0700
X-Gmail-Original-Message-ID: <CA+ASDXPddgOvEX___unx7N2YsQctsZN+1vkwPbi8Ab_zfwFfzw@mail.gmail.com>
Message-ID: <CA+ASDXPddgOvEX___unx7N2YsQctsZN+1vkwPbi8Ab_zfwFfzw@mail.gmail.com>
Subject: Re: [PATCH] wireless: ath10k: Return early in
 ath10k_qmi_event_server_exit() to avoid hard crash on reboot
To: John Stultz <john.stultz@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_130441_797068_D3D11435 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Amit Pundir <amit.pundir@linaro.org>, Govind Singh <govinds@codeaurora.org>,
 Rakesh Pillai <pillair@qti.qualcomm.com>, lkml <linux-kernel@vger.kernel.org>,
 ath10k <ath10k@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sibi Sankar <sibis@codeaurora.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Jun 2, 2020 at 12:40 PM John Stultz <john.stultz@linaro.org> wrote:
> On Tue, Jun 2, 2020 at 12:16 PM Brian Norris <briannorris@chromium.org> wrote:
> > On Mon, Jun 1, 2020 at 10:25 PM John Stultz <john.stultz@linaro.org> wrote:
> > >
> > > Ever since 5.7-rc1, if we call
> > > ath10k_qmi_remove_msa_permission(), the db845c hard crashes on
> > > reboot, resulting in the device getting stuck in the usb crash
> > > debug mode and not coming back up wihthout a hard power off.
> > >
> > > This hack avoids the issue by returning early in
> > > ath10k_qmi_event_server_exit().
> > >
> > > A better solution is very much desired!
> >
> > Any chance you can bisect what caused this? There are a lot of
> > non-ath10k pieces involved in this stuff.
>
> Amit had spent some work on chasing it down to the in kernel qrtr-ns
> work, and reported it here:
>   https://lists.infradead.org/pipermail/ath10k/2020-April/014970.html
>
> But that discussion seemingly stalled out, so I came up with this hack
> to workaround it for us.

If I'm reading it right, then that means we should revert this stuff
from v5.7-rc1:

0c2204a4ad71 net: qrtr: Migrate nameservice to kernel from userspace

At least, until people can resolve the tail end of that thread. New
features (ath11k, etc.) are not a reason to break existing features
(ath10k/wcn3990).

Brian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
