Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F6D136815
	for <lists+ath10k@lfdr.de>; Fri, 10 Jan 2020 08:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cWj+eKIPdnLJ6oyWclxc3SA2stYqL54yT/YGNtm9rcM=; b=QLhrxTEPo1R/gz
	/QZyM3whBifhesjba0I1LZ01OuWM6ixbp4VVpOYCF0QP+8WgpR2+JuwRQ74EX9ir4a0BJZY6NLdTP
	WOUKRkyyfn1ovmysIrngNnxsA6M+LAOjRkeSbMKhJTvzy2BHI943sBkT0h1LGmaroBNmfVEjnvgOa
	NG4PM9C9300cEsaaDsppuH5zQca18KEL+F8F1RZatJDfcsPRRTlEOQPzk9uCYMrk1NpyGCLxq0Djb
	1vODYOqm6oDdQhDKMEeJ8wByl81Sz+nUBBSs2Lg6XcRp9/aeb3l3HzIafmHHI8j9IrVFHiDv02IvU
	l9qCh9onNaVphkOU/EKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipoWt-0003Zu-C4; Fri, 10 Jan 2020 07:16:23 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipoWp-0003YV-Bq
 for ath10k@lists.infradead.org; Fri, 10 Jan 2020 07:16:21 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578640578; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=+T5bfhKwhIRutpNEoM3STa+mJOWH/4Y71kETTJnBQZM=;
 b=c0XSGiUB/9Kl6pmWeJkOsNngGn//k9ixYyJnQyLRH6UVKrcQ4yuRwjYjxKrHApTqN9w2FD0K
 1gmFnPNnXmviFRBFL20OwHSafj+EeJNHrgNwyaI+DPyHsk0vNVqJEvbcotfgqftDY0ttTGUw
 eYXLJ12EYqTAxITAZcD5l8WqdaI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e1824c0.7fb83943b458-smtp-out-n01;
 Fri, 10 Jan 2020 07:16:16 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C6ADCC447A1; Fri, 10 Jan 2020 07:16:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8F5E8C433CB;
 Fri, 10 Jan 2020 07:16:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8F5E8C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 0/2] ath10k: Enable QDSS clock on sm8150
References: <20191223054855.3020665-1-bjorn.andersson@linaro.org>
Date: Fri, 10 Jan 2020 09:16:11 +0200
In-Reply-To: <20191223054855.3020665-1-bjorn.andersson@linaro.org> (Bjorn
 Andersson's message of "Sun, 22 Dec 2019 21:48:53 -0800")
Message-ID: <87zhevsrwk.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_231619_471386_01C03E75 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, ath10k@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bjorn Andersson <bjorn.andersson@linaro.org> writes:

> On SM8150 the WiFi firmware depends on the QDSS clock ticking, or the system
> will reset due to an NoC error. So this adds an optional clock to the ath10k
> binding and makes sure it's enabled while the WiFi firmware needs it.
>
> Bjorn Andersson (2):
>   ath10k: Add optional qdss clk
>   arm64: dts: qcom: sm8150: Specify qdss clock for wifi
>
>  .../devicetree/bindings/net/wireless/qcom,ath10k.txt          | 2 +-
>  arch/arm64/boot/dts/qcom/sm8150.dtsi                          | 4 ++--
>  drivers/net/wireless/ath/ath10k/snoc.c                        | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)

Via which tree are these supposed to go? I'll take patch 1 and arm
mantainers take patch 2, or what?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
