Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D259DD23
	for <lists+ath10k@lfdr.de>; Tue, 27 Aug 2019 07:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJwG9MZn6Z/pjVixx+PYDts3XNmDofoCwJIQF1bPnLA=; b=O8hv7OOpWrilHC
	XHnSYIXGh9GwdTnJ0m2TNYxgNLI0/mDxr4nieDDtTvTigRA6KBO4juL9hpA4H5W+NGh/Oq1iXeXKO
	umG2FOUIfUOm2Txg7u1sjJk5aJYkTz++EMBEwECkkeRB61WYBJQF0SZlseZvXs0gindEzeQUdTkfk
	C+Xe/ls1UPuUVl3dm52ckw2/8Iz68kh9h672VKFM4MM9pvgao/Dfsg5PyhZBZqEuMNEJKF9ZLZDzy
	NWUBsNeAeKJRbJWMq3OOu41F4Hms9fxND+d9YlkQJ5SWbMAu0h0QaY+i9g6taw9w4dOyUuoE86yg1
	+0tayooDS6V7YVE6fY8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2TxC-0003l9-1z; Tue, 27 Aug 2019 05:23:38 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Twv-0003kO-AX
 for ath10k@lists.infradead.org; Tue, 27 Aug 2019 05:23:23 +0000
Received: by mail-qk1-x744.google.com with SMTP id d23so16085383qko.3
 for <ath10k@lists.infradead.org>; Mon, 26 Aug 2019 22:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sC2NjC8+A0TKELBjbIVVNtKDnT9aRehN1CXf+Kpbi1M=;
 b=X4NiWjJimWS+yY7P9ODH4dTSXcADuJFv2Dzvp7EpZLt1KWavXUOtnEMzZafunw9qIk
 5di4G0Sx5gZ6kgyKqos7Sfws36gBgXsVJTWxo/5TNgAYLJf3p8N3i1oBKl0m89QGBnEN
 RVpYGnp3cQwzaxHxYiJjQhTCbcVR1ACjqiB1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sC2NjC8+A0TKELBjbIVVNtKDnT9aRehN1CXf+Kpbi1M=;
 b=e2E3BITMCLrB/EJEk+PwPud/FmjLxVvmPxRJ0xdWgHSATQiRTrn807qDHkpkRaPLYk
 PvvB62L2fW2o04VdliLJNRIM19BdtSXpXynQmEAGUcxP7/Z7qN2TvfHjrMSjVst4lhUn
 R5aYJQzac6F6VromsSF7pBIpPhDDRj6IvNEIiCRJrGE8wBWI/V2V/WxPCC1bXwhj4y8P
 WHqbiRcy3YGtCwWjHZouPo+ONaeQMxTxnHInHfE40D+fWl+fh1qeRONezhZ1djewNbol
 nFfS+l02kZE5Lif/DQzli2HLBbwYZ3KsHN8Q0uvg6AHzX9972mmt8Q8luoT1VMCvykXd
 NdUQ==
X-Gm-Message-State: APjAAAU3ATYjAnuC9Y5e57/C3lx0fVZYP6GF0jTa27/FERDB0OhvQVbb
 x5xznHXoJjMsWe2SgauilSfWaZWSTMCwjdjT8bGcGA==
X-Google-Smtp-Source: APXvYqwF7HM8zQgP6LqbFjZvM0l7BwT2ajiN3bPb5DfDxjuUJzojQGxg6ldKtJzgynvs1cI1K+pN2ixAS5TPReXhdz8=
X-Received: by 2002:ae9:f301:: with SMTP id p1mr20356780qkg.353.1566883399611; 
 Mon, 26 Aug 2019 22:23:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190827003326.147452-1-drinkcat@chromium.org>
 <36878f3488f047978038c844daedd02f@aptaiexm02f.ap.qualcomm.com>
In-Reply-To: <36878f3488f047978038c844daedd02f@aptaiexm02f.ap.qualcomm.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 27 Aug 2019 13:23:08 +0800
Message-ID: <CANMq1KDTBJOnQZQihH91FDj+jOZcODV-xYEx5umukV7+UEPR1g@mail.gmail.com>
Subject: Re: [PATCH,
 RFC] ath10k: Fix skb->len (properly) in ath10k_sdio_mbox_rx_packet
To: Wen Gong <wgong@qti.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_222321_400034_D0B34D64 
X-CRM114-Status: GOOD (  30.13  )
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
Cc: Alagu Sankar <alagusankar@silex-india.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "briannorris@chromium.org" <briannorris@chromium.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 "wgong@codeaurora.org" <wgong@codeaurora.org>,
 "niklas.cassel@linaro.org" <niklas.cassel@linaro.org>,
 "tientzu@chromium.org" <tientzu@chromium.org>,
 "David S . Miller" <davem@davemloft.net>,
 "kvalo@codeaurora.org" <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 11:34 AM Wen Gong <wgong@qti.qualcomm.com> wrote:
>
> > -----Original Message-----
> > From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Nicolas
> > Boichat
> > Sent: Tuesday, August 27, 2019 8:33 AM
> > To: kvalo@codeaurora.org
> > Cc: Alagu Sankar <alagusankar@silex-india.com>; netdev@vger.kernel.org;
> > briannorris@chromium.org; linux-wireless@vger.kernel.org; linux-
> > kernel@vger.kernel.org; ath10k@lists.infradead.org;
> > wgong@codeaurora.org; niklas.cassel@linaro.org; tientzu@chromium.org;
> > David S . Miller <davem@davemloft.net>
> > Subject: [EXT] [PATCH, RFC] ath10k: Fix skb->len (properly) in
> > ath10k_sdio_mbox_rx_packet
> >
> > (not a formal patch, take this as a bug report for now, I can clean
> > up depending on the feedback I get here)
> >
> > There's at least 3 issues here, and the patch fixes 2/3 only, I'm not sure
> > how/if 1 should be handled.
> >  1. ath10k_sdio_mbox_rx_alloc allocating skb of a incorrect size (too
> >     small)
> >  2. ath10k_sdio_mbox_rx_packet calling skb_put with that incorrect size.
> >  3. ath10k_sdio_mbox_rx_process_packet attempts to fixup the size, but
> >     does not use proper skb_put commands to do so, so we end up with
> >     a mismatch between skb->head + skb->tail and skb->data + skb->len.
> >
> > Let's start with 3, this is quite serious as this and causes corruptions
> > in the TCP stack, as the stack tries to coalesce packets, and relies on
> > skb->tail being correct (that is, skb_tail_pointer must point to the
> > first byte _after_ the data): one must never manipulate skb->len
> > directly.
> >
> > Instead, we need to use skb_put to allocate more space (which updates
> > skb->len and skb->tail). But it seems odd to do that in
> > ath10k_sdio_mbox_rx_process_packet, so I move the code to
> > ath10k_sdio_mbox_rx_packet (point 2 above).
> >
> > However, there is still something strange (point 1 above), why is
> > ath10k_sdio_mbox_rx_alloc allocating packets of the incorrect
> > (too small?) size? What happens if the packet is bigger than alloc_len?
> > Does this lead to corruption/lost data?
> >
> > Fixes: 8530b4e7b22bc3b ("ath10k: sdio: set skb len for all rx packets")
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> >
> > ---
> >
> > One simple way to test this is this scriplet, that sends a lot of
> > small packets over SSH:
> > (for i in `seq 1 300`; do echo $i; sleep 0.1; done) | ssh $IP cat
> >
> > In my testing it rarely ever reach 300 without failure.
> >
> >  drivers/net/wireless/ath/ath10k/sdio.c | 18 ++++++++++++------
> >  1 file changed, 12 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/net/wireless/ath/ath10k/sdio.c
> > b/drivers/net/wireless/ath/ath10k/sdio.c
> > index 8ed4fbd8d6c3888..a9f5002863ee7bb 100644
> > --- a/drivers/net/wireless/ath/ath10k/sdio.c
> > +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> > @@ -381,16 +381,14 @@ static int
> > ath10k_sdio_mbox_rx_process_packet(struct ath10k *ar,
> >       struct ath10k_htc_hdr *htc_hdr = (struct ath10k_htc_hdr *)skb->data;
> >       bool trailer_present = htc_hdr->flags &
> > ATH10K_HTC_FLAG_TRAILER_PRESENT;
> >       enum ath10k_htc_ep_id eid;
> > -     u16 payload_len;
> >       u8 *trailer;
> >       int ret;
> >
> > -     payload_len = le16_to_cpu(htc_hdr->len);
> > -     skb->len = payload_len + sizeof(struct ath10k_htc_hdr);
> > +     /* TODO: Remove this? */
> If the pkt->act_len has set again in ath10k_sdio_mbox_rx_packet, seems not needed.

Sure, will drop.

> > +     WARN_ON(skb->len != le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr));
> >
> >       if (trailer_present) {
> > -             trailer = skb->data + sizeof(*htc_hdr) +
> > -                       payload_len - htc_hdr->trailer_len;
> > +             trailer = skb->data + skb->len - htc_hdr->trailer_len;
> >
> >               eid = pipe_id_to_eid(htc_hdr->eid);
> >
> > @@ -637,8 +635,16 @@ static int ath10k_sdio_mbox_rx_packet(struct
> > ath10k *ar,
> >       ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
> >                                skb->data, pkt->alloc_len);
> >       pkt->status = ret;
> > -     if (!ret)
> > +     if (!ret) {
> > +             /* Update actual length. */
> > +             /* FIXME: This looks quite wrong, why is pkt->act_len not
> > +              * correct in the first place?
> > +              */
> Firmware will do bundle for rx packet, and the aligned length by block size(256) of each packet's len is same
> in a bundle.
>
> Eg.
> packet 1 len: 300, aligned length:512
> packet 2 len: 400, aligned length:512
> packet 3 len: 200, aligned length:256
> packet 4 len: 100, aligned length:256
> packet 5 len: 700, aligned length:768
> packet 6 len: 600, aligned length:768
>
> then packet 1,2 will in bundle 1, packet 3,4 in a bundle 2, packet 5,6 in a bundle 3.
>
> For bundle 1, packet 1,2 will both allocate with len 512, and act_len is 300 first,
> then packet 2's len will be overwrite to 400.
>
> For bundle 2, packet 3,4 will both allocate with len 256, and act_len is 200 first,
> then packet 4's len will be overwrite to 100.
>
> For bundle 3, packet 5,6 will both allocate with len 768, and act_len is 700 first,
> then packet 6's len will be overwrite to 600.

Ok thanks, I'll send a v2 with an improved description.

> > +             struct ath10k_htc_hdr *htc_hdr =
> > +                     (struct ath10k_htc_hdr *)skb->data;
> > +             pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
> >               skb_put(skb, pkt->act_len);
> > +     }
> >
> >       return ret;
> >  }
> > --
> > 2.23.0.187.g17f5b7556c-goog
> >
> >
> > _______________________________________________
> > ath10k mailing list
> > ath10k@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
