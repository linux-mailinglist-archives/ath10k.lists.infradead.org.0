Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF3013378
	for <lists+ath10k@lfdr.de>; Fri,  3 May 2019 20:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cd0J6xRU2mmdPy8hR/9VJk4b9S5UHD1Hz+15U3RplqM=; b=aV1YJcHoKzoaxP
	Mi05LrneGD8Kd0ypzPvYvNNFxedTonndrmkYB1eZRwKgkcYH9FY7BS+WLsRV09oYKwG1GbnmVNkW1
	ayuxjX/5J3D5mvIpJaqmKnzBAglyqknz6ZGdOoiMlvqvbiLYdGSvogsKxO36XNCcjD0ka+pkJ9Axa
	RA7Oxy2aTWVfHcY+SmJYgQE1xvZPOJL52Tb0yqi9b5IQyQtwotADVLCs7Y8SCutZ5z5ob9uwNbXik
	MIXvSvtsD6lla5LiX4t8lxKFU0elOM+5KAnoyUMXrEXVKBSYCllgMham58iaaUHTcwy7Afn4s1c1S
	eDJsiWu1EmYMBiAc4GDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMcV4-0002uq-0Z; Fri, 03 May 2019 18:01:34 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMcUz-0002s9-3Y
 for ath10k@lists.infradead.org; Fri, 03 May 2019 18:01:31 +0000
Received: by mail-io1-xd42.google.com with SMTP id r18so5947428ioh.2
 for <ath10k@lists.infradead.org>; Fri, 03 May 2019 11:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zv9JCTHuA/ieeqwCt9ck9JDHpFDwCPi7mkzJ1bgK9rE=;
 b=g6VSBOMfRstBRXhWLGho9f79ivN87N8N+FaSn5O+bRoMEaBIb9GdpL+/HwfNBDkWRv
 6TLXtXy/A8CwJ0u2w8W5tVqt+a1xLiKJJ+k7gjwqpzFSKUNPh6vmR47Nt27dxufnrhz/
 Ki817y+WYBz/HQ2geou4H/4BT0KLEY3luCWgf4ZStmbhEGZ9dtEQJqp9kd7iV+F9/Jva
 g2PxiX+dquGLWzzE0HZ3ZVWIKqBPecBsFipwsN0nyJ2k7qdabAzrdQOo6QBUiQQ1rmA4
 +1OUs2xIBtY2bHkhw/cKvVB9onJZkZMYV2Tr3hK84uNTfQOHrSFpmm+DbGK3RbgtmfDO
 +A2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zv9JCTHuA/ieeqwCt9ck9JDHpFDwCPi7mkzJ1bgK9rE=;
 b=j6LuwJz23S/gQ54soBK5VvAg36BK29Gg04khwXsniDNd/6MznhyVgCKkQiC/VF5bo2
 Yfx0FlhmZ8kqF2Z9RwZDQSoGr8mIViZ/Dtw9DRMeyShM3+REMCkLemXkVLWdT7bYDd9/
 FdQZieX6rhs51pRuhaIhy0qZMMfxn30Jtivnnv3DMkDKDq5Q6vRoBwmK1rur7fHicYFA
 5yomw5qSqheD3RgFeDuley9R/EJDcrvCu+8Z9ybF1XHzltlWrD5nkoppT1fLy8O7XDZX
 i5xyT3+Z/m5cq2UQB+nd+OQGIaRT3duXmbva9fMB/h0wLnimTwc+y616og8FPEGG3MK3
 X0sg==
X-Gm-Message-State: APjAAAVm80JIyjriUwmoKrUrPQH/iv0FBskGGdMaH6XdG3gzP1jbCcRc
 qc0xoxg36phQIG+eySlQDBuqwnx8FF6zszGtPfWoeA==
X-Google-Smtp-Source: APXvYqy72ztBEaWcSQIJS831AMS3FKoAxr7WAYTH5HkAPSKGn7G4hP28qwLijK/1iQm6IlQfYMAPE0SW4Y3nHC9P6Qo=
X-Received: by 2002:a5d:914e:: with SMTP id y14mr296244ioq.77.1556906485088;
 Fri, 03 May 2019 11:01:25 -0700 (PDT)
MIME-Version: 1.0
References: <1556417825-13713-1-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1556417825-13713-1-git-send-email-wgong@codeaurora.org>
From: Grant Grundler <grundler@google.com>
Date: Fri, 3 May 2019 11:01:14 -0700
Message-ID: <CANEJEGug_YregN5vZq_R=ppUV5ptb4WUq_TB+JApzQ4DEO_AfQ@mail.gmail.com>
Subject: Re: [PATCH] ath10k: remove mmc_hw_reset while hif power down
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_110129_389271_596E4D99 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

[repeating comments I made in the gerrit review for Chrome OS :
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1585667
]

On Sat, Apr 27, 2019 at 7:17 PM Wen Gong <wgong@codeaurora.org> wrote:
>
> For sdio 3.0 chip, the clock will drop from 200M Hz to 50M Hz after load
> ath10k driver, it is because mmc_hw_reset will reset the sdio's power,
> then mmc will consider it as sdio 2.0 and drop the clock.

Wen,
5468e784c0600551ca03263f5255a375c05f88e7 commit message gives reasons
for adding the mmc_hw_reset() call. The commit message for removing
gives different reason for removal. Both are good but second one is
incomplete.

The commit message for removal should ALSO explain why adding this
call wasn't necessary in the first place OR move the call to a
different code path.

> Remove mmc_hw_reset will avoid the drop of clock.

This commit message makes it clear the original patch introduced a new
problem. But the original patch fixed a different problem and that
this proposed change seems likely to re-introduce and the commit
message should explain why that isn't true (or how the original was
fixed differently)

cheers,
grant

>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/sdio.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index fae56c6..f1d2af8 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -1433,10 +1433,6 @@ static void ath10k_sdio_hif_power_down(struct ath10k *ar)
>                 return;
>         }
>
> -       ret = mmc_hw_reset(ar_sdio->func->card->host);
> -       if (ret)
> -               ath10k_warn(ar, "unable to reset sdio: %d\n", ret);
> -
>         sdio_release_host(ar_sdio->func);
>
>         ar_sdio->is_disabled = true;
> --
> 1.9.1
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
