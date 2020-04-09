Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A991A3693
	for <lists+ath10k@lfdr.de>; Thu,  9 Apr 2020 17:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wj6UNX64WVScDqB5QL/QygoQ6FIeM1hAHf616PNPyBY=; b=ID8LMc/Y9ZvRdY
	19En5nYNgT9hctJPWaBThQgRE9sKhSKi6c6TY/HEFK2Sm+ImbnckPwGFv6XrpZI/u2RXsZPRu9C3C
	GRN/FLjwT3QFTpo9yTyEVJgtZDtvuyHCkfoKzyTinMdCOnrVaLGIGE3j3jezEPV6ZdmeyTMRWZ0FX
	1eCqEb1AsLR3NqzwkaoETtF692gCHmsDivEyevEq+ay39OlmdmTdOkEZLM8xGagENUbpEilDsjkro
	8MTzqyIH6m8HzxSaLZEIZfIsM6kEBud1TPvCRkg1gMujR4do9EA36IfZQx5p+T61DrrIL+z+Ku4V7
	VSl/t35lKlB2NzvL/SZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYkz-0007Cm-SG; Thu, 09 Apr 2020 15:06:17 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYkq-0007BR-Fr
 for ath10k@lists.infradead.org; Thu, 09 Apr 2020 15:06:14 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586444773; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=7KHDKvLbxU/THY3EFbTz9kpu3q/j3kdS9KYHkOOT2xA=;
 b=fr8vCvCWe04ZG18LDsfdVo6CWTBUkHp56YZ/tbVlz3KEaQtTcyP5BBFfMfeTrzLYRzgLuQFN
 QOe7WDsEhScqPlsmzNdKZr+MNp6Urmf9iTwrG+m8Rm6wQV1QbbiySg0x7U9JzMfNSeof5JZt
 v81AMooTMuQLmHq9YmCrrGnKTz8=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8f39ce.7f996f5278f0-smtp-out-n01;
 Thu, 09 Apr 2020 15:05:50 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1EACBC432C2; Thu,  9 Apr 2020 15:05:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A29E4C433BA;
 Thu,  9 Apr 2020 15:05:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A29E4C433BA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v9 3/4] ath10k: add htt TX bundle for sdio
References: <20200212080415.31265-1-wgong@codeaurora.org>
 <20200212080415.31265-4-wgong@codeaurora.org>
Date: Thu, 09 Apr 2020 18:05:45 +0300
In-Reply-To: <20200212080415.31265-4-wgong@codeaurora.org> (Wen Gong's message
 of "Wed, 12 Feb 2020 16:04:14 +0800")
Message-ID: <87pncgu2ba.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_080613_422119_263538AE 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> The transmission utilization ratio for sdio bus for small packet is
> slow, because the space and time cost for sdio bus is same for large
> length packet and small length packet. So the speed of data for large
> length packet is higher than small length.
>
> Test result of different length of data:
>
> data packet(byte)   cost time(us)   calculated rate(Mbps)
>       256               28                73
>       512               33               124
>      1024               35               234
>      1792               45               318
>     14336              168               682
>     28672              333               688
>     57344              660               695
>
> This patch change the TX packet from single packet to a large length
> bundle packet, max size is 32, it results in significant performance
> improvement on TX path.
>
> This patch only effect sdio chip, it will not effect PCI, SNOC etc.
> It only enable bundle for sdio chip.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> +	if (ep->tx_credits < credits) {
> +		ath10k_dbg(ar, ATH10K_DBG_HTC,
> +			   "htc insufficient credits ep %d required %d available %d consume %d\n",
> +			   eid, credits, ep->tx_credits, consume);
> +		ret = -EAGAIN;
> +		goto unlock;
> +	}
> +
> +	if (consume) {
> +		ep->tx_credits -= credits;
> +		ath10k_dbg(ar, ATH10K_DBG_HTC,
> +			   "htc ep %d consumed %d credits (total %d)\n",

"htc ep %d consumed %d credits total %d\n"

[...]

> +	ath10k_dbg(ar, ATH10K_DBG_HTC, "bundle skb: len:%d\n", bundle_skb->len);

"htc bundle skb len %d\n"

In other words, start with "htc" and don't use colons or parenthesis.
This applies to most of debug messages in this patch.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
