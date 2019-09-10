Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F53AEB47
	for <lists+ath10k@lfdr.de>; Tue, 10 Sep 2019 15:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZYE7uJh3paoEpkCqIqwFp+JRr7OusdemcXQQ+dPkD0=; b=Yazva7l6DemtlM
	ashaMvA1yaH3uc4LEgNvvbDZj4lgLxburhcMrRiLfe3J9AHvjraTnPIj1Xuqkq8+B4G3lJsNUKYxU
	Bx/UH0jrHahGJJeyRambza6r7IcPIDyp082LgfLmCPbDvu3y1y9QXbNsSWLzlsn8GF53UnlgaqFEL
	g9alsHSq9Ic3DW0VmYJYe11PNz0h3wwQg2sLw902xnuEclzsdOg5df4br4QHAqR+Kxlb1TWn0KONn
	gmHX/kNg5XZ9G9U54ufWIPINy7YwZyjUaSGlV70GXiIaKOm0TFtWqoHLmP/AxcUrebFUsKskhlXRj
	gf8GE+Uqy40NVeW8fRGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7g2k-0004jD-7z; Tue, 10 Sep 2019 13:18:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7g2f-0004ip-9x
 for ath10k@lists.infradead.org; Tue, 10 Sep 2019 13:18:46 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 737306050D; Tue, 10 Sep 2019 13:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568121523;
 bh=jxJ9F7I16sMuycArxBq68I5GFTjVQE3Aq0gdFEmzW+8=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=dJMKrYrPsnVD0KlTQ513TKRTS8nJ2RhpysNcy5fI3CJ2oBACQft5R2+f5tQUBK2N7
 GPnCIYphd+ODMlNmpyADQsFGsGlf2Tn/aRVrfFgQGsw28CyMjPmgbDdtRZiPqsIS6B
 bU0MAT22d9G9BkWZieZ5lXzWuCbb/v6vLS23/r30=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5BE6B602BC;
 Tue, 10 Sep 2019 13:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568121523;
 bh=jxJ9F7I16sMuycArxBq68I5GFTjVQE3Aq0gdFEmzW+8=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=AxfgXMXXNwiQAfzPzoymgkCNEOpocSRprTZrAQwqPnlumJqLFLutp+x/tJRg8CobR
 cBYblKOwUOqeAqvY65fKVkFlMusAwWh+7Tp/yu3DqFD5VGPoPXm+iWxDfXklmFvLty
 KvBFLvkl4UaTk8pNO96qR33q+rrQYHNZeDFdqh9M=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5BE6B602BC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: add mic bytes for pmf management packet
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1560757079-19266-1-git-send-email-wgong@codeaurora.org>
References: <1560757079-19266-1-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190910131843.737306050D@smtp.codeaurora.org>
Date: Tue, 10 Sep 2019 13:18:43 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_061845_371475_BF0DBC47 
X-CRM114-Status: UNSURE (   7.44  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> For PMF case, the action,deauth,disassoc management need to encrypt
> by hardware, it need to reserve 8 bytes for encryption, otherwise
> the packet will be sent out with error format, then PMF case will
> fail.
> 
> After add the 8 bytes, it will pass the PMF case.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00005-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

83ac260151e7 ath10k: add mic bytes for pmf management packet

-- 
https://patchwork.kernel.org/patch/10998135/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
