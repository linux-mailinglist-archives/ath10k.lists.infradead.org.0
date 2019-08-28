Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B2A9F9E5
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 07:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1ViFkf/LtUZgPM4o4OwVaodZmwxi+ndg8bkwjdgBng=; b=h3N96TZh4dGFb0
	l4/7IxEOfVtd5PSqMDwrgK7LK2xGFxqrLonx3zniYwuIlCpmeyFrOU/vUyS6T6S4Q5gfVBxiLx0z5
	STzvcculytmypf4a0ORUlcf4jZ0Xc8UlrwmL7kRsHu2e/A1x3CRqPW77TErmKLDgqRhFj2xCS9Q+Z
	dQfshLticxG3tPAjFPvDIka+bJ5TsS6RV4Ly4+yJs0kdyGKZpuzPj2RMgguMrawKuCE1J6utaN7Hz
	YZs/d3qYaGfztX5g9ey48RLUujuNa3/PPY2SaVKHRVvsxJGDgqZp0POYmH+kwzHpE3xu/DWTuv2Rf
	YEjrPMUQOpDFZ/smYaGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2qgg-00048p-D5; Wed, 28 Aug 2019 05:40:06 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2qga-0003jv-6f
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 05:40:01 +0000
Received: by mail-qk1-x741.google.com with SMTP id f10so1379291qkg.7
 for <ath10k@lists.infradead.org>; Tue, 27 Aug 2019 22:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FmEasWFfCVRnldPBQ+jdySlU4FrAhij5729T2hMxeSQ=;
 b=gPucmNGTVU2P9UX/bsLzCg/GzrtXLuPOxwRw+teKE177krGwj8HmWbOgaguC5k0Fh6
 YxhoUlO0PERS0AuP70cVLhYqxoaBra4rnLxiswEABouAOYgpyxI0IpfDQEtRGxpwcxXN
 G5BNmu9fdp7OA7bw0cf//Y9TcrY6SEnZf5U+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FmEasWFfCVRnldPBQ+jdySlU4FrAhij5729T2hMxeSQ=;
 b=Mr2CDSi5Tr7vrfKUQak2tXrwiF93eVoaf8kqgOdPrb11tTiWUOPJaIXznDqPdLny19
 xw0vjnh1EI3Kr8lH8VuRoJaDVWh40nz0ZQIzv57qmdJQsqLL3KIukgmYU29x+B7RLX2l
 3cMc92lrvewm5B9CrNx65XmkHj2cjM16RpLfv7iZUGeUzTmtvqJx+N1oxBXHuAD8uPoC
 KLHz/2kEpPKPeN74tQ3Bt1G1Qaxgcees9qbwgApAic+It6KZ5+UsPgYieNQos0O6SWSZ
 btlFbnrB9CK/fkFFobiZlEfqZwyQsTg/ch91CGMPl8x2q8Q3DgAXlo3BvIyJC66B9eXG
 l0rg==
X-Gm-Message-State: APjAAAUfXJHgZQbgynCL27VkA1FAIAO6AEFtT2t3Txo/OUOsxulMLBk3
 1Z/ssGye4AkVjIue1g8ptJa4Xz06MG9L7FA6+to+EQ==
X-Google-Smtp-Source: APXvYqxHTwf6/nwiZpUUXx16bR+3ItvFbvLgVQqamDCOa0eQwaY64uHPTcsctVhtVLKxvrTvq4pyFSg4WErVBefL500=
X-Received: by 2002:a05:620a:1590:: with SMTP id
 d16mr2258346qkk.18.1566970798919; 
 Tue, 27 Aug 2019 22:39:58 -0700 (PDT)
MIME-Version: 1.0
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-8-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566903707-27536-8-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 28 Aug 2019 13:39:47 +0800
Message-ID: <CANMq1KCQZCOw8kHn2MJfAT9fWoLCmz2jFWqHzd=9QOgZ7MeaXQ@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] ath10k: enable napi on RX path for sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_224000_245809_4DE41FE1 
X-CRM114-Status: GOOD (  25.39  )
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
>  drivers/net/wireless/ath/ath10k/htt.c    |  2 ++
>  drivers/net/wireless/ath/ath10k/htt.h    |  3 +++
>  drivers/net/wireless/ath/ath10k/htt_rx.c | 46 ++++++++++++++++++++++++++------
>  drivers/net/wireless/ath/ath10k/sdio.c   | 33 +++++++++++++++++++++++
>  4 files changed, 76 insertions(+), 8 deletions(-)
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
> index e2d8b51..9340ae3 100644
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
> @@ -3895,6 +3893,38 @@ static int ath10k_htt_rx_deliver_msdu(struct ath10k *ar, int quota, int budget)
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
> +
> +       while (quota < budget) {

This looks like a for loop:

for (quota = 0; quota < budget; quota++)

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
> +               quota++;
> +       }
> +       return quota;
> +}
> +EXPORT_SYMBOL(ath10k_htt_rx_hl_indication);
> +
>  int ath10k_htt_txrx_compl_task(struct ath10k *ar, int budget)
>  {
>         struct ath10k_htt *htt = &ar->htt;
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index a302eda..a1ef31e 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -1406,6 +1406,9 @@ static void ath10k_rx_indication_async_work(struct work_struct *work)
>                 spin_lock_bh(&ar_sdio->wr_async_lock_rx);
>         }
>
> +       if (test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
> +               napi_schedule(&ar->napi);
> +
>         spin_unlock_bh(&ar_sdio->wr_async_lock_rx);
>  }
>
> @@ -1824,6 +1827,8 @@ static int ath10k_sdio_hif_start(struct ath10k *ar)
>         struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
>         int ret;
>
> +       napi_enable(&ar->napi);
> +
>         /* Sleep 20 ms before HIF interrupts are disabled.
>          * This will give target plenty of time to process the BMI done
>          * request before interrupts are disabled.
> @@ -1962,6 +1967,9 @@ static void ath10k_sdio_hif_stop(struct ath10k *ar)
>         }
>
>         spin_unlock_bh(&ar_sdio->wr_async_lock);
> +
> +       napi_synchronize(&ar->napi);
> +       napi_disable(&ar->napi);
>  }
>
>  #ifdef CONFIG_PM
> @@ -2138,6 +2146,26 @@ static SIMPLE_DEV_PM_OPS(ath10k_sdio_pm_ops, ath10k_sdio_pm_suspend,
>
>  #endif /* CONFIG_PM_SLEEP */
>
> +static int ath10k_sdio_napi_poll(struct napi_struct *ctx, int budget)
> +{
> +       struct ath10k *ar = container_of(ctx, struct ath10k, napi);
> +       int done = 0;

No need to initialize to 0;

> +
> +       done = ath10k_htt_rx_hl_indication(ar, budget);
> +       ath10k_dbg(ar, ATH10K_DBG_SDIO, "napi poll: done: %d,budget:%d\n", done, budget);
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
> @@ -2163,6 +2191,8 @@ static int ath10k_sdio_probe(struct sdio_func *func,
>                 return -ENOMEM;
>         }
>
> +       ath10k_sdio_init_napi(ar);
> +
>         ath10k_dbg(ar, ATH10K_DBG_BOOT,
>                    "sdio new func %d vendor 0x%x device 0x%x block 0x%x/0x%x\n",
>                    func->num, func->vendor, func->device,
> @@ -2283,6 +2313,9 @@ static void ath10k_sdio_remove(struct sdio_func *func)
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
