Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D4AB103D
	for <lists+ath10k@lfdr.de>; Thu, 12 Sep 2019 15:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kobby+UCTpo2D2GhVOCGuARaZW4GLaA8/GLGo7eRHdY=; b=sxf+TaHP1OegRn
	YRR1zmpbUxLCuaWmyfjESJZ+thXD+cAofmUFS2/tS9P9ky85bw7ZBN4CS0xEzxlImB7fQdk1xsfrD
	lGzpSI/KZIriqt8thZPuUAq81SEAGIHoZZNXTELmeB49J52FC588D+vQ6NLyVOwboNi5q1Q3697Ml
	girvR0SiNmVW/2t4yTO2fcbGAMZkpV6a1Dag207sTur38p+lwn6qbYIg2D44NRNhMeEmQF1GWAIft
	+drnIgLMqg8P+ZNMahvBZ1J6QoUwoygXB9XwT7uhkAWcTx8sDxuflYipXSLOAbe/AIrAyH2ilc8ET
	5bpQvZFGQCaGloG+nOWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8PQR-0002Qz-9L; Thu, 12 Sep 2019 13:46:19 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8PQM-0002QN-3e
 for ath10k@lists.infradead.org; Thu, 12 Sep 2019 13:46:15 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id AEC0D602F8; Thu, 12 Sep 2019 13:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568295973;
 bh=uEjDwlSOGDk1IXwFFWepFeK+yX9dsUgz95OwsYbtQow=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=DL7ZV1AuzLZaYkAxuWjat4DHfaOOjGFW21J4dC8/LHqPvUhKSY7kJju4HX3isYrzU
 pxBfcpkO1Jazx+/O7Eh7kHQX7RL/mgoJeSitZUcJDQScVXyw4v1MAquDa6pkGm6fg/
 iycMy2uhNG1PgCeCTgDa/ADON6sB4mz/dj4ua5Ys=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0393B602FE;
 Thu, 12 Sep 2019 13:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568295973;
 bh=uEjDwlSOGDk1IXwFFWepFeK+yX9dsUgz95OwsYbtQow=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=DL7ZV1AuzLZaYkAxuWjat4DHfaOOjGFW21J4dC8/LHqPvUhKSY7kJju4HX3isYrzU
 pxBfcpkO1Jazx+/O7Eh7kHQX7RL/mgoJeSitZUcJDQScVXyw4v1MAquDa6pkGm6fg/
 iycMy2uhNG1PgCeCTgDa/ADON6sB4mz/dj4ua5Ys=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0393B602FE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>, Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH v5 1/8] ath10k: adjust skb length in
 ath10k_sdio_mbox_rx_packet
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
 <1567679893-14029-2-git-send-email-wgong@codeaurora.org>
Date: Thu, 12 Sep 2019 16:46:09 +0300
In-Reply-To: <1567679893-14029-2-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Thu, 5 Sep 2019 18:38:06 +0800")
Message-ID: <87muf9k4pq.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_064614_199479_0E2F2B5E 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

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

[...]

> @@ -632,13 +627,29 @@ static int ath10k_sdio_mbox_rx_packet(struct ath10k *ar,
>  {
>  	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
>  	struct sk_buff *skb = pkt->skb;
> +	struct ath10k_htc_hdr *htc_hdr;
>  	int ret;
>  
>  	ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
>  				 skb->data, pkt->alloc_len);
> +
> +	if (!ret) {
> +		/* Update actual length. The original length may be incorrect,
> +		 * as the FW will bundle multiple packets as long as their sizes
> +		 * fit within the same aligned length (pkt->alloc_len).
> +		 */
> +		htc_hdr = (struct ath10k_htc_hdr *)skb->data;
> +		pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
> +		if (pkt->act_len <= pkt->alloc_len) {
> +			skb_put(skb, pkt->act_len);
> +		} else {
> +			ath10k_warn(ar, "rx packet too large (%zu > %zu)\n",
> +				    pkt->act_len, pkt->alloc_len);
> +			ret = -EMSGSIZE;
> +		}
> +	}
> +
>  	pkt->status = ret;
> -	if (!ret)
> -		skb_put(skb, pkt->act_len);
>  
>  	return ret;
>  }

I simplified the error handling in this function to follow the ath10k
style, please check carefully that I didn't create any bugs:

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=6e4d2cc5

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
