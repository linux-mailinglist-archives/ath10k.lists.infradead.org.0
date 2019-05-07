Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1125A164D3
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 15:41:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FICNUgAX1DxicajG289+QEyxsJ5gnqoVpHV1x3r01+4=; b=sSnFA8kHcJccDG
	u1dWzHkzY3bZwjKSvRqHEvoqRw0sCfyEAlQ99qU8mUNdnYCFdhQPijSXO37ExgA1U08fbbvb4YGXS
	9HyxzpWv6GJ/UQY/pjzA3buT68eO+S14Xpxy8k7qCJBqNNZqS5qmIkdj/6aKunRK+2doERZ8Gm0Ds
	ezmsXpmgDQfBRZs3LxBt5vS+YpZETLgNNEWtrGFRXZAE6nBGjpxy6UlgGRSpDGlUbuYRgPOL2GIdU
	K28JwLaQWsDJMl6bLgWB8ftI7X38h85z36hY6zps1DCUSHR5FXun7s7RznNtjaeYRgg8nj5beX9B4
	qDNUwHbfV8LVqokAe7vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0Ld-00060D-8I; Tue, 07 May 2019 13:41:33 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0LZ-0005zv-SZ
 for ath10k@lists.infradead.org; Tue, 07 May 2019 13:41:31 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 4714A60A44; Tue,  7 May 2019 13:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557236489;
 bh=FmtOBj15yEEN4Mu9EvYeEpeDuQcBV/VEGj0TeLFgiYQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=iayM0GzNYDUQM+VD+6lPEFq1Ddp+qsE4XEPUrAumzOJ1kucd0o5zoaQNENK+d0+CG
 T6MdSPBpsSo5JFpuwyHEFmt9jidCk/CUAfpFj6RX7hEQsA3Xu2W7rYQo1aZC+8lgCm
 bOB0VUV6oO9OopnaNy3uCkh5sor49lRuj6asq7+E=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DC8CE608FC;
 Tue,  7 May 2019 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557236488;
 bh=FmtOBj15yEEN4Mu9EvYeEpeDuQcBV/VEGj0TeLFgiYQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=VK1yeoMQtk5BNncZ8wIMIxQ7A/dR9H7YZRtrjgW039dMmiqphFEpYCvOZZnBWgmjf
 7eisJSFK4DMy7CZlOvrGX6FHFVMmeHD2rcq/fG6rBAq35Jz8sBZjszBZhjZtkZ1V9l
 bkjJDF2cqnKes8lTIu/mO9B+j5CExcxCvANyyy7A=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DC8CE608FC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Modify CE4 src buffer entries to 2048 for WCN3990
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190302043605.27626-1-govinds@codeaurora.org>
References: <20190302043605.27626-1-govinds@codeaurora.org>
To: Govind Singh <govinds@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190507134129.4714A60A44@smtp.codeaurora.org>
Date: Tue,  7 May 2019 13:41:29 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_064129_947209_C1379D29 
X-CRM114-Status: UNSURE (   7.60  )
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Govind Singh <govinds@codeaurora.org> wrote:

> CE4 is host to target HTT tx pipe, tx completion are not served
> on time when CPU is loaded and this cause ce src ring full condition
> due to less no of src buffer entries.
> 
> To mitigate the issue increase CE4 src buffer entries to 2048.
> 
> Testing:
>         Tested on QCS404 platform(WCN3990 HW)
>         Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
> 
> Signed-off-by: Govind Singh <govinds@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

889ab61d9dc1 ath10k: Modify CE4 src buffer entries to 2048 for WCN3990

-- 
https://patchwork.kernel.org/patch/10836431/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
