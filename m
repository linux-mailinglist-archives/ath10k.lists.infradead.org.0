Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388779F9BD
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 07:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uu+JK1ybgE79pBG/PcjJ44PO9H/FJ6cE5FWrJMEbrjo=; b=uwHSuSNaEiRdVX
	myPZ9sW3q0T6LXtN0szrNQor2zesnMmxUFeOlXler6smzaBVthcXIxN2xFJXt//DNdrpFmtvfW3l5
	ZTvmm5OmbolMDdEUVRxaQPXvdwajTPp5Vgt8ykscXHUQsVX0Cuv88rmcMOY3P2idT7GKTnqI1LQrI
	0V+bJgXYS1MTNSgVbSr8x+A93bdPusUcTZRz9B0cJPCPzTOLUiI/rSs7uMKCsJNDunmaItZoAAT/6
	QYD+xpITjWgAh6HSPkvFgsS04GLDhROym2XvqWzQe6NNLM3ZF5WUrhf54rWqJ65CMYDpxm0gDXYEx
	m1EE0Irk+RvbZc4tkdPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2qHL-0003yx-G4; Wed, 28 Aug 2019 05:13:55 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2qHG-0003yX-HV
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 05:13:51 +0000
Received: by mail-qt1-x843.google.com with SMTP id y26so1647694qto.4
 for <ath10k@lists.infradead.org>; Tue, 27 Aug 2019 22:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=llPzSyGqkrIIaCbHjAwjbFV/2OtNjSVdVF/zZQahJIg=;
 b=Ltayhk/ws1rGjOh2RFjGkNTdJueWAaW2AuNQda+vueWxJtuRLAOtGATJqjtruHkQjm
 QoNMbzkCyoQCEp51vaMvYN/sEmVbwIOPLoVnVVtPHukQZkYYNxCiSdXFy8eGxiRxHbda
 npogTnuDbeWBWaIRJ9ZgnkILcoJJydyldgvDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=llPzSyGqkrIIaCbHjAwjbFV/2OtNjSVdVF/zZQahJIg=;
 b=NotP6N965tPPWlBOpjmBbZPz+/r0Z9u+a5ms1qpZokz+LSH+D6LyGoz8ugypT1XhTY
 CEFqjZLND/b9xS4u8SUhr1C+E21vBgZCDyej4D1gcWHodwXrhHftrvrfCmTKweotGr72
 7AhfQaST1ITMlPHQ2GaTn29HfNpFABPRngJ0kcfzNCkM3JewhjWiEauyfeIduBBMDJ64
 VvosexBfWqG41PA06kSfvCdIN7FacZUUhR+Ms6E+D6mN16xGrGRvjmDRcDV7TP7BEKDs
 xGkO3/qPSWiW65h8avJV0Cby/ZP4JoNTxvQe+TkUciduUOze3gk0p7dDIyloGcr3VK96
 0nWQ==
X-Gm-Message-State: APjAAAUQ4z0Dvyh1zTSih+dJ5zahJSl8/ykUs+JkBwxsTgztYMDj64De
 21zSM9nRV9v+b3N0r94zSRKqzg4Z69tGAOhQoEydJA==
X-Google-Smtp-Source: APXvYqxo/X5uvZzXOxEOYhy8ELXQwV74Ex0b0q6zJSGLO95KYnR6em3lO87XraeauQYsyH6mrTLa3gRNnOXe5/g3tp0=
X-Received: by 2002:aed:3768:: with SMTP id i95mr2554092qtb.346.1566969226279; 
 Tue, 27 Aug 2019 22:13:46 -0700 (PDT)
MIME-Version: 1.0
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-3-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566903707-27536-3-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 28 Aug 2019 13:13:35 +0800
Message-ID: <CANMq1KAntBMo40jdv3T5k00EfjPzO1XvVdjL3oo2V9Eot1H4jg@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_221350_583904_E4A091FC 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 7:02 PM Wen Gong <wgong@codeaurora.org> wrote:
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

For next time, please add changelist between v1 and v2 here.

>  drivers/net/wireless/ath/ath10k/htc.h  | 6 +++++-
>  drivers/net/wireless/ath/ath10k/sdio.c | 6 +++---
>  drivers/net/wireless/ath/ath10k/sdio.h | 4 ++--
>  3 files changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
> index f55d3ca..8a07da0 100644
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
> @@ -52,6 +52,10 @@ enum ath10k_htc_rx_flags {
>         ATH10K_HTC_FLAG_BUNDLE_MASK     = 0xF0
>  };
>
> +#define HTC_GET_BUNDLE_COUNT(flags) \
> +           (FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, (flags)) +  \
> +           (FIELD_GET(GENMASK(3, 2), (flags)) << 4))

That's not what I meant, I was expecting one more flag in the structure above
 ATH10K_HTC_FLAG_BUNDLE_EXTRA_MASK GENMASK = 0x0A

Then:
           (FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_EXTRA_MASK, (flags)) << 4))

(I don't mind if you keep this macro anyway)

> +
>  struct ath10k_htc_hdr {
>         u8 eid; /* @enum ath10k_htc_ep_id */
>         u8 flags; /* @enum ath10k_htc_tx_flags, ath10k_htc_rx_flags */
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index eacb4d5..e5c365e 100644
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
