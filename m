Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025129F9CE
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 07:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXrdfTa1bBXfEkfiANDW0ipGP5CsP12cUHyafFR7UlI=; b=e5fVOG43lJurvI
	WMAaVLGSy8LYVbPfs90dyb9RiM75JQ6eAKe8IEDXjyOvNa4jgRmPAGCh0rvC7YKHNCYeXO7FMW9n9
	TInLiy89rJMo4xooym6dhksug+tld0/F5ksPWCQRc448fYrrRkZMqTNAIxD89PI17qXdeZKzGPDYu
	0nOsYoVwcvzw7hI4CIOJxrFLTkP6vn+mrfWTnc1KqfdXDNtv8uPOPVxpDnyUVCSBEoAZMzQKY4be2
	uKgzXMuDx8xht3q1vKyU4cSDPalWWxGi+EQ5qE3nY0kk2RfhvZKd36sO9ZYO+bD/ZIKyh9UrSGVtR
	sFqpC9LZ7LlCK0CRSuTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2qUR-0000OJ-IU; Wed, 28 Aug 2019 05:27:27 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2qUM-0000Np-25
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 05:27:24 +0000
Received: by mail-qk1-x742.google.com with SMTP id d23so1379461qko.3
 for <ath10k@lists.infradead.org>; Tue, 27 Aug 2019 22:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HlK6/JCWc++1cPXMBL2iirKGtpMI1tHod78jhF2UCpA=;
 b=kLT4QKiqkE/bblXsfgufffarmWU7SjLk7ezum5BcBLWEhj3mjva3mVVypmrtrisgj1
 worM91KCaNJj+YN9q1pm4/RLiqLVyWEcMoS65jLezagGgd5WTbzO/9alAJEEvEYeoqvT
 mj7rEHQJNDCSc6Eo5Z1u2M84k4ZKcq8FXbn+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HlK6/JCWc++1cPXMBL2iirKGtpMI1tHod78jhF2UCpA=;
 b=cDwHGPKAJiaaSjNevBfbxjW7B4EdJadxsLiMtt88odXCqnYGF7Q19e5fd3U6NBoFrG
 7/SOaEAYwnUU7xDQzUZyE4U+Sdc+rDf5llJftesAbGHyu+02ocAti50D2IP3hkagk2Jd
 C94pfFWfxx7CYwh+srULJioHyF+k8OFi/D7IcxLZt1VIENX8NNL9KbXbG8JddYBn0z3d
 5IJ31QY6jSwKtHr18myCJDQ69DAm4j4lqng8waVhzJ7H7WS0hJkNkBZ2iZVB3K/QRiKj
 Szs9MJRcKHeUlyqEOfJg5aDywOR6Mkp2iNzNE50ui6Y+UWD5p0e0Y+KdgFGmesy0TLex
 9Bsw==
X-Gm-Message-State: APjAAAXxe85+rp7msEtUVO2dTL5looEuPNucoEQJa673mJ11/O0Bi5A7
 vLaWs8YWgVyA4woO09X8HhxAMXfpt/+XjZQYwLx2qA==
X-Google-Smtp-Source: APXvYqyPetru7pU8H/iwhW3fKselih7hG1UQ4oyig9nCwIhpQh23F/Ebz922v61+pn1tbjXPK/mGzxW2lR7WYEtl8no=
X-Received: by 2002:ae9:f301:: with SMTP id p1mr2230187qkg.353.1566970040910; 
 Tue, 27 Aug 2019 22:27:20 -0700 (PDT)
MIME-Version: 1.0
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-5-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566903707-27536-5-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 28 Aug 2019 13:27:09 +0800
Message-ID: <CANMq1KDeQaJWYiAz=P9pKm0_seNmtnEHVgt9T0-=40Ew=zLs0A@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] ath10k: disable TX complete indication of htt for
 sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_222722_134734_7CC283F9 
X-CRM114-Status: GOOD (  25.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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
>  drivers/net/wireless/ath/ath10k/core.c   |  6 ++++++
>  drivers/net/wireless/ath/ath10k/hif.h    |  9 ++++++++
>  drivers/net/wireless/ath/ath10k/htc.c    | 10 +++++++++
>  drivers/net/wireless/ath/ath10k/htc.h    |  3 +++
>  drivers/net/wireless/ath/ath10k/htt.c    |  5 +++++
>  drivers/net/wireless/ath/ath10k/htt.h    | 13 +++++++++++-
>  drivers/net/wireless/ath/ath10k/htt_rx.c | 35 +++++++++++++++++++++++++++++++-
>  drivers/net/wireless/ath/ath10k/htt_tx.c | 30 +++++++++++++++++++++++++++
>  drivers/net/wireless/ath/ath10k/hw.h     |  2 +-
>  drivers/net/wireless/ath/ath10k/sdio.c   | 28 +++++++++++++++++++++++++
>  10 files changed, 138 insertions(+), 3 deletions(-)
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

So you don't like my feedback to call this enable_tx_comp? That's ok,
but please let me know why ,-)

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

if (disable)
  param |= ..;
else
  param &= ~..;

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
> index 1d4d1a1..4c6cdc2 100644
> --- a/drivers/net/wireless/ath/ath10k/htc.c
> +++ b/drivers/net/wireless/ath/ath10k/htc.c
> @@ -660,6 +660,16 @@ int ath10k_htc_wait_target(struct ath10k_htc *htc)
>         return 0;
>  }
>
> +void ath10k_htc_change_tx_credit_flow(struct ath10k_htc *htc,
> +                                     enum ath10k_htc_ep_id eid,
> +                                     bool enable)
> +{
> +       struct ath10k *ar = htc->ar;
> +       struct ath10k_htc_ep *ep = &ar->htc.endpoint[eid];
> +
> +       ep->tx_credit_flow_enabled = enable;
> +}
> +
>  int ath10k_htc_connect_service(struct ath10k_htc *htc,
>                                struct ath10k_htc_svc_conn_req *conn_req,
>                                struct ath10k_htc_svc_conn_resp *conn_resp)
> diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
> index 8a07da0..3c09fe8 100644
> --- a/drivers/net/wireless/ath/ath10k/htc.h
> +++ b/drivers/net/wireless/ath/ath10k/htc.h
> @@ -371,6 +371,9 @@ struct ath10k_htc {
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
> index 7b75200..4354bf2 100644
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
> +       htt->disable_tx_comp = ath10k_hif_get_htt_tx_complete(htt->ar);
> +       if (htt->disable_tx_comp)
> +               ath10k_htc_change_tx_credit_flow(&htt->ar->htc, htt->eid, true);
> +
>         return 0;
>  }
>
> diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
> index 30c0800..889bf9f 100644
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
> +       bool disable_tx_comp;
>  };
>
>  struct ath10k_htt_tx_ops {
> diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
> index 83a7fb6..9990da7 100644
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
> +               if (htt->disable_tx_comp) {
> +                       spin_lock_bh(&htc->tx_lock);
> +                       ep->tx_credits++;
> +                       spin_unlock_bh(&htc->tx_lock);
> +               }
> +
>                 status = ath10k_txrx_tx_unref(htt, &tx_done);
>                 if (!status) {
>                         spin_lock_bh(&htt->tx_lock);
> @@ -3790,8 +3799,32 @@ bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
>                 skb_queue_tail(&htt->rx_in_ord_compl_q, skb);
>                 return false;
>         }
> -       case HTT_T2H_MSG_TYPE_TX_CREDIT_UPDATE_IND:
> +       case HTT_T2H_MSG_TYPE_TX_CREDIT_UPDATE_IND: {
> +               struct ath10k_htt *htt = &ar->htt;
> +               struct ath10k_htc *htc = &ar->htc;
> +               struct ath10k_htc_ep *ep = &ar->htc.endpoint[htt->eid];
> +               __le32 *msg = (__le32 *)resp;
> +               u32 msg_word = __le32_to_cpu(*msg);

Merge these 2 in one line.

> +               int htt_credit_delta;
> +
> +               htt_credit_delta = HTT_TX_CREDIT_DELTA_ABS_GET(msg_word);
> +               if (HTT_TX_CREDIT_SIGN_BIT_GET(msg_word))
> +                       htt_credit_delta = -htt_credit_delta;
> +
> +               ath10k_dbg(ar, ATH10K_DBG_HTT,
> +                          "credit update: delta:%d\n",
> +                          htt_credit_delta);
> +
> +               if (htt->disable_tx_comp) {
> +                       spin_lock_bh(&htc->tx_lock);
> +                       ep->tx_credits += htt_credit_delta;
> +                       spin_unlock_bh(&htc->tx_lock);
> +                       ath10k_dbg(ar, ATH10K_DBG_HTT,
> +                                  "credit total:%d\n",
> +                                  ep->tx_credits);
> +               }
>                 break;
> +       }
>         case HTT_T2H_MSG_TYPE_CHAN_CHANGE: {
>                 u32 phymode = __le32_to_cpu(resp->chan_change.phymode);
>                 u32 freq = __le32_to_cpu(resp->chan_change.freq);
> diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c b/drivers/net/wireless/ath/ath10k/htt_tx.c
> index 2ef717f1..8da5545 100644
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
> +       if (htt->disable_tx_comp) {

You can help reduce indentation in this function by doing:

if (!htt->disable_tx_comp)
   return;

Then
if (htt_hdr->msg_type != HTT_H2T_MSG_TYPE_TX_FRM)
   return;

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
> +               if (htt->disable_tx_comp)
> +                       flags1 |= HTT_DATA_TX_DESC_FLAGS1_TX_COMPLETE;
> +

Move this below, so that you first fully update flags0, then flags1?

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
> index 5363a37..a302eda 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -1790,6 +1790,33 @@ static int ath10k_sdio_hif_swap_mailbox(struct ath10k *ar)
>         return 0;
>  }
>
> +static int ath10k_sdio_get_htt_tx_complete(struct ath10k *ar)
> +{
> +       u32 addr, val;
> +       int ret;
> +
> +       addr = host_interest_item_address(HI_ITEM(hi_acs_flags));
> +
> +       ret = ath10k_sdio_hif_diag_read32(ar, addr, &val);
> +       if (ret) {
> +               ath10k_warn(ar,
> +                           "unable to read hi_acs_flags for htt tx comple : %d\n", ret);

tx complete?

> +               return ret;
> +       }
> +

Is this a bit better?

ret = (val & HI_ACS_FLAGS_SDIO_REDUCE_TX_COMPL_FW_ACK);
if (ret)
...
else
...

return ret;

Or even replace the if/else with:
ath10k_dbg(ar, ATH10K_DBG_SDIO, "sdio reduce tx complete fw%sack\n",
ret ? "" : " not ");

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
