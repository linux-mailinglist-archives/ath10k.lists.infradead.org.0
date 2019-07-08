Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F33F62A68
	for <lists+ath10k@lfdr.de>; Mon,  8 Jul 2019 22:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6L+mL5+StJecf6f7FMbyTtl5lj9Zd+VRW/Anbe6sHE=; b=drg1NFJ2p738nE
	WBH3dXelr6ZTIDuj4EdyIVPrZZCeMs3bHbS0DrR0A0/Vq8u0ANXMvhE6e5jz4RTZgEJlW206ew/Kj
	Mqc1cZ3FZoxbfWOzrevZB/Q0Sd3iSuiKWdS/XX68D5uqrYq+w+tAwzQjZs4T0T0cpyRniQH0Gly/s
	mvQEYt1WZFCrAvZkdABr/N9lJ969LStvQj6PDCgquBVBdzdwEXsr0SB96Xb67vu/TktCIDM6PGXba
	4w9Ik9O4rHj30sJ3MC0k086zlMTKpEocVIPMdfjMxOQ6RWAzR2NkdRtfZqkTkn3fLnXv0apRUNPwZ
	y9Qj6RVva2hgD+MzZYyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkaLa-0004aN-Eh; Mon, 08 Jul 2019 20:34:50 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkaLR-0004Zr-KV
 for ath10k@lists.infradead.org; Mon, 08 Jul 2019 20:34:43 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so17286797ljg.5
 for <ath10k@lists.infradead.org>; Mon, 08 Jul 2019 13:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dBFZRyCyJk4RFRv9CPsI2krQKYXMzg0NzprO2zX7A1I=;
 b=G3xgqReYoo3GSkZMfROj+G1V+LsFfZ+sxdSupWo479mM+nBsMYlhwh+Tu04N5jaNWt
 nSlvIFgmIAVDBnUi4N+s4Uy6bZFZl6VTNh1UzuKHMWRPTrDbrjkZlx85TsEJQarYbBFz
 9AW5ty334qmUJCphkzlsWNJG3h+Tk1sDgUuCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dBFZRyCyJk4RFRv9CPsI2krQKYXMzg0NzprO2zX7A1I=;
 b=YkvFkSvQirPpgCTN/nMvpKfkA86SQJR/43pPXmODcq08OYlzYnadzKIlW+3iVHYtvZ
 5I8KPP5KeM+ktbAx1pRgJzcBZbQJSOvTPFi6tvp0pBnZi6dKnKcjMmRjvyf1454iDvuG
 2ViIb9A9tHdziZ4DKEBZYTynqq50AR7zoptnUL4ibPI7yYxyYLNKrQpVof/OzSgowyvp
 RZA1215nM4aBJ77Kl/ga+4dcLXKKlbH5earLrFhVJpTE3AD/5r1Y8tZ1jZbnilR9BsLG
 /2fUlM+poZXxRn30XaPbrOAl9Ln5OxhAVYdMiNCS2aWdrxHaypCbPOvQXeC1OqISNUZw
 Uq8w==
X-Gm-Message-State: APjAAAX1i/iCYO/iN8QxjBf5j67l1ko8jwCcusaRCPuS1DXjQIvuVhZp
 i+hkWmucNqMUVE2yHlkFrQ5hknhEJ9w=
X-Google-Smtp-Source: APXvYqx3CPrI3LIn5SN42utT4CTErjx49ZoPxR6uwCFu4xl0vqX4GPOt9RpufcSqfouKYUTZXtUYWQ==
X-Received: by 2002:a2e:98f:: with SMTP id 137mr10770932ljj.232.1562618078758; 
 Mon, 08 Jul 2019 13:34:38 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id m4sm3870665ljc.56.2019.07.08.13.34.34
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 13:34:35 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id z28so8379865ljn.4
 for <ath10k@lists.infradead.org>; Mon, 08 Jul 2019 13:34:34 -0700 (PDT)
X-Received: by 2002:a2e:b0e6:: with SMTP id h6mr5676774ljl.18.1562618073778;
 Mon, 08 Jul 2019 13:34:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190708125050.3689133-1-arnd@arndb.de>
In-Reply-To: <20190708125050.3689133-1-arnd@arndb.de>
From: Brian Norris <briannorris@chromium.org>
Date: Mon, 8 Jul 2019 13:34:22 -0700
X-Gmail-Original-Message-ID: <CA+ASDXOjPbZ0k8dvWr3b6ns_Y3c_ydanYA9+HVUA00btJB5rxQ@mail.gmail.com>
Message-ID: <CA+ASDXOjPbZ0k8dvWr3b6ns_Y3c_ydanYA9+HVUA00btJB5rxQ@mail.gmail.com>
Subject: Re: [PATCH] ath10k: work around uninitialized vht_pfr variable
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_133441_698315_B2D93FC3 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Sriram R <srirrama@codeaurora.org>, Miaoqing Pan <miaoqing@codeaurora.org>,
 Pradeep kumar Chitrapu <pradeepc@codeaurora.org>,
 Balaji Pothunoori <bpothuno@codeaurora.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org,
 clang-built-linux@googlegroups.com,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>,
 Rakesh Pillai <pillair@codeaurora.org>, Wen Gong <wgong@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Arnd,

On Mon, Jul 8, 2019 at 5:50 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> As clang points out, the vht_pfr is assigned to a struct member
> without being initialized in one case:
>
> drivers/net/wireless/ath/ath10k/mac.c:7528:7: error: variable 'vht_pfr' is used uninitialized whenever 'if' condition
>       is false [-Werror,-Wsometimes-uninitialized]
>                 if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7551:20: note: uninitialized use occurs here
>                 arvif->vht_pfr = vht_pfr;
>                                  ^~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7528:3: note: remove the 'if' if its condition is always true
>                 if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7483:12: note: initialize the variable 'vht_pfr' to silence this warning
>         u8 vht_pfr;
>
> Add an explicit but probably incorrect initialization here.
> I suspect we want a better fix here, but chose this approach to
> illustrate the issue.
>
> Fixes: 8b97b055dc9d ("ath10k: fix failure to set multiple fixed rate")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/net/wireless/ath/ath10k/mac.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
> index e43a566eef77..0606416dc971 100644
> --- a/drivers/net/wireless/ath/ath10k/mac.c
> +++ b/drivers/net/wireless/ath/ath10k/mac.c
> @@ -7541,6 +7541,8 @@ static int ath10k_mac_op_set_bitrate_mask(struct ieee80211_hw *hw,
>                                                                 &vht_nss,
>                                                                 true);

^^ Technically, this call to ath10k_mac_bitrate_mask_get_single_rate()
can fail to assign 'vht_pfr' as well. I can't immediately tell whether
it provably will never hit the -EINVAL case, but if we do, then you'd
have another uninitialized case.

I *believe* it shouldn't fail, since we already pre-checked the VHT
MCS lists for "exactly 1" rate. But it still seems like better code to
pre-initialize and/or add error-handling, so we don't rely on that
implicit proof.

I'm not quite sure yet what the "better" answer should be for
resolving this, but at a minimum, I think the above could be improved.

Brian

>                         update_bitrate_mask = false;
> +               } else {
> +                       vht_pfr = 0;
>                 }
>
>                 mutex_lock(&ar->conf_mutex);
> --
> 2.20.0
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
