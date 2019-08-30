Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1382A2D2C
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 05:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYb7CtphYztBIYJeuAo/EqE1jYyZpTfHqH4oELs0qr8=; b=fYkMZRtPj/5FhX
	df2ZlmbMwsJoNGlmQamEVlat28Uo/TkTh3+PyF+Yav9/YzB/hnBxZz5Cil00x5vpwb2AqjMhSrrVw
	h+WStOxUSTx7VFgwLyT3KEr/q3RsUrnBmdaTMzxtsTJ66RT0vDNaqFqCwInD4wo5zYJueFN3O5zub
	AzwudqNnw97FVnixbWnOWMGsUNj+OXlOjT7Pg3iSXJmPCOOdYRCjEGJCxf6Lc77vq6Z+fFVSKCvNU
	RnycL+evlHaU4sqDc0XXtS9QmOeCq4IafEJK1nh+iatjINBAcj1/+7znV0Xk/Ult1QdbBUXtpwCbk
	GsfcwbM1K699uLbBF2dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3XJr-0006jK-7q; Fri, 30 Aug 2019 03:11:23 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3XJl-0006iu-Ou
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 03:11:19 +0000
Received: by mail-qk1-x743.google.com with SMTP id m2so4905693qkd.10
 for <ath10k@lists.infradead.org>; Thu, 29 Aug 2019 20:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EE6a33UTnmnVHsyTCVKkm4lFvKhlQ+Dl8W8HyUtuDdM=;
 b=AVTftIoEJ8N4aRd1fyoXX6R78LstDc37lMXfjY0Q7QlQVd25rOQfnmsFOEq+nshLIR
 jxacb64XB30J1E9ZfI8xwYd+p220n2wH2urMMqkk19WwTK5zKEAMs4HJ21S14hXuWUA6
 Mcwg47dAYpBkKdM/tCYqiwkxVVmA62I6fIhq0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EE6a33UTnmnVHsyTCVKkm4lFvKhlQ+Dl8W8HyUtuDdM=;
 b=SyDQWGy3YdwWxSGqiLa9s5bbjVf18qDsnHjscf9ebrTx/9U9cLAbNkjlFJpoP8cW9h
 IE5aOxu+4nbrMP3/RPEzhb5r0PX6dwQWVeUzKoY9jtOTQkdXd8X9qDi5NsKHyJES5ECd
 7Ks79h5IQwyR7HFhBrkTt0PSAr3l7fUsgRCyNYH5y0EFQIRODZA2pNbq/Xi+wC7A0xYO
 1LAW5d5BAKu42DHartKG8y5SVreO+NbCBAA4A31Zlc8AfJBf/XuB03rCiv4gB+Q2Q0Dc
 hJ7kPGRwFSeY8wfcaO/jkzHKVaZX4g/Ziomwelss3k2y08JYSducYnttlfgQnSLV38mq
 WGrw==
X-Gm-Message-State: APjAAAXmR4ZwXOWNRl0hHaZdfwtYqJA/OWW5mXFnG7TrNRB/kGc3EKtX
 VlBh3tHHFs8un/csYPOVlYxwvIfxR4/F2H/B9QRcr6wEv6w=
X-Google-Smtp-Source: APXvYqyEliefPpwh6fJGTur1HRAmTVVPLnpB4Wg0/m0YWnujsWyPAG+uoZL+z0BiL1r+PKLsF2IpjpF/4cKmdd6w4y0=
X-Received: by 2002:a37:4644:: with SMTP id t65mr395488qka.353.1567134676443; 
 Thu, 29 Aug 2019 20:11:16 -0700 (PDT)
MIME-Version: 1.0
References: <1566998177-2658-1-git-send-email-wgong@codeaurora.org>
 <1566998177-2658-4-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566998177-2658-4-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 30 Aug 2019 11:11:05 +0800
Message-ID: <CANMq1KDLXsar1AqU=mfce-2LGD7SRDmC5phkKtz92D3BG35Eog@mail.gmail.com>
Subject: Re: [PATCH v3 3/8] ath10k: change max RX bundle size from 8 to 32 for
 sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_201117_834161_EDAA26C1 
X-CRM114-Status: GOOD (  15.85  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 1:49 AM Wen Gong <wgong@codeaurora.org> wrote:
>
> The max bundle size support by firmware is 32, change it from 8 to 32
> will help performance. This results in significant performance
> improvement on RX path.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
> v2:change macro HTC_GET_BUNDLE_COUNT
> v3:change some code style
>  drivers/net/wireless/ath/ath10k/htc.h  | 8 +++++++-
>  drivers/net/wireless/ath/ath10k/sdio.c | 6 +++---
>  drivers/net/wireless/ath/ath10k/sdio.h | 4 ++--
>  3 files changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
> index f55d3ca..ffda8bf 100644
> --- a/drivers/net/wireless/ath/ath10k/htc.h
> +++ b/drivers/net/wireless/ath/ath10k/htc.h
> @@ -39,7 +39,7 @@
>   * 4-byte aligned.
>   */
>
> -#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        8
> +#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        32
>
>  enum ath10k_htc_tx_flags {
>         ATH10K_HTC_FLAG_NEED_CREDIT_UPDATE = 0x01,
> @@ -52,6 +52,12 @@ enum ath10k_htc_rx_flags {
>         ATH10K_HTC_FLAG_BUNDLE_MASK     = 0xF0
>  };
>
> +#define BUNDLE_EXTRA_MASK GENMASK(3, 2)

Well, ATH10K_HTC_FLAG_BUNDLE_MASK is defined in a struct, set to a hex value.
This is a macro, set to a GENMASK() value.

I don't care how you do it, but please be consistent.

In this case, please add ATH10K_HTC_FLAG_BUNDLE_EXTRA_MASK GENMASK =
0x0A in the enum above (sorry, I say structure in my previous
comment).

> +
> +#define HTC_GET_BUNDLE_COUNT(flags) \
> +           (FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, (flags)) +  \
> +           (FIELD_GET(BUNDLE_EXTRA_MASK, (flags)) << 4))
> +
>  struct ath10k_htc_hdr {
>         u8 eid; /* @enum ath10k_htc_ep_id */
>         u8 flags; /* @enum ath10k_htc_tx_flags, ath10k_htc_rx_flags */
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index 23c998d..bd808e5 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -24,8 +24,8 @@
>  #include "trace.h"
>  #include "sdio.h"
>
> -#define ATH10K_SDIO_DMA_BUF_SIZE       (32 * 1024)
> -#define ATH10K_SDIO_VSG_BUF_SIZE       (32 * 1024)
> +#define ATH10K_SDIO_DMA_BUF_SIZE       (64 * 1024)
> +#define ATH10K_SDIO_VSG_BUF_SIZE       (64 * 1024)
>
>  /* inlined helper functions */
>
> @@ -495,7 +495,7 @@ static int ath10k_sdio_mbox_alloc_bundle(struct ath10k *ar,
>  {
>         int ret, i;
>
> -       *bndl_cnt = FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, htc_hdr->flags);
> +       *bndl_cnt = HTC_GET_BUNDLE_COUNT(htc_hdr->flags);
>
>         if (*bndl_cnt > HTC_HOST_MAX_MSG_PER_RX_BUNDLE) {
>                 ath10k_warn(ar,
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.h b/drivers/net/wireless/ath/ath10k/sdio.h
> index 4896eca..3ca76c7 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.h
> +++ b/drivers/net/wireless/ath/ath10k/sdio.h
> @@ -89,10 +89,10 @@
>   * to the maximum value (HTC_HOST_MAX_MSG_PER_RX_BUNDLE).
>   *
>   * in this case the driver must allocate
> - * (HTC_HOST_MAX_MSG_PER_RX_BUNDLE * HTC_HOST_MAX_MSG_PER_RX_BUNDLE) skb's.
> + * (HTC_HOST_MAX_MSG_PER_RX_BUNDLE * 2) skb's.
>   */
>  #define ATH10K_SDIO_MAX_RX_MSGS \
> -       (HTC_HOST_MAX_MSG_PER_RX_BUNDLE * HTC_HOST_MAX_MSG_PER_RX_BUNDLE)
> +       (HTC_HOST_MAX_MSG_PER_RX_BUNDLE * 2)
>
>  #define ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL   0x00000868u
>  #define ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_OFF 0xFFFEFFFF
> --
> 1.9.1
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
