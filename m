Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE077EAB6F
	for <lists+ath10k@lfdr.de>; Thu, 31 Oct 2019 09:15:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UrfX1u8/uQcjYQbRZ1tQ2YMmryCljrJJu3pWwYRGyC4=; b=mkz1A67gj2oQH/
	ekcI3BEfRyTx/KN83ZNuSPCiocvCzutIkWn6sOU4zmJ4bkG3zA30MksqN0l9e3ymkWjdjOi7fC3eK
	2AV1ZCBoVbLb5Fu9R81t3TZZlXVXSi9W+Q0EX/ed1SdmkNwPQVh2Srd1eTGhE322aVJAEzr8x8MSV
	aliF5zNqrf3wICBTJmGqp5lur1gaaBETyXEoR27CwuABY2c3Cn07jhqY5fPCFVuQcyLmoqFKdtrKt
	5gkTt0DBYkDsLEkADLzsiYDl2I6o1q/GU9yHV8WXL3KQ/L86IO9qEPG690RV/vrMHTOyR/Qz/ppb0
	gSLaluPY3CvZGqUwNGEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ5cO-0000a2-05; Thu, 31 Oct 2019 08:15:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ5cK-0000Zk-GQ
 for ath10k@lists.infradead.org; Thu, 31 Oct 2019 08:15:41 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DB5AA60930; Thu, 31 Oct 2019 08:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572509739;
 bh=sp/YuXqKxRq6BSEULbjzuuxJCs1WunIjmlNVKfVpHes=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Ijtel4EshkgBpjFvlxbBWbrsq99aKVFA9ocGJUpdzSAELVKxJ18sE7KH4Q+7aV/1b
 M1jK+pCdu/Mj7APEE21LMra4oiJ43nL0fqIMKb/k/1ubyb3muaMokN7m4GzQalxkwU
 D+pp5Sp1Y4jvQQeFWQTJ2u69BQADe37ENL9utD/U=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BEB8860540;
 Thu, 31 Oct 2019 08:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572509739;
 bh=sp/YuXqKxRq6BSEULbjzuuxJCs1WunIjmlNVKfVpHes=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=KFKcnpd4XBYxIcUmwPGE6RZ1tg+eZBxF6Dtqgwrmo7hQePpVg+sIndWrFmx6Zdq4l
 2dt/+9m/mJS53yskmVY1pk84HKYXeINz9KW8cRDwflQkvx9vuepmLpWnTKukZlau7R
 BMjCc4KC6cpdfXyCZaP7KxuVAIZcJ9MJ3PMfY+o0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BEB8860540
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: remove unneeded semicolon
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191025091041.34056-1-yuehaibing@huawei.com>
References: <20191025091041.34056-1-yuehaibing@huawei.com>
To: YueHaibing <yuehaibing@huawei.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191031081539.DB5AA60930@smtp.codeaurora.org>
Date: Thu, 31 Oct 2019 08:15:39 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_011540_570868_FF55C4A3 
X-CRM114-Status: UNSURE (   5.11  )
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
Cc: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

YueHaibing <yuehaibing@huawei.com> wrote:

> remove unneeded semicolon.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

0dc269314a25 ath10k: remove unneeded semicolon

-- 
https://patchwork.kernel.org/patch/11211787/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
