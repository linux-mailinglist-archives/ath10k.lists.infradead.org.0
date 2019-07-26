Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B653575F54
	for <lists+ath10k@lfdr.de>; Fri, 26 Jul 2019 08:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2sKonhQDXSF81uVnEQPRa3qL7rgke+MQB2apHVhmJFs=; b=BQdjtGeDh0sgWnv5aNEo4ERND
	lsnKIF8wGv6jx5T7t+QCWkWxD+kU9BSK0WEhXShiI8ZJSoCsV4+q62+zSwE5zSrquWmHVafESp3Qy
	4s9qp68Ieg7GCJTs7yN9yYmEKgpFUfxkVEw9nLngbOont3mNJcQNrqGSsGX+KkIb2N+tiTPFBwWoQ
	FDjWqlTAtR4B4Fe2FLV4L6O1MNBm6E5Vg3SFRXoo9M82P7MraWWcKR9ogI0tU977R39VAWVSOkCRx
	CmWbZj0DNelcqt846ACC/krZ1MWYc1fu8g1YRYnCXAziXRVZw+jK2Ufn7WwwRFnHO0QyRMh8XtLrZ
	0sa9MAZlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqu5g-00066a-4L; Fri, 26 Jul 2019 06:52:32 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqu5b-000660-0R
 for ath10k@lists.infradead.org; Fri, 26 Jul 2019 06:52:28 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 4AA016079C; Fri, 26 Jul 2019 06:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564123946;
 bh=45rlvmxAk80l2YGJDp8L9VwoMC5Accf2bkvFWQ7rH2Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NA/M+FmlpClRlkTxP5Zy4fttP1JfRkirfo1RuR+Ql/DYvDHOwwwhqFM/fSuxetCgT
 Dh7UL0utL4REwCu/PAZIKg9L+/iOPpzq9wB8DxSIqC06mlYEoo2GNUARoiJ/JqLSuj
 2JkICK7NjVKimRsl0Hsvh7Lq2PEfNlGTN8RVI7Es=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id AFF9B606FC;
 Fri, 26 Jul 2019 06:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564123944;
 bh=45rlvmxAk80l2YGJDp8L9VwoMC5Accf2bkvFWQ7rH2Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FzKftfZ8E7sWY3QOPlc74YzWQYB/HV00IrG1WdFtk55IbVpwfHa3kMc3edl3ScdVa
 XjoO4Qkc7Ykg+3smYnlk4kIMirrrcl+GY5OS92CM1BJyCFTfyT1JZAMvcdvtA9guRZ
 W5KeMVsiOXisNNjDsgKiid1w4I6UNuD5z5m7qVSY=
MIME-Version: 1.0
Date: Fri, 26 Jul 2019 12:22:24 +0530
From: Govind Singh <govinds@codeaurora.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 0/3] ath10k: Clean up regulator and clock handling
In-Reply-To: <20190725174755.23432-1-bjorn.andersson@linaro.org>
References: <20190725174755.23432-1-bjorn.andersson@linaro.org>
Message-ID: <196fa4aa63fd5135aead736396fe3f8c@codeaurora.org>
X-Sender: govinds@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_235227_070872_14FCA665 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-07-25 23:17, Bjorn Andersson wrote:
> The first patch in this series removes the regulator_set_voltage() of a 
> fixed
> voltate, as fixed regulator constraints should be specified on a board 
> level
> and on certain boards - such as the Lenovo Yoga C630 - the voltage 
> specified
> for the 3.3V regulator is outside the given range.
> 
> The following two patches cleans up regulator and clock usage by using 
> the bulk
> API provided by the two frameworks.
> 
> Bjorn Andersson (3):
>   ath10k: snoc: skip regulator operations
>   ath10k: Use standard regulator bulk API in snoc
>   ath10k: Use standard bulk clock API in snoc
> 
>  drivers/net/wireless/ath/ath10k/snoc.c | 324 ++++---------------------
>  drivers/net/wireless/ath/ath10k/snoc.h |  26 +-
>  2 files changed, 48 insertions(+), 302 deletions(-)

Tested on 845 MTP and QCS404 platform with normal sanity and driver 
recover cases for proxy votes.

Tested-by: Govind Singh <govinds@codeaurora.org>
Reviewed-by: Govind Singh <govinds@codeaurora.org>

BR,
Govind

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
