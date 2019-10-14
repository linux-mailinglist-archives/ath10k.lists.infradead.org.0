Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13376D5DBA
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 10:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Apn0RWicST/jezQ7XtnOgZVLtOhhebxh/uYqq9leXaM=; b=cFsbfcSPKpaPbr
	asKhd1Yk6u6nb5UG7z2SczTbd5vO1wxfm5bjAFAbuKNU+osVd5IANZ0QCKild/GjTInIBigmOoQfW
	rYQrpS6ppUwZnaXJue2VVJg3JWWQ22aQyljj8FG9Fq2ElHsvYTWbCtXkJeTs95gA7CeQhY/gMwgkV
	WZDauVGySR0Ec9jKaBiefKDoAtXpguSCAm29qUd25ywwFyLxs8n+LcB8K5ZIOeZ164qFxJ29s4okm
	zE0uNXVlBwgBe/8eVNjA+FSf5kIW7FkwlxziqPntDkRmFFLZCQegjVkTXvgdia3D+6RLljwhDMm4T
	cmvtG5oLU1YsN13y3ayA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvwr-00036q-7Y; Mon, 14 Oct 2019 08:43:25 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvwl-000369-FT
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 08:43:22 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E7F66606CF; Mon, 14 Oct 2019 08:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571042598;
 bh=b+v/Z3xKQCNgI8FA2qhwpItPU/4+EoZa5vdBKXJu7Fc=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=FbCgSxDesSOLbI/tYaTUJGAk8C0oNdWzflDLq81yRqyMGTZAnLrRx0zV2w7MZI00U
 TGHfEomwrQXWdAvjnX65D28LBbhAg0omEXYOOajETammOUk8JcjPA0YUsdc72/BbFH
 shW0GGa6yjcp4y+4IG+VykdKvZL4PNxskdPP8i8s=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EEC2E605FE;
 Mon, 14 Oct 2019 08:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571042598;
 bh=b+v/Z3xKQCNgI8FA2qhwpItPU/4+EoZa5vdBKXJu7Fc=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=QF0UpIBB3/JJsFHOi/EQclyKEcz2xc996vNvl8g0AF/kONPZd0/3Ww37oiG/V3BWw
 4V6YCPR5Vwc5tZekm0fk1nHb89itprdowO7kmf7hbfOXuhTjlTvarIjHWpfoxt3Oxa
 9x+dXl1ViK44AOPbAuFsChC9Ue5FOya6leZMMtO8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EEC2E605FE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: Correct error handling of dma_map_single()
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191011182817.194565-1-bjorn.andersson@linaro.org>
References: <20191011182817.194565-1-bjorn.andersson@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191014084318.E7F66606CF@smtp.codeaurora.org>
Date: Mon, 14 Oct 2019 08:43:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_014319_550095_D0CB33CA 
X-CRM114-Status: UNSURE (   8.63  )
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 Niklas Cassel <niklas.cassel@linaro.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bjorn Andersson <bjorn.andersson@linaro.org> wrote:

> The return value of dma_map_single() should be checked for errors using
> dma_mapping_error() and the skb has been dequeued so it needs to be
> freed.
> 
> This was found when enabling CONFIG_DMA_API_DEBUG and it warned about the
> missing dma_mapping_error() call.
> 
> Fixes: 1807da49733e ("ath10k: wmi: add management tx by reference support over wmi")
> Reported-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

d43810b2c180 ath10k: Correct error handling of dma_map_single()

-- 
https://patchwork.kernel.org/patch/11186173/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
