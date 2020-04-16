Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B73A11AC137
	for <lists+ath10k@lfdr.de>; Thu, 16 Apr 2020 14:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VdzbKCxdYDfzF3SiWK47mMBdA+gIOOnIjt9T2j5pRI=; b=ABjTaWmveDXGih
	kxIPM9kB+BPqqelO/AGgRKp1ANIcS2hLNxSCUWUP2t4hev7t5/ofSNamaJ1yEspZYyPkih86pVO5o
	SPY2FsVX+k4lSOeGcZO4d5ljjM0ujj+lcx+v9eQAMaNH6vOYxV2ypVKERGiijEYDulegcLT57m/YS
	t7KlimsVDEBaUqFs/ZsPDd2MSv2djTrF6kA9JRXf1mHWyg2SykmIRH4TE8quuJU4LJMakJpt8xzh7
	IzZKiyOBySqCJ8CfHExEGyGdmrue/6wOWHY/goZxq8/aCivmUQzLaU4AUHgi+ZPfKLPPvifauZ0dy
	dSynbqY1WkRWCQkXKMeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3cb-0006LB-Rx; Thu, 16 Apr 2020 12:27:57 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3cV-0006Ke-HX
 for ath10k@lists.infradead.org; Thu, 16 Apr 2020 12:27:55 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587040073; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=k7W4GgWYMJ6R5M6bMBdI/LAF5r7KyT9fmFnm3V4dJXE=;
 b=BLrgh5wjZkZDVbdMkgQ1A5BRE2UHyZg/i5NpjLbV1VXkscM+i9rVrhJgZIafxDOiDUumh7rZ
 rn3jnwwb3rBxkZmN1ZO4x2V7jaVgVjXJMWn48FIw4MRqnTWEnpgBKI2Xcal+X/0HZEJAU6UA
 tHhpNNIEqj4AnQJFf37XM53Vsoo=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e984f38.7fe93011e880-smtp-out-n02;
 Thu, 16 Apr 2020 12:27:36 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0024CC432C2; Thu, 16 Apr 2020 12:27:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4A4C1C433CB;
 Thu, 16 Apr 2020 12:27:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4A4C1C433CB
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
Date: Thu, 16 Apr 2020 15:27:30 +0300
In-Reply-To: <87h7xmtrmv.fsf@kamboji.qca.qualcomm.com> (Kalle Valo's message
 of "Tue, 14 Apr 2020 11:10:00 +0300")
Message-ID: <87o8rrr4y5.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_052753_592145_EE7D5886 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Kalle Valo <kvalo@codeaurora.org> writes:

> Wen Gong <wgong@codeaurora.org> writes:
>
>> On 2020-04-09 22:53, Kalle Valo wrote:
>>> Wen Gong <wgong@codeaurora.org> writes:
>>>
>>>> +	ar->workqueue_tx_complete =
>>>> +		create_singlethread_workqueue("ath10k_tx_complete_wq");
>>>> +	if (!ar->workqueue_tx_complete)
>>>> +		goto err_free_aux_wq;
>>>
>>> We already have three threads:
>>>
>>> ath/ath10k/core.c:      ar->workqueue =
>>> create_singlethread_workqueue("ath10k_wq");
>>> ath/ath10k/core.c:      ar->workqueue_aux =
>>> create_singlethread_workqueue("ath10k_aux_wq");
>>> ath/ath10k/sdio.c:      ar_sdio->workqueue =
>>> create_singlethread_workqueue("ath10k_sdio_wq");
>>>
>>> Do we really need a fourth one? For example, why can't we use
>>> ar->workqueue_aux?
>>
>> For tcp test, it has 4 thread work meanwhile:
>> tx_bundle_skbs(ar->workqueue),
>> rx_indication(ar->workqueue_aux),
>> sdio_async_tx_request(ar_sdio->workqueue),
>> tx_bundle_complete(ar->workqueue_tx_complete)
>>
>> It has 4+ cpu/core in system, if reduced to 3 threads, then tcp
>> throughput will drop. only when it only has 1/2/3 cpu/core in system,
>> then reduced to 3 threads will not drop.
>
> How much does it drop? Please add the justification (with numbers) for
> the new thread to the commit log, so that the reason is properly
> documented.

I see that you already submitted v10. If you can give the numbers I can
add them to the commit log.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
