Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7398D1C6062
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 20:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tD8SVRrDd9hqVDrZQajZslVl8mARN/+Ndf9wOsTCTLk=; b=tBbojCs2a9jeL9K6ByHziHJZ8
	lL5LPwlkS8fLu+iLPXhY0PmqXMECOmVFC0w9kTMLoxz++ja/OVo+P99lUoo26i+eIRsRDfJO6TYw4
	YqPNy35kYYugLOQbtIWhDMbHFpiabc6to/gF3rfLzpWFk0YNEplmtVeUBXw1twJP/08aA7XiGieYN
	xxWOiESTuDcSvOdj7ggM6dQBLmnf2GLSH9QioJRwWjodvHVn2EnsrDo1ZCudHoZGrvGdwgTabQU4t
	tAHunKb3qxKxvC6GrKKQqnl5hUgCMGuxPrci+oJdncpntZgQAD4FIK+orR6GOhtbjy3zjH8Nofp3O
	VsWKxPSOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW2ZO-0007AL-Bt; Tue, 05 May 2020 18:45:30 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW2ZH-00078a-5z
 for ath10k@lists.infradead.org; Tue, 05 May 2020 18:45:26 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588704325; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=VIAL5M0Rlq1AceCBJqXZI0N+V75qDS1DsnYTy7Bp0gg=;
 b=kQmeS66ULVmSjftR6XrSsCS0wpqiEnGPuV1jTmijCd+Cs9R9SKMnKDCQaWN8MMNF1q2Ih8ls
 8T8zKYFOTwcc1n9HZA6srBIIsHYsHVM0tvq4ZEZl7G+hiQUkUOaTTy32yuD0ce1Av4rgUbEY
 1LVZbNJT/MAydABlybSQATrLtYc=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb1b43c.7f5825f54420-smtp-out-n04;
 Tue, 05 May 2020 18:45:16 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 93C63C433D2; Tue,  5 May 2020 18:45:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: rmanohar)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 60356C433CB;
 Tue,  5 May 2020 18:45:16 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 05 May 2020 11:45:16 -0700
From: Rajkumar Manoharan <rmanohar@codeaurora.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH 1/2] ath10k: use cumulative survey statistics
In-Reply-To: <5194473.9tBAi8KRnL@bentobox>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <2335594.cnkAv9Vaq7@bentobox> <1845755.pTfhzBy2qg@bentobox>
 <5194473.9tBAi8KRnL@bentobox>
Message-ID: <a94c7a62622d46fcb01504027a9374a7@codeaurora.org>
X-Sender: rmanohar@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_114525_635014_A1B9E1F5 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 Markus Theil <markus.theil@tu-ilmenau.de>, ath10k@lists.infradead.org,
 ath11k@lists.infradead.org, kvalo@codeaurora.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-05-05 00:55, Sven Eckelmann wrote:
> On Tuesday, 5 May 2020 09:49:46 CEST Sven Eckelmann wrote:
> [...]
>> See also https://patchwork.kernel.org/patch/9701459/
> 
> And I completely forgot about this one:
> https://patchwork.kernel.org/patch/10417673/
> 
_Me_too_ :) Hope this change is not needed when all drivers report
accumulated values.

-Rajkumar

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
