Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 795659F9B9
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 07:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eLrCsA1dsdMM97Uoc0wFIQOe4OENG9QC8EqGqAcAlIc=; b=Uo1NNjQN2rumtE
	tg4YVEjms6iJOYiBfbeO0lBE92KdT3gbRnrpH2sZF+FQ6KEehYGC4+5te64tAcbKhMFbNgYlDeTnd
	WdPskQ8XRi+Z9jYpPscCY+hbsOHjuL4vjdhtKMNp2rG6xJBg+VZdrVeIffq5qwy44Y4PiMhHt2szk
	C+ROV4QtKoOEYsXM6DDXuq+D4G/YeUnCsqCMmVOfmuN7oX3OLIiKob99/lVcgu7wwFAuZ6US1DteP
	kLU/X0/Cim6rUJ0uJhGOi+6qXJY1uBTIlc4QYC+s0/NYK3+eCUyFZdWbYGmIAxRpRBYHdnF05ElM4
	uScauDy7/k5neS0I8ulA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2qCz-0002HO-OK; Wed, 28 Aug 2019 05:09:25 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2qCt-0002Ga-SV
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 05:09:21 +0000
Received: by mail-qk1-x744.google.com with SMTP id m2so1310606qkd.10
 for <ath10k@lists.infradead.org>; Tue, 27 Aug 2019 22:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UzHJRU3mMAa75u5UuZBVrasPy4rbgjtYyqhnQsh15mQ=;
 b=VU7UO+QVl7xThgIRmv8O4QxNrdopiop63V1xUGmTgAwvrVV6pJ8cvIc2wE9fwTrOxu
 SuGXd0SNco8JOEOKYUPdNv1FfftXIFVPF2+coYa0aPN0i6wFScAJPNrUQKRuzjHPg6lu
 qyVz6dU1tMoGLIaz0xvI/0gPWVQ2rY1Mrbds4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UzHJRU3mMAa75u5UuZBVrasPy4rbgjtYyqhnQsh15mQ=;
 b=r0yExbNgYcgLtcUCikRRjM7Mqx0sGKN8FOqf9rqG0azfAgTYtxxt+D9I/qS19PZywB
 nIu4rudFDUMvRahLKhLXMd0zXdJvF73kYHqT15ZGJIsQKgsozS/nZXI2AV2p9jroFws+
 hHXrH0bo/rJnjyF+tf4Q1hA2jZcUBrD+pCztsz1Dok+b5R/9QAsICaS4W3I6Ah2Sefd1
 C17x6oI3VC1PBlwJrBnqpII2AsXHeWBK7RWy1S0fHTT+hgBmVhutdHozVYpzZrNdw+f8
 L+EW8gxH7OdFnAKqpFFbMwStCPX1Cq/9aIJkpKgQSc68W2N3NCuOd9SEh6Y+4OU1BGO1
 JlZA==
X-Gm-Message-State: APjAAAX+ljDE+wCO1a5MtNs9hLULmgcU+4B/4qg74d8AA3RZbOEONr3o
 gfeOb8fWo4qF2+rJ5B8Y5WyGxL/8KJ1XmyvMbCCWGA==
X-Google-Smtp-Source: APXvYqwLS9/jMQfS7GAuj9Y5obk861xOzDYDA5VLQTmV/kTAZluJKIS4075F6ErM+U/odrzdc8eCIpemT0tlpfVBKOI=
X-Received: by 2002:a37:5ec7:: with SMTP id s190mr1987236qkb.299.1566968956393; 
 Tue, 27 Aug 2019 22:09:16 -0700 (PDT)
MIME-Version: 1.0
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-2-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566903707-27536-2-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 28 Aug 2019 13:09:05 +0800
Message-ID: <CANMq1KBLX3rKs6q2SmKhMctRAKF71y0K3it5kTfR0xG5Qk8MLg@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] ath10k: enable RX bundle receive for sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_220919_931679_070F48A0 
X-CRM114-Status: GOOD (  24.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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
> From: Alagu Sankar <alagusankar@silex-india.com>
>
> The existing implementation of initiating multiple sdio transfers for
> receive bundling is slowing down the receive speed. Combining the
> transfers using a bundle method would be ideal.
>
> The transmission utilization ratio for sdio bus for small packet is
> slow, because the space and time cost for sdio bus is same for large
> length packet and small length packet. So the speed of data for large
> length packet is higher than small length.
>
> Test result of different length of data:
> data packet(byte)   cost time(us)   calculated rate(Mbps)
>       256               28                73
>       512               33               124
>      1024               35               234
>      1792               45               318
>     14336              168               682
>     28672              333               688
>     57344              660               695
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Alagu Sankar <alagusankar@silex-india.com>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/sdio.c | 112 +++++++++++++++++++++++----------
>  drivers/net/wireless/ath/ath10k/sdio.h |   7 ++-
>  2 files changed, 85 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index 8ed4fbd..eacb4d5 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -24,6 +24,9 @@
>  #include "trace.h"
>  #include "sdio.h"
>
> +#define ATH10K_SDIO_DMA_BUF_SIZE       (32 * 1024)
> +#define ATH10K_SDIO_VSG_BUF_SIZE       (32 * 1024)
> +
>  /* inlined helper functions */
>
>  static inline int ath10k_sdio_calc_txrx_padded_len(struct ath10k_sdio *ar_sdio,
> @@ -381,16 +384,11 @@ static int ath10k_sdio_mbox_rx_process_packet(struct ath10k *ar,
>         struct ath10k_htc_hdr *htc_hdr = (struct ath10k_htc_hdr *)skb->data;
>         bool trailer_present = htc_hdr->flags & ATH10K_HTC_FLAG_TRAILER_PRESENT;
>         enum ath10k_htc_ep_id eid;
> -       u16 payload_len;
>         u8 *trailer;
>         int ret;
>
> -       payload_len = le16_to_cpu(htc_hdr->len);
> -       skb->len = payload_len + sizeof(struct ath10k_htc_hdr);
> -
>         if (trailer_present) {
> -               trailer = skb->data + sizeof(*htc_hdr) +
> -                         payload_len - htc_hdr->trailer_len;
> +               trailer = skb->data + skb->len - htc_hdr->trailer_len;

Oh, I see that you basiscally squashed in my patch, I don't think this
is ok, there is still value in mb description, and we probably want to
merge my patch to stable branches (even though sdio support is
incomplete in older releases).
https://patchwork.kernel.org/patch/11116215/

I'm ok if you include my patch as part of your series, though, so can
you, instead, send a v3 with:

PATCH 1/8 : https://patchwork.kernel.org/patch/11116215/
PATCH 2-8/8: This patch series

>
>                 eid = pipe_id_to_eid(htc_hdr->eid);
>
> @@ -489,11 +487,11 @@ static int ath10k_sdio_mbox_rx_process_packets(struct ath10k *ar,
>         return ret;
>  }
>
> -static int ath10k_sdio_mbox_alloc_pkt_bundle(struct ath10k *ar,
> -                                            struct ath10k_sdio_rx_data *rx_pkts,
> -                                            struct ath10k_htc_hdr *htc_hdr,
> -                                            size_t full_len, size_t act_len,
> -                                            size_t *bndl_cnt)
> +static int ath10k_sdio_mbox_alloc_bundle(struct ath10k *ar,
> +                                        struct ath10k_sdio_rx_data *rx_pkts,
> +                                        struct ath10k_htc_hdr *htc_hdr,
> +                                        size_t full_len, size_t act_len,
> +                                        size_t *bndl_cnt)
>  {
>         int ret, i;
>
> @@ -534,6 +532,7 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
>         size_t full_len, act_len;
>         bool last_in_bundle;
>         int ret, i;
> +       int pkt_cnt = 0;
>
>         if (n_lookaheads > ATH10K_SDIO_MAX_RX_MSGS) {
>                 ath10k_warn(ar,
> @@ -577,20 +576,22 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
>                          */
>                         size_t bndl_cnt;
>
> -                       ret = ath10k_sdio_mbox_alloc_pkt_bundle(ar,
> -                                                               &ar_sdio->rx_pkts[i],
> -                                                               htc_hdr,
> -                                                               full_len,
> -                                                               act_len,
> -                                                               &bndl_cnt);
> +                       struct ath10k_sdio_rx_data *rx_pkts =

Would rx_pkt be a better variable name? (since it's a one packet)

Also I'm not sure if you really need a new variable here, since you
only use rx_pkts once.

> +                               &ar_sdio->rx_pkts[pkt_cnt];
> +
> +                       ret = ath10k_sdio_mbox_alloc_bundle(ar,
> +                                                           rx_pkts,
> +                                                           htc_hdr,
> +                                                           full_len,
> +                                                           act_len,
> +                                                           &bndl_cnt);
>
>                         if (ret) {
>                                 ath10k_warn(ar, "alloc_bundle error %d\n", ret);
>                                 goto err;
>                         }
>
> -                       n_lookaheads += bndl_cnt;
> -                       i += bndl_cnt;
> +                       pkt_cnt += bndl_cnt;
>                         /*Next buffer will be the last in the bundle */
>                         last_in_bundle = true;
>                 }
> @@ -602,7 +603,7 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
>                 if (htc_hdr->flags & ATH10K_HTC_FLAGS_RECV_1MORE_BLOCK)
>                         full_len += ATH10K_HIF_MBOX_BLOCK_SIZE;
>
> -               ret = ath10k_sdio_mbox_alloc_rx_pkt(&ar_sdio->rx_pkts[i],
> +               ret = ath10k_sdio_mbox_alloc_rx_pkt(&ar_sdio->rx_pkts[pkt_cnt],
>                                                     act_len,
>                                                     full_len,
>                                                     last_in_bundle,
> @@ -611,9 +612,10 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
>                         ath10k_warn(ar, "alloc_rx_pkt error %d\n", ret);
>                         goto err;
>                 }
> +               pkt_cnt++;
>         }
>
> -       ar_sdio->n_rx_pkts = i;
> +       ar_sdio->n_rx_pkts = pkt_cnt;
>
>         return 0;
>
> @@ -627,41 +629,78 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
>         return ret;
>  }
>
> -static int ath10k_sdio_mbox_rx_packet(struct ath10k *ar,
> -                                     struct ath10k_sdio_rx_data *pkt)
> +static int ath10k_sdio_mbox_rx_fetch(struct ath10k *ar)
>  {
>         struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
> +       struct ath10k_sdio_rx_data *pkt = &ar_sdio->rx_pkts[0];
>         struct sk_buff *skb = pkt->skb;
> +       struct ath10k_htc_hdr *htc_hdr;
>         int ret;
>
>         ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
>                                  skb->data, pkt->alloc_len);
> -       pkt->status = ret;
> -       if (!ret)
> +
> +       if (ret) {
> +               ar_sdio->n_rx_pkts = 0;
> +               ath10k_sdio_mbox_free_rx_pkt(pkt);
> +       } else {
> +               htc_hdr = (struct ath10k_htc_hdr *)skb->data;
> +               pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
> +               pkt->status = ret;
>                 skb_put(skb, pkt->act_len);
> +       }

I'd simplify:

if (ret) {
               ar_sdio->n_rx_pkts = 0;
               ath10k_sdio_mbox_free_rx_pkt(pkt);
               return ret;
}

....

pkt->status = 0;
return 0;

>
>         return ret;
>  }
>
> -static int ath10k_sdio_mbox_rx_fetch(struct ath10k *ar)
> +static int ath10k_sdio_mbox_rx_fetch_bundle(struct ath10k *ar)
>  {
>         struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
> +       struct ath10k_sdio_rx_data *pkt;
> +       struct ath10k_htc_hdr *htc_hdr;
>         int ret, i;
> +       u32 pkt_offset, virt_pkt_len;
>
> +       virt_pkt_len = 0;
>         for (i = 0; i < ar_sdio->n_rx_pkts; i++) {
> -               ret = ath10k_sdio_mbox_rx_packet(ar,
> -                                                &ar_sdio->rx_pkts[i]);
> -               if (ret)
> +               virt_pkt_len += ar_sdio->rx_pkts[i].alloc_len;
> +       }
> +
> +       if (virt_pkt_len < ATH10K_SDIO_DMA_BUF_SIZE) {
> +               ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
> +                                        ar_sdio->vsg_buffer, virt_pkt_len);
> +               if (ret) {
> +                       i = 0;

Why? You reset i to zero anyway in the goto label.

>                         goto err;
> +               }
> +       } else {
> +               ath10k_err(ar, "size exceeding limit %d\n", virt_pkt_len);
> +       }
> +
> +       pkt_offset = 0;
> +       for (i = 0; i < ar_sdio->n_rx_pkts; i++) {
> +               struct sk_buff *skb = ar_sdio->rx_pkts[i].skb;
> +
> +               pkt = &ar_sdio->rx_pkts[i];
> +               htc_hdr = (struct ath10k_htc_hdr *)(ar_sdio->vsg_buffer + pkt_offset);
> +               pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
> +
> +               memcpy(skb->data, ar_sdio->vsg_buffer + pkt_offset,
> +                      pkt->act_len);
> +               pkt->status = 0;
> +               skb_put(skb, pkt->act_len);
> +               pkt_offset += pkt->alloc_len;
>         }
>
>         return 0;
>
>  err:
>         /* Free all packets that was not successfully fetched. */
> -       for (; i < ar_sdio->n_rx_pkts; i++)
> +       for (i = 0; i < ar_sdio->n_rx_pkts; i++)
>                 ath10k_sdio_mbox_free_rx_pkt(&ar_sdio->rx_pkts[i]);
>
> +       ar_sdio->n_rx_pkts = 0;
> +
>         return ret;
>  }
>
> @@ -704,7 +743,10 @@ static int ath10k_sdio_mbox_rxmsg_pending_handler(struct ath10k *ar,
>                          */
>                         *done = false;
>
> -               ret = ath10k_sdio_mbox_rx_fetch(ar);
> +               if (ar_sdio->n_rx_pkts > 1)
> +                       ret = ath10k_sdio_mbox_rx_fetch_bundle(ar);
> +               else
> +                       ret = ath10k_sdio_mbox_rx_fetch(ar);
>
>                 /* Process fetched packets. This will potentially update
>                  * n_lookaheads depending on if the packets contain lookahead
> @@ -1112,7 +1154,7 @@ static int ath10k_sdio_bmi_get_rx_lookahead(struct ath10k *ar)
>                                          MBOX_HOST_INT_STATUS_ADDRESS,
>                                          &rx_word);
>                 if (ret) {
> -                       ath10k_warn(ar, "unable to read RX_LOOKAHEAD_VALID: %d\n", ret);
> +                       ath10k_warn(ar, "unable to read rx_lookahd: %d\n", ret);
>                         return ret;
>                 }
>
> @@ -2007,6 +2049,12 @@ static int ath10k_sdio_probe(struct sdio_func *func,
>                 goto err_core_destroy;
>         }
>
> +       ar_sdio->vsg_buffer = devm_kmalloc(ar->dev, ATH10K_SDIO_VSG_BUF_SIZE, GFP_KERNEL);
> +       if (!ar_sdio->vsg_buffer) {
> +               ret = -ENOMEM;
> +               goto err_core_destroy;
> +       }
> +
>         ar_sdio->irq_data.irq_en_reg =
>                 devm_kzalloc(ar->dev, sizeof(struct ath10k_sdio_irq_enable_regs),
>                              GFP_KERNEL);
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.h b/drivers/net/wireless/ath/ath10k/sdio.h
> index b8c7ac0..4896eca 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.h
> +++ b/drivers/net/wireless/ath/ath10k/sdio.h
> @@ -138,8 +138,8 @@ struct ath10k_sdio_irq_proc_regs {
>         u8 rx_lookahead_valid;
>         u8 host_int_status2;
>         u8 gmbox_rx_avail;
> -       __le32 rx_lookahead[2];
> -       __le32 rx_gmbox_lookahead_alias[2];
> +       __le32 rx_lookahead[2 * ATH10K_HIF_MBOX_NUM_MAX];
> +       __le32 int_status_enable;
>  };
>
>  struct ath10k_sdio_irq_enable_regs {
> @@ -196,6 +196,9 @@ struct ath10k_sdio {
>         struct ath10k *ar;
>         struct ath10k_sdio_irq_data irq_data;
>
> +       /* temporary buffer for sdio read */
> +       u8 *vsg_buffer;
> +
>         /* temporary buffer for BMI requests */
>         u8 *bmi_buf;
>
> --
> 1.9.1
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
