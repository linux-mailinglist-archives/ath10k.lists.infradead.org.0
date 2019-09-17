Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB14B4FD8
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 16:03:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qluMF+4Uc+u+q69Z3JDZ1P8k9SGv3nk/ogwLQBLqKr8=; b=HI0zSfg97A5r43
	MQ/yl/0V9nBIDszSWpF9a/MPfbFhYG5e0Wvf4JZN+VIDv/Q1HJrkqDeuHcFWZDYZ+VOkSljWsYHyR
	okj5eVfgFqpWo2zkgp8SbcZiHuFQoRTiMiMCG66r96s6r32CfHqSFmG6maS1fraQbJ1guo5XycrkU
	c82Me6Di0OK84nnBFkW4lK6ittDvnko8PgyRAzs9PgF2GI8gawq82REGxtL1MsD44hzEWb/UyC0nr
	geK44N+ZXxnTtEhiHVuRr7UOY1qKAL0KGiDRfpZ7wP/HnI7/NEbqj0tnpduFVlB7GIVbvmTI9bzK5
	H0yzcGOIHAOqbIzJrSvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAE5C-0000F2-H8; Tue, 17 Sep 2019 14:03:54 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAE51-0000Ay-5r
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 14:03:44 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7A30661570; Tue, 17 Sep 2019 14:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729022;
 bh=z5NkcZ1ALVg0VMSVQaQZtgQ5NF7xi3wRIZFmstI/iR0=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=aG2Hwb6Dil93I3eBnOajxLsXDN9FIO/AP/5xMAx3vnJbpY1wEblzrAOTgCl0p8fB8
 NL/BFK1L2AY7Ffajw/enS13JMklfF4fRzkvoHIH3zyQJZvNtIlnL/MHcuc8bE2iPTH
 MdzLgu8ndjXB7Rj0bhA+J6bDGyf4kfDfoRRVFcoY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1075061544;
 Tue, 17 Sep 2019 14:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729020;
 bh=z5NkcZ1ALVg0VMSVQaQZtgQ5NF7xi3wRIZFmstI/iR0=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=jeJJCXHihlrr3GhJk2NSJZIDcKcDp/aKDu/n/iGSyjRoQBvdz5fOMU5maZZ+Muqdd
 jwWtd3qtswR3UwRjeSWJaFTM/inXnIsU5ssyiVPHpn3dFcIOi8BBaROieQMr4fPxi6
 qlI1rSaOgDVs04aGiRmipWdauCiGkPTHZsIYggC8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1075061544
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Fix HOST capability QMI incompatibility
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190725063108.15790-1-bjorn.andersson@linaro.org>
References: <20190725063108.15790-1-bjorn.andersson@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190917140342.7A30661570@smtp.codeaurora.org>
Date: Tue, 17 Sep 2019 14:03:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_070343_299947_DECAD4CC 
X-CRM114-Status: GOOD (  11.71  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, stable@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bjorn Andersson <bjorn.andersson@linaro.org> wrote:

> The introduction of 768ec4c012ac ("ath10k: update HOST capability QMI
> message") served the purpose of supporting the new and extended HOST
> capability QMI message.
> 
> But while the new message adds a slew of optional members it changes the
> data type of the "daemon_support" member, which means that older
> versions of the firmware will fail to decode the incoming request
> message.
> 
> There is no way to detect this breakage from Linux and there's no way to
> recover from sending the wrong message (i.e. we can't just try one
> format and then fallback to the other), so a quirk is introduced in
> DeviceTree to indicate to the driver that the firmware requires the 8bit
> version of this message.
> 
> Cc: stable@vger.kernel.org
> Fixes: 768ec4c012ac ("ath10k: update HOST capability qmi message")
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

7165ef890a4c ath10k: Fix HOST capability QMI incompatibility

-- 
https://patchwork.kernel.org/patch/11058005/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
