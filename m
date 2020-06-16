Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5551FAACA
	for <lists+ath10k@lfdr.de>; Tue, 16 Jun 2020 10:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XExNME/FTtzbMCgbBVcnMrESWHrN0ac5LPys1s2NsYI=; b=kO9UJrXrmBxRMZ
	gM9IKQffi4oeu9vGU12RJuzTEQXbCcijbAKW/RGuG+3iXv8BTHhvuYHDtU8tYBB/MQDf0JbH0JETp
	3ZQl7X/Pf8gi5PfaJ0MizIoI30PNvvHhemQo7kajVV6E4sUFr4VZhY8dFI0e9RnIhysJCQzTJFofB
	yFULFBp3O09mgxGxKWboS7FROwLiaYOVT4e1pmLOmhyfPeTK5QGgUBirk1WAk+XvxdWXctKgbGBWW
	NIz1HZwhm3GN4jYLtZCwW4VR9UmqhcL5DQoUwTpqgq2Howtv8wsnureGesRdgh3Ur2mf5pxcUR/yk
	fa5Tfvtdz3DJi3QCVa0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6h2-00021Z-7l; Tue, 16 Jun 2020 08:11:40 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6gy-00021A-AU
 for ath10k@lists.infradead.org; Tue, 16 Jun 2020 08:11:37 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592295095; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=9+bNEyX9TKpnegMA6tNmg75S3hpqEiep0k8ONIAoA/c=;
 b=GnzRpPYdvLT+pUBx3tZfTGCgif7M3PljKHHTcPOSDluxpsMGFh8TuwITZp32DEqKsZOm4ZPk
 1pz6ZUKg1PPetLeeLt1+wkkMcUffMDhQd1RNZfJEp5JAkvkHw2dbsKifLCieMlk4LWMiM8UQ
 r7FbA6n6z3ssDGj/CikKC8foCso=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 5ee87eb66f2ee827da3deac9 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 16 Jun 2020 08:11:34
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7D1A2C43391; Tue, 16 Jun 2020 08:11:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3F846C433C8;
 Tue, 16 Jun 2020 08:11:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3F846C433C8
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Wait until copy complete is actually done before
 completing
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200609082015.1.Ife398994e5a0a6830e4d4a16306ef36e0144e7ba@changeid>
References: <20200609082015.1.Ife398994e5a0a6830e4d4a16306ef36e0144e7ba@changeid>
To: Douglas Anderson <dianders@chromium.org>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200616081134.7D1A2C43391@smtp.codeaurora.org>
Date: Tue, 16 Jun 2020 08:11:34 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_011136_426360_1B3D913F 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
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
Cc: saiprakash.ranjan@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-wireless@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 ath10k@lists.infradead.org, linux-kernel@vger.kernel.org,
 pillair@codeaurora.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 kuabhs@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Douglas Anderson <dianders@chromium.org> wrote:

> On wcn3990 we have "per_ce_irq = true".  That makes the
> ath10k_ce_interrupt_summary() function always return 0xfff. The
> ath10k_ce_per_engine_service_any() function will see this and think
> that _all_ copy engines have an interrupt.  Without checking, the
> ath10k_ce_per_engine_service() assumes that if it's called that the
> "copy complete" (cc) interrupt fired.  This combination seems bad.
> 
> Let's add a check to make sure that the "copy complete" interrupt
> actually fired in ath10k_ce_per_engine_service().
> 
> This might fix a hard-to-reproduce failure where it appears that the
> copy complete handlers run before the copy is really complete.
> Specifically a symptom was that we were seeing this on a Qualcomm
> sc7180 board:
>   arm-smmu 15000000.iommu: Unhandled context fault:
>   fsr=0x402, iova=0x7fdd45780, fsynr=0x30003, cbfrsynra=0xc1, cb=10
> 
> Even on platforms that don't have wcn3990 this still seems like it
> would be a sane thing to do.  Specifically the current IRQ handler
> comments indicate that there might be other misc interrupt sources
> firing that need to be cleared.  If one of those sources was the one
> that caused the IRQ handler to be called it would also be important to
> double-check that the interrupt we cared about actually fired.
> 
> Tested-on: WCN3990 SNOC WLAN.HL.3.2.2-00490-QCAHLSWMTPL-1
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

8f9ed93d09a9 ath10k: Wait until copy complete is actually done before completing

-- 
https://patchwork.kernel.org/patch/11595887/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
