Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B9F1CC276
	for <lists+ath10k@lfdr.de>; Sat,  9 May 2020 17:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcWWlkvRPrfyqMKt8A4FdnY7OAUw1z6opTmgiECkRkY=; b=IanKGNtrupjmN+
	zi3w1Pa3+BXJr+qeXmU5gOO232w8J9g5AB7Sgaor6jYPPte4ppoJo5MjFzr1VRrj31K+E94dxqitq
	ldJKgSCWCNVNTZ25GPZ8z+oG6mUZA4W5AeGgPEWSCbenOHBLnOy9hv2eHcOEOgD043fn4iSf23HGl
	QZ8c6Pna8PH2wbQZ5/6YJRZ1U8ghwpeWCBl3dubhRO9VsHU1bjNQ/r3Gi+gxO1CoO7NcDVFt2ofgz
	jYbNHbZB7yODdAds993+Zp/yfz6UYGZF/BwHvqLXPxo80s8y02zs5FQPIn6u8njRvB0J+heu6WW3U
	ESrTciAIxPyja62A0JJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXRds-0002KJ-5K; Sat, 09 May 2020 15:43:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXRdo-0002Cl-7V
 for ath10k@lists.infradead.org; Sat, 09 May 2020 15:43:53 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2CEF2063A;
 Sat,  9 May 2020 15:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589039029;
 bh=o1bX8Zql/kQ5+2VP0PxQWxTrOXX0zwKggYwZhmcqNrs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DAXEZFtgE82+8ztfFy+75+0SXtIGD9rjTnRytb7gq+fU+tGx4hbaaWmS2NcxsN+Pt
 jSeaNmSSiVN2iqylQqSMRdrnQ//OygB2q713StgEDppDnCYpiSQumAGbLQaolzFh+k
 PJ9TtJmxAEV+9tAf+Z7IF89wjHUFlaKH1C2BrKBQ=
Date: Sat, 9 May 2020 10:48:18 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH net-next 1/2] ath10k: fix gcc-10 zero-length-bounds
 warnings
Message-ID: <20200509154818.GB27779@embeddedor>
References: <20200509120707.188595-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509120707.188595-1-arnd@arndb.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_084352_290842_A09CCF45 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Erik Stromdahl <erik.stromdahl@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@qca.qualcomm.com>,
 Michal Kazior <michal.kazior@tieto.com>, Wen Gong <wgong@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Arnd,

On Sat, May 09, 2020 at 02:06:32PM +0200, Arnd Bergmann wrote:
> gcc-10 started warning about out-of-bounds access for zero-length
> arrays:
> 
> In file included from drivers/net/wireless/ath/ath10k/core.h:18,
>                  from drivers/net/wireless/ath/ath10k/htt_rx.c:8:
> drivers/net/wireless/ath/ath10k/htt_rx.c: In function 'ath10k_htt_rx_tx_fetch_ind':
> drivers/net/wireless/ath/ath10k/htt.h:1683:17: warning: array subscript 65535 is outside the bounds of an interior zero-length array 'struct htt_tx_fetch_record[0]' [-Wzero-length-bounds]
>  1683 |  return (void *)&ind->records[le16_to_cpu(ind->num_records)];
>       |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/htt.h:1676:29: note: while referencing 'records'
>  1676 |  struct htt_tx_fetch_record records[0];
>       |                             ^~~~~~~
> 
> Make records[] a flexible array member to allow this, moving it behind
> the other zero-length member that is not accessed in a way that gcc
> warns about.
> 
> Fixes: 3ba225b506a2 ("treewide: Replace zero-length array with flexible-array member")

This treewide patch no longer contains changes for ath10k. I removed them
since Monday (05/04/2020). So, this "Fixes" tag does not apply.

Thanks
--
Gustavo

> Fixes: 22e6b3bc5d96 ("ath10k: add new htt definitions")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/net/wireless/ath/ath10k/htt.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
> index 8f3710cf28f4..aa056a186402 100644
> --- a/drivers/net/wireless/ath/ath10k/htt.h
> +++ b/drivers/net/wireless/ath/ath10k/htt.h
> @@ -1673,8 +1673,8 @@ struct htt_tx_fetch_ind {
>  	__le32 token;
>  	__le16 num_resp_ids;
>  	__le16 num_records;
> -	struct htt_tx_fetch_record records[0];
>  	__le32 resp_ids[0]; /* ath10k_htt_get_tx_fetch_ind_resp_ids() */
> +	struct htt_tx_fetch_record records[];
>  } __packed;
>  
>  static inline void *
> -- 
> 2.26.0
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
