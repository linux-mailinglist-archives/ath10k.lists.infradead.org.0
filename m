Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EB2B500F
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 16:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0QEEAM0DGJ1/n3i8mtV1Y8iphB8ELtPu8aPqAHrbB2E=; b=cOEif6bbA3IYPp
	p49/GzAOxbuzsWrMOS/8C+miBiOzQSVBEWWZjNX6TOwXKx6bUgeIPwjjre9fEZfzOw9QmZjs2fWWr
	2BVY39PkwHYhDrQCbRMTTFLhHAgZp7i8vurIhqRlaSbDJsoYDBIK2PNU3OS2t7DTHyN/nC6IgPa4O
	hpk178RKzMfyFHZhYikcvPuwVpg4of1K8BzFhp2+n+OPZcfy7+Nr8sArK2XwHQxd/p4mpAQaHUnLG
	cMUVm2qHX1TMthHG3G9jseCygHkzzz/dNaOfhoqYmpKGSZ/3jBdAQm47Mlje3sViGRgWF7onxGvam
	k2a/AqS0v8JrGkuQJcAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAECl-0004Pi-VD; Tue, 17 Sep 2019 14:11:43 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAECg-0004PK-OY
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 14:11:40 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6F6C6614C3; Tue, 17 Sep 2019 14:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729498;
 bh=Ib/FvgQ2ADDvprAwRsFZqAQkW3IWp5fSPoW7OmmKSnU=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=jD4E16+BkVqM5IcIZlvyCCN7ZNf07d2/5wCgyMthRAVjhsV2hCaihdV/snWPFRD4Q
 +smS/OF/mA5oL2JTyXAJ21334QjKuNqGUsRhAqx4d6fKwdyB3PFN6lC2l+OBl2jZlK
 7HZy/plHOMrrW5YwWPCdAmX74XrP4h7Ffak/X0c4=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 54BAE6133A;
 Tue, 17 Sep 2019 14:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729498;
 bh=Ib/FvgQ2ADDvprAwRsFZqAQkW3IWp5fSPoW7OmmKSnU=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=JhGTzmD9Ycd2rsNEvNriEf+tda2DZrO1vItX7RTj20lrjJ1mEhTjMRlRb9KmCvEwx
 Nk/X2iEucNcxMpDDj3ksuRJypTpr/zYR8TwxffkC4ogB4rqzVyFNafaI/NNLhsU53O
 5okBnKZ6j5/XQmXd5npqeLg3O9DNqbuVKXz+weSo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 54BAE6133A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: add cleanup in ath10k_sta_state()
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1565903072-3948-1-git-send-email-wenwen@cs.uga.edu>
References: <1565903072-3948-1-git-send-email-wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190917141138.6F6C6614C3@smtp.codeaurora.org>
Date: Tue, 17 Sep 2019 14:11:38 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_071138_818889_A7ECE13B 
X-CRM114-Status: UNSURE (   7.08  )
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
Cc: Wenwen Wang <wenwen@cs.uga.edu>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "open list:NETWORKING DRIVERS WIRELESS" <linux-wireless@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QUALCOMM ATHEROS ATH10K WIRELESS
 DRIVER" <ath10k@lists.infradead.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wenwen Wang <wenwen@cs.uga.edu> wrote:

> If 'sta->tdls' is false, no cleanup is executed, leading to memory/resource
> leaks, e.g., 'arsta->tx_stats'. To fix this issue, perform cleanup before
> go to the 'exit' label.
> 
> Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

334f5b61a6f2 ath10k: add cleanup in ath10k_sta_state()

-- 
https://patchwork.kernel.org/patch/11096481/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
