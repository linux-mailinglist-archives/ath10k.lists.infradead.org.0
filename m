Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 092221A375A
	for <lists+ath10k@lfdr.de>; Thu,  9 Apr 2020 17:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHVNbKHpZBxI1s0oe/YnSzx51i3bEzNjk1kga7Y7vDU=; b=HED6oyTSDyyNtk
	XiQOzP6nqpG9fjCEDEgVVVVPafblkmy8JEY7dpTHcwZSgqoHsddLjR8JHHhNncL6RrCrAI5Mdx9H+
	HRYM49khmyormr3BF/epH13W7HtDASzKcoI/RYZqKmsa9w05HTGP/spPs7BA5j1ZTdYVj8COnHFkb
	vtmo/6ycaHSl8NIzAVuCqhb6H3DOcpF1saQg9RSghImPEahEz4U8Hj+Stuu96YWE3bhgoDxdXbRis
	xCXWx9wI3D9pR6GaeA3UhP/X0UxmP+jy1ww4vg9jiCAIiETynLW69mMrjVdQ7nQHjHZRJ/r2C29jP
	tJFPKcRSsRb+CckpL1lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZKT-0007SN-9g; Thu, 09 Apr 2020 15:42:57 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZKM-0007Kx-Dy
 for ath10k@lists.infradead.org; Thu, 09 Apr 2020 15:42:54 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586446973; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=HXX12wmUv3R/HEJbd2SH/6l+DxGPnMH2DaiOr0PZbPs=;
 b=hM2zZu354UQqtlZ+oCOXSkoPaFm6Urc8+6I5ZFHHKkP0ZjZlV6w4KxgzMZLi8wIQaGVgmHnA
 +F6TsMHCfJHSv+lIlXzqEmAOxIsrjAP/oxfOguXbIG6nHX35zYvu0nGwKd0Ep9qTPQ6VOZAv
 rhxIZyfo4zrybdxSX2Pd41Zo3qg=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8f4276.7fd2006a5ca8-smtp-out-n01;
 Thu, 09 Apr 2020 15:42:46 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 402F4C44788; Thu,  9 Apr 2020 15:42:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A391FC432C2;
 Thu,  9 Apr 2020 15:42:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A391FC432C2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v9 3/4] ath10k: add htt TX bundle for sdio
References: <20200212080415.31265-1-wgong@codeaurora.org>
 <20200212080415.31265-4-wgong@codeaurora.org>
 <87pncgu2ba.fsf@kamboji.qca.qualcomm.com>
 <36ee3bed6f7cd200df0755209ec6bbc2@codeaurora.org>
Date: Thu, 09 Apr 2020 18:42:41 +0300
In-Reply-To: <36ee3bed6f7cd200df0755209ec6bbc2@codeaurora.org> (Wen Gong's
 message of "Thu, 09 Apr 2020 23:29:20 +0800")
Message-ID: <87lfn4u0lq.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_084253_280545_EE82F7F4 
X-CRM114-Status: GOOD (  11.81  )
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

> On 2020-04-09 23:05, Kalle Valo wrote:
>
>>> +		ep->tx_credits -= credits;
>>> +		ath10k_dbg(ar, ATH10K_DBG_HTC,
>>> +			   "htc ep %d consumed %d credits (total %d)\n",
>>
>> "htc ep %d consumed %d credits total %d\n"
>>
>> [...]
>>
>>> +	ath10k_dbg(ar, ATH10K_DBG_HTC, "bundle skb: len:%d\n",
>>> bundle_skb->len);
>>
>> "htc bundle skb len %d\n"
>>
>> In other words, start with "htc" and don't use colons or parenthesis.
>> This applies to most of debug messages in this patch.
>
> I will change the log and other log and sent v10.
> but "ath10k: disable TX complete indication of htt for sdio" and
> "ath10k: change ATH10K_SDIO_BUS_REQUEST_MAX_NUM from 64 to 1024" has
> appied to ath-next,
> so I only need to send the left 2 patches:
> "ath10k: add htt TX bundle for sdio" and "ath10k: enable alt data of
> TX path for sdio", right?

Correct, I already applied patches 1 and 2. But before you resend
patches 3-4 did you see my question about creating a new thread, is it
really necessary?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
