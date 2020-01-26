Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5983149A0A
	for <lists+ath10k@lfdr.de>; Sun, 26 Jan 2020 11:25:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TynBq7kHbMXzPWfvBCUH5KgsdrvBGiwPHj+cRq7CMGA=; b=KTAQIxkfh2Pi8c
	J6AcHO/XBJqCU09An8dSD5TSccbS+cvPEyXc9rd3hLP4Zhk61BJVgMg6VyIEbmiTmawbPKmHiOJ4D
	4Ecnc6wv+a2cl6Ku9uuSIvWkoEcXeHm3Gcts4YEn/j55WXiCy9/3Kf7aUBgSoFt/MmZJhWOgXC1+K
	NEAUEI0++86s8kPKwqGPMN9dhQLniyx7TAfBCSOyDbnjMubZHk7Wpw9SbjgfxgiXnqcGcl8/wXyOx
	SFE4QDR2j1qjcOnFp0soiIh5FhEecs1vxFZLq5GFiEKHQSga8PsMOrnmAVcMmxtWqZXpX1jWNlW4T
	/DOlCgnxcxcWVO6LgItg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivf6h-0003uQ-8u; Sun, 26 Jan 2020 10:25:31 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivf6b-0002TV-GK
 for ath10k@lists.infradead.org; Sun, 26 Jan 2020 10:25:28 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580034327; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=0ODxYEpthZoVUaWLihId/bFGPfX3PA2tr9ipVMmLvpw=;
 b=DOa/ug069g3QyLq8lNfzBRt/af7DOfJb4STsq6dmhcOvA+RQLKTApqWfdA2IbVY7C7Ck4BZO
 1cNhxFCtviWDI4Quve7TKFVO/lNjhV2YZxnAxrg26ZqsWT8Txf1elHm9vMYCIyZSLX6uOgFu
 LyEP36BgqW7gSiDjgQ0gKjUybPU=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2d6912.7f8efe1d3618-smtp-out-n02;
 Sun, 26 Jan 2020 10:25:22 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BC7FFC433CB; Sun, 26 Jan 2020 10:25:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C4CF4C433CB;
 Sun, 26 Jan 2020 10:25:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C4CF4C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] ath10k: Add optional qdss clk
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191223054855.3020665-2-bjorn.andersson@linaro.org>
References: <20191223054855.3020665-2-bjorn.andersson@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200126102521.BC7FFC433CB@smtp.codeaurora.org>
Date: Sun, 26 Jan 2020 10:25:21 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_022527_125670_3D56BD37 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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

Bjorn Andersson <bjorn.andersson@linaro.org> wrote:

> The WiFi firmware found on sm8150 requires that the QDSS clock is
> ticking in order to operate, so add an optional clock to the binding to
> allow this to be specified in the sm8150 dts and add the clock to the
> list of clocks in the driver.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

57a3b60ddbfa ath10k: Add optional qdss clk

-- 
https://patchwork.kernel.org/patch/11307779/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
