Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137039E04C
	for <lists+ath10k@lfdr.de>; Tue, 27 Aug 2019 10:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jax0LMO6WNICderX+7eJXdtTtULMjSJYhTQ7F4wKH8k=; b=Tocv5jR1Z/RyCf
	kauCG8Yl+vKKfD0xRuPbJoxjsginN2hf6TLYLR8pfTNxCFkZL/T1P7RkJaozM30hFl8DX13LVV2UD
	83ydfU5EyudK2M+cxrzZyS4jQMRltjFuDvvtJ2Jdbuqovh2ysosER9XPNA6TxVcn40rlIrCYVQAlQ
	J31iZSlDv96aMOuwUJ/MWpO5iHeRvwpMDbwHt0LW83nLqY9RzCfbGgLMcVwU8B+Yxm9hUMmY1IWch
	9T9RlGOrUwRcxqhIcXSNGLILc2+H3Unpqwjc4MRQUbbrl51or3mIzCVLv2iY2MnOGt9ojeFejOWrM
	ZwBDhNxYRpIgAeY/sQUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WRX-0008Bt-8c; Tue, 27 Aug 2019 08:03:07 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WRS-0008B9-F2
 for ath10k@lists.infradead.org; Tue, 27 Aug 2019 08:03:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566892982; x=1598428982;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=4ojrGrL0wESrTRr+PXXy9IAigPfb8/ZmH00rWyuv4dg=;
 b=ZdQMOTrDP6zdrFSBqxuP7alRvTHjuq8tb74q+UJppkkO9j564dBK2Cdg
 OqyPs4WV1SHSc8S/+NobMnQpxlrjVReaZe+M9OWisuZI235RDiyw+VEGM
 kEKah37QCk7wU+9GXzTZ7bcZezIS5TrNArWXHGBBLR52qM/SAD2xvipum c=;
Subject: RE: [PATCH 1/7] ath10k: enable RX bundle receive for sdio
Thread-Topic: [PATCH 1/7] ath10k: enable RX bundle receive for sdio
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 27 Aug 2019 16:02:58 +0800
Received: from aptaiexm02e.ap.qualcomm.com ([10.249.150.15])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 27 Aug 2019 16:02:54 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02e.ap.qualcomm.com (10.249.150.15) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Tue, 27 Aug 2019 16:02:52 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Tue, 27 Aug 2019 16:02:52 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXKrOUvYo32uqIkuIjmEPEapo6qcOngKQ
Date: Tue, 27 Aug 2019 08:02:52 +0000
Message-ID: <2ec213d88ebb4b89812826866b39886d@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-2-git-send-email-wgong@codeaurora.org>
 <CANMq1KBR0nd+XOJWpgWyoJdsFgZByQyjD-0dpttygiN0OfiD5Q@mail.gmail.com>
In-Reply-To: <CANMq1KBR0nd+XOJWpgWyoJdsFgZByQyjD-0dpttygiN0OfiD5Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_010302_777672_7180A599 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.226 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Nicolas
> Boichat
> Sent: Tuesday, August 27, 2019 3:41 PM
> To: Wen Gong <wgong@codeaurora.org>
> Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> wireless@vger.kernel.org>; ath10k@lists.infradead.org
> Subject: [EXT] Re: [PATCH 1/7] ath10k: enable RX bundle receive for sdio
> 
> > -static int ath10k_sdio_mbox_rx_fetch(struct ath10k *ar)
> > +static int ath10k_sdio_mbox_rx_fetch_bundle(struct ath10k *ar)
> >  {
> >         struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
> > +       struct ath10k_sdio_rx_data *pkt;
> >         int ret, i;
> > +       u32 pkt_offset, virt_pkt_len;
> >
> > +       virt_pkt_len = 0;
> >         for (i = 0; i < ar_sdio->n_rx_pkts; i++) {
> > -               ret = ath10k_sdio_mbox_rx_packet(ar,
> > -                                                &ar_sdio->rx_pkts[i]);
> > -               if (ret)
> > +               virt_pkt_len += ar_sdio->rx_pkts[i].alloc_len;
> > +       }
> > +
> > +       if (virt_pkt_len < ATH10K_SDIO_DMA_BUF_SIZE) {
> > +               ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
> > +                                        ar_sdio->vsg_buffer, virt_pkt_len);
> > +               if (ret) {
> > +                       i = 0;
> >                         goto err;
> > +               }
> > +       } else {
> > +               ath10k_err(ar, "size exceeding limit %d\n", virt_pkt_len);
> > +       }
> > +
> > +       pkt_offset = 0;
> > +       for (i = 0; i < ar_sdio->n_rx_pkts; i++) {
> > +               struct sk_buff *skb = ar_sdio->rx_pkts[i].skb;
> > +
> > +               pkt = &ar_sdio->rx_pkts[i];
> > +               memcpy(skb->data, ar_sdio->vsg_buffer + pkt_offset,
> > +                      pkt->alloc_len);
> 
> Why do you copy alloc_len if you only plan to use act_len?
alloc_len is aligned to block size(256),  and act_len maybe not same for each packet in the bundle.
Eg a bundle:
Packet 1 len 240,   alloc_len: 256, 1st time: act_len 240, left padding size is 16,
Packet 1 len 250, alloc_len: 256, 1st time: act_len 240, left padding size is 6,
Packet 1 len 230,   alloc_len: 256, 1st time: act_len 240, left padding size is 26,

The bundled buffer len is 256 * 3 = 768, it has 256 bytes for each packet, the left size is padding which 
Is not needed, but the left padding is not same for each packet, before read all the buffer from sdio bus,
It does not know each packet's act len, it only know the 1st packet's act len.
So it need to copy all the alloc_len's buffer to ensure it will not lose data.

> Actually, just use skb_put_data.
> 
> Also, do you have the same issue as
> https://patchwork.kernel.org/patch/11116215/ w.r.t. act_len being
> incorrect?
> 
> > +               pkt->status = 0;
> > +               skb_put(skb, pkt->act_len);
> > +               pkt_offset += pkt->alloc_len;
> >         }
> >
> >         return 0;
> >
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
