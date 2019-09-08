Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4687ACB3C
	for <lists+ath10k@lfdr.de>; Sun,  8 Sep 2019 08:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yw68sTKe3IL3nfRdoXmRG1Sva3yGFL/BGELfe5paM4s=; b=ahiMzdh1D05MUu
	mSELjkuj3Hk4vG4TPK+oaHZaGQhYcDPgO9k+BbhF/hBwbCyOAMy8gkJTTdGC/YyI4I7vkRlzhXTQ5
	OvT/2ThfVCq79KPE9IgJyY+blS3bEkkvzc+GB76Rj65Rc5b8Ln0vm+tZl6dUxjs1K/hBm6x/geOpk
	FGJ63Og/kg7bg0VahZrO9Lf06J8LFfDgEmGZAFbOr+lzK0sIyM9P/6kB6MhKKQ4yWKYZfjsm5hmoi
	lv83TIdnVHF+5PgfhlYq0jsqI/WpErm0HZg0q+AzUX4nV6s+cMKS6VyMKpJkvoosCrW+ET3ww5nQi
	1TOA1FmRiNstmallim9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6qkc-0004ra-B9; Sun, 08 Sep 2019 06:32:42 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6qkY-0004rE-74
 for ath10k@lists.infradead.org; Sun, 08 Sep 2019 06:32:39 +0000
Received: by mail-oi1-x243.google.com with SMTP id g128so8228306oib.1
 for <ath10k@lists.infradead.org>; Sat, 07 Sep 2019 23:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=dLtjxvefmPsTqwguHpJKZUk+b0qbK0gCwrT3RQ5TPGM=;
 b=ZK30FGYPn3DhY9EPZnYFl4udlxLNfjIbrUAKV9kOguKF3EJMxA4yjKnn9rAZQ7Yg1F
 RnrdtZtuQiORmENPCgWaEnnjDH+i/VGIqpnTDUbvgqTNEab8Yt2KBngTUCWpyAbCt/RY
 QKZylmaPaTpzmou+Z8AGW3PNvAuUJh9u77aJvrhMxj9lhkdSyhi21km4YX3boFHvOpuc
 mQTLdaAaPYYLxfMegV3/2nSuo5+sZvO0nayWc43OHOKEPwBU7oky2Udk9yqdQxe7Pq6Z
 HiEK06nh/NCopBTtkj5dlAWnF74LOJuw5WsLRE+f8NOIogP8wtTJ+yDtxEPPuNcUX0VJ
 6+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=dLtjxvefmPsTqwguHpJKZUk+b0qbK0gCwrT3RQ5TPGM=;
 b=qG1JsuIS6eO47LSAXbmoN4mwNWyuQJujdlaLPdR9H8af/b5CSZSOnWry7B5H6gJTc0
 0asODdVF4hU8onXclFxSWUSQH7Vmqylm+Unu1U7bxTwHt6HyVqGsYGTSJgo4BhnKwV51
 oYyG7umhXd9CvEu17nagm5RU7sgXK07HpM3y5ahO2EfvvnDwy1FdnUYdoXR+Yg9NktWr
 E1oDvk3xpuOGxjZ2B9j303nC26E6rhcBaMcVeCF2LrWdRtVBI/zJHjdURMkKiPKmxfdM
 IgIfnCQLWZbQEU+UJFfOU1RdnkGB0tqKwJN4GdZsvE/YQHsA6K0kJa0rdR2OhEK35kpb
 /5MQ==
X-Gm-Message-State: APjAAAVAvTvM7FwmFK4GQgNodz9j1iCRymz0yoxUNSeGjHAPIgRpTdW8
 +8Ij/zx8omAZoeGCap/t1Cy6noEtUj+XXzf3REU=
X-Google-Smtp-Source: APXvYqz2lgth8Eoypm7N796eC0TY7gK5P0AlQD5/piLA1dX+q7sQ8Yzn3oSizx8asZXvVp7w916dY5CIFMCe2DupVP4=
X-Received: by 2002:aca:fdc9:: with SMTP id b192mr12478978oii.50.1567924356321; 
 Sat, 07 Sep 2019 23:32:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2286:0:0:0:0:0 with HTTP;
 Sat, 7 Sep 2019 23:32:35 -0700 (PDT)
In-Reply-To: <20190906215423.23589-1-chunkeey@gmail.com>
References: <20190906215423.23589-1-chunkeey@gmail.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Sun, 8 Sep 2019 08:32:35 +0200
Message-ID: <CAKR_QV+y9u_gP_+dZ=bFYJgANeq+W19v9Xx_SwydB5fe4ozhtg@mail.gmail.com>
Subject: Re: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_233238_285443_B631756E 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 06/09/2019, Christian Lamparter <chunkeey@gmail.com> wrote:
> This patch restores the old behavior that read
> the chip_id on the QCA988x before resetting the
> chip. This needs to be done in this order since
> the unsupported QCA988x AR1A chips fall off the
> bus when resetted. Otherwise the next MMIO Op
> after the reset causes a BUS ERROR and panic.
>
> Cc: stable@vger.kernel.org
> Fixes: 1a7fecb766c8 ("ath10k: reset chip before reading chip_id in probe")
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> ---
>  drivers/net/wireless/ath/ath10k/pci.c | 36 +++++++++++++++++++--------
>  1 file changed, 25 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/pci.c
> b/drivers/net/wireless/ath/ath10k/pci.c
> index a0b4d265c6eb..347bb92e4130 100644
> --- a/drivers/net/wireless/ath/ath10k/pci.c
> +++ b/drivers/net/wireless/ath/ath10k/pci.c
> @@ -3490,7 +3490,7 @@ static int ath10k_pci_probe(struct pci_dev *pdev,
>  	struct ath10k_pci *ar_pci;
>  	enum ath10k_hw_rev hw_rev;
>  	struct ath10k_bus_params bus_params = {};
> -	bool pci_ps;
> +	bool pci_ps, is_qca988x = false;
>  	int (*pci_soft_reset)(struct ath10k *ar);
>  	int (*pci_hard_reset)(struct ath10k *ar);
>  	u32 (*targ_cpu_to_ce_addr)(struct ath10k *ar, u32 addr);
> @@ -3500,6 +3500,7 @@ static int ath10k_pci_probe(struct pci_dev *pdev,
>  	case QCA988X_2_0_DEVICE_ID:
>  		hw_rev = ATH10K_HW_QCA988X;
>  		pci_ps = false;
> +		is_qca988x = true;
>  		pci_soft_reset = ath10k_pci_warm_reset;
>  		pci_hard_reset = ath10k_pci_qca988x_chip_reset;
>  		targ_cpu_to_ce_addr = ath10k_pci_qca988x_targ_cpu_to_ce_addr;
> @@ -3619,25 +3620,34 @@ static int ath10k_pci_probe(struct pci_dev *pdev,
>  		goto err_deinit_irq;
>  	}
>
> +	bus_params.dev_type = ATH10K_DEV_TYPE_LL;
> +	bus_params.link_can_suspend = true;
> +	/* Read CHIP_ID before reset to catch QCA9880-AR1A v1 devices that
> +	 * fall off the bus during chip_reset. These chips have the same pci
> +	 * device id as the QCA9880 BR4A or 2R4E. So that's why the check.
> +	 */
> +	if (is_qca988x) {
> +		bus_params.chip_id =
> +			ath10k_pci_soc_read32(ar, SOC_CHIP_ID_ADDRESS);
> +		if (bus_params.chip_id != 0xffffffff) {
> +			if (!ath10k_pci_chip_is_supported(pdev->device,
> +							  bus_params.chip_id))
> +				goto err_unsupported;
> +		}
> +	}
> +
>  	ret = ath10k_pci_chip_reset(ar);
>  	if (ret) {
>  		ath10k_err(ar, "failed to reset chip: %d\n", ret);
>  		goto err_free_irq;
>  	}
>
> -	bus_params.dev_type = ATH10K_DEV_TYPE_LL;
> -	bus_params.link_can_suspend = true;
>  	bus_params.chip_id = ath10k_pci_soc_read32(ar, SOC_CHIP_ID_ADDRESS);
> -	if (bus_params.chip_id == 0xffffffff) {
> -		ath10k_err(ar, "failed to get chip id\n");
> -		goto err_free_irq;
> -	}
> +	if (bus_params.chip_id == 0xffffffff)
> +		goto err_unsupported;
>
> -	if (!ath10k_pci_chip_is_supported(pdev->device, bus_params.chip_id)) {
> -		ath10k_err(ar, "device %04x with chip_id %08x isn't supported\n",
> -			   pdev->device, bus_params.chip_id);
> +	if (!ath10k_pci_chip_is_supported(pdev->device, bus_params.chip_id))
>  		goto err_free_irq;
> -	}
>
>  	ret = ath10k_core_register(ar, &bus_params);
>  	if (ret) {
> @@ -3647,6 +3657,10 @@ static int ath10k_pci_probe(struct pci_dev *pdev,
>
>  	return 0;
>
> +err_unsupported:
> +	ath10k_err(ar, "device %04x with chip_id %08x isn't supported\n",
> +		   pdev->device, bus_params.chip_id);
> +
>  err_free_irq:
>  	ath10k_pci_free_irq(ar);
>  	ath10k_pci_rx_retry_sync(ar);
> --
> 2.23.0
>
>

Looks fine. For the time being. Have you looked any further to
actually support this chip? It seems warm reset is causing bus errors,
and cold reset goes through without crash.
Firmware gets loaded but is stuck at receiving control response, most
likely because of htc packet length or response message length.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
