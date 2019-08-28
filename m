Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464AA9F9E1
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 07:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsHCJy+2jhe17gXeTz+e7i65GSZFeu+fascwMSN/K3U=; b=RJ8IW/AwNno9RN
	ttCUvgbUhPHJlygI1rcoPHb5yvpm8eTEQgcyeBU1ysyYfHKFzzLE6pS3n6kydVVQTrN43VUdwcT99
	R6NEbVzwJpRi4wl/hHHh3VUqN8uNaFjYZ6V5fVlOsdPAKdjYjV6Fi6buouQM8w/pfL6kCrk6zo3oK
	PLlAZkfgFzQwOykNkRtyFCmvXlIHeqkIGq5of3TNisareZbv6T0JGF42GptktUuNA9Wa2AW3Q4x8+
	Bk5LNZBtfSng9ZWkSHkhgLO6DfoInnKr/w+x5gs++tfuhmbyL8f8yfvu44PrHMGzIA560hYBJ8OiG
	0eI/Y/ZhxFCl38clUyqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2qfA-0003dJ-CS; Wed, 28 Aug 2019 05:38:32 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2qf5-0003cv-Ad
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 05:38:28 +0000
Received: by mail-qk1-x741.google.com with SMTP id 201so1364892qkm.9
 for <ath10k@lists.infradead.org>; Tue, 27 Aug 2019 22:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZqVuEkRlOaYhngzmtcAqsxbnn3siGKP0NwUwlbzafvY=;
 b=IUwjxC+JW0b9HZ0HUA+2p7kMuPeIm3FolcA1MUxdajpgs62o0c7FWkA3tgfEjftEKl
 FS6lf5R4GTOxPj4E6LRnVnYLgJM84lk0EJVaJjh9OUaqs9nVRGae4Niqzoi/tPp1+bdr
 3FzyxBj+VCSOH+g9wSKmiI1ToRRBA4YtlG1H4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZqVuEkRlOaYhngzmtcAqsxbnn3siGKP0NwUwlbzafvY=;
 b=gD+AY6XmsFPEelr8clO8mbi43uqMgE56LDmu/xEdj2moICA8DmoWQ48TQzrCpWpVaz
 isJCKd1bV26NUZjXgT0DKX4mcNU+fEnHFFQ7pVLytTb8kw93f2khuWP5zHjzGwVrdJJd
 aAjPew/mAfS8BhooObxyZkBsrccYAZkcQlhO/EbUh3belYNcWxjoNz/WXcz/s/qWeyXf
 mOK0PswsGyBwYX7o4/dV7Nu8b3JgBDBD586bNpwFr3T5gvtrkM5JMQ1D+WEJGiIeH/j9
 pbxEQE9M06zcgVwsGcAbhyswvSVuNmLiZQGK9mbelwNFggBUSMqIRNl1MzQIZYkPYXot
 Ya3g==
X-Gm-Message-State: APjAAAU0TQspV8eXNamXoJXhwT/e7I34W1EKG1ocg7TOlN1JNBEej74L
 h1gJPM2lzAqgBE5kkcN4CfOCzrLuq4mMuD7DHdjwo9D6bJI=
X-Google-Smtp-Source: APXvYqwlr8DVdIV3RJbgkZBogMZkEe6wqR7K+32kIzwLk23v8QTGR2QhTih0cKio5bjifN39cQxGRtmXfoIYq7hwIKk=
X-Received: by 2002:a37:4ed3:: with SMTP id c202mr2183346qkb.457.1566970706021; 
 Tue, 27 Aug 2019 22:38:26 -0700 (PDT)
MIME-Version: 1.0
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-7-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566903707-27536-7-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 28 Aug 2019 13:38:14 +0800
Message-ID: <CANMq1KDJSwyzz2y-yadJPnGijm=G6y0zg1tMZDyacH8a990BOg@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] ath10k: enable alt data of TX path for sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_223827_372236_015C7684 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
> The default credit size is 1792 bytes, but the IP mtu is 1500 bytes,
> then it has about 290 bytes's waste for each data packet on sdio
> transfer path for TX bundle, it will reduce the transmission utilization
> ratio for data packet.
>
> This patch enable the small credit size in firmware, firmware will use
> the new credit size 1556 bytes, it will increase the transmission
> utilization ratio for data packet on TX patch. It results in significant
> performance improvement on TX path.
>
> This patch only effect sdio chip, it will not effect PCI, SNOC etc.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/core.c | 16 ++++++++++++++++
>  drivers/net/wireless/ath/ath10k/htc.c  | 11 +++++++++--
>  drivers/net/wireless/ath/ath10k/htc.h  | 11 +++++++++--
>  3 files changed, 34 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
> index 351f4ed..7593d19 100644
> --- a/drivers/net/wireless/ath/ath10k/core.c
> +++ b/drivers/net/wireless/ath/ath10k/core.c
> @@ -31,6 +31,7 @@
>  static unsigned int ath10k_cryptmode_param;
>  static bool uart_print;
>  static bool disable_tx_comp = true;
> +static bool alt_data = true;
>  static bool skip_otp;
>  static bool rawmode;
>  static bool fw_diag_log;
> @@ -45,6 +46,15 @@
>
>  /* If upper layer need the TX complete status, it can enable tx complete */
>  module_param(disable_tx_comp, bool, 0644);
> +
> +/* alt_data is only used for sdio chip, for previous version of firmware, its
> + * alt data size is 1544 which is not enough for native wifi, so it need to
> + * alt_data for the firmware.
> + * If the firmware has changed alt data size to 1556, then it can enable
> + * alt_data for the firmware.
> + * alt_data will not effect PCI, SNOC etc.
> + */
> +module_param(alt_data, bool, 0644);
>  module_param(skip_otp, bool, 0644);
>  module_param(rawmode, bool, 0644);
>  module_param(fw_diag_log, bool, 0644);
> @@ -701,6 +711,12 @@ static void ath10k_init_sdio(struct ath10k *ar, enum ath10k_firmware_mode mode)
>          */
>         param &= ~HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE;
>
> +       /* If alternate credit size of 1556 as used by SDIO firmware is
> +        * big enough for mac80211 / native wifi frames. enable it
> +        */
> +       if (alt_data && mode == ATH10K_FIRMWARE_MODE_NORMAL)
> +               param |= HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE;

else
     param &= ~HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE;

(and remove the mask above)

> +
>         if (mode == ATH10K_FIRMWARE_MODE_UTF)
>                 param &= ~HI_ACS_FLAGS_SDIO_SWAP_MAILBOX_SET;
>         else
> diff --git a/drivers/net/wireless/ath/ath10k/htc.c b/drivers/net/wireless/ath/ath10k/htc.c
> index e0eb5f0..5cacab6 100644
> --- a/drivers/net/wireless/ath/ath10k/htc.c
> +++ b/drivers/net/wireless/ath/ath10k/htc.c
> @@ -938,12 +938,15 @@ int ath10k_htc_wait_target(struct ath10k_htc *htc)
>          */
>         if (htc->control_resp_len >=
>             sizeof(msg->hdr) + sizeof(msg->ready_ext)) {
> +               htc->alt_data_credit_size =
> +                       __le16_to_cpu(msg->ready_ext.reserved) & 0x0fff;

Please define 0x0fff as a macro.

>                 htc->max_msgs_per_htc_bundle =
>                         min_t(u8, msg->ready_ext.max_msgs_per_htc_bundle,
>                               HTC_HOST_MAX_MSG_PER_RX_BUNDLE);
>                 ath10k_dbg(ar, ATH10K_DBG_HTC,
> -                          "Extended ready message. RX bundle size: %d\n",
> -                          htc->max_msgs_per_htc_bundle);
> +                          "Extended ready message. RX bundle size: %d, alt size:%d\n",
> +                          htc->max_msgs_per_htc_bundle,
> +                          htc->alt_data_credit_size);
>         }
>
>         INIT_WORK(&ar->bundle_tx_work, ath10k_htc_bundle_tx_work);
> @@ -1095,6 +1098,10 @@ int ath10k_htc_connect_service(struct ath10k_htc *htc,
>         ep->tx_credits = tx_alloc;
>         ep->tx_credit_size = htc->target_credit_size;
>
> +       if (conn_req->service_id == ATH10K_HTC_SVC_ID_HTT_DATA_MSG &&
> +           htc->alt_data_credit_size != 0)
> +               ep->tx_credit_size = htc->alt_data_credit_size;
> +
>         /* copy all the callbacks */
>         ep->ep_ops = conn_req->ep_ops;
>
> diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
> index d805ea5..f0a9e60af 100644
> --- a/drivers/net/wireless/ath/ath10k/htc.h
> +++ b/drivers/net/wireless/ath/ath10k/htc.h
> @@ -139,8 +139,14 @@ struct ath10k_htc_ready_extended {
>         struct ath10k_htc_ready base;
>         u8 htc_version; /* @enum ath10k_htc_version */
>         u8 max_msgs_per_htc_bundle;
> -       u8 pad0;
> -       u8 pad1;
> +       union {
> +               __le16 reserved;
> +               struct {
> +                       u8 pad0;
> +                       u8 pad1;
> +               } __packed;
> +       } __packed;
> +
>  } __packed;
>
>  struct ath10k_htc_conn_svc {
> @@ -377,6 +383,7 @@ struct ath10k_htc {
>         int total_transmit_credits;
>         int target_credit_size;
>         u8 max_msgs_per_htc_bundle;
> +       int alt_data_credit_size;
>  };
>
>  int ath10k_htc_init(struct ath10k *ar);
> --
> 1.9.1
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
