Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4AC1EC2F4
	for <lists+ath10k@lfdr.de>; Tue,  2 Jun 2020 21:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7u0NCFUkceRmczMSSeqspm2SCpPMUSok42+Esm0yNak=; b=XMb08HJQR38dXv
	3dMRO2F8JAl0r/TVxdDUqti9gmAxad5p7II2TA1gMgJkUFbNpBnxI+6stl5cPECMlWbmnViYc2J+T
	Cq559mBuZSXBIzvQa8RjP3BLCA2oRifsMhgPHQ6W3ERE8ly7IUVm2z2wompkDfmyog+ZxP1o+PfYJ
	AdSaVOqzq+AsGzYAGsLOkuUAZA8YNya9YTNQ+AKMXZR/IKceAe0tEGfr6BRHg5QRdIqM/Ie87xh62
	J/21Zu/1Q2q9uYh96pRVVjZU5vppzj6zFZlt+xANJzNGRECQxuSfHmSqHI/sA8BYxyRpCF5bbsGWu
	xmV80QNXIChc88VWybcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgCmI-0003um-9e; Tue, 02 Jun 2020 19:40:50 +0000
Received: from mail-oo1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgCmD-0003tX-Ty
 for ath10k@lists.infradead.org; Tue, 02 Jun 2020 19:40:47 +0000
Received: by mail-oo1-xc42.google.com with SMTP id x17so10920oog.6
 for <ath10k@lists.infradead.org>; Tue, 02 Jun 2020 12:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j41qRERVmEnkxgberq7H033Q0Z1/UAOYwaQZWgqzAJ4=;
 b=iCwkbeqxlME3by8M0AWWiEa2NfnYmgUVW+2dhKbcgFfwD6fYkQHekNM9vC8F7e9C2Y
 TlMvIBcp99ZJ/+DdztWI3TVhLNKROlrIKGuWIS5haWhblnHshEdJEeEqQqr4vQ3Yz8Nr
 FpXUdBRB7Wbjme0y4/ok8n3J6WCbF31wgBPwOridjSntrocUVoyT2jWoW58+86b3Ntiy
 UXXJfftBNVBqmmA0FJWh7lSY8wM6AbQpe+o5DfgPQSGlOSd/+fe/4dkM3QfrKOU63Scy
 k44lZrrM2DOKXDBMhOdlcCqPM6TK1DdYcwb93d00pBnX6uKaWui/ZgUs4DxEZwXprs2z
 L/qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j41qRERVmEnkxgberq7H033Q0Z1/UAOYwaQZWgqzAJ4=;
 b=VxMeVpZomo8pHHQJHzZRnbBKqFTnmiNbxnLwS5bN9L9J2ACa1Hp8xLcVUYmnPuS992
 EK0c8eC15/JVYnP2RvPG16S9JYM/8w1ESn86HaT4kRoWg5e6/5aDN3F7jkd8rrPkLLNX
 fYDWGSDL+UjWAblQ1NQP/4zfwYEB2iOMSvf5XiCsmIB1SSH7GszeF5nrzI0k/rjCseHZ
 thX/RFyrC/CAVtLgfBhy0Aa3JBuEtAV9jQIc1cPbA6jV5GE7UzoPz/HKcpJzzR7j0W7B
 jSlxQra6NAznGQADIa5vLXrdflyMSmIicX18+Cb9+Sa0sXQIowfNE3pbQR/o5GcOd1Ec
 bMbg==
X-Gm-Message-State: AOAM532E4V1DVLNOodyFE3GZnG111AmwxtaJB4Oy2E8zMY5UGFKR3YZs
 ViyiTRQ9FiDg2ZSW24IHFRMvresr2UpgG+gQEdrvzg==
X-Google-Smtp-Source: ABdhPJwl8Dv5pM/yCDtM36J8Y7/4B7NKAHZuFPlWnYchxfk/7+mvKVTRdGg8LnCdHNPQys50XsLIyHmztTMpaBCrEzo=
X-Received: by 2002:a4a:94d1:: with SMTP id l17mr5960738ooi.88.1591126841669; 
 Tue, 02 Jun 2020 12:40:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200602052533.15048-1-john.stultz@linaro.org>
 <CA+ASDXMbNvbBdsC11dzUPX7RkMFYhJev2npPsRD_SnGQB+1hag@mail.gmail.com>
In-Reply-To: <CA+ASDXMbNvbBdsC11dzUPX7RkMFYhJev2npPsRD_SnGQB+1hag@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 2 Jun 2020 12:40:29 -0700
Message-ID: <CALAqxLVA1ZQjwEdbX5KGbSyLnMBAzm9PoN_Ta_Z7rBf4w3GOvQ@mail.gmail.com>
Subject: Re: [PATCH] wireless: ath10k: Return early in
 ath10k_qmi_event_server_exit() to avoid hard crash on reboot
To: Brian Norris <briannorris@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_124045_974882_97460C1A 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
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

On Tue, Jun 2, 2020 at 12:16 PM Brian Norris <briannorris@chromium.org> wrote:
>
> + Sibi
>
> On Mon, Jun 1, 2020 at 10:25 PM John Stultz <john.stultz@linaro.org> wrote:
> >
> > Ever since 5.7-rc1, if we call
> > ath10k_qmi_remove_msa_permission(), the db845c hard crashes on
> > reboot, resulting in the device getting stuck in the usb crash
> > debug mode and not coming back up wihthout a hard power off.
> >
> > This hack avoids the issue by returning early in
> > ath10k_qmi_event_server_exit().
> >
> > A better solution is very much desired!
>
> Any chance you can bisect what caused this? There are a lot of
> non-ath10k pieces involved in this stuff.

Amit had spent some work on chasing it down to the in kernel qrtr-ns
work, and reported it here:
  https://lists.infradead.org/pipermail/ath10k/2020-April/014970.html

But that discussion seemingly stalled out, so I came up with this hack
to workaround it for us.

thanks
-john

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
