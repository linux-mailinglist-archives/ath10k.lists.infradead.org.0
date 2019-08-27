Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D669DEF2
	for <lists+ath10k@lfdr.de>; Tue, 27 Aug 2019 09:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87gTL4YXminTGFmJFGkRXFgM7B2quMAmODcrOvIB4q8=; b=BkVHRWmYCpbAxe
	w0Ag+yUfgi6Y1NXIN5klH+OVeR6kAZbPY5G3t7yUPc6YVqFHpgfftfXs1SbzS1Jqege6Z9Or1q0cL
	vrcQIqWFaU0vOVj2xCF689PJVEtdsnIdvdbT7NUVr9wXG64UIN3SH4ZPl8BvLJZLmQEr7znb6jQgI
	hMKatEwOiH918jRMU9SaVVApCwwPLWjTA924Ko1zA2XZnClMPcw2vEvxFysmiYcyBaWuUpgE56fD9
	YRe27ZSlFRG1z5eqiAGW3iUGuEZOXlxKLIJlydLDpuKrUtpcyqODxTdoTACbwj3LtyL+UaTy6F4id
	VYR8vzseC6qWqNNByqhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2W8B-0005Li-Vw; Tue, 27 Aug 2019 07:43:08 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2W86-0005Kz-Qs
 for ath10k@lists.infradead.org; Tue, 27 Aug 2019 07:43:04 +0000
Received: by mail-qt1-x842.google.com with SMTP id l9so20420381qtu.6
 for <ath10k@lists.infradead.org>; Tue, 27 Aug 2019 00:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GLjerTI/8s78jWdVImYHb6vDr5CKAOLKDouXj6XF4wg=;
 b=jGNOD59hxbMEKMTEhqkr8YlB9MJm3vuCz4IefnMjfcq2rdLduQ1pV51UpLa5Y/W0k5
 GBbwqcfscgSI9eI2Nnryv2mChGpXBCi74oZd7iz+QcLgDUHl/0pWC8qNu2QoVxEaUOLO
 A3al0Y8zUJwpEbIMJMNm/TVRlSssgaa7nj83Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GLjerTI/8s78jWdVImYHb6vDr5CKAOLKDouXj6XF4wg=;
 b=R7HpbAR50oYR0jymfZqZ+/zu0AnWmfZFqgiGr0C3fY0zYpvYxz6pcgap1GTHLg4aaO
 QaRI4vGCagorNIm10W5/o8ivqEgWpkWHMtr4I1N+B8iNrG4nc+xHtirmOOM9hIMPWIa/
 GowJL8c80JnzI+lIspdZrntp/9+o1CPqJH4G8bp+VOWB5cSkfabwYg2gIm+WbPuznw6j
 EgpiWCk4BW51c46Veptwes1KxF2Dr/gUYAKXHAYfhe1ZNS75tADu1/bYZ/lz3m4zPpJu
 Wo3FopwvB7Bzgx8ubrkAn4p0EEGO9H8Dm6HkQdAmr4Hol+T2dUUbgjrhlixtOr2M+AWw
 aQlw==
X-Gm-Message-State: APjAAAVAtmPQlcu8JeScBQsLjSnn1/H3QnIBN6uQXQgooVfMHvKV+WCV
 pe9fBlbUz/qnG1aD1j0ctB5HaW3GSAQiBWis4BwqHQ==
X-Google-Smtp-Source: APXvYqzvy30JCfqVVeuFlcOBHQ3i0PQt/AxpQOX/ty6j/l02Yy9w3u9OIPdg3ydGrRvap0sN3jacfWAzz3FziDK+cEw=
X-Received: by 2002:a0c:d981:: with SMTP id y1mr7781133qvj.104.1566891781421; 
 Tue, 27 Aug 2019 00:43:01 -0700 (PDT)
MIME-Version: 1.0
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-3-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566302108-18219-3-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 27 Aug 2019 15:42:50 +0800
Message-ID: <CANMq1KBRMnVqw5rcnVcJs1UjYJxh+RqAEKSAjboojoMgJQpSDw@mail.gmail.com>
Subject: Re: [PATCH 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_004302_877560_1182A77A 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 7:55 PM Wen Gong <wgong@codeaurora.org> wrote:
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
>  drivers/net/wireless/ath/ath10k/htc.h  | 2 +-
>  drivers/net/wireless/ath/ath10k/sdio.c | 5 +++--
>  drivers/net/wireless/ath/ath10k/sdio.h | 4 ++--
>  3 files changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
> index f55d3ca..8c79b9e 100644
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
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index d9395f0..baa6051 100644
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
> @@ -501,6 +501,7 @@ static int ath10k_sdio_mbox_alloc_bundle(struct ath10k *ar,
>         int ret, i;
>
>         *bndl_cnt = FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, htc_hdr->flags);
> +       *bndl_cnt += (FIELD_GET(GENMASK(3, 2), htc_hdr->flags) << 4);

GENMASK(3, 2): Please define this macro somewhere.

Also, I'd merge the 2 lines in 1.

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
