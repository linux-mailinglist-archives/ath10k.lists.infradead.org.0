Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224272C6E7
	for <lists+ath10k@lfdr.de>; Tue, 28 May 2019 14:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ns5iUnTbkoRbRN4nzn9+wgdIWON8Fk8GXaGf2DkRBzo=; b=uifu3uXF9K2OK4
	b9Mx0rwe0X5tJWjfWgLKF6mPtUQp+00BMVQYD1AqZ+dmM3r/ReHV5TAw2B3NTziEUWXunG/5ED3p/
	yfcR2uLJ1om1UrLBQs2lU2gnWwdo0QiR2jX7+E9/hVoepR2PqQGF60oSAB9TxdZ2O3kXHkSVDd/Bu
	0LChNlHT8fvBW7xoXMp2yYDvtNuwLFqnujqMjpaLLiN+vdQ2aqxxuiaaaWSCQ3bknRCllRmR2TCEj
	u4EL52LFJ3mmAte6p/W2BfEfOvb7HCj2WW5XhZ0jzdOb9WeuX9WNgPwYpm7hJ1iXcKM9l5S/Djgu8
	iEPZXJCj9IO91MzDd6/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbUq-0001rS-VH; Tue, 28 May 2019 12:46:28 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbUm-0001r2-E4
 for ath10k@lists.infradead.org; Tue, 28 May 2019 12:46:25 +0000
Received: by mail-vs1-xe42.google.com with SMTP id w124so12662672vsb.11
 for <ath10k@lists.infradead.org>; Tue, 28 May 2019 05:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WPMhKOX/2gDQVdTUPpeGGgiNX2GpsAfTBvJ6RzuLwtQ=;
 b=P9ikhGQsg6tKRQDqhMorBGKpTZgL3XDpoYbj+uXXtn1FsjfhbnAxrwR2EfkM9/DWTj
 Aj6f0SdmeAjDLrwbRpbugp8dp4FvGe2N+5EvmUt0O5Umk+2rg8/pmDgAhhs2Y0BdsSq/
 JpxeSqISDSBp4IySMpUtQOjAmJb29dE8uBw37hOJ/am0olsovqafHMQ5oxpKlPxRs6qY
 7RsZn012zz9sZiuzn8ToIj8HrPLINrPsk1oZUDZgNuYUogTRni2ZABJTFjzJIe0OxEMe
 lzpxZPVQ6ABUoqSeRS9wRBiwh/LnBR1hUQ/zDBMfPzo3JepeVSYYLz6wioYy8cHouf4t
 1B+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WPMhKOX/2gDQVdTUPpeGGgiNX2GpsAfTBvJ6RzuLwtQ=;
 b=CiOEfwfeeCztqVNx1wrB7iSPhCMO+dKH/x/AYJUjsWvKgQ0ETN1qzQCsy1FK7co2JO
 5x4xdHW/jI3zFrwwPRoDKUXvH2h0HZpBQmZLEaEOMkiBLKh/Nfy5XAp/SaTKGg8TJ+e1
 7uZJMMmMZF5qHUuTHoBBBsSEyDyBBEzXoEjay6k/OnglyIcve8K09bvD1ERN1gN81Iuk
 a33qwjznHiRMs+t9qapPbNQEno0pBmbqNianBlRC0h8m6hW3MT2zDZXCbKltnmcsV0ap
 zATPHYrJoLwrkUblDRWbyx4rg5DVTjWJqebqeGxjRHiISGXTLPd5DJqYrGe6nAI/F3Qv
 FgHQ==
X-Gm-Message-State: APjAAAXxkZcjhYSO53GLInkgwcjQeNH3NIP/b7XmKNkrN6QD2/7W+4X6
 JVdl2P33ZlSGYpEEmNRTlE/5uDYtNGouVaheB842Tw==
X-Google-Smtp-Source: APXvYqwN3R4lENeMMTq+jxVugEfI89RxItVy4N2zPnBYc+/r6+aULWRh3QKl197OvGwTzHhtpH9GZ7f/zXhZ1GQiPfU=
X-Received: by 2002:a67:ebc5:: with SMTP id y5mr71977373vso.34.1559047583180; 
 Tue, 28 May 2019 05:46:23 -0700 (PDT)
MIME-Version: 1.0
References: <1556417825-13713-1-git-send-email-wgong@codeaurora.org>
 <CANEJEGug_YregN5vZq_R=ppUV5ptb4WUq_TB+JApzQ4DEO_AfQ@mail.gmail.com>
 <36950ff25c0747629e60ccb68819e93a@aptaiexm02f.ap.qualcomm.com>
 <87pnour4jg.fsf@codeaurora.org>
In-Reply-To: <87pnour4jg.fsf@codeaurora.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 28 May 2019 14:45:46 +0200
Message-ID: <CAPDyKFrs1rO38yd-yQ50y2Oo1JE=R2hWM-5FWp=Ng_TM1df7ww@mail.gmail.com>
Subject: Re: [PATCH] ath10k: remove mmc_hw_reset while hif power down
To: Kalle Valo <kvalo@codeaurora.org>, Wen Gong <wgong@qti.qualcomm.com>, 
 Grant Grundler <grundler@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_054624_493213_48B7F07D 
X-CRM114-Status: GOOD (  24.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, 7 May 2019 at 11:35, Kalle Valo <kvalo@codeaurora.org> wrote:
>
> + Ulf to give comments from SDIO point of view

Apologize for the delay, it's been a busy period.

>
> Wen Gong <wgong@qti.qualcomm.com> writes:
>
> >> -----Original Message-----
> >> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Grant
> >> Grundler
> >> Sent: Saturday, May 4, 2019 2:01 AM
> >> To: Wen Gong <wgong@codeaurora.org>
> >> Cc: linux-wireless@vger.kernel.org; ath10k@lists.infradead.org
> >> Subject: [EXT] Re: [PATCH] ath10k: remove mmc_hw_reset while hif power
> >> down
> >>
> >> [repeating comments I made in the gerrit review for Chrome OS :
> >> https://chromium-
> >> review.googlesource.com/c/chromiumos/third_party/kernel/+/1585667
> >> ]
> >>
> >> On Sat, Apr 27, 2019 at 7:17 PM Wen Gong <wgong@codeaurora.org> wrote:
> >> >
> >> > For sdio 3.0 chip, the clock will drop from 200M Hz to 50M Hz after load
> >> > ath10k driver, it is because mmc_hw_reset will reset the sdio's power,
> >> > then mmc will consider it as sdio 2.0 and drop the clock.
> >>
> >> Wen,
> >> 5468e784c0600551ca03263f5255a375c05f88e7 commit message gives
> >> reasons
> >> for adding the mmc_hw_reset() call. The commit message for removing
> >> gives different reason for removal. Both are good but second one is
> >> incomplete.
> >>
> >> The commit message for removal should ALSO explain why adding this
> >> call wasn't necessary in the first place OR move the call to a
> >> different code path.
> >>
> >> > Remove mmc_hw_reset will avoid the drop of clock.
> >>
> >> This commit message makes it clear the original patch introduced a new
> >> problem. But the original patch fixed a different problem and that
> >> this proposed change seems likely to re-introduce and the commit
> >> message should explain why that isn't true (or how the original was
> >> fixed differently)
> >
> > The mmc_hw_reset's effect depends on the hardware layout/configure
> > software's behavior, recently it will effect the clock of sdio for the
> > platform I used. And it will still work well without mmc_hw_reset for
> > the platform I Used currently. If sdio cannot work on other platform,
> > I think it can add flag in ath10k_hw_params_list for the platform to
> > call the mmc_hw_reset depends on the flag.
>
> I don't see how you can use ath10k_hw_params_list to separate SDIO
> controller functionality, I assume that's the real reason for difference
> of functionality? Maybe this is a bug on the SDIO controller?

Ideally mmc_hw_reset() should not make the SDIO card to become
re-initialized differently than it was originally.

However, as that is the case here, it sounds like that there is a bug
somewhere. Perhaps the boot-loader have done some pre-initialization,
which isn't covered in the second case, or maybe a bug in the mmc host
driver.

>
> Ulf, what do you think? Any suggestions? Full discussion here:
>
> https://patchwork.kernel.org/patch/10920563/
>
> --
> Kalle Valo

In the end, it seems like this needs a more detailed debug study, to
figure out what exactly happens during the re-initialization of the
SDIO card, rather than just papering over the problem by removing the
call to mmc_hw_reset() in the SDIO func driver. Hope this helps.

Kind regards
Uffe

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
