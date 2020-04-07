Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E901A0687
	for <lists+ath10k@lfdr.de>; Tue,  7 Apr 2020 07:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLtVBLGG/MYVQM7p6nBvZCOI9SwoAt3z8fU7D204vwE=; b=KK2636OZBWENdU
	1U8J6FwBl8MlNRn+KKqY2qGebjMOhbJaoY2BewZkX9HlrHR/rHb1VcH4tkuYlbqgx3CpB7IFxZe8J
	WpwKA82yw5SckYFimpLhKePMI+1aUPZF81Uh2XyhhV/dS3ATBvf0tUiDkYVLzi//Ts4dnefOJJHNT
	H0TpWkN+8L8oPcgbmHqtGQg9ed2ZXiGu4pe9fsGrQ3QI/iptymbGp7peUIz+7pHdPeo13KIYd3HDI
	uN/340Xk+UxKuiYmnjITHHKO8faB5FWJsqLAAPNr2vrcHZv9CcXX9LHCCHnyTIu3W1jl7lI8ks3jG
	cLnfs+7sncqyfiqR+iWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLglu-000230-QZ; Tue, 07 Apr 2020 05:27:38 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLglq-000228-IT
 for ath10k@lists.infradead.org; Tue, 07 Apr 2020 05:27:36 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586237254; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=R/TYLHzT9rYrI+2mJ2RiF+A6ZAqi7MIncfulqfKTyVY=;
 b=ZWEjtXTQmU5a6/KBmMd7bNVVtvKDrHRw/oIpNHUCyOrkJvVWnReVbsuuGhI7OPnoU26Ql4no
 c3uvDFhzo+hTw9r+fTRTz3pejaRxA8xuisMK9a5+Qk4j7f7ng7L7DNMQ3yQsLEi8hGgcll5i
 HRwlDylQGHA4M4eTOseT9hMTbPE=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8c0f37.7f891c1577d8-smtp-out-n01;
 Tue, 07 Apr 2020 05:27:19 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6F4CAC433D2; Tue,  7 Apr 2020 05:27:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4FB8DC433F2;
 Tue,  7 Apr 2020 05:27:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4FB8DC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/2] ath10k: add ppdu stats support for QCA6174/QCA9377
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <0101016e82883b59-e52fb973-84a7-4c15-a236-c7a01390087b-000000@us-west-2.amazonses.com>
References: <0101016e82883b59-e52fb973-84a7-4c15-a236-c7a01390087b-000000@us-west-2.amazonses.com>
To: Yu Wang <yyuwang@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200407052718.6F4CAC433D2@smtp.codeaurora.org>
Date: Tue,  7 Apr 2020 05:27:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_222734_956961_B0A5C998 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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

Yu Wang <yyuwang@codeaurora.org> wrote:

> When QCA6174/QCA9377 working in station mode, after connected
> to AP, tx bitrate is always '1.0 MBit/s' in output of command
> 'iw wlan0 link'.
> 
> That's because the parameters to calculate the tx bitrate are
> not well updated for QCA6174/QCA9377.
> 
> To fix this issue:
> 1. Add processing for HTT_T2H_MSG_TYPE_PPDU_STATS_IND which includes
>    the peer tx stats;
> 2. Map WMI_TLV_SERVICE_PEER_STATS_INFO to WMI_SERVICE_PEER_STATS to
>    enable the feature.
> 
> Tested with QCA6174 PCIe with firmware WLAN.RM.4.4.1.c3-00031.
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
> 
> Signed-off-by: Yu Wang <yyuwang@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

This has new warnings:

drivers/net/wireless/ath/ath10k/htt_rx.c: In function 'ath10k_htt_process_ppdu_stats':
drivers/net/wireless/ath/ath10k/htt_rx.c:3746:21: warning: variable 'arsta' set but not used [-Wunused-but-set-variable]
drivers/net/wireless/ath/ath10k/htt_rx.c:3751:18: warning: incorrect type in assignment (different base types)
drivers/net/wireless/ath/ath10k/htt_rx.c:3751:18:    expected unsigned char [usertype] num_ppdu
drivers/net/wireless/ath/ath10k/htt_rx.c:3751:18:    got restricted __le32 [usertype] num_ppdu

-- 
https://patchwork.kernel.org/patch/11250999/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
