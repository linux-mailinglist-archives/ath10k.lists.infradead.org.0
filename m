Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72221A359B
	for <lists+ath10k@lfdr.de>; Thu,  9 Apr 2020 16:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9s+gEZIVH3MaWfFy/r3+U4ufEP5F6bbqB344R3flDWw=; b=uK5ufRMBaRjWLQ
	veVMVxXsmSF49eABaMVFlaZuNWlOKychCxBiSc57GVadjDpjGZQPIyJy742lVx8PBbGW7v0t1gqdr
	rOGkqeQczLX5+5qSM8Nq6xoR0gU9Xh9B/kYW54nNzqeY5imTDpTgEXUgSkTllr/TpbRwfy2B/U9Jg
	P5XKDaP9thJeg6xi6NcJVd/NepTTEJWff+21cEVJ/dJLZjvvdpRashZMhYaQqTGjB0ar40UBR+dFT
	OKpFDBCqLB12vPpFKjhcCinMO929sK7Pyv7HILjA3iC8DNLN314rqzKU+nS/5cpQ/jroN7ePjsjqA
	hMhBfIEuSkOtMrIQZerg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXwY-0001vZ-7T; Thu, 09 Apr 2020 14:14:10 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXwT-0001rn-HQ
 for ath10k@lists.infradead.org; Thu, 09 Apr 2020 14:14:07 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586441641; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=oA2QVf0tNPtlNkAxOEoOHVKhyFVXRF/JetkMbIVl7Js=;
 b=dGdwYTd6vAey330RTfAnpf7Ln6LzLMFB6WJ9EFTIwqfdYnyT2/p4svcPdNDM3T58oo6LLlSw
 3gXzV7Mk9JuBzdk35b97doCgnpOePlN5y3PqmrF1d99WEs2P4QpWhDiyaZ0HpjIn2S2MJV44
 wAL2VGdCUJuwVHORK5wCeV+pxHY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8f2d98.7f6a61ad0c00-smtp-out-n05;
 Thu, 09 Apr 2020 14:13:44 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CE527C433BA; Thu,  9 Apr 2020 14:13:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D8EFDC433CB;
 Thu,  9 Apr 2020 14:13:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D8EFDC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Yu Wang <yyuwang@codeaurora.org>
Subject: Re: [PATCH v2 2/2] ath10k: correct legacy rate in tx stats
References: <1574147982-3956-1-git-send-email-yyuwang@codeaurora.org>
 <0101016e82882548-361b3da4-fd9b-4ba9-95b6-a5d782d4a1c8-000000@us-west-2.amazonses.com>
 <87h7yd4y0a.fsf@kamboji.qca.qualcomm.com>
Date: Thu, 09 Apr 2020 17:13:39 +0300
In-Reply-To: <87h7yd4y0a.fsf@kamboji.qca.qualcomm.com> (Kalle Valo's message
 of "Tue, 24 Mar 2020 16:40:21 +0200")
Message-ID: <87y2r4u4q4.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_071405_640595_1C1787AE 
X-CRM114-Status: GOOD (  13.05  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

For some reason these comments didn't go to patchwork so resending them
again:

Kalle Valo <kvalo@codeaurora.org> writes:

> Yu Wang <yyuwang@codeaurora.org> writes:
>
>> +	for (i = 0; i < sband->n_bitrates; i++) {
>> +		bitrates = &sband->bitrates[i];
>> +		if (ath10k_mac_bitrate_is_cck(bitrates->bitrate) != cck)
>> +			continue;
>> +
>> +		if (bitrates->hw_value == hw_rate ||
>> +		    (bitrates->flags & IEEE80211_RATE_SHORT_PREAMBLE &&
>> +		     bitrates->hw_value_short == hw_rate)) {
>> +			bitrate = bitrates->bitrate;
>> +
>> +			/* The bitrate will be recovered in
>> +			 * ath10k_update_per_peer_tx_stats().
>> +			 */
>> +			if (bitrate == 55)
>> +				bitrate = 60;
>> +
>> +			bitrate = bitrate / 10;
>
> Here you use magic value 60 but in ath10k_update_per_peer_tx_stats() you
> use magic value 50:
>
>> +		/* from 1Mbps to 100Kbps */
>> +		rate = rate * 10;
>> +		if (rate == 50)
>> +			rate = 55;
>
> Am I missing something or how is this supposed to work?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
