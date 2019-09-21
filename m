Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9895FB9DC6
	for <lists+ath10k@lfdr.de>; Sat, 21 Sep 2019 14:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqAHwa4V6UB/JtPP5NXne3YB3uOFjYFsnmqRfPWc/wI=; b=J1EAn//4X9Nqdb
	K2ZmJyfiJxE7pDEa5xIEFI7M7nie0nN5goKv1aqboZSdHF6sHQ/OPGa728OuosAUn/J2HWgQo2UKz
	LRC4f2g4kWWVj9lW1fs/CufISCmGtgv3l8iZtOKYbcivVnBsHK1Ff9o3z0KIwh/IF5DaNqc5EKCjl
	Z7K9oWAxY4cAzvJG87j2yfQntd7eLyMIuqBOS7QhhkdhggcJIISQfuyXyNoIExCpiC8mfqqxYW/ut
	MXTyt7H4TtNjA14InXyO8hKGPVEVs0uzPFz4ZMwTgRtWJXlywAUnpqaRqxsP+1p+kDbT7FqDG5hsg
	H5+V9Zs+hmPnM+4iZeOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBeJ5-0000Xy-V5; Sat, 21 Sep 2019 12:16:07 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBeJ1-0000Xf-BT
 for ath10k@lists.infradead.org; Sat, 21 Sep 2019 12:16:04 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E84C5613A8; Sat, 21 Sep 2019 12:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569068163;
 bh=wexDgknUrxzPZemPf9++eVSoD7b53DMLKuNNq26HWPA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=BgDM/cnHTlD3sgocEHUR1AgZaF75mxpQF2RVexvqIr9u5UMtMjfydmumL6nR/Wq6Q
 EeENOWqn+ELlAVj0d1Ub9mBjmrb4m+BQFe/Uf3Cfa56NFwEi8Y7gQR2OCl24U1MNNU
 JTIyNtKsMTxbEYsZBnjSeiXnRbK+fJfqS7Zpt18M=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2FF4460364;
 Sat, 21 Sep 2019 12:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569068162;
 bh=wexDgknUrxzPZemPf9++eVSoD7b53DMLKuNNq26HWPA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Ulss5o2Mj2PEdoVC9gnHcNeXi00NWtoEwkQ6hPRl8RWuqR6puQNoT/FuuNohINDya
 kc91Q8Wfb4ewTYEkQmP346mxfBgs15fqmOE+rDlVZ21rdGJAPr2HEneefil2Kx0ppP
 gNij0nWLvxsrMmVGnEDSxhoo2PEvjpVUQWuOe8J4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2FF4460364
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v5 2/8] ath10k: enable RX bundle receive for sdio
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
 <1567679893-14029-3-git-send-email-wgong@codeaurora.org>
Date: Sat, 21 Sep 2019 15:15:58 +0300
In-Reply-To: <1567679893-14029-3-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Thu, 5 Sep 2019 18:38:07 +0800")
Message-ID: <87r249alq9.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_051603_436924_0947E913 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> From: Alagu Sankar <alagusankar@silex-india.com>
>
> The existing implementation of initiating multiple sdio transfers for
> receive bundling is slowing down the receive speed. Combining the
> transfers using a bundle method would be ideal.
>
> The transmission utilization ratio for sdio bus for small packet is
> slow, because the space and time cost for sdio bus is same for large
> length packet and small length packet. So the speed of data for large
> length packet is higher than small length.
>
> Test result of different length of data:
> data packet(byte)   cost time(us)   calculated rate(Mbps)
>       256               28                73
>       512               33               124
>      1024               35               234
>      1792               45               318
>     14336              168               682
>     28672              333               688
>     57344              660               695
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Alagu Sankar <alagusankar@silex-india.com>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -24,6 +24,9 @@
>  #include "trace.h"
>  #include "sdio.h"
>  
> +#define ATH10K_SDIO_DMA_BUF_SIZE	(32 * 1024)
> +#define ATH10K_SDIO_VSG_BUF_SIZE	(32 * 1024)

Why two defines? Seems error prone to me and using the latter should be
enough.

> @@ -529,6 +532,7 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
>  	size_t full_len, act_len;
>  	bool last_in_bundle;
>  	int ret, i;
> +	int pkt_cnt = 0;
>  
>  	if (n_lookaheads > ATH10K_SDIO_MAX_RX_MSGS) {
>  		ath10k_warn(ar,
> @@ -572,20 +576,22 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
>  			 */
>  			size_t bndl_cnt;
>  
> -			ret = ath10k_sdio_mbox_alloc_pkt_bundle(ar,
> -								&ar_sdio->rx_pkts[i],
> -								htc_hdr,
> -								full_len,
> -								act_len,
> -								&bndl_cnt);
> +			struct ath10k_sdio_rx_data *rx_pkts =
> +				&ar_sdio->rx_pkts[pkt_cnt];

You need to declare rx_pkts in the beginning of the block, not mixed
within the code.

> @@ -606,9 +612,10 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
>  			ath10k_warn(ar, "alloc_rx_pkt error %d\n", ret);
>  			goto err;
>  		}
> +		pkt_cnt++;

Empty line before 'pkt_cnt++'.

> -static int ath10k_sdio_mbox_rx_fetch(struct ath10k *ar)
> +static int ath10k_sdio_mbox_rx_fetch_bundle(struct ath10k *ar)
>  {
>  	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
> +	struct ath10k_sdio_rx_data *pkt;
> +	struct ath10k_htc_hdr *htc_hdr;
>  	int ret, i;
> +	u32 pkt_offset, virt_pkt_len;
>  
> +	virt_pkt_len = 0;
>  	for (i = 0; i < ar_sdio->n_rx_pkts; i++) {
> -		ret = ath10k_sdio_mbox_rx_packet(ar,
> -						 &ar_sdio->rx_pkts[i]);
> +		virt_pkt_len += ar_sdio->rx_pkts[i].alloc_len;
> +	}
> +
> +	if (virt_pkt_len < ATH10K_SDIO_DMA_BUF_SIZE) {
> +		ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
> +					 ar_sdio->vsg_buffer, virt_pkt_len);
>  		if (ret)
>  			goto err;
> +	} else {
> +		ath10k_err(ar, "size exceeding limit %d\n", virt_pkt_len);
> +		ret = -ENOMEM;
> +		goto err;
> +	}

Use common error handling style, ath10k_warn() and -E2BIG:

if (virt_pkt_len >= ATH10K_SDIO_DMA_BUF_SIZE) {
	ath10k_err(ar, "size exceeding limit %d\n", virt_pkt_len);
	ret = -E2BIG;
	goto err;
}

ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
			 ar_sdio->vsg_buffer, virt_pkt_len);
if (ret) {
        ath10k_warn("failed to do foo: %d", ret)
	goto err;
}

> @@ -1123,7 +1151,7 @@ static int ath10k_sdio_bmi_get_rx_lookahead(struct ath10k *ar)
>  					 MBOX_HOST_INT_STATUS_ADDRESS,
>  					 &rx_word);
>  		if (ret) {
> -			ath10k_warn(ar, "unable to read RX_LOOKAHEAD_VALID: %d\n", ret);
> +			ath10k_warn(ar, "unable to read rx_lookahd: %d\n", ret);

Looks like an unnecessary change?

> @@ -196,6 +196,9 @@ struct ath10k_sdio {
>  	struct ath10k *ar;
>  	struct ath10k_sdio_irq_data irq_data;
>  
> +	/* temporary buffer for sdio read */
> +	u8 *vsg_buffer;

So how is vsg_buffer protected? You should document that here.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
