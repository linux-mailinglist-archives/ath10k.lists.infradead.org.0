Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC8A164D7
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 15:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDFR77nk054ZXH8Cq2MHofPTCCzt21g352E1VTfNeBk=; b=NLiLz7WEOaNJ1d
	1qDAiPIzmBJxNKitCiOwXtNWDuP5ewNYJnmCPiVFChi9xX/M/23mhg+c+eefF9IQufkshcdj772xn
	x4KedmhtEv1qbuTlBs4rEmCgj0lz7uODo62NGNkf1v1r8ldMXAtKtojtAzUiGCcKqEyo4nZp9pkqk
	iNPr0f4udf2U6tcJT4HyD0kMcVqGRqA+/SLCLNHzPGfO+crZmTtnKBKsW/tkHWQEBtwJ2iRuIuBrF
	Ss6OQ6fHn/1fy0o6/dh4RwDdFlbhbJs/JerBm0+XDGGAKWDjy1uFWBB9h7z7xdlifoFgpAvjbEw2F
	UwUwUMNIR0zbgmCiAhug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0NM-00067v-OZ; Tue, 07 May 2019 13:43:20 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0NJ-00067Z-Bz
 for ath10k@lists.infradead.org; Tue, 07 May 2019 13:43:18 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 152F060CEC; Tue,  7 May 2019 13:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557236597;
 bh=Z+9Shnu/Y9mDEfGOnI3HHEAypekxIj94n9ZZ3Y/GRUM=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=LOEn3eB8gbJnDf1Bov08Pnm1Wui/C0Nc8zCMEs02zNbU0jsymIhzmetJ1fQ4GFuu6
 XHj6sKYWPymxDYE2o2IoASyuDBk6lYdKe0uJ/2BD/KPgra/fjqT/QRkLuB3h0HSjQu
 3SRVAd0VZzaCRrvGkwcpB+1MxG0zqEUqMcSRnCI8=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C196160A42;
 Tue,  7 May 2019 13:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557236596;
 bh=Z+9Shnu/Y9mDEfGOnI3HHEAypekxIj94n9ZZ3Y/GRUM=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=m0ygB0IqsVfLsQVTW1HdbKRsL7YKNzjsN4CNFy/tBOqyzp4/mwG4foYuiP52e6lN4
 u2hfFYwAMui5hJhjhcFns/iYguzhRh4odeWzutyVcIHQ6C3YKhJn+SiNjFT26O8W/F
 wctLcVSm9S7j9//MVtccbN3Eyih8zm4prv1RwgII=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C196160A42
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Fix the tx stats bytes & packets parsing
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1552365219-16842-1-git-send-email-yanghuan@codeaurora.org>
References: <1552365219-16842-1-git-send-email-yanghuan@codeaurora.org>
To: Brandon Huang <yanghuan@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190507134317.152F060CEC@smtp.codeaurora.org>
Date: Tue,  7 May 2019 13:43:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_064317_426522_D32EDBEF 
X-CRM114-Status: UNSURE (   7.68  )
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
Cc: Brandon Huang <yanghuan@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Brandon Huang <yanghuan@codeaurora.org> wrote:

> In tx_stats debugfs, txrate->flags may contain multiple bits. For
> example, RATE_INFO_FLAGS_SHORT_GI could be set, and tx stats bytes
> and packets will be not updated correctly.
> 
> Fix this issue by using bit operation to check txrate->flags.
> 
> Tested HW: QCA9984
> Tested Firmware: 10.4-3.9.0.1-00007
> 
> Signed-off-by: Brandon Huang <yanghuan@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

9e0b341a3d66 ath10k: Fix the tx stats bytes & packets parsing

-- 
https://patchwork.kernel.org/patch/10848577/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
