Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90C11225F7
	for <lists+ath10k@lfdr.de>; Tue, 17 Dec 2019 08:55:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MODqiMS/ic9PmBkm1kV8S5dPra4O+GZToyqNq7OGJb0=; b=nJKuutnOG9uDev
	gfWqPTNl9F8hf0AIqklDtn+ywpaGsuU7T61GLd/kpM3bCuPDezQ5+YvvutPVxY6xBAyzrUsjHgCMQ
	YSsoMXLQIwPAvXDFRgl2ysBJSCJNOAc/Pg2HfQwPYYbxBD0eNmPsbRQxgfChMVZ5JwRXIzcsy/L0v
	JgUk9LCz/CQA2mnW/1PHR9H2fLugI1M2n8OzP2OxKU5OzeifzPk4Xjwi6ZquwNoAEkBH9CUSFASWV
	Nf2RfvhWSYVHy61hoCp2T7BQ5scZ958zAwnBR5FYqtvzK9Pggo1lWzOla61xh1twZY9lrZ88rmi8T
	berNmEZZN8hy1WS0EY3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7he-0000YI-C4; Tue, 17 Dec 2019 07:55:34 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7hZ-0000X2-St
 for ath10k@lists.infradead.org; Tue, 17 Dec 2019 07:55:31 +0000
Received: by mail-ua1-x941.google.com with SMTP id q22so3096027uam.6
 for <ath10k@lists.infradead.org>; Mon, 16 Dec 2019 23:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D/G4kabHjV1Lusdqw/G6dw2FBJ3uTWRu8cTEqrGadRc=;
 b=cqxUCS1G7IVlmZvkGltrHuDvw87/5/pLpJM73tDzujFsINJejRbYX9BIQK4bK0qEpd
 aL7ZT7jEZvO2i8XPmtx7M81MjiuXlETZubVw6VAs5B8NlxJw2TUhLzUyj3DNJbtM2vzb
 dOt8lrato+QsLoDXAErMfix5j883CUoviYZGphX3bOkKf1ZKQUFsNt/DYI16E2F5uY5h
 v7Zz5FgP+hD/MvfaOZM6pPeguCJ6VYy0wvSfTwUXfItg6v7iUKVdJM0jemddjHzambNe
 i2wsgCghSxNeJdd/rqzolcrVeYq8mXslcPymPufh+L4n2eaivAXpE9TLdvkG+eZr8z29
 /20Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D/G4kabHjV1Lusdqw/G6dw2FBJ3uTWRu8cTEqrGadRc=;
 b=KBhVk5Jm5eiTw/xs4twsEC5kcB6SNR9lW6ZiK+IUfkaYVMLqPjhcSmx7BbTxq5dHnn
 XomLybLwgp7U7RzlSwLIhbRELraUJnmbkXF81hnnOmjwfg66yzfSuz1PF6e4WBopZE1G
 nMgUxuxSMs/bLACMShdALyZQa2f0C8ZaFcy3++dTLu5ToCaPoYBzNN2QdcJTQHIkVd4H
 MOu1qADHtZbnFE2ZDLyZssEuFued7Ki5niQ+f+771GhkACoEfaLbR8NQybbwNFmFOfSZ
 q74t+8NtMVrYJE71EkpQnUg4/g/J37DdmMVkMhWFzQaVywhhQf65MPB7BUHWcV3Gqcel
 d1Tw==
X-Gm-Message-State: APjAAAWOm5vTBZ+PU9VjrKL3O8Z54TyzNJtZgl1i6xF7MAmkypkXTJxE
 tc5+E0GZH2Nrwvj2ywikLIz8Jh68rCxzQ6B4zzR+Og==
X-Google-Smtp-Source: APXvYqxzdVAw5xWowo76mTkKJL0/jmHoaluvjaRWrMwjM/D4pyKtGc5/nZ36l5Vnq7j6h5fqJ/4pYZyi9KnoEW68OJc=
X-Received: by 2002:ab0:5510:: with SMTP id t16mr2491529uaa.15.1576569323481; 
 Mon, 16 Dec 2019 23:55:23 -0800 (PST)
MIME-Version: 1.0
References: <20191213185050.m6iku7defq44syrl@kili.mountain>
In-Reply-To: <20191213185050.m6iku7defq44syrl@kili.mountain>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 17 Dec 2019 08:54:47 +0100
Message-ID: <CAPDyKFoKvhGDuQ+C0Sp2N3==CXiMWfpcrT28+dQ2+Nq_UPaXYQ@mail.gmail.com>
Subject: Re: [bug report] mmc: core: Re-work HW reset for SDIO cards
To: Dan Carpenter <dan.carpenter@oracle.com>, Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_235530_040687_88CF495B 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

+ Kalle

On Fri, 13 Dec 2019 at 19:51, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> Hello Ulf Hansson,
>
> The patch 2ac55d5e5ec9: "mmc: core: Re-work HW reset for SDIO cards"
> from Oct 17, 2019, leads to the following static checker warning:
>
>         drivers/net/wireless/ath/ath10k/sdio.c:1521 ath10k_sdio_hif_power_down()
>         warn: 'ret' can be either negative or positive

Thanks for reporting!

>
> drivers/net/wireless/ath/ath10k/sdio.c
>   1495  static void ath10k_sdio_hif_power_down(struct ath10k *ar)
>   1496  {
>   1497          struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
>   1498          int ret;
>   1499
>   1500          if (ar_sdio->is_disabled)
>   1501                  return;
>   1502
>   1503          ath10k_dbg(ar, ATH10K_DBG_BOOT, "sdio power off\n");
>   1504
>   1505          /* Disable the card */
>   1506          sdio_claim_host(ar_sdio->func);
>   1507
>   1508          ret = sdio_disable_func(ar_sdio->func);
>   1509          if (ret) {
>   1510                  ath10k_warn(ar, "unable to disable sdio function: %d\n", ret);
>   1511                  sdio_release_host(ar_sdio->func);
>   1512                  return;
>   1513          }
>   1514
>   1515          ret = mmc_hw_reset(ar_sdio->func->card->host);
>   1516          if (ret)
>
> It used to be that mmc_hw_reset() return negative error codes or zero
> but now it returns 1 on certain success paths.

Correct.

I was actually looking into this while changing the behaviour of
mmc_hw_reset(). However I decided to leave this as is.

The main reason is, that mmc_hw_reset() is not going to power down the
card. It's hard power cycle, so I am kind of surprised that is being
used at all in this path. This in combination of expecting the value
from mmc_hw_reset() to never be 1 here, seemed like a good idea to
preserve the logging of the warning message.

To silent the static checker tool from warning, we could check
explicitly for "1". Is that something you want me to do?

>
>   1517                  ath10k_warn(ar, "unable to reset sdio: %d\n", ret);
>   1518
>   1519          sdio_release_host(ar_sdio->func);
>   1520
>   1521          ar_sdio->is_disabled = true;
>   1522  }
>
>
> regards,
> dan carpenter

Kind regards
Uffe

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
