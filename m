Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBACAB501A
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 16:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0YR/jZ/LoDFGCKznSLCnNVCdjhkDQIcU+TVX0Inzis=; b=YiHoixKnvFl8jh
	kr7F9UhoHRGl7zyVZ/Vm6cZbhb5O7GHh67l4A+A5puK9uo8Q76GgxmAv1rfvDINpebXiJVmpe6lwE
	KGRvEA3ap8Y9Utvuc4zl2BhE93iev6dONpZ3V7yHs7xXfd5xc2f/6bNxONcwO160unPk8eVb69fsG
	d9slTIXPjXHZfDmKlQkFdwP+uYn78DKtL43FgEjta54YkevJDgOk6y1oPweY17GMalnN0DcgqvNsH
	SmMtxOSYmPA4IrbBVCtXVDuSkuUh0TEfBSX5uTMnQt7YIu9pVmyJl8GRpiapEnUW41mw8grWPFozP
	OMs/1jmBycDZujwujbOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEET-0004wH-Ur; Tue, 17 Sep 2019 14:13:29 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEEO-0004vV-4l
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 14:13:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5F14961544; Tue, 17 Sep 2019 14:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729603;
 bh=nygaNAFH+ev6zR6raMph5QsZh51rzlyXoTBYZ7ezi0s=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=TyxHS84J0LVs6uKu2x/96A1NBbOHucFy9z1MEbZVgEtufLEH+/klGZcqu3cEEmlKL
 prXwZzdp/5AOPuhodA1Z3BfWWiQZGf03pTNlk9E5s/TgRJNNA8D5vhhXfMN40yav4Z
 RkshsVCgMLPTk2onBf4LylmvuL1ljq2lvyfGbHOQ=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2B967611BF;
 Tue, 17 Sep 2019 14:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729601;
 bh=nygaNAFH+ev6zR6raMph5QsZh51rzlyXoTBYZ7ezi0s=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=U1nFWR9dKL+uNg7wiQvjjSsNeTauoJmAjipVIVyLb80hSh1/BUoqprh9EWldEZH2x
 WUu8uz67T0ldqKkNz805djBC5JidEa5jktVdIOvCioWIUpoIKJjK8dUGExQZcAwMC+
 Y+tLHbqzsAiBC4/bBBNpgNi8Eqmm+5dNfJQF+Dog=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2B967611BF
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: fix spelling mistake "eanble" -> "enable"
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190913074339.27280-1-colin.king@canonical.com>
References: <20190913074339.27280-1-colin.king@canonical.com>
To: Colin King <colin.king@canonical.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190917141323.5F14961544@smtp.codeaurora.org>
Date: Tue, 17 Sep 2019 14:13:22 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_071324_202964_53FDEBB0 
X-CRM114-Status: UNSURE (   6.02  )
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Colin King <colin.king@canonical.com> wrote:

> There is a spelling mistake in a ath10k_warn warning message. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

09764659003d ath10k: fix spelling mistake "eanble" -> "enable"

-- 
https://patchwork.kernel.org/patch/11144035/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
