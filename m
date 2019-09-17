Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FBDB4FFD
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 16:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzQJ+UFQ5mP6qt/oejvChU6zbX3iMzHGS2fJonGHZko=; b=pSL/2Ik3dlN7Nk
	vUfT8RkaGH8A2QgoDBhMPgG+LN2WNWzAUBwEX+le5nUVuox9fhqWbB3ubZZo5PUuXQjZNz7vqMj4P
	O0gj08rYjnFqBG9M11pfk9sKR6mUgV5kQ7LfI03DQNrmHGSG8OxlatMZyP8KAfuwxRtivhq5mDsvn
	T2maDkXaaZSwVQNWbdxBSwTHjnH6yfWGNASk04QsNk3yvUpQ/Uu3ipx/3wBpSHl9JX7wCWVVBPjpW
	9Kon+mTxkCAYZ5DvLeOmuTzpxuLHLUOhzQyD4QBpyMtb94NbT17f7PiOJIiJwqrbbbLNtM1kCbbkQ
	fpkAxT/q0vloAq28812g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEAg-0002qc-O2; Tue, 17 Sep 2019 14:09:34 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEAc-0002qI-9J
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 14:09:31 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0150B611BE; Tue, 17 Sep 2019 14:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729370;
 bh=gBMlUc2ziFwwtkVc/AsmGn1pJDa0q/Stf70aBdLPBd0=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=ENoPz9V/EUR9xMEjpu5jhWFcAZGMhHzu3OF6NNmlH5IGWVOIneDSHxmwDdjvMJaG/
 2I8SdG6j/A/b5QMFo3OeY9k3JwNIsMtf38s8oFO0fEVbRo+iqJBXsDvpT+eTk9sWhM
 AznzzYSSwMCudu+CL1F0g444vWBAnYJncH7u9mX0=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6339E60790;
 Tue, 17 Sep 2019 14:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729369;
 bh=gBMlUc2ziFwwtkVc/AsmGn1pJDa0q/Stf70aBdLPBd0=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=nkafxI/YQMTakw7G3IJW0qA5pVwufvAyGJj3sqmfN3g0p9mNpKnCaX+sQJOpBxCHh
 fuG7TZCBTTjEY7XUxjGU3d6l4w3ZP9/IaBK6OafIqSRKQ+FdULbcLDB3i7HDuYh+GV
 oEZpN6arv8Zy23eEAQvZk7Pi1FA16FBEDVmc9s3I=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6339E60790
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Use ARRAY_SIZE
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190718203032.15528-1-gomonovych@gmail.com>
References: <20190718203032.15528-1-gomonovych@gmail.com>
To: Vasyl Gomonovych <gomonovych@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190917140930.0150B611BE@smtp.codeaurora.org>
Date: Tue, 17 Sep 2019 14:09:29 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_070930_343785_8CE3AD4F 
X-CRM114-Status: UNSURE (   5.50  )
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
Cc: Vasyl Gomonovych <gomonovych@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Vasyl Gomonovych <gomonovych@gmail.com> wrote:

> fix coccinelle warning, use ARRAY_SIZE
> 
> Signed-off-by: Vasyl Gomonovych <gomonovych@gmail.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

7921ae091907 ath10k: Use ARRAY_SIZE

-- 
https://patchwork.kernel.org/patch/11049553/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
