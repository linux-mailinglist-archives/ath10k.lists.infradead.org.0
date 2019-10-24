Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10424E2E89
	for <lists+ath10k@lfdr.de>; Thu, 24 Oct 2019 12:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GzneWNT9FbAAP5bmbnYiuvx0+KiO0/VCVRZs8qn4HE=; b=b8Wzn8UvcN4P1D
	0ks5Yb2mDEYfEQssQ0JJDkNncMEZ1cwa43aWNqBhTv34GCQijNeGY/oWi5jxi/5sSgBoEPsKGgypq
	HufQaLflO50riN+dj+lGsfuP2IzhHTBK5zNz3rsYk5jVGLsRb0rpj32QmQVOYC8Vk9Ylf3Dm4eXtT
	yM3OUXij2QNrn69F9puCFIQy8l7rkzebtv7Zk1KQQsAbrDm7wHQX1NzBJcj2zaEvrr7DGVHu58ASp
	ehEJkF5+3c5mO/I9GySy0c61x67dV4rBnQ3xDwKhFIgZMcRAp/eNWbrSlOhr6dVaYn4TCqVa5IWvY
	UU3wubWufgA9ebJGcRnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNa8b-00057D-5V; Thu, 24 Oct 2019 10:14:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNa8X-00056p-2s
 for ath10k@lists.infradead.org; Thu, 24 Oct 2019 10:14:34 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 767E76117A; Thu, 24 Oct 2019 10:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571912072;
 bh=rcfSs8cIFoejkuawLusYRRabpv0SXzEfJdHxkao3oJQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=CgsQk4qsZboJDZCirUqHGLo+20n9gY84b7mVpYD6SEczq6MvrW8ccsLxy47CnVmL6
 ClV3gNCvZa+RF5sROlhB2WDj+3aIvKBBlWko9rwJuRHhzArVdVTjxRijeJ0B88WSJ0
 umZR60FkhelwC4vYiH//3kjqmCM5D7C9b2ovkEL4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (unknown [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 52C8660EE7;
 Thu, 24 Oct 2019 10:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571912071;
 bh=rcfSs8cIFoejkuawLusYRRabpv0SXzEfJdHxkao3oJQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=nv2VlTVklRB0f47dEn9xpK0n1yk5u7HJhj98WKUPFF8C8SkdRUZyarziDeQQNErfB
 ld/7vV8Y/42onlrmVhPd4K0Z/8BvXdVNotbA7rux8FS3cS721XK6jqyAeS08ERWPB+
 1T3bLNAS0LqAWpRdaWdtPKmpyVn7h5fxaU2rGpa4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 52C8660EE7
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v6 2/3] ath10k: change max RX bundle size from 8 to 32 for
 sdio
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-3-git-send-email-wgong@codeaurora.org>
 <87r232sdeh.fsf@kamboji.qca.qualcomm.com>
 <c2227ffd5901b03a2874fddb98298e0d@codeaurora.org>
Date: Thu, 24 Oct 2019 13:14:27 +0300
In-Reply-To: <c2227ffd5901b03a2874fddb98298e0d@codeaurora.org> (Wen Gong's
 message of "Thu, 24 Oct 2019 17:40:25 +0800")
Message-ID: <87d0emsb5o.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_031433_170935_CB96E111 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

> On 2019-10-24 17:25, Kalle Valo wrote:
>> Wen Gong <wgong@codeaurora.org> writes:
>>
>>> The max bundle size support by firmware is 32, change it from 8 to 32
>>> will help performance. This results in significant performance
>>> improvement on RX path.
>>>
>>> Tested with QCA6174 SDIO with firmware
>>> WLAN.RMH.4.4.1-00017-QCARMSWPZ-1
>>>
>>> Signed-off-by: Wen Gong <wgong@codeaurora.org>
>>> ---
>>>  drivers/net/wireless/ath/ath10k/htc.h  | 12 +++++++++---
>>>  drivers/net/wireless/ath/ath10k/sdio.c |  4 ++--
>>>  drivers/net/wireless/ath/ath10k/sdio.h |  4 ++--
>>>  3 files changed, 13 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/drivers/net/wireless/ath/ath10k/htc.h
>>> b/drivers/net/wireless/ath/ath10k/htc.h
>>> index f55d3ca..7055156 100644
>>> --- a/drivers/net/wireless/ath/ath10k/htc.h
>>> +++ b/drivers/net/wireless/ath/ath10k/htc.h
>>> @@ -39,7 +39,7 @@
>>>   * 4-byte aligned.
>>>   */
>>>
>>> -#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        8
>>> +#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        32
>>
>> So how do I know that this change doesn't break any other hardware? I
>> did a quick review and I think it's safe, but the commit log mentions
>> nothing about this.
>
> the real max rx bundle is decided in ath10k_htc_wait_target.
> it is the min value of HTC_HOST_MAX_MSG_PER_RX_BUNDLE and the value
> reported from firmware.
> htc->max_msgs_per_htc_bundle =
> 			min_t(u8, msg->ready_ext.max_msgs_per_htc_bundle,
> 			      HTC_HOST_MAX_MSG_PER_RX_BUNDLE);

And we assume that no other firmware than QCA6174 SDIO uses value bigger
than 8? Because if there is a such firmware using, for example, value 9
this might cause a regression.

Anyway, I added this comment to the commit log:

  The real max rx bundle is decided in ath10k_htc_wait_target(), it is
  the min value of HTC_HOST_MAX_MSG_PER_RX_BUNDLE and the value reported
  from firmware. So this change shouldn't cause any regressions with
  other hardware supported by ath10k.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
