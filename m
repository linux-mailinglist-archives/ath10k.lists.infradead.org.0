Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDD9108D96
	for <lists+ath10k@lfdr.de>; Mon, 25 Nov 2019 13:11:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6H9QFERr8W/ZWNFJneLyCYcZDHRwq3nTJxpwsT0VSrk=; b=VevY2dQBUYpXmI
	dXVOXPwKD6jN1WiJUALuODdcIbmNh9j3/X47sKtL/PS9gXp4HXr3/bzZvB+Jl3CRJRLYZQfGFsBDd
	4t/30vNgZAhX8czY+02WgeTp5fbPvFrM51Vzrq3elHcijemZwEQ2Fxev4didQ20fSjtAOViujGx58
	b8hvfKc/ppzWu0pKafkHJUGFV1zV/R1lzOYV55BELJdbSy9Z742axSWPxv70lFmL9L1R3EG8q0Bdq
	qUbDb9kYahJzug8K5+HZDAzGvsx7cFWakQTCvXnxBZIBIJbezMQe6EZvZgtaNuRSiehbSLbgsoDcP
	TpiWIPs8Tn4HIoBmPQsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDDD-0003F8-Rg; Mon, 25 Nov 2019 12:11:27 +0000
Received: from a27-55.smtp-out.us-west-2.amazonses.com ([54.240.27.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDD9-0003EU-Ie
 for ath10k@lists.infradead.org; Mon, 25 Nov 2019 12:11:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574683880;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=dZsCIhysheSA6zhrVti9PRmRDfktYhj5NEIj4Sd9LIY=;
 b=Lzfo/6+LYt2Oz/wyrrOXSCiZYS7gwdOC69ycky1A5eoPSppfzeITWZpR2I5H/kFn
 DK0eVdFA5/45HkmMWVBQsSOrs6i5T9TTkc6X1At/nWwTyCwPsU8RLlGdBm4BDtY4tEM
 fls22xJrmTWwU2pUst+kCVtmiIv8XNt25woqn+Rs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574683880;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=dZsCIhysheSA6zhrVti9PRmRDfktYhj5NEIj4Sd9LIY=;
 b=UdsaeiaC1w35zKndv7FhnrdtPqAREsZL1TZ6WmgoR6x7aDzVxHczmdnlMeo6zRGk
 iy0+mSlb8FReu3yBm1HaGilc9VmrWt8AdMGrhllLpt44adIeMEWV6SJJapG+tjb/kTN
 3v3gCRoekcvSsF7q/X8vzGdjFOgc4+pzs/Bu65Oo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C1961C447B4
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: Handle "invalid" BDFs for msm8998 devices
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191113154646.43048-1-jeffrey.l.hugo@gmail.com>
References: <20191113154646.43048-1-jeffrey.l.hugo@gmail.com>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016ea2792d45-af2dde52-a758-4098-9731-63174a2c44f3-000000@us-west-2.amazonses.com>
Date: Mon, 25 Nov 2019 12:11:20 +0000
X-SES-Outgoing: 2019.11.25-54.240.27.55
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_041123_641592_6D87536E 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, linux-arm-msm@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Jeffrey Hugo <jeffrey.l.hugo@gmail.com> wrote:

> When the BDF download QMI message has the end field set to 1, it signals
> the end of the transfer, and triggers the firmware to do a CRC check.  The
> BDFs for msm8998 devices fail this check, yet the firmware is happy to
> still use the BDF.  It appears that this error is not caught by the
> downstream drive by concidence, therefore there are production devices
> in the field where this issue needs to be handled otherwise we cannot
> support wifi on them.  So, attempt to detect this scenario as best we can
> and treat it as non-fatal.
> 
> Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

319c2b71041f ath10k: Handle "invalid" BDFs for msm8998 devices

-- 
https://patchwork.kernel.org/patch/11242143/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
