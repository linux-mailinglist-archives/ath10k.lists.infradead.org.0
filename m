Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E50BA2D29
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 05:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yU/p19Jm8hvT1reeo1HkLSzl8uWyswncGbyQ4UcG9GQ=; b=D7cOBoCXrxsK6K
	1Gu8XQ+VEt/FSkhaP0XCHZr3PIFzmU4Ge9SluSnsGkq1D2Qs8ynVM2l9a1aApdMJ69L9x3rF/QgP1
	TM8cwc2SseAKZz+48rYfUZ5ROFskyaitJ54F1h/3g4ycp7SH/eR4mlAkG0+AiSNOSss1Ewquv0cXg
	61f5if+AUd4QV88IYx8SC5Ml2fEmk+o5kZ3gjFPHT3OluuBR5NJK3G5Pbqm3+vxMv7DUXvmFlCXzO
	Tt/DyIvRiDs51t2Q3j8JPAmy0hAeGdAHsDcT5Hxck6RhssAbZGztq+s1k7axlBpCUmGPzaozDYqkP
	nF6Sm0Ei5NRpSsbc1seg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3XG6-0005P9-CB; Fri, 30 Aug 2019 03:07:31 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3XFu-0005Oh-Jh
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 03:07:21 +0000
Received: by mail-qt1-x843.google.com with SMTP id 44so6091972qtg.11
 for <ath10k@lists.infradead.org>; Thu, 29 Aug 2019 20:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P7vQRVI5UD1/xcxqfUrPTlmNdr0gcGHeCjrwJUAm6Fs=;
 b=OTgzdxb3fx1Y3NkbtL5/GsS0qDYldO2RciuAJlohK03CLqysGHMKlbzRH9nLK3EPNw
 x4Sd677Q2fe/SV7Z7ZkVySlGzp+Az46/J15mUev+9w5UQfkOdAP5IW3j3lUsr7LOvcPd
 2uVQxoPFREYM/NfAK1Hn+hQJzAqY/NJM15I9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P7vQRVI5UD1/xcxqfUrPTlmNdr0gcGHeCjrwJUAm6Fs=;
 b=Qsgf8uQ5hiYM1WlLpCuU9sRju077rw5zCTyMFUXFzR6YHHFLslmOFA5RmaCAptHHOJ
 e63wxwBEcUebxf2x6wh1D28rXABP+0VpUIfgQ6u9gSZq1kmVCxkTaphSa9KN8eKSIsvj
 lWqgxy9WRuATT+pBSvBTesXJiYGA/3CTuD+yNst0u7GZCPetInn7hvZ+MGaF+6wg4h6F
 wyKnoQ/IsWVjO9Flao9a0rnzRUK/1uKKtacqUgavyGQdSxDJUivmTHNmR6ymWsfpqXwa
 KBzJIMSn983XdzCuXXxWWtKA1SFY/8jlZypu1vMXM0fHSzG6mWIGRK4Sx+DX/QQRdMR2
 fKOg==
X-Gm-Message-State: APjAAAU1o5M8E6M3KoIRDkIYy3/ySIuBEOj6JmcGpohjDTPZ/Hu4Wbe1
 AQDWIoqnae//TAJJgh3sjZpkBfkuw9iP+YP7Ri6pew==
X-Google-Smtp-Source: APXvYqw5BSdZphuajLnGLaTTSCVRCGNjmQxCCRxZGi6mj8ZfDYmoDYvZVSWTZ8Il5mJYDCnRIKmyqYCK7LUytj3Vm5g=
X-Received: by 2002:ad4:490c:: with SMTP id bh12mr8720502qvb.59.1567134437109; 
 Thu, 29 Aug 2019 20:07:17 -0700 (PDT)
MIME-Version: 1.0
References: <1566998177-2658-1-git-send-email-wgong@codeaurora.org>
 <1566998177-2658-3-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566998177-2658-3-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 30 Aug 2019 11:07:06 +0800
Message-ID: <CANMq1KBEYM6wNx3oEWaEwvq+x325UcY_n=29pBQwoBkEkYoPZQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/8] ath10k: enable RX bundle receive for sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_200718_929913_07676A89 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

On Thu, Aug 29, 2019 at 11:49 PM Wen Gong <wgong@codeaurora.org> wrote:
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
> v2: fix incorrect skb tail of rx bundle in ath10k_sdio_mbox_rx_process_packet
> v3: change some code style
> split fix incorrect skb tail of rx bundle to patch "adjust skb length in ath10k_sdio_mbox_rx_packet"
>
>  drivers/net/wireless/ath/ath10k/sdio.c | 106 +++++++++++++++++++++------------
>  drivers/net/wireless/ath/ath10k/sdio.h |   7 ++-
>  2 files changed, 74 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index 1127e44..23c998d 100644
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
> @@ -484,11 +487,11 @@ static int ath10k_sdio_mbox_rx_process_packets(struct ath10k *ar,
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
> @@ -529,6 +532,7 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
>         size_t full_len, act_len;
>         bool last_in_bundle;
>         int ret, i;
> +       int pkt_cnt = 0;
>
>         if (n_lookaheads > ATH10K_SDIO_MAX_RX_MSGS) {
>                 ath10k_warn(ar,
> @@ -572,20 +576,22 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
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
> @@ -597,7 +603,7 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
>                 if (htc_hdr->flags & ATH10K_HTC_FLAGS_RECV_1MORE_BLOCK)
>                         full_len += ATH10K_HIF_MBOX_BLOCK_SIZE;
>
> -               ret = ath10k_sdio_mbox_alloc_rx_pkt(&ar_sdio->rx_pkts[i],
> +               ret = ath10k_sdio_mbox_alloc_rx_pkt(&ar_sdio->rx_pkts[pkt_cnt],
>                                                     act_len,
>                                                     full_len,
>                                                     last_in_bundle,
> @@ -606,9 +612,10 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
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
> @@ -622,10 +629,10 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
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
>         struct ath10k_htc_hdr *htc_hdr;
>         int ret;
> @@ -633,46 +640,62 @@ static int ath10k_sdio_mbox_rx_packet(struct ath10k *ar,
>         ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
>                                  skb->data, pkt->alloc_len);
>
> -       if (!ret) {
> -               /* Update actual length. The original length may be incorrect,
> -                * as the FW will bundle multiple packets as long as their sizes
> -                * fit within the same aligned length (pkt->alloc_len).
> -                */
> -               htc_hdr = (struct ath10k_htc_hdr *)skb->data;
> -               pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
> -               if (pkt->act_len <= pkt->alloc_len) {
> -                       skb_put(skb, pkt->act_len);
> -               } else {
> -                       ath10k_warn(ar, "rx packet too large (%zu > %zu)\n",
> -                                   pkt->act_len, pkt->alloc_len);
> -                       ret = -EMSGSIZE;
> -               }
> +       if (ret) {
> +               ar_sdio->n_rx_pkts = 0;
> +               ath10k_sdio_mbox_free_rx_pkt(pkt);
> +               return ret;
>         }
>
> +       htc_hdr = (struct ath10k_htc_hdr *)skb->data;
> +       pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
>         pkt->status = ret;
> +       skb_put(skb, pkt->act_len);
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
> +               virt_pkt_len += ar_sdio->rx_pkts[i].alloc_len;
> +       }
> +
> +       if (virt_pkt_len < ATH10K_SDIO_DMA_BUF_SIZE) {
> +               ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
> +                                        ar_sdio->vsg_buffer, virt_pkt_len);
>                 if (ret)
>                         goto err;
> +       } else {
> +               ath10k_err(ar, "size exceeding limit %d\n", virt_pkt_len);

Should you set err and goto err here? It seems like you're going to
process garbage if this happens.

> +       }
> +
> +       pkt_offset = 0;
> +       for (i = 0; i < ar_sdio->n_rx_pkts; i++) {
> +               pkt = &ar_sdio->rx_pkts[i];
> +               htc_hdr = (struct ath10k_htc_hdr *)(ar_sdio->vsg_buffer + pkt_offset);
> +               pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
> +
> +               skb_put_data(pkt->skb, htc_hdr, pkt->act_len);
> +               pkt->status = 0;
> +               pkt_offset += pkt->alloc_len;
>         }
>
>         return 0;
>
>  err:
>         /* Free all packets that was not successfully fetched. */

Well you're freeing everything, now.

> -       for (; i < ar_sdio->n_rx_pkts; i++)
> +       for (i = 0; i < ar_sdio->n_rx_pkts; i++)
>                 ath10k_sdio_mbox_free_rx_pkt(&ar_sdio->rx_pkts[i]);
>
> +       ar_sdio->n_rx_pkts = 0;
> +
>         return ret;
>  }
>
> @@ -715,7 +738,10 @@ static int ath10k_sdio_mbox_rxmsg_pending_handler(struct ath10k *ar,
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
> @@ -1123,7 +1149,7 @@ static int ath10k_sdio_bmi_get_rx_lookahead(struct ath10k *ar)
>                                          MBOX_HOST_INT_STATUS_ADDRESS,
>                                          &rx_word);
>                 if (ret) {
> -                       ath10k_warn(ar, "unable to read RX_LOOKAHEAD_VALID: %d\n", ret);
> +                       ath10k_warn(ar, "unable to read rx_lookahd: %d\n", ret);
>                         return ret;
>                 }
>
> @@ -2018,6 +2044,12 @@ static int ath10k_sdio_probe(struct sdio_func *func,
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
