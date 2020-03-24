Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9504D191345
	for <lists+ath10k@lfdr.de>; Tue, 24 Mar 2020 15:35:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHccWmFWeX4gKzQ3shoTTaaW23Y+VfGxbnYR4HvgphI=; b=PmBqCOc1DvpDaW
	t2Bsmx6DyyJlhkz5je7OayDrxQ66Iasfei1Vnjs16rUWEn81G39mSw1J1nsJIBnWzqXZiK4wG6CNT
	tDeFLsTgyYJhnkD9L+lKdLlXgABMNnlvx0UrpMEIqOmqAQp3kZlbOaR9tsohtQcv58baiRMoLMdqS
	/jOtuBOhOsErZpMc7SIapcVGi+rM+p71QSSizC3Lqkgcry6zzWDPlmTKQ268MBevWPJ9xOwoG2PAu
	YOtYgTa32iPf+o4RikpyZ+a5dsUfLUj6V74cTOdvtyZ242rlQgiaePi3FUdTU3u7bC9csrMRjM0H1
	n7C7M1tfLy6jGGxAGSAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkeU-0006Y9-DN; Tue, 24 Mar 2020 14:35:34 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkeL-0006Xn-7E
 for ath10k@lists.infradead.org; Tue, 24 Mar 2020 14:35:32 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585060528; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=m+xTwLN7kXvmWs1klmW3KOH+aRnvxWgl729kkLtBtDM=;
 b=AGUVAYqXWg4nrmq7sqELe6tII58mitaFsUi18mJv0oww6NNx3QQ3D9wIZXZVPmbyu6LZiEtf
 b56nfo1EVG0XP2FWLFWIjyCg8IQvu5LOhTEjymfIaX//zgVH+VCFf6qBL81P3CFr6uY/Zzu6
 2B7nLbRVlm5zOpHA37F5y5FNXgQ=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7a1aa6.7f5a0b45f998-smtp-out-n04;
 Tue, 24 Mar 2020 14:35:18 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 836A5C433D2; Tue, 24 Mar 2020 14:35:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BCF07C433CB;
 Tue, 24 Mar 2020 14:35:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BCF07C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Yu Wang <yyuwang@codeaurora.org>
Subject: Re: [PATCH v2 2/2] ath10k: correct legacy rate in tx stats
References: <1574147982-3956-1-git-send-email-yyuwang@codeaurora.org>
 <0101016e82882548-361b3da4-fd9b-4ba9-95b6-a5d782d4a1c8-000000@us-west-2.amazonses.com>
Date: Tue, 24 Mar 2020 16:35:13 +0200
In-Reply-To: <0101016e82882548-361b3da4-fd9b-4ba9-95b6-a5d782d4a1c8-000000@us-west-2.amazonses.com>
 (Yu Wang's message of "Tue, 19 Nov 2019 07:19:50 +0000")
Message-ID: <87lfnp4y8u.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_073530_750264_85C6B36D 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Yu Wang <yyuwang@codeaurora.org> writes:

> When working in station mode, after connected to a legacy
> AP, 11g only, for example, the tx bitrate is incorrect in
> output of command 'iw wlan0 link'.
>
> That's because the legacy tx bitrate value reported by
> firmware is not well handled:
> For QCA6174, the value represents rate index, but treated
> as a real rate;
> For QCA9888, the value is real rate, with unit 'Mbps', but
> treated as '100kbps'.
>
> To fix this issue:
> 1. Translate the rate index to real rate for QCA6174;
> 2. Translate the rate from 'Mbps' to 'kbps' for QCA9888.
>
> Tested with:
> QCA6174 PCIe with firmware WLAN.RM.4.4.1.c3-00031.
> QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
> QCA9888 PCIe with firmware 10.4-3.9.0.2-00040.

What about QCA988X and WCN3990, how do they behave? Does this patch
break those?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
