Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552E61B2565
	for <lists+ath10k@lfdr.de>; Tue, 21 Apr 2020 13:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cviF3gkd0KEtqkHAw2YvYRhA1XwH/Bx+OijoulxOgU=; b=qRl9XhzglzeXVI
	DFLpKLyy5j9/1uWWx4bgvuVfI6AxjJ8vRPJNzlfdXug7TK/JzFAUl89wFaOEhEGiLiCTuZhHEz/lS
	wT0ghc7LxnYXqSxEap3y6oPiaS20WXy3XEJJ0iqd4pLI+0c7NKp6iIaKEUjcGOfUvcReyqGufbgGc
	J8hgS7FckiHW+eCBliXWXQsHy6uD8hnhw1lAjnZOUQmebiyEh2KcrQWZUNCMGLiCbLzP1uO4rBlCf
	Sslf1lX0hrhH6m2T8cqpC6UPuxsMp44jv0Yuqkja2LIMlWJwso5yfsPr5VY9xbqANipzKUkF5CcIl
	Ml/wLlqWgAQIymT0SOYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQrVv-0006NP-JH; Tue, 21 Apr 2020 11:56:31 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQrVq-0006La-Sn
 for ath10k@lists.infradead.org; Tue, 21 Apr 2020 11:56:29 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587470188; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=G3+PSoj9T05goG+BYiZAcgsl5pUCYlPfZcVZroyVYLk=;
 b=f4ny1jWwbGHkOn8esmWXk92wjykUBXuNxnUy3RwpQbBZp45ygQrjy9wm7Oo8rCagBrP0bwd3
 5mAA4a1K3wKZpfoJ19voM9ArY3u8X0IJzUh85vkJlMIE/AZt80/35NIDZUMSsAeRocb0FDf6
 JGH5e+a0gmPw3EdMVuCDCdVrmjo=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9edf61.7f0d04dba068-smtp-out-n04;
 Tue, 21 Apr 2020 11:56:17 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E4C0EC433F2; Tue, 21 Apr 2020 11:56:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 962ACC433D2;
 Tue, 21 Apr 2020 11:56:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 962ACC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v9 3/4] ath10k: add htt TX bundle for sdio
References: <20200212080415.31265-1-wgong@codeaurora.org>
 <20200212080415.31265-4-wgong@codeaurora.org>
 <87tv1su2vq.fsf@kamboji.qca.qualcomm.com>
 <185d31c2e6f8792beb240f2c74d26463@codeaurora.org>
 <87h7xmtrmv.fsf@kamboji.qca.qualcomm.com>
 <87o8rrr4y5.fsf@kamboji.qca.qualcomm.com>
 <27ca9f2bf63807d501cfb29d8f55f904@codeaurora.org>
Date: Tue, 21 Apr 2020 14:56:13 +0300
In-Reply-To: <27ca9f2bf63807d501cfb29d8f55f904@codeaurora.org> (Wen Gong's
 message of "Sat, 18 Apr 2020 22:02:24 +0800")
Message-ID: <871rohoxwi.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_045628_346990_9BB058EB 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

> On 2020-04-16 20:27, Kalle Valo wrote:
>> Kalle Valo <kvalo@codeaurora.org> writes:
>>
>
>>> How much does it drop? Please add the justification (with numbers) for
>>> the new thread to the commit log, so that the reason is properly
>>> documented.
>>
>> I see that you already submitted v10. If you can give the numbers I can
>> add them to the commit log.
>
> I tested for VHT80 mode for 3 thread config:
> result:
>                                      TCP-RX    TCP-TX    UDP-RX
> UDP-TX
> use workqueue_tx_complete(Mbps)        423       357       448       412
> change it to ar->workqueue(Mbps)       410       360       449       414
> change it to ar->workqueue_aux(Mbps)   405       339       446       401

Thanks, I added the table to the commit log.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
