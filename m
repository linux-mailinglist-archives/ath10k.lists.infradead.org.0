Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F3F1C38A3
	for <lists+ath10k@lfdr.de>; Mon,  4 May 2020 13:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STXvDulm9Didxcb67BpOIIVNK3vFJ8G+vo9q6UARnO0=; b=gq+R3+uzt7FJx+
	dNNbwfpxQJF4/U8l4pC3PajjynFDoSAANVHM4i5vIEiowCh/aNn+2vc719ax50baGIpV3NrscBxzm
	mIvl9h6Ir8P/g0PtBG1b14VeiQKMtUACPxPE3vM0gYIy8lS+vLeGvX2QHMIdKfwuOUYyqoi+T5jsU
	bPmzqsjfjDjKBuqTHePhEKCOKsKOR6XzCgR0yVmgp++KU5cADLPZiHmTaqLDVkezWTF5IC1HQNt68
	IPF0VNdrUmyV0RBpxAYFT8Dex7zd4Jm+VtQrMJpFoO/i1DBQmkZYFvhfEkJvBuPPtctFuhcwzD7M5
	hC0vCghTZlZQVNS2uQPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZg2-0008II-JJ; Mon, 04 May 2020 11:54:26 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZfx-0008HE-9l
 for ath10k@lists.infradead.org; Mon, 04 May 2020 11:54:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588593261; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=r4Vq94vENugKRBMOinIfOx4dU8whdhitU1epPdspy+o=;
 b=OJ6XJTengTNMKL2qere0VcAzAsLU8vqJGBuGbf2rhOfG8KiTxppnHH+yosOQbpI1nkmGgJVM
 /ARxxXspnWVBTBbvC+owTOe9V6fN/ksaF1Yklag+svFG6TS/yLCNFkkiSWymtOssRZilYYmB
 HChgtau7WIms+VQkQzmh9EUqodQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb0026c.7f38685135a8-smtp-out-n01;
 Mon, 04 May 2020 11:54:20 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4B48DC433D2; Mon,  4 May 2020 11:54:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7EF2AC433D2;
 Mon,  4 May 2020 11:54:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7EF2AC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH 04/15] ath10k: fix gcc-10 zero-length-bounds warnings
References: <20200430213101.135134-1-arnd@arndb.de>
 <20200430213101.135134-5-arnd@arndb.de>
 <49831bca-b9cf-4b9a-1a60-f4289e9c83c0@embeddedor.com>
Date: Mon, 04 May 2020 14:54:13 +0300
In-Reply-To: <49831bca-b9cf-4b9a-1a60-f4289e9c83c0@embeddedor.com> (Gustavo A.
 R. Silva's message of "Thu, 30 Apr 2020 16:45:32 -0500")
Message-ID: <87368flxui.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_045421_473589_FFBB6872 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Erik Stromdahl <erik.stromdahl@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, Michal Kazior <michal.kazior@tieto.com>,
 Wen Gong <wgong@codeaurora.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

"Gustavo A. R. Silva" <gustavo@embeddedor.com> writes:

> Hi Arnd,
>
> On 4/30/20 16:30, Arnd Bergmann wrote:
>> gcc-10 started warning about out-of-bounds access for zero-length
>> arrays:
>> 
>> In file included from drivers/net/wireless/ath/ath10k/core.h:18,
>>                  from drivers/net/wireless/ath/ath10k/htt_rx.c:8:
>> drivers/net/wireless/ath/ath10k/htt_rx.c: In function 'ath10k_htt_rx_tx_fetch_ind':
>> drivers/net/wireless/ath/ath10k/htt.h:1683:17: warning: array subscript 65535 is outside the bounds of an interior zero-length array 'struct htt_tx_fetch_record[0]' [-Wzero-length-bounds]
>>  1683 |  return (void *)&ind->records[le16_to_cpu(ind->num_records)];
>>       |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/wireless/ath/ath10k/htt.h:1676:29: note: while referencing 'records'
>>  1676 |  struct htt_tx_fetch_record records[0];
>>       |                             ^~~~~~~
>> 
>> The structure was already converted to have a flexible-array member in
>> the past, but there are two zero-length members in the end and only
>> one of them can be a flexible-array member.
>> 
>> Swap the two around to avoid the warning, as 'resp_ids' is not accessed
>> in a way that causes a warning.
>> 
>> Fixes: 3ba225b506a2 ("treewide: Replace zero-length array with flexible-array member")
>> Fixes: 22e6b3bc5d96 ("ath10k: add new htt definitions")
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>> ---
>>  drivers/net/wireless/ath/ath10k/htt.h | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
>> index e7096a73c6ca..7621f0a3dc77 100644
>> --- a/drivers/net/wireless/ath/ath10k/htt.h
>> +++ b/drivers/net/wireless/ath/ath10k/htt.h
>> @@ -1673,8 +1673,8 @@ struct htt_tx_fetch_ind {
>>  	__le32 token;
>>  	__le16 num_resp_ids;
>>  	__le16 num_records;
>> -	struct htt_tx_fetch_record records[0];
>> -	__le32 resp_ids[]; /* ath10k_htt_get_tx_fetch_ind_resp_ids() */
>> +	__le32 resp_ids[0]; /* ath10k_htt_get_tx_fetch_ind_resp_ids() */
>> +	struct htt_tx_fetch_record records[];
>>  } __packed;
>>  
>>  static inline void *
>> 
>
> The treewide patch is an experimental change and, as this change only applies
> to my -next tree, I will carry this patch in it, so other people don't have
> to worry about this at all.

Gustavo, why do you have ath10k patches in your tree? I prefer that
ath10k patches go through my ath.git tree so that they are reviewed and
tested.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
