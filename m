Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B7FA2D04
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 04:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhUDlenbmWeSjQzapfR47t/K+UKpTCrq46uNfOsdysE=; b=m2TQ1qSyv2aKgr
	KKBF+BUIky3PQ1MAhVK5gHFqksZe18xDHiMGMTgc+61EL0QtVCgKfXJydKJvCKVmLSP19xsDiw2nM
	K8lzWPkoK5/+yXfB5WVrUUDBHOytXknZkconMlTRPhfEf1CsGTdnCS79cZSLcGjPTDokH6mQeSUrf
	cUh0Zlx5vxghaXz3UKZ21A4q7VkoRvC29uPOI1IiVod0fsBbPBP3u3OdgP0GivDHg4ZArhSwGT4Kv
	FCbUU5mQnoJJWKKjxTGkBMxrnobdmL5M1n4P2EQ28oUz2Lzi8j4FU09FfsR3Ocfa25DKUQnezMW4Q
	qX1r1K/i8qKX9MGwNBZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3X3D-0000hf-Rv; Fri, 30 Aug 2019 02:54:11 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3X38-0000hJ-VW
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 02:54:08 +0000
Received: by mail-qt1-x844.google.com with SMTP id i4so6097786qtj.8
 for <ath10k@lists.infradead.org>; Thu, 29 Aug 2019 19:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fwcmdgU7q00kFuht+qsrxDsozfaixeSAbbkeY/T3Nl0=;
 b=FcsPpaEA1GnSH1As34kCS/P0soJKps2U5TaBHw3zamZaXqd2YR2g34a/nwD0sUyO4x
 TEtEUZM0QfdeB5EqY89retOOsPljOsrVcyVjxmgHGWAaq/2cxberiPPxZKFNnkGLhCKl
 KjV/0t7H1bDAdpIs3X3Sz9Q76KPZxjZqZMprI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fwcmdgU7q00kFuht+qsrxDsozfaixeSAbbkeY/T3Nl0=;
 b=NY5HvMIct7gn7pI6Kl/2PHh+OhGn8fHkgpc6N4Es3/16RWpR0HWlZz8PvOCDNDTJ6h
 9XRCQorHTEGXvID+25xBtWnmpfDsmPSIQnj7VWar4wdQFRQBWZNfJ0jv5va+XR4nPlaR
 zhoUQjNg1zU+8uTeFocA4pmCOGAvp8sQAgx1WYHJAdk6u6sl7p2FU2eIO9SMqNsu6feL
 GDOz3ppDJTQ7wZQStPoLKaBy7PPnLtzD06vB/F+OFu9BD/WTAyCjs0SmpalqbWwZ2k55
 jnXBnm25fZSe2FadGCq1ilcX+S3RAgQjbJvmtry6Pg4FCeDcuVx28lHddhZirIHgVVzf
 9HSg==
X-Gm-Message-State: APjAAAVoCealmg0jSxo62NQTtaCRmEttLH3RGOag4UqgSBB5zGI4EgUy
 vOQr6Lpv8MUkVqEbzNxUNOSut0TigJ6FH5IekjolbA==
X-Google-Smtp-Source: APXvYqwDkY3eDuCbDjmrNBPDlO7/EgGQG++Wc94vJHGaD71iojqHJywI9ufS+3YGEmdHdRdcmnGQqE26YJ0df7uJhpY=
X-Received: by 2002:a0c:d981:: with SMTP id y1mr9059658qvj.104.1567133645165; 
 Thu, 29 Aug 2019 19:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <1566998177-2658-1-git-send-email-wgong@codeaurora.org>
 <1566998177-2658-2-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566998177-2658-2-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 30 Aug 2019 10:53:53 +0800
Message-ID: <CANMq1KA2oxpObkP1oj2uK=90sZc9DEXbvdgu9P+87+cwJ__wQQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/8] ath10k: adjust skb length in
 ath10k_sdio_mbox_rx_packet
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_195407_038441_AD92AB3E 
X-CRM114-Status: GOOD (  22.63  )
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

On Thu, Aug 29, 2019 at 12:18 AM Wen Gong <wgong@codeaurora.org> wrote:
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
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

You are not the author of this patch, please reset the author in your
git tree and resend.

Once you do that, the first line should say:
From: Nicolas Boichat <drinkcat@chromium.org>

Without this fix:
NACKed-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
> v2:no this patch
> v2:new added
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
