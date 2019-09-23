Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28444BB0DF
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 11:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXbVaGhAiY/2ECVFxbsYzwWHRFzEuJIJYQK/nm1eVek=; b=jnshp18LI0g1Q/
	JA2wiI54jsCSdmHG4ImmqfBp4tUivlhdsocbOGBBL35k09kxl4SdybbxE8lQaCIZtPvkUgD3waRz/
	uCIWvGp358xuWuZWFD9B/QJDnBvpAml3UprDx8OJ9gojTv+Bn/l0HAG+hZjDr6mrvbChyqc0xHA9e
	CYA9FP1F8G18eHWKgsbIvAnh6EX/c33AGJ/gCszde8RZJ2ezLjEx366VSMWYSIa4ydXN2adeb0PRw
	sCk4OC9J4LcAgTaUryKfbKI366MKWRWQGs2n9TXGz0pfa493Smk7Y70F6gaW2niQAJmAsqEXWRaEi
	cTN1DgsPOC8TZnQ3Eejg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKHs-00057z-Kj; Mon, 23 Sep 2019 09:05:40 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKHb-000562-Jq
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 09:05:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7B3B960A97; Mon, 23 Sep 2019 09:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569229522;
 bh=J0jAn93L8O6H3rjtmdAp2j3w5to8tTtp09OT+wjNbwY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=B/VeetzCNpYJW+/3tRk3t8aGIjk4kCpKSKA+XKEv+YPiyOfh6IXGzO/z8WM3ZR6JD
 itsoPgnqk8AnmA6rT7ZyogWU6E/hXMV7tr1EJgHhkISHWbW5zlAPRvT3W6hcOm2CEk
 sGDxVF4NxiOT8VWcxVge/j3pi1lyJq1PKqZgjwMk=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E23BF60256;
 Mon, 23 Sep 2019 09:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569229522;
 bh=J0jAn93L8O6H3rjtmdAp2j3w5to8tTtp09OT+wjNbwY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=B/VeetzCNpYJW+/3tRk3t8aGIjk4kCpKSKA+XKEv+YPiyOfh6IXGzO/z8WM3ZR6JD
 itsoPgnqk8AnmA6rT7ZyogWU6E/hXMV7tr1EJgHhkISHWbW5zlAPRvT3W6hcOm2CEk
 sGDxVF4NxiOT8VWcxVge/j3pi1lyJq1PKqZgjwMk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E23BF60256
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v5 3/8] ath10k: change max RX bundle size from 8 to 32 for
 sdio
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
 <1567679893-14029-4-git-send-email-wgong@codeaurora.org>
Date: Mon, 23 Sep 2019 12:05:17 +0300
In-Reply-To: <1567679893-14029-4-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Thu, 5 Sep 2019 18:38:08 +0800")
Message-ID: <871rw79ycy.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_020523_941995_81CC3C9B 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

> The max bundle size support by firmware is 32, change it from 8 to 32
> will help performance. This results in significant performance
> improvement on RX path.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> --- a/drivers/net/wireless/ath/ath10k/htc.h
> +++ b/drivers/net/wireless/ath/ath10k/htc.h
> @@ -39,7 +39,7 @@
>   * 4-byte aligned.
>   */
>  
> -#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        8
> +#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        32
>  
>  enum ath10k_htc_tx_flags {
>  	ATH10K_HTC_FLAG_NEED_CREDIT_UPDATE = 0x01,
> @@ -48,10 +48,16 @@ enum ath10k_htc_tx_flags {
>  
>  enum ath10k_htc_rx_flags {
>  	ATH10K_HTC_FLAGS_RECV_1MORE_BLOCK = 0x01,
> -	ATH10K_HTC_FLAG_TRAILER_PRESENT = 0x02,
> -	ATH10K_HTC_FLAG_BUNDLE_MASK     = 0xF0
> +	ATH10K_HTC_FLAG_TRAILER_PRESENT = 0x02
>  };
>  
> +#define ATH10K_HTC_FLAG_BUNDLE_MASK 0xF0
> +#define ATH10K_HTC_BUNDLE_EXTRA_MASK GENMASK(3, 2)
> +
> +#define ATH10K_HTC_GET_BUNDLE_COUNT(flags) \
> +	    (FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, (flags)) +  \
> +	    (FIELD_GET(ATH10K_HTC_BUNDLE_EXTRA_MASK, (flags)) << 4))

When using FIELD_GET() there should be no need to use '<<', the main id
of FIELD_GET() and BITMASK() is that there's no need do any manual
shifting. So I suspect something is wrong here, but didn't have time to
investigate.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
