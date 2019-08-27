Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11B59DC08
	for <lists+ath10k@lfdr.de>; Tue, 27 Aug 2019 05:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNL2zA0rAWUG6ZuLVBlBEpmxiz1EgNuh1hgOq6m1QIA=; b=KkPs738OX+YWWP
	rJYe9bFKJgxOnuQ6Gj3A1e7ex1z1wbpUUODWHATzWF62bq2jpMLovjyrT1o9WF+vOo329IasR0Aue
	Tx8xtjuwOrl8Z6PkbHwGvQzYhWRCN+CN302qeMV7uFeXJYXk9m7QEFnbanKKQtVzPB45x24QEIunE
	JQ9ban1NZzsldMOe6jJQoapqwYb4bn9iA1nT5iHPqBx4Hr4xxxp3wYDmZxGyLZ4PEo+D5KtP8nnfg
	8hlCRT7bf7+b99ng2HIu2s2kksxzh29BIZ8fM5MhQwjJ3ezbthRaE3rp6u/q7u1W2bIYCbl0vXSz+
	XmgscBjfL9M9n/M6b+LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2SFO-00087f-2P; Tue, 27 Aug 2019 03:34:18 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2SFJ-000877-6K
 for ath10k@lists.infradead.org; Tue, 27 Aug 2019 03:34:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566876853; x=1598412853;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=HueO28Mo5THvdok84YE2yPuCzBaX4zbwcSWbNLlZqUI=;
 b=NVnXgKGqC9NK2cbj+Ooqqt6YzDC2eQOTUloeNmA3SydGQiDHQkfqtmSE
 ByZiG8rGO22yO/unO08LME2qO1XylS5Hie72vKegD81oO+xwZOqatfA8A
 MRNMlg+55RCxdmkSPOObdXBS/VPSp0Y1rJAsqa+E2osM+4ZCBBt8RvM/q A=;
Subject: RE: [PATCH,
 RFC] ath10k: Fix skb->len (properly) in ath10k_sdio_mbox_rx_packet
Thread-Topic: [PATCH, RFC] ath10k: Fix skb->len (properly) in
 ath10k_sdio_mbox_rx_packet
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 27 Aug 2019 11:34:07 +0800
Received: from aptaiexm02e.ap.qualcomm.com ([10.249.150.15])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 27 Aug 2019 11:33:54 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02e.ap.qualcomm.com (10.249.150.15) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Tue, 27 Aug 2019 11:33:52 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Tue, 27 Aug 2019 11:33:52 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>, "kvalo@codeaurora.org"
 <kvalo@codeaurora.org>
Thread-Index: AQHVXG89wIhJ11LRtUm/dwetQaAonKcOT+iw
Date: Tue, 27 Aug 2019 03:33:52 +0000
Message-ID: <36878f3488f047978038c844daedd02f@aptaiexm02f.ap.qualcomm.com>
References: <20190827003326.147452-1-drinkcat@chromium.org>
In-Reply-To: <20190827003326.147452-1-drinkcat@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_203413_499185_15F661BD 
X-CRM114-Status: GOOD (  24.21  )
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
Cc: Alagu Sankar <alagusankar@silex-india.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "briannorris@chromium.org" <briannorris@chromium.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 "wgong@codeaurora.org" <wgong@codeaurora.org>,
 "niklas.cassel@linaro.org" <niklas.cassel@linaro.org>,
 "tientzu@chromium.org" <tientzu@chromium.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Nicolas
> Boichat
> Sent: Tuesday, August 27, 2019 8:33 AM
> To: kvalo@codeaurora.org
> Cc: Alagu Sankar <alagusankar@silex-india.com>; netdev@vger.kernel.org;
> briannorris@chromium.org; linux-wireless@vger.kernel.org; linux-
> kernel@vger.kernel.org; ath10k@lists.infradead.org;
> wgong@codeaurora.org; niklas.cassel@linaro.org; tientzu@chromium.org;
> David S . Miller <davem@davemloft.net>
> Subject: [EXT] [PATCH, RFC] ath10k: Fix skb->len (properly) in
> ath10k_sdio_mbox_rx_packet
> 
> (not a formal patch, take this as a bug report for now, I can clean
> up depending on the feedback I get here)
> 
> There's at least 3 issues here, and the patch fixes 2/3 only, I'm not sure
> how/if 1 should be handled.
>  1. ath10k_sdio_mbox_rx_alloc allocating skb of a incorrect size (too
>     small)
>  2. ath10k_sdio_mbox_rx_packet calling skb_put with that incorrect size.
>  3. ath10k_sdio_mbox_rx_process_packet attempts to fixup the size, but
>     does not use proper skb_put commands to do so, so we end up with
>     a mismatch between skb->head + skb->tail and skb->data + skb->len.
> 
> Let's start with 3, this is quite serious as this and causes corruptions
> in the TCP stack, as the stack tries to coalesce packets, and relies on
> skb->tail being correct (that is, skb_tail_pointer must point to the
> first byte _after_ the data): one must never manipulate skb->len
> directly.
> 
> Instead, we need to use skb_put to allocate more space (which updates
> skb->len and skb->tail). But it seems odd to do that in
> ath10k_sdio_mbox_rx_process_packet, so I move the code to
> ath10k_sdio_mbox_rx_packet (point 2 above).
> 
> However, there is still something strange (point 1 above), why is
> ath10k_sdio_mbox_rx_alloc allocating packets of the incorrect
> (too small?) size? What happens if the packet is bigger than alloc_len?
> Does this lead to corruption/lost data?
> 
> Fixes: 8530b4e7b22bc3b ("ath10k: sdio: set skb len for all rx packets")
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> 
> ---
> 
> One simple way to test this is this scriplet, that sends a lot of
> small packets over SSH:
> (for i in `seq 1 300`; do echo $i; sleep 0.1; done) | ssh $IP cat
> 
> In my testing it rarely ever reach 300 without failure.
> 
>  drivers/net/wireless/ath/ath10k/sdio.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c
> b/drivers/net/wireless/ath/ath10k/sdio.c
> index 8ed4fbd8d6c3888..a9f5002863ee7bb 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -381,16 +381,14 @@ static int
> ath10k_sdio_mbox_rx_process_packet(struct ath10k *ar,
>  	struct ath10k_htc_hdr *htc_hdr = (struct ath10k_htc_hdr *)skb->data;
>  	bool trailer_present = htc_hdr->flags &
> ATH10K_HTC_FLAG_TRAILER_PRESENT;
>  	enum ath10k_htc_ep_id eid;
> -	u16 payload_len;
>  	u8 *trailer;
>  	int ret;
> 
> -	payload_len = le16_to_cpu(htc_hdr->len);
> -	skb->len = payload_len + sizeof(struct ath10k_htc_hdr);
> +	/* TODO: Remove this? */
If the pkt->act_len has set again in ath10k_sdio_mbox_rx_packet, seems not needed.
> +	WARN_ON(skb->len != le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr));
> 
>  	if (trailer_present) {
> -		trailer = skb->data + sizeof(*htc_hdr) +
> -			  payload_len - htc_hdr->trailer_len;
> +		trailer = skb->data + skb->len - htc_hdr->trailer_len;
> 
>  		eid = pipe_id_to_eid(htc_hdr->eid);
> 
> @@ -637,8 +635,16 @@ static int ath10k_sdio_mbox_rx_packet(struct
> ath10k *ar,
>  	ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
>  				 skb->data, pkt->alloc_len);
>  	pkt->status = ret;
> -	if (!ret)
> +	if (!ret) {
> +		/* Update actual length. */
> +		/* FIXME: This looks quite wrong, why is pkt->act_len not
> +		 * correct in the first place?
> +		 */
Firmware will do bundle for rx packet, and the aligned length by block size(256) of each packet's len is same 
in a bundle.

Eg. 
packet 1 len: 300, aligned length:512
packet 2 len: 400, aligned length:512
packet 3 len: 200, aligned length:256
packet 4 len: 100, aligned length:256
packet 5 len: 700, aligned length:768
packet 6 len: 600, aligned length:768

then packet 1,2 will in bundle 1, packet 3,4 in a bundle 2, packet 5,6 in a bundle 3.

For bundle 1, packet 1,2 will both allocate with len 512, and act_len is 300 first,
then packet 2's len will be overwrite to 400.

For bundle 2, packet 3,4 will both allocate with len 256, and act_len is 200 first,
then packet 4's len will be overwrite to 100.

For bundle 3, packet 5,6 will both allocate with len 768, and act_len is 700 first,
then packet 6's len will be overwrite to 600.

> +		struct ath10k_htc_hdr *htc_hdr =
> +			(struct ath10k_htc_hdr *)skb->data;
> +		pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
>  		skb_put(skb, pkt->act_len);
> +	}
> 
>  	return ret;
>  }
> --
> 2.23.0.187.g17f5b7556c-goog
> 
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
