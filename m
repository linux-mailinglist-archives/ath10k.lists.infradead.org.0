Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DBDB88BB
	for <lists+ath10k@lfdr.de>; Fri, 20 Sep 2019 02:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0k9hY7s1rPOClIBRnCW7Km8PNBSXrwXciVZaak7s7/Q=; b=dAxylC7TXP1qMx
	oByoJbhCP/lu7THerAN6wpMWcN8PnTJ94BIAeKUqJUa7VzRro6tCDIs9wide3L7BdMK5zP1zcUd0I
	e7nEXG2FgI0AOxbK07gCx2NKk7pJKssg6N52OpTF89ovzVj/m5nENdadOg10P5N2J7BDD4jkRjOTm
	OPSkSJLcdJWlpSCbdxZUk3kihbW2lZDsYWc6P0sQ6xc56KHK8XB85a2I7cCNL46rP+v6v3Lqz1DXb
	YF0wDQdcuRDFexz2b72WH1+anOKB0hOtXyNDJpzJl4sfOU+bzv4++IBEvKhID2NcTHInCjIXpO6nf
	cH8FrN/ER0co2OPgFsaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB7AH-0000Cb-UX; Fri, 20 Sep 2019 00:52:49 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB7AA-0000C9-TE
 for ath10k@lists.infradead.org; Fri, 20 Sep 2019 00:52:45 +0000
Received: by mail-qk1-x743.google.com with SMTP id z67so5455779qkb.12
 for <ath10k@lists.infradead.org>; Thu, 19 Sep 2019 17:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iiu7m8DUVWZxCoLUBSCJNA90YeclA/xM3wyYeZQULiE=;
 b=oeFGdk6HEZzwtPUIq/2Gsk2c4kXst0Qsqf7PRP+6xzgYwwVjM7riJud/oeBQFSGlFD
 iglEdfBLfUJ+90FLZSap4PHamyFAMKRZcRmNEngShJXeoFBzy3YrcA7wv7aJbeNK2IgH
 9XU1Gt+hPw8ktpTaBqac/bO4BhkLmZLFJnKhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iiu7m8DUVWZxCoLUBSCJNA90YeclA/xM3wyYeZQULiE=;
 b=tMfPMIbqPn96eV2mnKQ53SxVJznU24izv5kj2vaRkTOOchieU+61hRiCGcsXZdzjcl
 X8Q4dl03Kq8tDXO9LMz9LpD/U9Vu6agF3bGu1OmYVFU6SnnjI4wz+keVTOFyNB5F3hdq
 mq82j5Gg0mPOTa1voTBAg6/Y+WMN6AoRMl3rPV9FMRYGkYji8BqGf6wXidi5G/4OKFoe
 jXNQ/kdNIIICVmMvydcJHBnNNObUcxeTnfbIKXIp2vBT/UH7+9FAhKTsodxOREgtysLq
 /mDtEEEoTcfy1USsxk/AfWPTSm7E2XjHqAktQZwa+x48l63yqwHIQJC/ZASw/9D8BhsO
 etsQ==
X-Gm-Message-State: APjAAAUHG+p1518gXtR9xCsgn9NGihLYyrd62kzMYDgpEfxIk2iUq7gv
 z7jS3pGtWb3QYdEqxfHT/pauCD00E0Syaw==
X-Google-Smtp-Source: APXvYqwn/bDG/5zFCnwdzCr72MmEGGd2CF9Xw6tAGaCL82Tma2WeP2mVDeOb7BarUjIysWKHh8RHDA==
X-Received: by 2002:ae9:d885:: with SMTP id u127mr658517qkf.109.1568940759619; 
 Thu, 19 Sep 2019 17:52:39 -0700 (PDT)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com.
 [209.85.222.179])
 by smtp.gmail.com with ESMTPSA id w11sm178350qtj.10.2019.09.19.17.52.38
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 17:52:38 -0700 (PDT)
Received: by mail-qk1-f179.google.com with SMTP id 201so5443365qkd.13
 for <ath10k@lists.infradead.org>; Thu, 19 Sep 2019 17:52:38 -0700 (PDT)
X-Received: by 2002:a37:a00d:: with SMTP id j13mr732778qke.2.1568940757739;
 Thu, 19 Sep 2019 17:52:37 -0700 (PDT)
MIME-Version: 1.0
References: <1534402113-14337-1-git-send-email-wgong@codeaurora.org>
 <20181114225910.GA220599@google.com>
 <CA+ASDXMh7vdfkA5jtJqWEU-g-4Ta5Xvy046zujyASZcESCGhAQ@mail.gmail.com>
 <87woe5aehr.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87woe5aehr.fsf@kamboji.qca.qualcomm.com>
From: Brian Norris <briannorris@chromium.org>
Date: Thu, 19 Sep 2019 17:52:26 -0700
X-Gmail-Original-Message-ID: <CA+ASDXPaw0womrCF98zzUinMTYSxeanK0Rc-0kn56TBEWJ__5w@mail.gmail.com>
Message-ID: <CA+ASDXPaw0womrCF98zzUinMTYSxeanK0Rc-0kn56TBEWJ__5w@mail.gmail.com>
Subject: Re: [PATCH v3] ath10k: support NET_DETECT WoWLAN feature
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_175242_973093_3D3F5CB2 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

(I realize I replied to the v3, not the v4 which was merged.)

On Wed, Sep 18, 2019 at 7:03 AM Kalle Valo <kvalo@codeaurora.org> wrote:
> Brian Norris <briannorris@chromium.org> writes:
> > Since Wen has once again suggested I use this patch in other forums,
> > I'll ping here to note:
> >
> > On Wed, Nov 14, 2018 at 2:59 PM Brian Norris <briannorris@chromium.org> wrote:
> >> You've introduced a regression in 4.20-rc1:
> >
> > This regression still survives in the latest tree. Is it fair to just
> > submit a revert?
>
> Your description about the problem from an earlier email:
>
>   "It seems like youre enabling SCHED_SCAN support? But you're not
>    adding the NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR feature flag.
>    So it puts us in a tough place on using randomization -- we either
>    can't trust the FEATURE flags, or else we can't use both SCHED_SCAN
>    and scan randomization."

Yeah, maybe I shouldn't have trimmed that context :)

> So essentially the problem is that with firmwares supporting both
> WMI_SERVICE_NLO and WMI_SERVICE_SPOOF_MAC_SUPPORT ath10k enables
> NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR, but
> NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR is not enabled which is
> inconsistent from user space point of view. Is my understanding correct?

Yes, that sounds about right.

> Wen, can you enable NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR? Does firmware
> support that?

I feel like I've asked him that privately, but asking here might not hurt :D

> If that's not possible, one workaround might to be to not enable
> NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR if firmware supports
> WMI_SERVICE_NLO, but of course that would suck big time.

Yeah, that would be strictly worse than the current situation I think.
SCAN_RANDOM_MAC_ADDRESS is a product requirement for us. At least
right now, it's possible I could teach a user space to just ignore
SCHED_SCAN if it doesn't support the appropriate randomization
features. (I don't want to have to do that, but at least it's
possible.)

Brian

> Here's the full context in case someone is interested:
>
> https://patchwork.kernel.org/patch/10567005/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
