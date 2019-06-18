Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0398049E61
	for <lists+ath10k@lfdr.de>; Tue, 18 Jun 2019 12:40:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/LsIEejysg9j8Eg0Ri4w6rTHK47LuT+I0iWbS0i/ic=; b=rK+jb8lHbKB0ax
	d/bHSu5EJJs74aNoratys2+ZV/Q9IIo+ydGFxqfG6be0teEceu+rfwl+AwLASL7ESRg4tvmOsEkCW
	itv46CDpcwHJiqA5ZnUnkVAk5MpM7SaTj6uX6vTxYiOuYZyx7jwJg0JgsNO+AF5vCoLzwkg652SGr
	+3CQe2SutgnW8F8EsuDDq2atib8lElvLKVv3BOX5c/GDxXJunvUl6RFiEAbch7jTmJHHp8IFnHWep
	G5E23VSHxirRL/3SGEvGyw21NGGy20GsVIw8+xNpsnfL9s7l0YMB/Kn1C1a3BZ3RSAO8fHbKviisR
	HFll/sQ4ADQwX4o/jh7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBX2-00050E-55; Tue, 18 Jun 2019 10:40:04 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBWx-0004zn-C4
 for ath10k@lists.infradead.org; Tue, 18 Jun 2019 10:40:00 +0000
Received: by mail-qk1-x742.google.com with SMTP id s22so8164811qkj.12
 for <ath10k@lists.infradead.org>; Tue, 18 Jun 2019 03:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QUjvDqJpac2tWAcPmVihCXHdjeBt4L6Xc+eSlRSPug0=;
 b=ftTL5A/2Ms+voYrgMwb0dpQCUamHvrh22tvxMVuC9NnC3JtDe3uVt5r2uGu92c3lVy
 tcdup6uFgVItOwnTjFZSAmXhKsGUm1pW8QvHu5JBkAmG8vtDJDIs+7Qgy7qKiWxmhexW
 6tzVtilLa+4W5twTAqf+LoZoKU+0mkkuLRsdY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QUjvDqJpac2tWAcPmVihCXHdjeBt4L6Xc+eSlRSPug0=;
 b=f9hBh4GRu+FRfRkVOiaSUb1rnqY+VvSjdhehh1/m7rwvqKlgbSSErZglRim1FBdtzr
 rOwO/S9PlQ8yz8E1WVYP/zoT5MbYka1NOX4EPsLjkHezowhUEyaONHB32QYrEjKdgyQ7
 Oo8R6nhCNuqK0/gwKa+7Z+DFTuJ3XkTF4lQSD39Qr0zBkye7nfvmtdWxhB8wvkhFroyj
 6HzTTIMsc7F+aIFLkB6qHDsHbEtrOryG+ZBdmd3gL80ZZoMT7r9rZ8dz8PBz4rkR01qG
 zc1roLCu/SH/pC4pY3cf4SPbc9ToXBySAixWRJZp81+WpxBC0Mg+QcaRqclo/Sg4YCAO
 EoVg==
X-Gm-Message-State: APjAAAUPqEx9VxMakm4e5tczoQLvbZkj/CXS30VK8X6dLzhhtp8GChUP
 v4uHZFdedPvBHK8NPst1Ch63DHt0U3TgCkC4YBSUtw==
X-Google-Smtp-Source: APXvYqx0S4+mjl+uTEs207t+KiTBcOXlFlw+UmQ+BCF+LoJi85/9/uZjoaR+Jb31lAhfyAplPcrJC6Pn59+/Ge9hcvA=
X-Received: by 2002:a37:a244:: with SMTP id l65mr76059118qke.118.1560854397557; 
 Tue, 18 Jun 2019 03:39:57 -0700 (PDT)
MIME-Version: 1.0
References: <1556417825-13713-1-git-send-email-wgong@codeaurora.org>
 <CANEJEGug_YregN5vZq_R=ppUV5ptb4WUq_TB+JApzQ4DEO_AfQ@mail.gmail.com>
 <36950ff25c0747629e60ccb68819e93a@aptaiexm02f.ap.qualcomm.com>
 <87pnour4jg.fsf@codeaurora.org>
 <CAPDyKFrs1rO38yd-yQ50y2Oo1JE=R2hWM-5FWp=Ng_TM1df7ww@mail.gmail.com>
In-Reply-To: <CAPDyKFrs1rO38yd-yQ50y2Oo1JE=R2hWM-5FWp=Ng_TM1df7ww@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 18 Jun 2019 19:39:46 +0900
Message-ID: <CANMq1KD7tjG4dq4YP=oKTs_Ki6Wd1E_VbT7+b7e4UeBGY-KMsw@mail.gmail.com>
Subject: Re: [PATCH] ath10k: remove mmc_hw_reset while hif power down
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_033959_438135_80314030 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Wen Gong <wgong@qti.qualcomm.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Grant Grundler <grundler@google.com>, Wen Gong <wgong@codeaurora.org>,
 Claire Chang <tientzu@chromium.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 9:46 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
[snip]
>
> In the end, it seems like this needs a more detailed debug study, to
> figure out what exactly happens during the re-initialization of the
> SDIO card, rather than just papering over the problem by removing the
> call to mmc_hw_reset() in the SDIO func driver. Hope this helps.

To close the loop on this, we fixed this on the platform by driving a
reset/enable pin during reset:
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1657506
(device tree for this device is not upstream yet).

The problem has to do with the fact that on re-init (without power
cycle or reset/enable pin cycling), the device still sets S18A=1 in
CMD5 response (that's incorrect, the device should set S18A=0 if it's
already using 1.8V), so the host tries to switch voltage using CMD11,
which fails, as the device is already in 1.8V mode (that's correct
according to the specs).

Thanks,

>
> Kind regards
> Uffe

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
