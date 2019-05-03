Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7767912836
	for <lists+ath10k@lfdr.de>; Fri,  3 May 2019 08:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D+HkgKHKgEU7XbXnjXD5j4N71SzULkKnHzjzO/VcbU0=; b=SEP2NXd1U/j0FuWhNA1Z5qBp8
	gA8VrbSQsSdY5kn7ikmpcXI4I4JT0SQJaM94VUG4hvIpix9hcdrnqsjctWM8iALE1LhwW81XgUejA
	aaqV+6lUpkpkF+PSY9HTG8QbTSnsqVkJh/86L8grbSU/a9KdAwsOz78+SSohNBZaOcqGsAgJECojQ
	EaxsRfPf+oinOlmKBqcRnkRjPns6R7aEjt09S8fGu4Znd2V1V197wk8sA326s+gGT+IBJlns2GpME
	Yt1byrC+D/kxvBLJxfnjRRyNugeSM+N2fZKv3QChwu++KBXP2Yx3a/shOT62D9y3qV1syWO8qNF3E
	0V8F3yMnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMS7Z-0004IY-22; Fri, 03 May 2019 06:56:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMS7V-0004Hm-SF
 for ath10k@lists.infradead.org; Fri, 03 May 2019 06:56:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 223236016D; Fri,  3 May 2019 06:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556866592;
 bh=CKHYLK4DMOav1+dBN3bvyTVHIGXKptSbPxL7DAcePzI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Y3x+RF2CrIkrTqH4OK3peMC46gbx738q1D2rRA8IgydlI14YBhL6E8imPck2M3pHi
 0YFVw42aMovTJY/0uO0Az8C+FpfgC29Qz2kYF5lMTMedsZvd0g9W5dVXmkuOV6fXEI
 4HcLUQ6H5ZgYH8BAJg9UOqSYnwtlrkXbQftLNY58=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id A836C60A42;
 Fri,  3 May 2019 06:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556866591;
 bh=CKHYLK4DMOav1+dBN3bvyTVHIGXKptSbPxL7DAcePzI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Xacl/NGWlsu3lN4nf1razueereOTFaSruNhtKUKQzv5g4jW+Y00Ed4kjNvQcg6PsH
 DB2PELOW96ZqoXoIobU56ZH+sXINMCkfru6DUlUVizk5ihD55uN3mxf6wYG//w7xn2
 vBUIORBsCkO5ePnNsxHYI0QFDAqayv8JziD8Rw0k=
MIME-Version: 1.0
Date: Fri, 03 May 2019 12:26:31 +0530
From: Rakesh Pillai <pillair@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH 1/2] ath10k: Fix rate table updation in tx stats
In-Reply-To: <20190503060032.23F1C61195@smtp.codeaurora.org>
References: <1552319602-17795-2-git-send-email-pillair@codeaurora.org>
 <20190503060032.23F1C61195@smtp.codeaurora.org>
Message-ID: <edfbff30627849996b0597b964ed018c@codeaurora.org>
X-Sender: pillair@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_235633_933090_259AFD04 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Hi Kalle,

This set of patches is dependent on 
https://patchwork.kernel.org/patch/10831319/
I can send out v2 for this patchset, marking the dependency, if needed.

Thanks,
Rakesh Pillai.


On 2019-05-03 11:30, Kalle Valo wrote:
> Rakesh Pillai <pillair@codeaurora.org> wrote:
> 
>> The index for updating rate table, which is displayed
>> in the tx stats via debugfs, is calculated using the
>> bandwidth value. The bandwidth values do not map
>> correctly with the bandwidth values shown in the rate table.
>> 
>> Correct the bandwidth value calculation which is used
>> to calculate the index for rate table updation for tx stats.
>> 
>> Tested HW: WCN3990
>> Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
>> 
>> Fixes: e88975ca37d1 ("ath10k: dump tx stats in rate table format")
>> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> 
> Fails to compile:
> 
> drivers/net/wireless/ath/ath10k/htt_rx.c: In function
> 'ath10k_accumulate_per_peer_tx_stats':
> drivers/net/wireless/ath/ath10k/htt_rx.c:3252:14: error: implicit
> declaration of function 'ath10k_get_bw'; did you mean
> 'ath10k_get_tid'? [-Werror=implicit-function-declaration]
>   rtable_bw = ath10k_get_bw(&ar->hw_params, pstats->flags);
>               ^~~~~~~~~~~~~
>               ath10k_get_tid
> cc1: some warnings being treated as errors
> make[5]: *** [drivers/net/wireless/ath/ath10k/htt_rx.o] Error 1
> make[4]: *** [drivers/net/wireless/ath/ath10k] Error 2
> make[3]: *** [drivers/net/wireless/ath] Error 2
> make[2]: *** [drivers/net/wireless] Error 2
> make[1]: *** [drivers/net] Error 2
> make[1]: *** Waiting for unfinished jobs....
> make: *** [drivers] Error 2
> 
> 2 patches set to Changes Requested.
> 
> 10847733 [1/2] ath10k: Fix rate table updation in tx stats
> 10847737 [2/2] ath10k: Fix NSS tx stats for legacy rates

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
