Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D8E9DFAB
	for <lists+ath10k@lfdr.de>; Tue, 27 Aug 2019 09:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9s0vaohss+kqxWIAJGUZPPJ1s4wE2vLjcIHbNiEtDs=; b=dFC3NFtqPqGqQx
	/qy5gnnrzRFuKwceX2rQPZCNCMmODDKT8tPLGVveKj37Cx/lyGqA7V2NdIhDK3D+UlIeKrf66IjAI
	ioHMgsSGspyPv5fGLqBzLmE0fd/kGaxn68ro77FALL40bu8BwZhhJmXnIawLTMU5L+MHYPgLIKBvy
	iaB5nLTNzL2AMTbZXK7CV3wjr2ogZwlwZaLGQijEy9iuSSkdpsqWp9NUP4dye9jg2HepvKh7H6fc1
	aKGEL5K3rLF7h7WEEnQb0LJvTmrChNLTQS6Ru3JQ7OP5bO37MTEYbf2hR1TS4/m5EOPEGBDnHBzyg
	lU098FVT7C4o+tuRC93w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WL3-0004xt-28; Tue, 27 Aug 2019 07:56:25 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WKx-0004wj-JO
 for ath10k@lists.infradead.org; Tue, 27 Aug 2019 07:56:21 +0000
Received: by mail-qt1-x841.google.com with SMTP id j15so20392564qtl.13
 for <ath10k@lists.infradead.org>; Tue, 27 Aug 2019 00:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oYNREke4/5h8ylOZOzn5isDwvOnWAJlXnbcwyeGYCDc=;
 b=TVD9xJoCaxQ/K/2S84fx2TBvA6JXATKBxIntSUGngFoRmFy/qJLf6yUyZenklu4NX6
 WjbTQ8Q8P02ps6TIPa6IbkWKt8wem//nclnthmW4meGsyEx6jAR/sQzdol5+cYcCdKNc
 OpOetfXcdbs8gR8C7NADLKur6JfrMn8xWcH88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oYNREke4/5h8ylOZOzn5isDwvOnWAJlXnbcwyeGYCDc=;
 b=Ssava4Xuk76O5Fbw6Z9DG/Q9X3G0dmJ/PvEd57EoslhCl0fJXAlW1D2pJl4z7p7X1Z
 OFB3vrcM+DsTrxRHgSNZ+XmazI9Lm77DOunF+S9Fuvvs3gtE6rRYw3dU2Fx4fYKaPhVI
 fcC1p/Xid3PVXmjH7vhNzNmO5oO7sIFQ9qG6JKF+a7rZynxzxem/d2ox+SbBIKxT96e1
 QU7pScM+bbaevxH+sEn/kj78dfwNhFaKgL5jOBx5a9eVYxw91i395ly40T9h2sw0xxwI
 xF75CCeuVQLuLDYg4rDnSIp9jtkjjOb8iCGDRad6ORFQ6MubO69ENcHh+hghy4B2InZX
 yjVw==
X-Gm-Message-State: APjAAAVKh+7j2J+gTO+xCa/ACYN7H8WO93aiTd0g6akfoozRnZLermGt
 DBS0oKc90OnkuwGGaS2kdQin5E/eeMQKHqcBXorY98pGJGk=
X-Google-Smtp-Source: APXvYqx3BdPYrq5vbdD+aE/73kpy/JKyzaeOBDr0U4rBm4e3FhhSEdNMXSW+gbYTtV503bTfmms3cKfAI9B6xbA6sgw=
X-Received: by 2002:ad4:5671:: with SMTP id bm17mr19138727qvb.3.1566892577844; 
 Tue, 27 Aug 2019 00:56:17 -0700 (PDT)
MIME-Version: 1.0
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-5-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566302108-18219-5-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 27 Aug 2019 15:56:06 +0800
Message-ID: <CANMq1KDo1xur9M7+XgNWkdarJOQfu9_Ofk=G5ajypWpq00e9=A@mail.gmail.com>
Subject: Re: [PATCH 4/7] ath10k: disable TX complete indication of htt for sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_005619_664682_95E313D2 
X-CRM114-Status: GOOD (  25.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
> Tx complete message from firmware cost bus bandwidth of sdio, and bus
> bandwidth is the bollteneck of throughput, it will effect the bandwidth
> occupancy of data packet of TX and RX.
>
> This patch disable TX complete indication from firmware for htt data
> packet, it results in significant performance improvement on TX path.
>
> The downside of this patch is ath10k will not know the TX status of
> the data packet for poor signal situation. Although upper network stack
> or application layer have retry mechanism, the retry will be later than
> ath10k get the TX fail status if not disable TX complete.
>
> This patch only effect sdio chip, it will not effect PCI, SNOC etc.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/core.c   |  6 +++++
>  drivers/net/wireless/ath/ath10k/hif.h    |  9 ++++++++
>  drivers/net/wireless/ath/ath10k/htc.c    | 11 +++++++++
>  drivers/net/wireless/ath/ath10k/htc.h    |  3 +++
>  drivers/net/wireless/ath/ath10k/htt.c    |  5 +++++
>  drivers/net/wireless/ath/ath10k/htt.h    | 13 ++++++++++-
>  drivers/net/wireless/ath/ath10k/htt_rx.c | 38 +++++++++++++++++++++++++++++++-
>  drivers/net/wireless/ath/ath10k/htt_tx.c | 30 +++++++++++++++++++++++++
>  drivers/net/wireless/ath/ath10k/hw.h     |  2 +-
>  drivers/net/wireless/ath/ath10k/sdio.c   | 28 +++++++++++++++++++++++
>  10 files changed, 142 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
> index dc45d16..762bba0 100644
> --- a/drivers/net/wireless/ath/ath10k/core.c
> +++ b/drivers/net/wireless/ath/ath10k/core.c
> @@ -30,6 +30,7 @@
>
>  static unsigned int ath10k_cryptmode_param;
>  static bool uart_print;
> +static bool disable_tx_comp = true;

Instead of a disable_x = true variable, maybe you're better off using
a enable_tx_comp variable, with a default value of 0?

>  static bool skip_otp;
>  static bool rawmode;
>  static bool fw_diag_log;
> @@ -41,6 +42,9 @@
>  module_param_named(debug_mask, ath10k_debug_mask, uint, 0644);
>  module_param_named(cryptmode, ath10k_cryptmode_param, uint, 0644);
>  module_param(uart_print, bool, 0644);
> +
> +/* If upper layer need the TX complete status, it can enable tx complete */
> +module_param(disable_tx_comp, bool, 0644);
>  module_param(skip_otp, bool, 0644);
>  module_param(rawmode, bool, 0644);
>  module_param(fw_diag_log, bool, 0644);
> @@ -689,6 +693,8 @@ static void ath10k_init_sdio(struct ath10k *ar, enum ath10k_firmware_mode mode)
>          * is used for SDIO. disable it until fixed
>          */
>         param &= ~HI_ACS_FLAGS_SDIO_REDUCE_TX_COMPL_SET;
> +       if (disable_tx_comp)
> +               param |= HI_ACS_FLAGS_SDIO_REDUCE_TX_COMPL_SET;
>
>         /* Alternate credit size of 1544 as used by SDIO firmware is
>          * not big enough for mac80211 / native wifi frames. disable it
> diff --git a/drivers/net/wireless/ath/ath10k/hif.h b/drivers/net/wireless/ath/ath10k/hif.h
> index 496ee34..0dd8973 100644
> --- a/drivers/net/wireless/ath/ath10k/hif.h
> +++ b/drivers/net/wireless/ath/ath10k/hif.h
> @@ -56,6 +56,8 @@ struct ath10k_hif_ops {
>
>         int (*swap_mailbox)(struct ath10k *ar);
>
> +       int (*get_htt_tx_complete)(struct ath10k *ar);
> +
>         int (*map_service_to_pipe)(struct ath10k *ar, u16 service_id,
>                                    u8 *ul_pipe, u8 *dl_pipe);
>
> @@ -144,6 +146,13 @@ static inline int ath10k_hif_swap_mailbox(struct ath10k *ar)
>         return 0;
>  }
>
> +static inline int ath10k_hif_get_htt_tx_complete(struct ath10k *ar)
> +{
> +       if (ar->hif.ops->get_htt_tx_complete)
> +               return ar->hif.ops->get_htt_tx_complete(ar);
> +       return 0;
> +}
> +
>  static inline int ath10k_hif_map_service_to_pipe(struct ath10k *ar,
>                                                  u16 service_id,
>                                                  u8 *ul_pipe, u8 *dl_pipe)
> diff --git a/drivers/net/wireless/ath/ath10k/htc.c b/drivers/net/wireless/ath/ath10k/htc.c
> index 1d4d1a1..7357a5a 100644
> --- a/drivers/net/wireless/ath/ath10k/htc.c
> +++ b/drivers/net/wireless/ath/ath10k/htc.c
> @@ -660,6 +660,17 @@ int ath10k_htc_wait_target(struct ath10k_htc *htc)
>         return 0;
>  }
>
> +void ath10k_htc_change_tx_credit_flow(struct ath10k_htc *htc,
> +                                     enum ath10k_htc_ep_id eid,
> +                                     bool enable)
> +{
> +       struct ath10k *ar = htc->ar;
> +       struct ath10k_htc_ep *ep;
> +
> +       ep = &ar->htc.endpoint[eid];

Merge this with the variable declaration.

> +       ep->tx_credit_flow_enabled = enable;
> +}
> +
>  int ath10k_htc_connect_service(struct ath10k_htc *htc,
>                                struct ath10k_htc_svc_conn_req *conn_req,
>                                struct ath10k_htc_svc_conn_resp *conn_resp)
> diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
> index 8c79b9e..78bc3ae 100644
> --- a/drivers/net/wireless/ath/ath10k/htc.h
> +++ b/drivers/net/wireless/ath/ath10k/htc.h
> @@ -367,6 +367,9 @@ struct ath10k_htc {
>  int ath10k_htc_connect_service(struct ath10k_htc *htc,
>                                struct ath10k_htc_svc_conn_req  *conn_req,
>                                struct ath10k_htc_svc_conn_resp *conn_resp);
> +void ath10k_htc_change_tx_credit_flow(struct ath10k_htc *htc,
> +                                     enum ath10k_htc_ep_id eid,
> +                                     bool enable);
>  int ath10k_htc_send(struct ath10k_htc *htc, enum ath10k_htc_ep_id eid,
>                     struct sk_buff *packet);
>  struct sk_buff *ath10k_htc_alloc_skb(struct ath10k *ar, int size);
> diff --git a/drivers/net/wireless/ath/ath10k/htt.c b/drivers/net/wireless/ath/ath10k/htt.c
> index 7b75200..88f3321 100644
> --- a/drivers/net/wireless/ath/ath10k/htt.c
> +++ b/drivers/net/wireless/ath/ath10k/htt.c
> @@ -10,6 +10,7 @@
>  #include "htt.h"
>  #include "core.h"
>  #include "debug.h"
> +#include "hif.h"
>
>  static const enum htt_t2h_msg_type htt_main_t2h_msg_types[] = {
>         [HTT_MAIN_T2H_MSG_TYPE_VERSION_CONF] = HTT_T2H_MSG_TYPE_VERSION_CONF,
> @@ -153,6 +154,10 @@ int ath10k_htt_connect(struct ath10k_htt *htt)
>
>         htt->eid = conn_resp.eid;
>
> +       htt->disable_tx_comple = ath10k_hif_get_htt_tx_complete(htt->ar);
> +       if (htt->disable_tx_comple)
> +               ath10k_htc_change_tx_credit_flow(&htt->ar->htc, htt->eid, true);
> +
>         return 0;
>  }
>
> diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
> index 30c0800..cf97be5 100644
> --- a/drivers/net/wireless/ath/ath10k/htt.h
> +++ b/drivers/net/wireless/ath/ath10k/htt.h
> @@ -150,9 +150,19 @@ enum htt_data_tx_desc_flags1 {
>         HTT_DATA_TX_DESC_FLAGS1_MORE_IN_BATCH    = 1 << 12,
>         HTT_DATA_TX_DESC_FLAGS1_CKSUM_L3_OFFLOAD = 1 << 13,
>         HTT_DATA_TX_DESC_FLAGS1_CKSUM_L4_OFFLOAD = 1 << 14,
> -       HTT_DATA_TX_DESC_FLAGS1_RSVD1            = 1 << 15
> +       HTT_DATA_TX_DESC_FLAGS1_TX_COMPLETE      = 1 << 15
>  };
>
> +#define HTT_TX_CREDIT_DELTA_ABS_M      0xffff0000
> +#define HTT_TX_CREDIT_DELTA_ABS_S      16
> +#define HTT_TX_CREDIT_DELTA_ABS_GET(word) \
> +           (((word) & HTT_TX_CREDIT_DELTA_ABS_M) >> HTT_TX_CREDIT_DELTA_ABS_S)
> +
> +#define HTT_TX_CREDIT_SIGN_BIT_M       0x00000100
> +#define HTT_TX_CREDIT_SIGN_BIT_S       8
> +#define HTT_TX_CREDIT_SIGN_BIT_GET(word) \
> +           (((word) & HTT_TX_CREDIT_SIGN_BIT_M) >> HTT_TX_CREDIT_SIGN_BIT_S)
> +
>  enum htt_data_tx_ext_tid {
>         HTT_DATA_TX_EXT_TID_NON_QOS_MCAST_BCAST = 16,
>         HTT_DATA_TX_EXT_TID_MGMT                = 17,
> @@ -2019,6 +2029,7 @@ struct ath10k_htt {
>         bool tx_mem_allocated;
>         const struct ath10k_htt_tx_ops *tx_ops;
>         const struct ath10k_htt_rx_ops *rx_ops;
> +       bool disable_tx_comple;

This is a strange variable name. Would disable_tx_comp or
disable_tx_complete/disable_tx_completion be better?

>  };
>
>  struct ath10k_htt_tx_ops {
> diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
> index 83a7fb6..d808824 100644
> --- a/drivers/net/wireless/ath/ath10k/htt_rx.c
> +++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
> @@ -3691,6 +3691,9 @@ bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
>         }
>         case HTT_T2H_MSG_TYPE_MGMT_TX_COMPLETION: {
>                 struct htt_tx_done tx_done = {};
> +               struct ath10k_htt *htt = &ar->htt;
> +               struct ath10k_htc *htc = &ar->htc;
> +               struct ath10k_htc_ep *ep = &ar->htc.endpoint[htt->eid];
>                 int status = __le32_to_cpu(resp->mgmt_tx_completion.status);
>                 int info = __le32_to_cpu(resp->mgmt_tx_completion.info);
>
> @@ -3716,6 +3719,12 @@ bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
>                         break;
>                 }
>
> +               if (htt->disable_tx_comple) {
> +                       spin_lock_bh(&htc->tx_lock);
> +                       ep->tx_credits++;
> +                       spin_unlock_bh(&htc->tx_lock);
> +               }
> +
>                 status = ath10k_txrx_tx_unref(htt, &tx_done);
>                 if (!status) {
>                         spin_lock_bh(&htt->tx_lock);
> @@ -3790,7 +3799,34 @@ bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
>                 skb_queue_tail(&htt->rx_in_ord_compl_q, skb);
>                 return false;
>         }
> -       case HTT_T2H_MSG_TYPE_TX_CREDIT_UPDATE_IND:
> +       case HTT_T2H_MSG_TYPE_TX_CREDIT_UPDATE_IND:{

nit: space after :

> +               struct ath10k_htt *htt = &ar->htt;
> +               struct ath10k_htc *htc = &ar->htc;
> +               struct ath10k_htc_ep *ep = &ar->htc.endpoint[htt->eid];
> +               u32 *msg_word;
> +               u32 htt_credit_delta_abs;
> +               int htt_credit_delta;
> +               int sign;
> +
> +               msg_word = (u32 *)resp;

Just have:
u32 msg_word;

msg_word = *((u32 *)resp);

Instead of de-referencing over and over again.

Also, are you sure that no "__le32_to_cpu" is required here?

> +               htt_credit_delta_abs = HTT_TX_CREDIT_DELTA_ABS_GET(*msg_word);
> +               sign = HTT_TX_CREDIT_SIGN_BIT_GET(*msg_word) ? -1 : 1;
> +               htt_credit_delta = sign * htt_credit_delta_abs;

I'd avoid the multiplication:

htt_credit_delta = HTT_TX_CREDIT_DELTA_ABS_GET(*msg_word);
if (HTT_TX_CREDIT_SIGN_BIT_GET(*msg_word))
   htt_credit_delta = -htt_credit_delta;

> +
> +               ath10k_dbg(ar, ATH10K_DBG_HTT,
> +                          "credit update: abs:%d, sign:%d, delta:%d\n",
> +                          htt_credit_delta_abs, sign, htt_credit_delta);
> +
> +               if (htt->disable_tx_comple) {
> +                       spin_lock_bh(&htc->tx_lock);
> +                       ep->tx_credits += htt_credit_delta;
> +                       spin_unlock_bh(&htc->tx_lock);
> +                       ath10k_dbg(ar, ATH10K_DBG_HTT,
> +                                  "credit total:%d\n",
> +                                  ep->tx_credits);
> +               }
> +               break;
> +       }
>                 break;

A single break is enough.

>         case HTT_T2H_MSG_TYPE_CHAN_CHANGE: {
>                 u32 phymode = __le32_to_cpu(resp->chan_change.phymode);
> diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c b/drivers/net/wireless/ath/ath10k/htt_tx.c
> index 2ef717f1..cda8a59 100644
> --- a/drivers/net/wireless/ath/ath10k/htt_tx.c
> +++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
> @@ -543,7 +543,33 @@ void ath10k_htt_tx_free(struct ath10k_htt *htt)
>
>  void ath10k_htt_htc_tx_complete(struct ath10k *ar, struct sk_buff *skb)
>  {
> +       struct ath10k_htt *htt = &ar->htt;
> +       struct htt_tx_done tx_done = {0};
> +       struct htt_cmd_hdr *htt_hdr;
> +       struct htt_data_tx_desc *desc_hdr;
> +       u16 flags1;
> +
>         dev_kfree_skb_any(skb);
> +
> +       if (htt->disable_tx_comple) {
> +               htt_hdr = (struct htt_cmd_hdr *)skb->data;
> +               if (htt_hdr->msg_type == HTT_H2T_MSG_TYPE_TX_FRM) {
> +                       desc_hdr = (struct htt_data_tx_desc *)
> +                               (skb->data + sizeof(*htt_hdr));
> +                       flags1 = __le16_to_cpu(desc_hdr->flags1);
> +
> +                       ath10k_dbg(ar, ATH10K_DBG_HTT,
> +                                  "ath10k_htt_htc_tx_complete msdu id:%u ,flags1:%x\n",
> +                                  __le16_to_cpu(desc_hdr->id), flags1);
> +
> +                       if (flags1 & HTT_DATA_TX_DESC_FLAGS1_TX_COMPLETE)
> +                               return;
> +
> +                       tx_done.status = HTT_TX_COMPL_STATE_ACK;
> +                       tx_done.msdu_id = __le16_to_cpu(desc_hdr->id);
> +                       ath10k_txrx_tx_unref(&ar->htt, &tx_done);
> +               }
> +       }
>  }
>
>  void ath10k_htt_hif_tx_complete(struct ath10k *ar, struct sk_buff *skb)
> @@ -1260,6 +1286,10 @@ static int ath10k_htt_tx_hl(struct ath10k_htt *htt, enum ath10k_hw_txrx_mode txm
>         case ATH10K_HW_TXRX_MGMT:
>                 flags0 |= SM(ATH10K_HW_TXRX_MGMT,
>                              HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE);
> +
> +               if (htt->disable_tx_comple)
> +                       flags1 |= HTT_DATA_TX_DESC_FLAGS1_TX_COMPLETE;
> +
>                 flags0 |= HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT;
>                 break;
>         }
> diff --git a/drivers/net/wireless/ath/ath10k/hw.h b/drivers/net/wireless/ath/ath10k/hw.h
> index 2ae57c1..6349665 100644
> --- a/drivers/net/wireless/ath/ath10k/hw.h
> +++ b/drivers/net/wireless/ath/ath10k/hw.h
> @@ -759,7 +759,7 @@ struct ath10k_hw_ops {
>  #define TARGET_TLV_NUM_TDLS_VDEVS              1
>  #define TARGET_TLV_NUM_TIDS                    ((TARGET_TLV_NUM_PEERS) * 2)
>  #define TARGET_TLV_NUM_MSDU_DESC               (1024 + 32)
> -#define TARGET_TLV_NUM_MSDU_DESC_HL            64
> +#define TARGET_TLV_NUM_MSDU_DESC_HL            1024
>  #define TARGET_TLV_NUM_WOW_PATTERNS            22
>  #define TARGET_TLV_MGMT_NUM_MSDU_DESC          (50)
>
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index f42aca6..4d6da04 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -1790,6 +1790,33 @@ static int ath10k_sdio_hif_swap_mailbox(struct ath10k *ar)
>         return 0;
>  }
>
> +static int ath10k_sdio_get_htt_tx_complete(struct ath10k *ar)
> +{
> +       u32 addr, val;
> +       int ret = 0;

No need to initialize to 0.

> +
> +       addr = host_interest_item_address(HI_ITEM(hi_acs_flags));
> +
> +       ret = ath10k_sdio_hif_diag_read32(ar, addr, &val);
> +       if (ret) {
> +               ath10k_warn(ar,
> +                           "unable to read hi_acs_flags for htt tx comple : %d\n", ret);
> +               return ret;
> +       }
> +
> +       if (val & HI_ACS_FLAGS_SDIO_REDUCE_TX_COMPL_FW_ACK) {
> +               ath10k_dbg(ar, ATH10K_DBG_SDIO,
> +                          "sdio reduce tx comple fw ack\n");
> +               ret = 1;
> +       } else {
> +               ath10k_dbg(ar, ATH10K_DBG_SDIO,
> +                          "sdio reduce tx comple fw not ack\n");
> +               ret = 0;
> +       }
> +
> +       return ret;
> +}
> +
>  /* HIF start/stop */
>
>  static int ath10k_sdio_hif_start(struct ath10k *ar)
> @@ -2073,6 +2100,7 @@ static void ath10k_sdio_hif_send_complete_check(struct ath10k *ar,
>         .start                  = ath10k_sdio_hif_start,
>         .stop                   = ath10k_sdio_hif_stop,
>         .swap_mailbox           = ath10k_sdio_hif_swap_mailbox,
> +       .get_htt_tx_complete    = ath10k_sdio_get_htt_tx_complete,
>         .map_service_to_pipe    = ath10k_sdio_hif_map_service_to_pipe,
>         .get_default_pipe       = ath10k_sdio_hif_get_default_pipe,
>         .send_complete_check    = ath10k_sdio_hif_send_complete_check,
> --
> 1.9.1
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
