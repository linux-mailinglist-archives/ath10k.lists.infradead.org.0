Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDBE13BBDC
	for <lists+ath10k@lfdr.de>; Wed, 15 Jan 2020 10:04:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0wg1LIsJE8JS/IU6mWt48m2pBtEk51HmNG4e2JRrsk=; b=uY/k22kK6BoESq
	xbaUDcVKsszv2fPyL0w7hq6QaYlcNCC+/293ngimOlCwlajQNShX1A9ECbXfSTXddtVGvMlD3WKIe
	623gFatUZpYzboj8g4qOaXN8NniC/7Ce5Bu/f5tm/2STPKbiebc121MWUezxQ6mQHpPe2gOf/Siiy
	Q+VDC9rkpl78Ewr813aQ6CePRpFq7ni08OWaJ165f/y787m4+RMIukzjU3sUNmM0Vna3E6XCtHIr0
	yUdgTA45SS+3RlzfbAbC1wth7i7PqxTOFdKljemrfa8ycQnsgFfZLvNUedV7p20sD3DfUGNzSgkcw
	f8jIZqGzdsEMM5M1Bnbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irebW-0004ae-1t; Wed, 15 Jan 2020 09:04:46 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irebP-0004Zz-JG
 for ath10k@lists.infradead.org; Wed, 15 Jan 2020 09:04:43 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579079077; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=SEmOCijvsdwGF7pEkrg8FPnYkaWi/mjXIm3JEWQ3QPA=;
 b=oAEungZkMESuspNLM5O6OBJEpM3TBugsfHzk1awljHh2llfhE32J02xjbIsBdhl/Apu7ltjr
 ukr+KybiHkeUy2QWlXu368LfAXuDZn09lTKwyU7Ez7+r7Y96I8hHK3yGnu1uF50PrIPybc/b
 3eq4y9elGNXaDrr05TSFYS2VQyE=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e1ed59d.7fcc5be0b4c8-smtp-out-n02;
 Wed, 15 Jan 2020 09:04:29 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4981AC447A1; Wed, 15 Jan 2020 09:04:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E1EFEC43383;
 Wed, 15 Jan 2020 09:04:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E1EFEC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 0/2] ath10k: Enable QDSS clock on sm8150
References: <20191223054855.3020665-1-bjorn.andersson@linaro.org>
 <87zhevsrwk.fsf@codeaurora.org>
Date: Wed, 15 Jan 2020 11:04:22 +0200
In-Reply-To: <87zhevsrwk.fsf@codeaurora.org> (Kalle Valo's message of "Fri, 10
 Jan 2020 09:16:11 +0200")
Message-ID: <87r201xf8p.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_010439_698325_EEB85331 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-arm-msm@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> writes:

> Bjorn Andersson <bjorn.andersson@linaro.org> writes:
>
>> On SM8150 the WiFi firmware depends on the QDSS clock ticking, or the system
>> will reset due to an NoC error. So this adds an optional clock to the ath10k
>> binding and makes sure it's enabled while the WiFi firmware needs it.
>>
>> Bjorn Andersson (2):
>>   ath10k: Add optional qdss clk
>>   arm64: dts: qcom: sm8150: Specify qdss clock for wifi
>>
>>  .../devicetree/bindings/net/wireless/qcom,ath10k.txt          | 2 +-
>>  arch/arm64/boot/dts/qcom/sm8150.dtsi                          | 4 ++--
>>  drivers/net/wireless/ath/ath10k/snoc.c                        | 2 +-
>>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> Via which tree are these supposed to go? I'll take patch 1 and arm
> mantainers take patch 2, or what?

No reply, so I'm planning to take patch 1. Please holler if I
misunderstood.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
