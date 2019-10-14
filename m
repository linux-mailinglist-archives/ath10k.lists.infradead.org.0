Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F45D5D9F
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 10:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lO6IIh9uCLD7hqROhDyRPZRJ1iQ4BoQ9rjxa7vSw3ZU=; b=RdLqN1J0h+RBly
	b7gUKCMZ4PuHnMy0ncT9q9dZ8kVpp7NBN0PcY2KrQg5CW8lW9z4Of9+wJYrgkdxAhFYjSXrHbZzb1
	7fxbGD6dHEs1aiF8HGmSw9RRvUxl9zakmk1+aTCeCxlROEHBV9k7J9NJ1Jj4nkZbQuzbrM5iUP3Y3
	mVuy1qx4qCue8B13sPYUeX9H9BTdtEq+tV9eS4/p57+aA86hTTQn3PrOCgCU2ay87Ch29QziYBrw0
	gjBFYYIqZA0ASzIso/SgQsVGgbmnVj3I2rLUYjwz6ddrUk6D7PNbWHj+f22OiI1n6RwNpim3IFJfB
	ipz8qBCRqWvEc8muMBYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvry-0001GQ-Ha; Mon, 14 Oct 2019 08:38:22 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvrs-0001Dd-08
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 08:38:17 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9E00860953; Mon, 14 Oct 2019 08:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571042295;
 bh=HbjWABwB+H70HYySEKifBK1/BZaxWLgLAPLoOHWAvKI=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=iAidMy5hHB//OkdVKqRpM6zVMK0jbGEfa6pUvp01WK25IhE/yIpl2wwWp1WXhj/SG
 dfgvLuFj6u0LGJeUoVM2jP8+W3zKF17CwhN17Hjqyo3IhBhd+VlvRe6EPXzDq2G4mM
 9f0HPXutlvRdPBlDgS10c1lZRNSluU8yzreHdn7o=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 782F360721;
 Mon, 14 Oct 2019 08:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571042294;
 bh=HbjWABwB+H70HYySEKifBK1/BZaxWLgLAPLoOHWAvKI=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=WjTLtIPVUDpYZo/KSRFm6faJ+JnDsgWSwWCiZlhtFHuW5DPp9pqHlfILe8l9y6x+7
 edLV1dt2PdP0Caf2Jdco80y8TmptLg2OtUEDcp4HuyBnE3w9W/grIlujO+wxdrUAHQ
 DouF62tpYtlk0gbDrgOdb4n9bcUgv81+1JQCuxCw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 782F360721
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] ath10k: fix array out-of-bounds access
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1570609089-22071-1-git-send-email-miaoqing@codeaurora.org>
References: <1570609089-22071-1-git-send-email-miaoqing@codeaurora.org>
To: Miaoqing Pan <miaoqing@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191014083815.9E00860953@smtp.codeaurora.org>
Date: Mon, 14 Oct 2019 08:38:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_013816_125085_612FD98B 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Miaoqing Pan <miaoqing@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Miaoqing Pan <miaoqing@codeaurora.org> wrote:

> If firmware reports rate_max > WMI_TPC_RATE_MAX(WMI_TPC_FINAL_RATE_MAX)
> or num_tx_chain > WMI_TPC_TX_N_CHAIN, it will cause array out-of-bounds
> access, so print a warning and reset to avoid memory corruption.
> 
> Tested HW: QCA9984
> Tested FW: 10.4-3.9.0.2-00035
> 
> Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

2 patches applied to ath-next branch of ath.git, thanks.

c5329b2d5b8b ath10k: fix array out-of-bounds access
486a88498434 ath10k: fix memory leak for tpc_stats_final

-- 
https://patchwork.kernel.org/patch/11180701/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
