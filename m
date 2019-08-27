Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBFF9E0A3
	for <lists+ath10k@lfdr.de>; Tue, 27 Aug 2019 10:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0llORyS847r+qsm+NGuX5z+Qw9Aa+bY+zn7O9SVNP/0=; b=KvaKjRoi+nUIIq
	p+NV4Z4YmmWM3UgetUUAoRJucC1zRIs62siB/0wUM3PEj+zPa43+gKgWITLrm6IeNcLpxDajKCCZE
	CkdJN9HfYTDdEKl/D9wdxqSNdYQF9P2aNrOsvwrXdnpTs3h9Zxu2gPTJZ2VTzAbwF9ES7z23EpUEl
	8M+PK2lofDdK17uQtzquChlkB9Wy5G0XcYJVQAh3nFD8/KfuBtOUcloQlPgwe8g1lPyex+Xsz7ivu
	jcPH9rPYd1rKb3mZBUxt6j9aVmEeiMYWc/n3PBFN+DHwfrS4LV1BXGn5ExvLJ4VONVRbpo6lFrWOa
	UJUIg8nM3PLTCsZMsREQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WWa-0001ZD-Uw; Tue, 27 Aug 2019 08:08:20 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WWW-0001YV-Gs
 for ath10k@lists.infradead.org; Tue, 27 Aug 2019 08:08:18 +0000
Received: by mail-qk1-x742.google.com with SMTP id m10so16300397qkk.1
 for <ath10k@lists.infradead.org>; Tue, 27 Aug 2019 01:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YMyttUCQZ4ISy8V1dwK6zHFJylST2fDCu+TqHXmTfhk=;
 b=OwI9RAnGPIW0FSy18F1g8gNB+/QjYzphOy0byRLX7eoNfJyu7OVon5TzZadgdSk2lZ
 l4zE6zYQvcC46AD8t0iVx6/xkbmj7kkOURTQmLPGGXQEnMLheAe3f/xvXfkuTCbC1MgM
 Wtou6RDmjMuX/ph8M1XvPSUhkdCOmmxfPNxeE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YMyttUCQZ4ISy8V1dwK6zHFJylST2fDCu+TqHXmTfhk=;
 b=PA2ClhiNDhrdiGbSkQ4TlP08KdsmfayvBMTWhtQvLvYrsErmwQSvpNyheLMyXJKefY
 IxMk9Jz/DB6DDrhr0LHIWKVCPDuoAuTvsBBEYsMP6keGbFr3TGJ0/gPHESL4A5ljIYFT
 bc+0E79RlZ9oNPmPq/NZazwdzOsR++rxaVHvD/pq4g/uY1L1NjE7C/ZqWevmQaPBXo+5
 0HA3y7ndFnwBJCYiiT+aT9zMRaJfdQS3ve0kNBv4wgtZED56QzGg/jyoYMdRg7cBa8Ah
 HGZoR7W5dyfuZ2lXg4oMdvJXvpiVR9CySumXHHkLKTzg4Fjf6TFNnRDqOP7aEiiMHnSJ
 k4aA==
X-Gm-Message-State: APjAAAV3rS7eFh6RoTzQTB1Gv+DIT3hr2FeGA26wsSHArAUm8PaApoRU
 dN5VzZvqiZ0ZrfGregZDzn2Z2tTteslRlVnpKtQEnw==
X-Google-Smtp-Source: APXvYqzvhA+OprcDNMPqcvh7K2ub0bk8PJx6uICdSdi7h/udMi/13ymBwnoPwlSsQD/pN3WEtAZjW3uTv46J0XVrCP0=
X-Received: by 2002:ae9:f301:: with SMTP id p1mr20784257qkg.353.1566893295132; 
 Tue, 27 Aug 2019 01:08:15 -0700 (PDT)
MIME-Version: 1.0
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-2-git-send-email-wgong@codeaurora.org>
 <CANMq1KBR0nd+XOJWpgWyoJdsFgZByQyjD-0dpttygiN0OfiD5Q@mail.gmail.com>
 <2ec213d88ebb4b89812826866b39886d@aptaiexm02f.ap.qualcomm.com>
In-Reply-To: <2ec213d88ebb4b89812826866b39886d@aptaiexm02f.ap.qualcomm.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 27 Aug 2019 16:08:04 +0800
Message-ID: <CANMq1KCiH8-16esCfwi+60=ArZKC0G83Qs-W2Hq5GARar=6D9g@mail.gmail.com>
Subject: Re: [PATCH 1/7] ath10k: enable RX bundle receive for sdio
To: Wen Gong <wgong@qti.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_010816_588287_C69153FC 
X-CRM114-Status: GOOD (  16.57  )
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
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 4:03 PM Wen Gong <wgong@qti.qualcomm.com> wrote:
>
> > -----Original Message-----
> > From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Nicolas
> > Boichat
> > Sent: Tuesday, August 27, 2019 3:41 PM
> > To: Wen Gong <wgong@codeaurora.org>
> > Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> > wireless@vger.kernel.org>; ath10k@lists.infradead.org
> > Subject: [EXT] Re: [PATCH 1/7] ath10k: enable RX bundle receive for sdio
> >
> > > -static int ath10k_sdio_mbox_rx_fetch(struct ath10k *ar)
> > > +static int ath10k_sdio_mbox_rx_fetch_bundle(struct ath10k *ar)
> > >  {
> > >         struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
> > > +       struct ath10k_sdio_rx_data *pkt;
> > >         int ret, i;
> > > +       u32 pkt_offset, virt_pkt_len;
> > >
> > > +       virt_pkt_len = 0;
> > >         for (i = 0; i < ar_sdio->n_rx_pkts; i++) {
> > > -               ret = ath10k_sdio_mbox_rx_packet(ar,
> > > -                                                &ar_sdio->rx_pkts[i]);
> > > -               if (ret)
> > > +               virt_pkt_len += ar_sdio->rx_pkts[i].alloc_len;
> > > +       }
> > > +
> > > +       if (virt_pkt_len < ATH10K_SDIO_DMA_BUF_SIZE) {
> > > +               ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
> > > +                                        ar_sdio->vsg_buffer, virt_pkt_len);
> > > +               if (ret) {
> > > +                       i = 0;
> > >                         goto err;
> > > +               }
> > > +       } else {
> > > +               ath10k_err(ar, "size exceeding limit %d\n", virt_pkt_len);
> > > +       }
> > > +
> > > +       pkt_offset = 0;
> > > +       for (i = 0; i < ar_sdio->n_rx_pkts; i++) {
> > > +               struct sk_buff *skb = ar_sdio->rx_pkts[i].skb;
> > > +
> > > +               pkt = &ar_sdio->rx_pkts[i];
> > > +               memcpy(skb->data, ar_sdio->vsg_buffer + pkt_offset,
> > > +                      pkt->alloc_len);
> >
> > Why do you copy alloc_len if you only plan to use act_len?
> alloc_len is aligned to block size(256),  and act_len maybe not same for each packet in the bundle.
> Eg a bundle:
> Packet 1 len 240,   alloc_len: 256, 1st time: act_len 240, left padding size is 16,
> Packet 1 len 250, alloc_len: 256, 1st time: act_len 240, left padding size is 6,
> Packet 1 len 230,   alloc_len: 256, 1st time: act_len 240, left padding size is 26,
>
> The bundled buffer len is 256 * 3 = 768, it has 256 bytes for each packet, the left size is padding which
> Is not needed, but the left padding is not same for each packet, before read all the buffer from sdio bus,
> It does not know each packet's act len, it only know the 1st packet's act len.
> So it need to copy all the alloc_len's buffer to ensure it will not lose data.

Gotcha, thanks.

> > Actually, just use skb_put_data.
> >
> > Also, do you have the same issue as
> > https://patchwork.kernel.org/patch/11116215/ w.r.t. act_len being
> > incorrect?
> >
> > > +               pkt->status = 0;
> > > +               skb_put(skb, pkt->act_len);

So I guess this is incorrect, see patchwork linked above.

> > > +               pkt_offset += pkt->alloc_len;
> > >         }
> > >
> > >         return 0;
> > >
> >
> > _______________________________________________
> > ath10k mailing list
> > ath10k@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
