Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3550216501
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 15:51:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoXSElsqo2Ustb87YplSc1o/4RdypNsJmJKs6Skfo7A=; b=Fc6XzQUiLdPY7U
	40jefhB+779k84qaeAchXjnM6QzzAIt6ku1cy1vDgt1q7jwMlP9013dmER71jjCiwJrmGPjsFJcEw
	8Rhom61/Rb89G7oaSl9jYoJv8mW/oJrc/bR6kwMCPi0E/cFMrhoY95OkVTa6Zit6mpBK8hp4hjiwn
	wBvU0GL8YoP2S0W/v2X/qXg2ZwX77Yc+lDRtFLuKTAa/XuC4LY8M/dfOq5xFn97tGaggLOJP+AXTE
	gOP9oI1NDJAaPYcAUZw/C+szUJfsVlkPcyP6peEhN2pJQ3gf1l6mDeuzubrZBSCXXgTbuLEacSrgC
	eMLKiUQi+IRacnitPQXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0VS-0002BF-A1; Tue, 07 May 2019 13:51:42 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0VM-00023i-PW
 for ath10k@lists.infradead.org; Tue, 07 May 2019 13:51:39 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 391B76137D; Tue,  7 May 2019 13:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237096;
 bh=VRC3o28GRsYmFCcZSYL/tdVa0+t/wmCKtg6bTuKqrqM=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=O/Vdq8yae3zjI0TwkK4KK7xi8o8I71QBOELSluDUhbPH0/BLU2KsPZTZ1MAyfEqY+
 +HtVGXBXQBxs/zNfge9wSoyifLLrd175SPiKRRgO0BIg26vF/QmbZ5vTD5Eibjd8iI
 wy4U7Uw22V9R9ITUkwxhMQgD6jGG5+xTM7xQeLlg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5352560350;
 Tue,  7 May 2019 13:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237094;
 bh=VRC3o28GRsYmFCcZSYL/tdVa0+t/wmCKtg6bTuKqrqM=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=KjR+7FM1BokmxLrADzBIQsJPC2mLWq1u9iRPvlGHpVnBpuwFxCu2gPJBfVc7XzP9R
 x5VBR9UZV2/i/938akRtnlg7zOdSYtEZi7xFJ8mv11rGGtXNc8xeEPge5F4PNtZw34
 vSUXze4oRVrOH5vSVgLdJ/NvRkEJcC6ekFe4zPsE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5352560350
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH][next] ath10k: Use struct_size() helper
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190403172029.GA302@embeddedor>
References: <20190403172029.GA302@embeddedor>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190507135136.391B76137D@smtp.codeaurora.org>
Date: Tue,  7 May 2019 13:51:36 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065137_275352_02D45E98 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

"Gustavo A. R. Silva" <gustavo@embeddedor.com> wrote:

> Make use of the struct_size() helper instead of an open-coded version
> in order to avoid any potential type mistakes, in particular in the
> context in which this code is being used.
> 
> So, change the following form:
> 
> sizeof(*rx) + (sizeof(struct htt_rx_indication_mpdu_range) * num_mpdu_ranges)
> 
>  to :
> 
> struct_size(rx, mpdu_ranges, num_mpdu_ranges)
> 
> This code was detected with the help of Coccinelle.
> 
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

35b50e70df27 ath10k: Use struct_size() helper

-- 
https://patchwork.kernel.org/patch/10884271/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
