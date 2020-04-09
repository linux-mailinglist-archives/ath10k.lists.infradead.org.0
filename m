Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BFB1A372E
	for <lists+ath10k@lfdr.de>; Thu,  9 Apr 2020 17:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZGmkwU78fnucqrzjOyZf3xg4+5F7sGNvUgPiPX5oGUg=; b=FuIAFN3SonhfO12r3kcfpUbbU
	d15mGAuxMeUPDw3SnVOxk1zO3mNPrYjFN58WN8JAerq8TQfNsSonwodrJXmfimCQyjrSbhpwataXO
	bYKndt4nZWeaRmLnKp82d0VvXETzIKtkxsDw7rxqNWm5F7gsWviBExsj+PlepRUz5YlBT3BhjsCml
	ajXy8aqlstf01pX7F1cGrkP4+uQK1/4ETw94qfQfrgcPOA9LueXncX9dKzZHvuzgO6EphtbmtVX8A
	L6RHbflPIshJWbZBy8jZMmpqFdCcxLaH6D4gH2Uw73vHcsJ+XWgJ/RTkv2Rs2qJEJGPUbtB5nLgKz
	A/Uqmsl/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZ7l-0006vD-VZ; Thu, 09 Apr 2020 15:29:49 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZ7e-0006u8-2i
 for ath10k@lists.infradead.org; Thu, 09 Apr 2020 15:29:47 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586446183; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=brs+hk/3j/GuFd9f10w+AYVvFGTMbGIG4zlFOTxpyww=;
 b=XRbkClzRA7u3rZuxtnAiw4g3aa11ZJ3pmPMYR8i1HlMpXNzmc7ncgcS59QjfaD0IPSOxnRGo
 F2AYgHM10WSsEL+rOP8ZaoFGpX5A/9VBobLioKPfuz+zyWNzLIvm1gp8h/VpjRxALhJRHbNV
 UHWsEK5nUk85kig1d1s1aHmDbUk=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8f3f53.7fe55a2c0148-smtp-out-n01;
 Thu, 09 Apr 2020 15:29:23 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DE42CC432C2; Thu,  9 Apr 2020 15:29:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 73877C433CB;
 Thu,  9 Apr 2020 15:29:20 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 09 Apr 2020 23:29:20 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v9 3/4] ath10k: add htt TX bundle for sdio
In-Reply-To: <87pncgu2ba.fsf@kamboji.qca.qualcomm.com>
References: <20200212080415.31265-1-wgong@codeaurora.org>
 <20200212080415.31265-4-wgong@codeaurora.org>
 <87pncgu2ba.fsf@kamboji.qca.qualcomm.com>
Message-ID: <36ee3bed6f7cd200df0755209ec6bbc2@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_082943_134917_42BDC3EC 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-04-09 23:05, Kalle Valo wrote:

>> +		ep->tx_credits -= credits;
>> +		ath10k_dbg(ar, ATH10K_DBG_HTC,
>> +			   "htc ep %d consumed %d credits (total %d)\n",
> 
> "htc ep %d consumed %d credits total %d\n"
> 
> [...]
> 
>> +	ath10k_dbg(ar, ATH10K_DBG_HTC, "bundle skb: len:%d\n", 
>> bundle_skb->len);
> 
> "htc bundle skb len %d\n"
> 
> In other words, start with "htc" and don't use colons or parenthesis.
> This applies to most of debug messages in this patch.
I will change the log and other log and sent v10.
but "ath10k: disable TX complete indication of htt for sdio" and
"ath10k: change ATH10K_SDIO_BUS_REQUEST_MAX_NUM from 64 to 1024" has 
appied to ath-next,
so I only need to send the left 2 patches:
"ath10k: add htt TX bundle for sdio" and "ath10k: enable alt data of TX 
path for sdio", right?

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
