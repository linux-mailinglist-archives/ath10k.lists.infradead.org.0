Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4E1A2D0C
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 04:58:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEVtNTvp7APOUXuaG2JjO96zYpLTvBOlQkjg0OJSkog=; b=B8QGw2N/yeyCTE
	ZxfrsP4dOYx/y+a1ZwWQMM2+hAmIBX38xF2lr+txoLDJKyIqE1pap3Rf7wctIDhKIs4b/CKLEgMSu
	5C9ZfoHs48chWsiruryyMFyVVY/mgr670MmSKyMn0pXYnTM2iKRiGDYHQCRGTwpneylkgflalgT2E
	vDO6UfJC6U9Uyd6/Z3I4YbpS7fC2lxcJC7ly+d96X79uUCk6XpnBcEoC9O7DBXtTFr4aRqPwa8pje
	hhqqLDzv0mZo0giheRtPZud5d4XWNwPAQTFJicZ4yJhImKkRk7VIxfVNpg7pUdMlKKHNlG8luaa9c
	mLKtpq/s8zi5KhrtJG5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3X7H-0002S5-Sz; Fri, 30 Aug 2019 02:58:23 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3X7D-0002Rh-8F
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 02:58:20 +0000
Received: by mail-qt1-x843.google.com with SMTP id a13so6147796qtj.1
 for <ath10k@lists.infradead.org>; Thu, 29 Aug 2019 19:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xPLQ7BTQD4QmxZ4SmCozFsFwM264Pt8CJss3mn21Uvc=;
 b=BwYxDRwZ39yK8n3ItihjOL+cBbh12tcJrBTG621OTtttwbom5ELftpwqLkhxclNBZH
 VZtdNtSA70EhQ2ss238kUgi9A5pBDeVcGyZ9uhF/9lRxmAEb/lCJ88+neDnUM45n+D0g
 zNx5cY9pp7qWbYoJ10VOWYrVyrqYvRAvjqtjI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xPLQ7BTQD4QmxZ4SmCozFsFwM264Pt8CJss3mn21Uvc=;
 b=UWwhtz0nLXZxeH6q+LIi8lQMhAs9mGnLyiR8hZvIrkFleThxdW62azhxv9feGLAQjS
 Ki7RsD0fAdLL98YMdbRFYWRuPdU4vMuXpHONPAX4hfKLAMZGM4LBzyD0s6oF7EKgdlbI
 wg5N4WAk/UFugipPzBdJ5YghKeOSryG0+9GtIF81xiLjZC/bDmSFwlD6Hz5a+48tfyGy
 ES+HU0Z0tAmZ5ZC6t2XW6Je80IwsPdlhF0UrWdoBoUsti6eNsMcPMZmsgqlmuUmMWrFo
 +rv1ak4TO3wByboYZEuSgA+pqaFsBLp6bEPFb7X/rD2y4gc9vcvtrDseeYaGE8wluDeg
 Bo+g==
X-Gm-Message-State: APjAAAXV/+u1ijGU0ps8AG284LksOnpE4SQ0wqofSm35amQoelSTrA56
 D7y2PnIcfZ/58BD9TxVPfZtDw5syXr1WFQcWct/yMaKlc6E=
X-Google-Smtp-Source: APXvYqyfJyqdOTdlF46wH1dygwZP41ASOFWpTXyCP9VVXTjZuxLLBlVtx6ZIVHFofVA3RswoMYSwenX8O6UQ26Cv2Yc=
X-Received: by 2002:aed:3768:: with SMTP id i95mr13645168qtb.346.1567133897617; 
 Thu, 29 Aug 2019 19:58:17 -0700 (PDT)
MIME-Version: 1.0
References: <1566998177-2658-1-git-send-email-wgong@codeaurora.org>
 <1566998177-2658-2-git-send-email-wgong@codeaurora.org>
 <CANMq1KA2oxpObkP1oj2uK=90sZc9DEXbvdgu9P+87+cwJ__wQQ@mail.gmail.com>
In-Reply-To: <CANMq1KA2oxpObkP1oj2uK=90sZc9DEXbvdgu9P+87+cwJ__wQQ@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 30 Aug 2019 10:58:05 +0800
Message-ID: <CANMq1KAORTMMZNH90piG2hhOVQ1=UWaOQwPFtiLP=31iiJttUg@mail.gmail.com>
Subject: Re: [PATCH v3 1/8] ath10k: adjust skb length in
 ath10k_sdio_mbox_rx_packet
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_195819_296198_2597552D 
X-CRM114-Status: GOOD (  25.72  )
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

On Fri, Aug 30, 2019 at 10:53 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> On Thu, Aug 29, 2019 at 12:18 AM Wen Gong <wgong@codeaurora.org> wrote:
> >
> > When the FW bundles multiple packets, pkt->act_len may be incorrect
> > as it refers to the first packet only (however, the FW will only
> > bundle packets that fit into the same pkt->alloc_len).
> >
> > Before this patch, the skb length would be set (incorrectly) to
> > pkt->act_len in ath10k_sdio_mbox_rx_packet, and then later manually
> > adjusted in ath10k_sdio_mbox_rx_process_packet.
> >
> > The first problem is that ath10k_sdio_mbox_rx_process_packet does not
> > use proper skb_put commands to adjust the length (it directly changes
> > skb->len), so we end up with a mismatch between skb->head + skb->tail
> > and skb->data + skb->len. This is quite serious, and causes corruptions
> > in the TCP stack, as the stack tries to coalesce packets, and relies
> > on skb->tail being correct (that is, skb_tail_pointer must point to
> > the first byte_after_ the data).
> >
> > Instead of re-adjusting the size in ath10k_sdio_mbox_rx_process_packet,
> > this moves the code to ath10k_sdio_mbox_rx_packet, and also add a
> > bounds check, as skb_put would crash the kernel if not enough space is
> > available.
> >
> > Tested with QCA6174 SDIO with firmware
> > WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > Signed-off-by: Wen Gong <wgong@codeaurora.org>
>
> You are not the author of this patch, please reset the author in your
> git tree and resend.
>
> Once you do that, the first line should say:
> From: Nicolas Boichat <drinkcat@chromium.org>
>
> Without this fix:
> NACKed-by: Nicolas Boichat <drinkcat@chromium.org>
>

Also you dropped the Fixes line:
Fixes: 8530b4e7b22bc3b ("ath10k: sdio: set skb len for all rx packets")

> > ---
> > v2:no this patch
> > v2:new added
> >  drivers/net/wireless/ath/ath10k/sdio.c | 27 +++++++++++++++++++--------
> >  1 file changed, 19 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> > index 8ed4fbd..1127e44 100644
> > --- a/drivers/net/wireless/ath/ath10k/sdio.c
> > +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> > @@ -381,16 +381,11 @@ static int ath10k_sdio_mbox_rx_process_packet(struct ath10k *ar,
> >         struct ath10k_htc_hdr *htc_hdr = (struct ath10k_htc_hdr *)skb->data;
> >         bool trailer_present = htc_hdr->flags & ATH10K_HTC_FLAG_TRAILER_PRESENT;
> >         enum ath10k_htc_ep_id eid;
> > -       u16 payload_len;
> >         u8 *trailer;
> >         int ret;
> >
> > -       payload_len = le16_to_cpu(htc_hdr->len);
> > -       skb->len = payload_len + sizeof(struct ath10k_htc_hdr);
> > -
> >         if (trailer_present) {
> > -               trailer = skb->data + sizeof(*htc_hdr) +
> > -                         payload_len - htc_hdr->trailer_len;
> > +               trailer = skb->data + skb->len - htc_hdr->trailer_len;
> >
> >                 eid = pipe_id_to_eid(htc_hdr->eid);
> >
> > @@ -632,13 +627,29 @@ static int ath10k_sdio_mbox_rx_packet(struct ath10k *ar,
> >  {
> >         struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
> >         struct sk_buff *skb = pkt->skb;
> > +       struct ath10k_htc_hdr *htc_hdr;
> >         int ret;
> >
> >         ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
> >                                  skb->data, pkt->alloc_len);
> > +
> > +       if (!ret) {
> > +               /* Update actual length. The original length may be incorrect,
> > +                * as the FW will bundle multiple packets as long as their sizes
> > +                * fit within the same aligned length (pkt->alloc_len).
> > +                */
> > +               htc_hdr = (struct ath10k_htc_hdr *)skb->data;
> > +               pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
> > +               if (pkt->act_len <= pkt->alloc_len) {
> > +                       skb_put(skb, pkt->act_len);
> > +               } else {
> > +                       ath10k_warn(ar, "rx packet too large (%zu > %zu)\n",
> > +                                   pkt->act_len, pkt->alloc_len);
> > +                       ret = -EMSGSIZE;
> > +               }
> > +       }
> > +
> >         pkt->status = ret;
> > -       if (!ret)
> > -               skb_put(skb, pkt->act_len);
> >
> >         return ret;
> >  }
> > --
> > 1.9.1
> >

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
