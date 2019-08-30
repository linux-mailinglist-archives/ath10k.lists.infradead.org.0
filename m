Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1C9A2D38
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 05:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEkAw7ebh5oGttz5zOo08jKoGC9+GLDY3R6YvrzuWVA=; b=tP0loPpzgxWjWM
	i8QWaBZpT46sQQt2iD1M92DdrRDPPApZLPN9uuRmTlJDRwJju0WOF1u4UAu8BJ0XHxaYsVH2G/zNJ
	t9ag5EoaN301PgMjMOvYSGXNwuwu59MmexP/C1pUgm9vV4CDgg+/Mjw0YtSujCzO3/4MMLAQ47Avi
	6LwNrRjjwLzDZnRkKpLVZBRGRQImrbYY+u80XdbggbAy6qB9/QNh3uR6sn91kE8AzRyV8uJozY0LA
	1mP+JOUK++cNhk/Cz7DxjiEp6T/EOpjUYLct0i0zQo59jwpKDZqsLdNOIg71WOkQJyC7JcpSwwqna
	q+UHCLZS6dV0ELuukW/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3XQi-0008DW-Cl; Fri, 30 Aug 2019 03:18:28 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3XQe-0008DD-D8
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 03:18:26 +0000
Received: by mail-qk1-x743.google.com with SMTP id i78so3497434qke.11
 for <ath10k@lists.infradead.org>; Thu, 29 Aug 2019 20:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qn1/QELO9rzDiTjrrDDFbzDhIc34t0RILx1AtAp6Muw=;
 b=IQvdulwY6yY7m9XAKPOFFovYDDf6XDcsr7reRijUZjC9a37afTix9G7Wr4/bEi5HIt
 5y8SBIpJQHV7+LKIaGOhukuWSw5g+w9QbzLyM2MxqAIay7pAe2YMuivmqqs7MEw5OFnf
 USWWHZGEPSRB09Hk43NPoPf4wan0yB+01D7tM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qn1/QELO9rzDiTjrrDDFbzDhIc34t0RILx1AtAp6Muw=;
 b=o/+NpKkP5MdaJd2HvXOwKeKZ4MScJNM20H0XZkAvtYhAZ0iHVovFwlbU6RfX4+4edP
 LNT690Udx576o5spsZHosgMMZXszzbWMVvcL6xzCtayAJaoVL0RjjkjrjbRRn2S9ip0u
 vS6tNyjahy528uNRyHM62gajagu/MfEl5A2EMghwSrQ3uUzzVFnLJmzmF43a8Mt2ODpU
 PHccK8M4T5ucHRdgyzkpWDKeKBmeuMqtiuH24sUySpR/MQGkye2+nTIVpg3KUKqzW29C
 sh3Xj3Cv+OVv+71my6tRHqoqC2p19o8eiROYmL46y4wiMD7wYV6iJTFK55UV7J8fYddG
 ksHA==
X-Gm-Message-State: APjAAAU5Lf8x6EFChVxkdcOmEgBb4K6ow008sG5YxnGyu11ssekXdq1x
 qhPVRXMvkBZG7qJk0Z8TA3gKdvYWkpvdYyQQrrREmjdOy3E=
X-Google-Smtp-Source: APXvYqwjEjyha3RZr5/HvR3wwneXSm3MCj6zXa5be9bA8a9Nv8HrlkdCpdfQNm/CHd+QOArv+XJygQJJYcibYqQwGjM=
X-Received: by 2002:a37:5ec7:: with SMTP id
 s190mr12502085qkb.299.1567135103153; 
 Thu, 29 Aug 2019 20:18:23 -0700 (PDT)
MIME-Version: 1.0
References: <1566998177-2658-1-git-send-email-wgong@codeaurora.org>
 <1566998177-2658-8-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566998177-2658-8-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 30 Aug 2019 11:18:12 +0800
Message-ID: <CANMq1KDcUEy6ruzyLT2H_TCf_fNS7FY9s3aCxEW4nkg55avmSQ@mail.gmail.com>
Subject: Re: [PATCH v3 7/8] ath10k: enable alt data of TX path for sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_201824_501707_97AD6747 
X-CRM114-Status: GOOD (  22.34  )
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

On Fri, Aug 30, 2019 at 1:39 AM Wen Gong <wgong@codeaurora.org> wrote:
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
> v2:no change
> v3:change some code style
>  drivers/net/wireless/ath/ath10k/core.c | 19 +++++++++++++++++--
>  drivers/net/wireless/ath/ath10k/htc.c  | 11 +++++++++--
>  drivers/net/wireless/ath/ath10k/htc.h  | 11 +++++++++--
>  3 files changed, 35 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
> index 9841533..9fd07c7 100644
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
> @@ -698,9 +708,14 @@ static void ath10k_init_sdio(struct ath10k *ar, enum ath10k_firmware_mode mode)
>                 param &= ~HI_ACS_FLAGS_SDIO_REDUCE_TX_COMPL_SET;
>
>         /* Alternate credit size of 1544 as used by SDIO firmware is
> -        * not big enough for mac80211 / native wifi frames. disable it
> +        * not big enough for mac80211 / native wifi frames. disable it.
> +        * If alternate credit size of 1556 as used by SDIO firmware is
> +        * big enough for mac80211 / native wifi frames. enable it
>          */
> -       param &= ~HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE;
> +       if (alt_data && mode == ATH10K_FIRMWARE_MODE_NORMAL)
> +               param |= HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE;
> +       else
> +               param &= ~HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE;
>
>         if (mode == ATH10K_FIRMWARE_MODE_UTF)
>                 param &= ~HI_ACS_FLAGS_SDIO_SWAP_MAILBOX_SET;
> diff --git a/drivers/net/wireless/ath/ath10k/htc.c b/drivers/net/wireless/ath/ath10k/htc.c
> index 5269168..04298e1 100644
> --- a/drivers/net/wireless/ath/ath10k/htc.c
> +++ b/drivers/net/wireless/ath/ath10k/htc.c
> @@ -940,12 +940,15 @@ int ath10k_htc_wait_target(struct ath10k_htc *htc)
>          */
>         if (htc->control_resp_len >=
>             sizeof(msg->hdr) + sizeof(msg->ready_ext)) {
> +               htc->alt_data_credit_size =
> +                       __le16_to_cpu(msg->ready_ext.reserved) & 0x0fff;

Please define 0x0fff as a macro. (I believe most other masks are
macros in this driver).

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
> @@ -1097,6 +1100,10 @@ int ath10k_htc_connect_service(struct ath10k_htc *htc,
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
> index 7b8e0d0..f3a6ebb 100644
> --- a/drivers/net/wireless/ath/ath10k/htc.h
> +++ b/drivers/net/wireless/ath/ath10k/htc.h
> @@ -141,8 +141,14 @@ struct ath10k_htc_ready_extended {
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
> @@ -379,6 +385,7 @@ struct ath10k_htc {
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
