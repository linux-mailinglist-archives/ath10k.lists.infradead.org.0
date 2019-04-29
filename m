Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F49DE08F
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 12:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nngdUvM5EqX0+ngJyr9ePQhVA6xpC+dh2jwk+9j9W78=; b=MTC64N0mXG9H6o
	CD1MfgSAzdnOlCiiHx/uGMckMvTz4Frd6VbCHYhMSMvTk5M22K6S+/AN6cdVCs5cJMedzJhsMNOjv
	sdQ44a4Go3sV58P2ooeWjSa/B57WmDD2sjXspe8mvUo/sM3WNv3EV8R/pd58Hc4ZHX9AvGwcwHsYs
	jrRCTjTjC1WMrSnvJ/sRvwBbLxHFZXHSqYBnGeKbeISdmT6UyKHtz+UZp/xgUvCpwrq6RchaITJCk
	saTJWqAyd2a5wO7onpVUOLENPLs7c9L2kj4O9VMvn0fZj304413e3334/USv1/MHZ1iixfOxBXya8
	3QYO+UT7kHUmGz30pq7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL3Y9-0006Kb-1e; Mon, 29 Apr 2019 10:30:17 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL3Y5-0006KC-3z
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 10:30:14 +0000
Received: by mail-qk1-x744.google.com with SMTP id w73so5540575qkb.13
 for <ath10k@lists.infradead.org>; Mon, 29 Apr 2019 03:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LsbJoBOTkJ5iG+ZToRJP54iUPlrflioTmA0QK3mgDEc=;
 b=O6Jb8N54hpz3uPynvt6Yt5/rHuZZLUeyQ0rO2pFpfNvWnT1xSu7T4eYytHDR01LEQQ
 ZU1tzv39a8sX4YIaOH4s3mOel/4TQn7rwamS5K9B9YRJzc+N9RK4L4ocfxPOlWxMg4NL
 P1PX0fdUj7gXI8YJSe5Z1aany9gBNk4KVQbDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LsbJoBOTkJ5iG+ZToRJP54iUPlrflioTmA0QK3mgDEc=;
 b=GPWmte9r5YoQWDEZrXiTJLEWsqcwWjwFwO3zke8c0akOHzBtyaKQPW3Z4+OciKIWSs
 qLO9ViKO1vPy7fQo+KYNJ46o1wQdTOFhAXjoSymg7KAywzSXAx/HrHyDQuU/rgiKcH7B
 eKaOvOetF1MmKAzr7pD3JbpHsPBq2Mcy8jXOzaQp+tDdqcDmQZH0vq6d/m/pumLhJlRw
 NH/u49qty89evO6kJ0exB2P4voLDUazQ2e017gah351pYEMaGWdNkBi7Vmhm05anGc+q
 wBwH66e4hEAoLdVZZyee9oRR4pIw1ywsHXIyXRLsxelybr5hB7Ycr3lpyEXqyfCpVWAd
 3yFg==
X-Gm-Message-State: APjAAAUB9eZontFbMIq7crD5E3OpX6cvYoenysZhbOOtN9S//If7YlIZ
 EScBCYyOcLQF06t/LgiT95fafTVBj3VDwC0wVWOC7g==
X-Google-Smtp-Source: APXvYqxZ73NWcz094Q/7/PmP4XT2MmsPOvqcdxePBjq87Uy02bxkEdIOmOR4YOXaAalFtBGm5if9wOLGQYtec+tcCPM=
X-Received: by 2002:a37:6897:: with SMTP id
 d145mr35198030qkc.185.1556533811413; 
 Mon, 29 Apr 2019 03:30:11 -0700 (PDT)
MIME-Version: 1.0
References: <1554260478-4161-1-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1554260478-4161-1-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 29 Apr 2019 18:30:00 +0800
Message-ID: <CANMq1KAU1B4Bweq3O6O8HOMwT7fHjj9tDyxqMsn_vn4gwxXL=Q@mail.gmail.com>
Subject: Re: [PATCH] ath10k: add peer id check in ath10k_peer_find_by_id
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_033013_187632_C4D97DF9 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Claire Chang <tientzu@chromium.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, Apr 3, 2019 at 3:01 AM Wen Gong <wgong@codeaurora.org> wrote:
>
> For some SDIO chip, the peer id is 65535 for MPDU with error status,
> then test_bit will trigger buffer overflow for peer's memory, if kasan
> enabled, it will report error.
>
> Add check for overflow the size of peer's peer_ids will avoid the buffer
> overflow access.
>
> Call trace of kasan:
> dump_backtrace+0x0/0x2ec
> show_stack+0x20/0x2c
> __dump_stack+0x20/0x28
> dump_stack+0xc8/0xec
> print_address_description+0x74/0x240
> kasan_report+0x250/0x26c
> __asan_report_load8_noabort+0x20/0x2c
> ath10k_peer_find_by_id+0x180/0x1e4 [ath10k_core]
> ath10k_htt_t2h_msg_handler+0x100c/0x2fd4 [ath10k_core]
> ath10k_htt_htc_t2h_msg_handler+0x20/0x34 [ath10k_core]
> ath10k_sdio_irq_handler+0xcc8/0x1678 [ath10k_sdio]
> process_sdio_pending_irqs+0xec/0x370
> sdio_run_irqs+0x68/0xe4
> sdio_irq_work+0x1c/0x28
> process_one_work+0x3d8/0x8b0
> worker_thread+0x508/0x7cc
> kthread+0x24c/0x264
> ret_from_fork+0x10/0x18
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/txrx.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/net/wireless/ath/ath10k/txrx.c b/drivers/net/wireless/ath/ath10k/txrx.c
> index 23606b6..33de9e1 100644
> --- a/drivers/net/wireless/ath/ath10k/txrx.c
> +++ b/drivers/net/wireless/ath/ath10k/txrx.c
> @@ -157,6 +157,9 @@ struct ath10k_peer *ath10k_peer_find_by_id(struct ath10k *ar, int peer_id)
>  {
>         struct ath10k_peer *peer;
>
> +       if (peer_id >= sizeof(peer->peer_ids) * BITS_PER_BYTE)

I'd use >= BITS_PER_TYPE(peer->peer_ids).

> +               return NULL;
> +
>         lockdep_assert_held(&ar->data_lock);
>
>         list_for_each_entry(peer, &ar->peers, list)

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
