Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0A4C3235
	for <lists+ath10k@lfdr.de>; Tue,  1 Oct 2019 13:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2O6hmGpn7DVScryPQpnZsFp84sMXfx7PKram4mLZ5kY=; b=Cv1L1b8IMR8iy5
	0jZmNKi1jfYVwalXg//Q4X7syLejagEtUdTzEaH6Pygntak9XqYhrJllYPeM1U07rYZk0i9tP55e3
	8vOIEtZvI971z0JX+8IXSTiOOcW6C6HvdH01fSqOm/UAlv58hQlW/E57cUNDub6wfW3kqerY9U4Mi
	ghFewkdcFwtYXxdPkMvWBiq12IT1A1GmZHPUTtzrwRhkNZVxlUk1sLi631MCw2tMJMQ98a5XyE5gX
	TdgrMx7PHQiv9NmjGQfCeG9a0IeYhuy9ve56+jFSuUa+pXrgg2CbE2FpiGwOoYDho72KVCzpQCunM
	u+MqrK0XGUZZHNklWv3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGAb-0006h0-Ut; Tue, 01 Oct 2019 11:18:17 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGAX-0006gY-7k
 for ath10k@lists.infradead.org; Tue, 01 Oct 2019 11:18:14 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E3E836053D; Tue,  1 Oct 2019 11:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569928692;
 bh=MPag75lsYtF0JbmFj0RgLbwaTpCm3c+JDYunHGgHzVg=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=hPo5rdWuogG4tOo7E4AdpwwQmYVqq4MK869KwI2nb8ZQ9iR2c/jegO/iBL86tdGwP
 A3S3AECjCaIGyEXuEJcdVIyGiJ3U+sNpZ7c7aBtdpKKtf2y+x3zIHPLEth7qEhZ1et
 Z18UzwuPS4e5LY0GYpWIPTjslBALdiHj/DnOhifY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0D5A8601D4;
 Tue,  1 Oct 2019 11:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569928692;
 bh=MPag75lsYtF0JbmFj0RgLbwaTpCm3c+JDYunHGgHzVg=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=BGuCvkz9+mIkR2EH2xzW5lqfE7MRF5D1Trfpf1NyPk+BGqqp8CfQOg9MXvZy/lSPd
 LuEhyRN+e1m0zHUuU+PVtvlpKkjmN4ErWc1s9VVoJD66CaG/mA2sbM9zjDafg5WX4Y
 hcOGT9oNTMgMSUMEyjy+y3upQBNv4P5gO2spaiQs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0D5A8601D4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] ath10k: fix IRAM addr in coredump
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1569505021-20515-1-git-send-email-akolli@codeaurora.org>
References: <1569505021-20515-1-git-send-email-akolli@codeaurora.org>
To: Anilkumar Kolli <akolli@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191001111812.E3E836053D@smtp.codeaurora.org>
Date: Tue,  1 Oct 2019 11:18:12 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_041813_302230_4447FE18 
X-CRM114-Status: UNSURE (   6.80  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anilkumar Kolli <akolli@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Anilkumar Kolli <akolli@codeaurora.org> wrote:

> The IRAM start address in coredump was wrong for QCA9984, QCA4019, QCA9888 and
> QCA99x0.
> 
> Tested on: QCA9984, QCA4019
> FW version: 10.4-3.9.0.2-00044
> 
> Signed-off-by: Anilkumar Kolli <akolli@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

2 patches applied to ath-next branch of ath.git, thanks.

93f9fefcf528 ath10k: coredump: fix IRAM addr for QCA9984, QCA4019, QCA9888 and QCA99x0
d98ddae85a4a ath10k: fix backtrace on coredump

-- 
https://patchwork.kernel.org/patch/11162763/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
