Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353C4A636B
	for <lists+ath10k@lfdr.de>; Tue,  3 Sep 2019 10:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odBBye3BatVLKmncru39GXVc3YVNmAUBD5E3Rl5U0/c=; b=Nqd4ZrrLj87jPa
	lpPNnyWP58p21IfXSB80EtTZJfmwhTR2M+frnUJLE/Kc0VjNiscY1dYV5rsYtN10VLf/Og+j4qf5s
	xvbxzQ5hi/psospMwdh3K2oP8lxqBm7t6q3T7l2B35ZVv0rb2jVcq7SlTHNQG7wefMK6sMEsLGTNL
	yizZWSuZJvOtmwt5M2fhxHftXtzJLSzLSXmT0y0NL/BqM11oR0pc5NrE443Z+zxrqBa2/LxbwonZx
	SRCIG8l7VJYFQ0Odveqvj+Kz1XafVI8TaK2J4awx/LYFh+BCUe9nludt2zzNLnfMxv05rbTVTNRUl
	CUyDLrK5UFOqfHlhS4CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53m1-00040k-GQ; Tue, 03 Sep 2019 08:02:45 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53le-0003cj-Tk
 for ath10k@lists.infradead.org; Tue, 03 Sep 2019 08:02:24 +0000
Received: by mail-qt1-x844.google.com with SMTP id g4so18614161qtq.7
 for <ath10k@lists.infradead.org>; Tue, 03 Sep 2019 01:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mf23oRVAg9Ado2Z55/YVQ2maTun9rnutQ4lnmDriggw=;
 b=XW+EtOwRLw5B2SS2HDdQ0Jre3Ow0r2M0FuFhClSnHkJrIEcV0NvCPnqCYazJ6P9iHD
 jTjBhOyMix4ECMRwwGIpTwy52lYWQBlaWnxxXXCQ/yoYNbluiOKguQPG8E9YJdMxCE+J
 ITWK3KAoF9Xpqu2suBfE2J0IXfC6yqmVYY2zo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mf23oRVAg9Ado2Z55/YVQ2maTun9rnutQ4lnmDriggw=;
 b=aof94GleRKSjdrkDdY0N9U9H+zSVtvSdztPMXq1KraFz2eKicRgmY6M5h4sMpZmpAY
 XjrW1QAC3HXM44+S54Brpvip+6pGwA8+UHlS17MXPBJss3XQco+SgR7l1A4ld9D75PC6
 ZF4pISLaUX/ILWoUTldZUco95DIh9FMy2mNp1gEVRkhyLfj6ncB8ExuOQ/ATer2fDoKS
 HS4MsMIxtT6LjEqWO8r56oxB+Up7bPIceeY0kMOpx3xlVIXL29aiIzHtqdMVr5fX15zw
 Ig2jXYaBcezTMscVehwpJ5ma0c/gNA7bWQLe82HLXZV3yVo9v21LG+3ehrJ3oesj6wyQ
 b0Wg==
X-Gm-Message-State: APjAAAVW0B/TK2SLG+iZs/sc/jguRATgfxoNedg7GMHE1if3fsSUTwTK
 nsbRuAHoxUyLg8gzQV9rO9Ia3HB9FoYGfXwQsUtbnA==
X-Google-Smtp-Source: APXvYqxCyMTtSDnqQNKgScrdJiT+0Ur52eMffmQXpByPZk4mSJL07jqQMyAKG2mTOxw18It5WaDu3UfInMMRLxz9do0=
X-Received: by 2002:ad4:540c:: with SMTP id f12mr7138400qvt.104.1567497740147; 
 Tue, 03 Sep 2019 01:02:20 -0700 (PDT)
MIME-Version: 1.0
References: <1567416146-14403-1-git-send-email-wgong@codeaurora.org>
 <1567416146-14403-2-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1567416146-14403-2-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 3 Sep 2019 16:02:09 +0800
Message-ID: <CANMq1KANHhmP+yEj7Yw3P+akT+mM=y6rjfq1sEjg0NUuWJkdCw@mail.gmail.com>
Subject: Re: [PATCH v4 1/8] ath10k: adjust skb length in
 ath10k_sdio_mbox_rx_packet
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_010223_111979_4AD4FC37 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle: Can you please help prioritize the review and merge of this
patch? This is quite a serious regression (the rest of the series is
performance improvement and probably a little less urgent).

On Mon, Sep 2, 2019 at 5:22 PM Wen Gong <wgong@codeaurora.org> wrote:
>
> From: Nicolas Boichat <drinkcat@chromium.org>
>
> When the FW bundles multiple packets, pkt->act_len may be incorrect
> as it refers to the first packet only (however, the FW will only
> bundle packets that fit into the same pkt->alloc_len).
>
> Before this patch, the skb length would be set (incorrectly) to
> pkt->act_len in ath10k_sdio_mbox_rx_packet, and then later manually
> adjusted in ath10k_sdio_mbox_rx_process_packet.
>
> The first problem is that ath10k_sdio_mbox_rx_process_packet does not
> use proper skb_put commands to adjust the length (it directly changes
> skb->len), so we end up with a mismatch between skb->head + skb->tail
> and skb->data + skb->len. This is quite serious, and causes corruptions
> in the TCP stack, as the stack tries to coalesce packets, and relies
> on skb->tail being correct (that is, skb_tail_pointer must point to
> the first byte_after_ the data).
>
> Instead of re-adjusting the size in ath10k_sdio_mbox_rx_process_packet,
> this moves the code to ath10k_sdio_mbox_rx_packet, and also add a
> bounds check, as skb_put would crash the kernel if not enough space is
> available.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Fixes: 8530b4e7b22bc3b ("ath10k: sdio: set skb len for all rx packets")
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
> v2: no this patch
> v3: new added
> v4: change commit log
>
>  drivers/net/wireless/ath/ath10k/sdio.c | 27 +++++++++++++++++++--------
>  1 file changed, 19 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index 8ed4fbd..1127e44 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -381,16 +381,11 @@ static int ath10k_sdio_mbox_rx_process_packet(struct ath10k *ar,
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
>
>                 eid = pipe_id_to_eid(htc_hdr->eid);
>
> @@ -632,13 +627,29 @@ static int ath10k_sdio_mbox_rx_packet(struct ath10k *ar,
>  {
>         struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
>         struct sk_buff *skb = pkt->skb;
> +       struct ath10k_htc_hdr *htc_hdr;
>         int ret;
>
>         ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
>                                  skb->data, pkt->alloc_len);
> +
> +       if (!ret) {
> +               /* Update actual length. The original length may be incorrect,
> +                * as the FW will bundle multiple packets as long as their sizes
> +                * fit within the same aligned length (pkt->alloc_len).
> +                */
> +               htc_hdr = (struct ath10k_htc_hdr *)skb->data;
> +               pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
> +               if (pkt->act_len <= pkt->alloc_len) {
> +                       skb_put(skb, pkt->act_len);
> +               } else {
> +                       ath10k_warn(ar, "rx packet too large (%zu > %zu)\n",
> +                                   pkt->act_len, pkt->alloc_len);
> +                       ret = -EMSGSIZE;
> +               }
> +       }
> +
>         pkt->status = ret;
> -       if (!ret)
> -               skb_put(skb, pkt->act_len);
>
>         return ret;
>  }
> --
> 1.9.1
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
