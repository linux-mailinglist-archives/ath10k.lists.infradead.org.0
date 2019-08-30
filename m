Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C364A2D3C
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 05:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=er96dBGDTyoHE6ryYkLxaxNss82cg6oFkhugpMF5Uyo=; b=Bn7zUz9PkX+5uk
	+PX9lgF51+F3VFrAcHZpBLqBezbPXsVNP9t/Yca4fY29ceOxIqDZzqQfQHGp5nNxDqL7tCwzkJ0lt
	8pXuTLWEmRf570BxR8A3jyJyzuJCyOh0Ywaeavfdq3h0WNtGdKdofIiQTixt5LiIQiIGmZZgEGfvr
	z6fhkEr0T7I+nMJOjOowDKJTGkePWI84piGbuaYCnNdYV2JQVBmHs5y1By/LA52Pb2Ik4aKqgYKrg
	BmNz+Zts1ERUwnWND2PcdJKF6FiluH6Myk6iiwz4iuuoeMwdbIPy4pAkoxqiTHlSG6cN6NiwRuKQL
	paHwZAA0uJ0zIVzCo39A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3XSR-000151-PS; Fri, 30 Aug 2019 03:20:15 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3XSL-00014g-Oo
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 03:20:11 +0000
Received: by mail-qk1-x743.google.com with SMTP id f13so4885427qkm.9
 for <ath10k@lists.infradead.org>; Thu, 29 Aug 2019 20:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jOp12j+Z6PagrHAr4/H6tX1qM/5TQhQtkLllQ/NqdoI=;
 b=lXzWuHi/midZ8kVg2nAhbyVJc9iNmnYzRN6d6ifSKh+wQ65ECjuBuRbPsTSr1SA8Jj
 2UBpHtgacQ5VH2RCwrVEAZo9MwY4O98wiabwNGORhX8lmmNE5acNdaoMpj8cjZaXCOAb
 cHXLojvQbmhfiRHrO09DgYjojfqbuoWmkc3bY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jOp12j+Z6PagrHAr4/H6tX1qM/5TQhQtkLllQ/NqdoI=;
 b=PptxEKrWX2xKGN2QFH+GpMq1ufughiNb3kcErcT0MSNjii455rrg0OjQ/+KT5FkKXI
 ETvaRNDFM13oaJbsPvMoi0nl0Z/Nb/40kP2ahC3mxIMtgcsMHGPBD2KhCS/TFHQlIW24
 9zfQjN02BIlHgjYl80s9ms7PF7XpWbALAwj32hw92JSroRdBFzaD8Dko22fGpZ5GAC4m
 MCXesB96EwWtSmoghT0gQzcir8NwxZjIe88435PkJciRoakpVcOF5Gq1MHZHmQ496xxf
 uE87fRTX08ryhX7KcN9IypA8u8xVJMwLVNmgZjuKc6ETTDDTY2hs2GhwB86Qp29yZviV
 qypg==
X-Gm-Message-State: APjAAAVWyMlG0WGveIJ6nNo8z5p15Kc6nK2aHJtFxAekSMwRpO9MYkkf
 464UojvBeGuwDIEPgqTy8ZnEUxKzL8x402Lu8QyjUw==
X-Google-Smtp-Source: APXvYqzcR9MUsf6uOMKXU1Pv9jmThUFUVccsrPp0gy/E4OrmBhEy7LUKBqE4bHPYwJzbr9UtnaiVpVWoqVMZAMAn8D4=
X-Received: by 2002:a37:4ed3:: with SMTP id
 c202mr13141932qkb.457.1567135208855; 
 Thu, 29 Aug 2019 20:20:08 -0700 (PDT)
MIME-Version: 1.0
References: <1566998177-2658-1-git-send-email-wgong@codeaurora.org>
 <1566998177-2658-9-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566998177-2658-9-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 30 Aug 2019 11:19:56 +0800
Message-ID: <CANMq1KBXWydTR50fVqF7ks5gBTpUAS8Ga-8_MzeMGAknnyoVzg@mail.gmail.com>
Subject: Re: [PATCH v3 8/8] ath10k: enable napi on RX path for sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_202009_866115_31550F55 
X-CRM114-Status: GOOD (  24.73  )
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

On Fri, Aug 30, 2019 at 1:50 AM Wen Gong <wgong@codeaurora.org> wrote:
>
> For tcp RX, the quantity of tcp acks to remote is 1/2 of the quantity
> of tcp data from remote, then it will have many small length packets
> on TX path of sdio bus, then it reduce the RX packets's bandwidth of
> tcp.
>
> This patch enable napi on RX path, then the RX packet of tcp will not
> feed to tcp stack immeditely from mac80211 since GRO is enabled by
> default, it will feed to tcp stack after napi complete, if rx bundle
> is enabled, then it will feed to tcp stack one time for each bundle
> of RX. For example, RX bundle size is 32, then tcp stack will receive
> one large length packet, its length is neary 1500*32, then tcp stack
> will send a tcp ack for this large packet, this will reduce the tcp
> acks ratio from 1/2 to 1/32. This results in significant performance
> improvement for tcp RX.
>
> Tcp rx throughout is 240Mbps without this patch, and it arrive 390Mbps
> with this patch. The cpu usage has no obvious difference with and
> without NAPI.
>
> call stack for each RX packet on GRO path:
> (skb length is about 1500 bytes)
>   skb_gro_receive ([kernel.kallsyms])
>   tcp4_gro_receive ([kernel.kallsyms])
>   inet_gro_receive ([kernel.kallsyms])
>   dev_gro_receive ([kernel.kallsyms])
>   napi_gro_receive ([kernel.kallsyms])
>   ieee80211_deliver_skb ([mac80211])
>   ieee80211_rx_handlers ([mac80211])
>   ieee80211_prepare_and_rx_handle ([mac80211])
>   ieee80211_rx_napi ([mac80211])
>   ath10k_htt_rx_proc_rx_ind_hl ([ath10k_core])
>   ath10k_htt_rx_pktlog_completion_handler ([ath10k_core])
>   ath10k_sdio_napi_poll ([ath10k_sdio])
>   net_rx_action ([kernel.kallsyms])
>   softirqentry_text_start ([kernel.kallsyms])
>   do_softirq ([kernel.kallsyms])
>
> call stack for napi complete and send tcp ack from tcp stack:
> (skb length is about 1500*32 bytes)
>  _tcp_ack_snd_check ([kernel.kallsyms])
>  tcp_v4_do_rcv ([kernel.kallsyms])
>  tcp_v4_rcv ([kernel.kallsyms])
>  local_deliver_finish ([kernel.kallsyms])
>  ip_local_deliver ([kernel.kallsyms])
>  ip_rcv_finish ([kernel.kallsyms])
>  ip_rcv ([kernel.kallsyms])
>  netif_receive_skb_core ([kernel.kallsyms])
>  netif_receive_skb_one_core([kernel.kallsyms])
>  netif_receive_skb ([kernel.kallsyms])
>  netif_receive_skb_internal ([kernel.kallsyms])
>  napi_gro_complete ([kernel.kallsyms])
>  napi_gro_flush ([kernel.kallsyms])
>  napi_complete_done ([kernel.kallsyms])
>  ath10k_sdio_napi_poll ([ath10k_sdio])
>  net_rx_action ([kernel.kallsyms])
>  __softirqentry_text_start ([kernel.kallsyms])
>  do_softirq ([kernel.kallsyms])
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
> v2:no change
> v3:change some code style
>  drivers/net/wireless/ath/ath10k/htt.c    |  2 ++
>  drivers/net/wireless/ath/ath10k/htt.h    |  3 +++
>  drivers/net/wireless/ath/ath10k/htt_rx.c | 45 ++++++++++++++++++++++++++------
>  drivers/net/wireless/ath/ath10k/sdio.c   | 33 +++++++++++++++++++++++
>  4 files changed, 75 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/htt.c b/drivers/net/wireless/ath/ath10k/htt.c
> index 127b4e4..f69346f 100644
> --- a/drivers/net/wireless/ath/ath10k/htt.c
> +++ b/drivers/net/wireless/ath/ath10k/htt.c
> @@ -157,6 +157,8 @@ int ath10k_htt_connect(struct ath10k_htt *htt)
>
>         htt->eid = conn_resp.eid;
>
> +       skb_queue_head_init(&htt->rx_indication_head);
> +
>         if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL) {
>                 ep = &ar->htc.endpoint[htt->eid];
>                 ath10k_htc_setup_tx_req(ep);
> diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
> index 4851a2e..462a25b 100644
> --- a/drivers/net/wireless/ath/ath10k/htt.h
> +++ b/drivers/net/wireless/ath/ath10k/htt.h
> @@ -1879,6 +1879,8 @@ struct ath10k_htt {
>         struct ath10k *ar;
>         enum ath10k_htc_ep_id eid;
>
> +       struct sk_buff_head rx_indication_head;
> +
>         u8 target_version_major;
>         u8 target_version_minor;
>         struct completion target_version_received;
> @@ -2298,6 +2300,7 @@ int ath10k_htt_tx_mgmt_inc_pending(struct ath10k_htt *htt, bool is_mgmt,
>  void ath10k_htt_rx_pktlog_completion_handler(struct ath10k *ar,
>                                              struct sk_buff *skb);
>  int ath10k_htt_txrx_compl_task(struct ath10k *ar, int budget);
> +int ath10k_htt_rx_hl_indication(struct ath10k *ar, int budget);
>  void ath10k_htt_set_tx_ops(struct ath10k_htt *htt);
>  void ath10k_htt_set_rx_ops(struct ath10k_htt *htt);
>  #endif
> diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
> index 09825b1..71b4afe 100644
> --- a/drivers/net/wireless/ath/ath10k/htt_rx.c
> +++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
> @@ -2263,7 +2263,7 @@ static bool ath10k_htt_rx_proc_rx_ind_hl(struct ath10k_htt *htt,
>         if (mpdu_ranges->mpdu_range_status == HTT_RX_IND_MPDU_STATUS_TKIP_MIC_ERR)
>                 rx_status->flag |= RX_FLAG_MMIC_ERROR;
>
> -       ieee80211_rx_ni(ar->hw, skb);
> +       ieee80211_rx_napi(ar->hw, NULL, skb, &ar->napi);
>
>         /* We have delivered the skb to the upper layers (mac80211) so we
>          * must not free it.
> @@ -3664,14 +3664,12 @@ bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
>                 break;
>         }
>         case HTT_T2H_MSG_TYPE_RX_IND:
> -               if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL)
> -                       return ath10k_htt_rx_proc_rx_ind_hl(htt,
> -                                                           &resp->rx_ind_hl,
> -                                                           skb,
> -                                                           HTT_RX_PN_CHECK,
> -                                                           HTT_RX_NON_TKIP_MIC);
> -               else
> +               if (ar->bus_param.dev_type != ATH10K_DEV_TYPE_HL) {
>                         ath10k_htt_rx_proc_rx_ind_ll(htt, &resp->rx_ind);
> +               } else {
> +                       skb_queue_tail(&htt->rx_indication_head, skb);
> +                       return false;
> +               }
>                 break;
>         case HTT_T2H_MSG_TYPE_PEER_MAP: {
>                 struct htt_peer_map_event ev = {
> @@ -3894,6 +3892,37 @@ static int ath10k_htt_rx_deliver_msdu(struct ath10k *ar, int quota, int budget)
>         return quota;
>  }
>
> +int ath10k_htt_rx_hl_indication(struct ath10k *ar, int budget)
> +{
> +       struct htt_resp *resp;
> +       struct ath10k_htt *htt = &ar->htt;
> +       struct sk_buff *skb;
> +       bool release;
> +       int quota = 0;

Don't init to 0.

> +
> +       for (quota = 0; quota < budget; quota++) {
> +               skb = skb_dequeue(&htt->rx_indication_head);
> +               if (!skb)
> +                       break;
> +
> +               resp = (struct htt_resp *)skb->data;
> +
> +               release = ath10k_htt_rx_proc_rx_ind_hl(htt,
> +                                                      &resp->rx_ind_hl,
> +                                                      skb,
> +                                                      HTT_RX_PN_CHECK,
> +                                                      HTT_RX_NON_TKIP_MIC);
> +
> +               if (release)
> +                       dev_kfree_skb_any(skb);
> +
> +               ath10k_dbg(ar, ATH10K_DBG_HTT, "rx indication poll pending count:%d\n",
> +                          skb_queue_len(&htt->rx_indication_head));
> +       }
> +       return quota;
> +}
> +EXPORT_SYMBOL(ath10k_htt_rx_hl_indication);
> +
>  int ath10k_htt_txrx_compl_task(struct ath10k *ar, int budget)
>  {
>         struct ath10k_htt *htt = &ar->htt;
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index c641f1b..23e92ea 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -1400,6 +1400,9 @@ static void ath10k_rx_indication_async_work(struct work_struct *work)
>                 spin_lock_bh(&ar_sdio->wr_async_lock_rx);
>         }
>
> +       if (test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
> +               napi_schedule(&ar->napi);
> +
>         spin_unlock_bh(&ar_sdio->wr_async_lock_rx);
>  }
>
> @@ -1813,6 +1816,8 @@ static int ath10k_sdio_hif_start(struct ath10k *ar)
>         struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
>         int ret;
>
> +       napi_enable(&ar->napi);
> +
>         /* Sleep 20 ms before HIF interrupts are disabled.
>          * This will give target plenty of time to process the BMI done
>          * request before interrupts are disabled.
> @@ -1951,6 +1956,9 @@ static void ath10k_sdio_hif_stop(struct ath10k *ar)
>         }
>
>         spin_unlock_bh(&ar_sdio->wr_async_lock);
> +
> +       napi_synchronize(&ar->napi);
> +       napi_disable(&ar->napi);
>  }
>
>  #ifdef CONFIG_PM
> @@ -2127,6 +2135,26 @@ static SIMPLE_DEV_PM_OPS(ath10k_sdio_pm_ops, ath10k_sdio_pm_suspend,
>
>  #endif /* CONFIG_PM_SLEEP */
>
> +static int ath10k_sdio_napi_poll(struct napi_struct *ctx, int budget)
> +{
> +       struct ath10k *ar = container_of(ctx, struct ath10k, napi);
> +       int done;
> +
> +       done = ath10k_htt_rx_hl_indication(ar, budget);
> +       ath10k_dbg(ar, ATH10K_DBG_SDIO, "napi poll: done: %d,budget:%d\n", done, budget);

This is a debug string, but still, please be consistent in spacing:
"napi poll: done: %d, budget: %d\n"

> +
> +       if (done < budget)
> +               napi_complete_done(ctx, done);
> +
> +       return done;
> +}
> +
> +void ath10k_sdio_init_napi(struct ath10k *ar)
> +{
> +       netif_napi_add(&ar->napi_dev, &ar->napi, ath10k_sdio_napi_poll,
> +                      ATH10K_NAPI_BUDGET);
> +}
> +
>  static int ath10k_sdio_probe(struct sdio_func *func,
>                              const struct sdio_device_id *id)
>  {
> @@ -2152,6 +2180,8 @@ static int ath10k_sdio_probe(struct sdio_func *func,
>                 return -ENOMEM;
>         }
>
> +       ath10k_sdio_init_napi(ar);
> +
>         ath10k_dbg(ar, ATH10K_DBG_BOOT,
>                    "sdio new func %d vendor 0x%x device 0x%x block 0x%x/0x%x\n",
>                    func->num, func->vendor, func->device,
> @@ -2272,6 +2302,9 @@ static void ath10k_sdio_remove(struct sdio_func *func)
>                    func->num, func->vendor, func->device);
>
>         ath10k_core_unregister(ar);
> +
> +       netif_napi_del(&ar->napi);
> +
>         ath10k_core_destroy(ar);
>
>         flush_workqueue(ar_sdio->workqueue);
> --
> 1.9.1
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
