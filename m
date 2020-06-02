Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2430D1EC1E9
	for <lists+ath10k@lfdr.de>; Tue,  2 Jun 2020 20:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2ZR8mXWj3IkpXEhuBEU80Ywgl5jhbvDOovPWCYupbw=; b=NTEGSSjYX15Wkr
	FxbIOiCVCanrP8YXriy1iX8RL264P6D8oBdMNBXkOXblEGUphmgLkvMTVXL4vyWyFQrmjV3MXFhbQ
	X96mRc9pvvtoH6kXQt86XrN2w21pFGmTHFFCqCTQ9RD8XcPsD5HA46I7490zYcCGkuZDKr6n3M+KH
	vyaeQEYeM9qiVA76J5vm1aoHa37W31RUXOyE9CrQZ6b3L+UNlv5zUGKUMnyhHr2D2sA4RbTItx0WZ
	joNEsQ2pJsYvP8AGmTFgnHfsH3zlhXe/5qhm+oNOi7USX224jhGIckK2Yru0T2kuG/ksuz/OVp/uj
	bTcEI35sS1yLf+pnEYtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgBld-0006xo-Mc; Tue, 02 Jun 2020 18:36:05 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgBlY-0006xI-Oy
 for ath10k@lists.infradead.org; Tue, 02 Jun 2020 18:36:02 +0000
Received: by mail-lf1-x144.google.com with SMTP id z206so6791373lfc.6
 for <ath10k@lists.infradead.org>; Tue, 02 Jun 2020 11:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ijFpZRjwoX99ihI6aAs0JBxKZ+/9IGA5AcjqDRRxjVE=;
 b=ErEmBwVZMzkC+6G17Sf/f4on+HIvZSZ8AKzHtw2WN/e8HA2YTsmF9nWW8KKw3DJLKe
 me5TqmdmNjfI5P78MUGsnW7a7Dii5HwIzqYhuYskjDyatp9sbSa71pmV8MU+CKmoKMWS
 kqSzc5ZAe9uDm/UNtKVFJjB4LyNBB/Ms7PbzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ijFpZRjwoX99ihI6aAs0JBxKZ+/9IGA5AcjqDRRxjVE=;
 b=VUGjs1D9zBS+UcqvJ8MqXlmu/8YFm3wlz0Tzi0NFJyimbE4Leu6GmwGUtVIrMGZWsE
 XeZW1b2ifo7Dhoje/kern3p2CthDie4PKRUSTgMlZ8II1d68/03RvIK2MVIjM8BBWS47
 ikdXRxvSVkusJ6fTVoBFYB2ncWj2TLxaCQw58fZ6fvRX4lWrotmXbsCxcWhhE2A5pTjo
 1XQ6UXPPgVO5NpBVPmCBuglPEPjnDXY0jBpRK+4YdaBLDA5Gx3LcqJV43K3hxTzBlax3
 fnrTgk06u8j3J6wqwyUrT2mDEs/RubDbikwPkT2JBsdLhqStNnEw2PFbYpaxuBhOeF/c
 hGjQ==
X-Gm-Message-State: AOAM5339SzNXR8HPsikMJFx6AlUf6IZ4HEWoEF+kapuzKTElqO8T1gz4
 WEINutdVAD9g4KTdzUNw2lN9zDEf9P0=
X-Google-Smtp-Source: ABdhPJwgn6Sw1GWBvGI/mXWDdWsO4s7k6LNlHmVSdkv7MZe6Pl+Zr/VTsG+c0Qbcv0ilwuv/vSrePA==
X-Received: by 2002:a05:6512:3049:: with SMTP id
 b9mr367571lfb.44.1591122957914; 
 Tue, 02 Jun 2020 11:35:57 -0700 (PDT)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com.
 [209.85.167.42])
 by smtp.gmail.com with ESMTPSA id y9sm691293ljc.62.2020.06.02.11.35.56
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 11:35:56 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id w15so6764346lfe.11
 for <ath10k@lists.infradead.org>; Tue, 02 Jun 2020 11:35:56 -0700 (PDT)
X-Received: by 2002:a19:4acf:: with SMTP id x198mr353040lfa.129.1591122955826; 
 Tue, 02 Jun 2020 11:35:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200527165718.129307-1-briannorris@chromium.org>
 <CAGRGNgX5n=0OEi7hMrmgVZGD=orGpgvkyLrhmXVKSFYdBJ+eUw@mail.gmail.com>
 <CAJ-Vmomx0UFEa1w2HsGMQsZb+K8hyK=Zz9cKSo7tHv5GiMc1yw@mail.gmail.com>
In-Reply-To: <CAJ-Vmomx0UFEa1w2HsGMQsZb+K8hyK=Zz9cKSo7tHv5GiMc1yw@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 2 Jun 2020 11:35:43 -0700
X-Gmail-Original-Message-ID: <CA+ASDXNicJmAKvkjD5mGFVQ+bmz8nHT_A1oqtjoS=spRSFP70A@mail.gmail.com>
Message-ID: <CA+ASDXNicJmAKvkjD5mGFVQ+bmz8nHT_A1oqtjoS=spRSFP70A@mail.gmail.com>
Subject: Re: [PATCH] Revert "ath: add support for special 0x0 regulatory
 domain"
To: Adrian Chadd <adrian@freebsd.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_113600_827980_B3D4AA1A 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
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
Cc: Julian Calaby <julian.calaby@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, stable <stable@vger.kernel.org>,
 ath10k <ath10k@lists.infradead.org>, Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 8:42 AM Adrian Chadd <adrian@freebsd.org> wrote:
> On Thu, 28 May 2020 at 05:02, Julian Calaby <julian.calaby@gmail.com> wrote:
> > On Thu, May 28, 2020 at 5:18 AM Brian Norris <briannorris@chromium.org> wrote:
> > >
> > > This reverts commit 2dc016599cfa9672a147528ca26d70c3654a5423.
> > >
> > > Users are reporting regressions in regulatory domain detection and
> > > channel availability.
> > >
> > > The problem this was trying to resolve was fixed in firmware anyway:
> >
> > Should we tell the user their firmware needs to be upgraded if it
> > reports this regulatory domain instead of completely dropping support
> > for it?

I'm not really sure how to do that properly in general, and I don't
plan to do so. I'm simply reverting a change that caused people
problems, and noting at the same time that the original problem was
resolved differently.

I don't really have a stake in this patch, because everything I care
about works correctly either way. (And AFAICT, any hardware that is
affected by this patch is somewhat broken.) I'm only posting the
revert as a community service, because Wen couldn't be bothered to do
it himself.

> Also that commit mentioned a 6174 firmware, but what about all the other older chips with a regulatory domain of 0x0 ?

My understanding was that no QCA modules *should* be shipped with a
value of 0 in this field. The instance I'm aware of was more or less a
manufacturing error I think, and we got Qualcomm to patch it over in
software. I don't think people expected anybody else to have shipped
modules with a 0 value, but apparently they did. I don't know what to
do with those, other than just leave well enough alone (i.e., $subject
revert).

> As a side note, I'd /really appreciate/ if ath10k changes were tested on a variety of ath10k hardware and firmware revisions, rather than just either the Rome or embedded radios, rather than also including peregrine, cascade, besra, etc.

Wouldn't we all love it if everybody else tested appropriately. But
Qualcomm folks can't be coordinated (trust me, I've tried), and apart
from things like KernelCI (which so far has no WiFi tests, IIUC),
there's no community testing efforts that don't involve
"${RANDOM_PERSON} boots ${PERSONAL_BOX} and see if it blows up."

This also might not be the best place to admit it, but I'll be up
front: I have no idea what peregrine, cascade, or besra are.

Brian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
