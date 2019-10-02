Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBD4C8FA0
	for <lists+ath10k@lfdr.de>; Wed,  2 Oct 2019 19:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZjoA2w3qldbaIcY3Ivq+mIzn3tkdWB7zVS3/JjQbjo=; b=WIoB2qlZgTE5Xw
	Ecdh+MNLbLwX345y4numBTpxaq2Jk4S12mziJPQly/0vt9tR9dhmySKnXgE0qnPQcqq+PgFUQUIMo
	3tvxrqlJsNQwYZ/I2+JxUTwTrKI4plwpbJZXBWbY59oIXivGwJGL6jCch4/Mz/Oxl4pJXGktcsp9B
	bfnkzGNkWuKL+/xmPpSdo9S7mKIjRwE7DntsiYLFdRNwULP2ImlWoVeQQ84hYuz0rhtFsI42k/zIK
	QkDOe4q+gGzlYCqzyfv5F7Ot7pJ4V0oJWfclQ9tEnzs8S/q44gssklSbkUlOFGihMZwUweakvuAir
	4wRMr8MsmX9rkBWRSNKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFiHe-0008DP-KQ; Wed, 02 Oct 2019 17:19:26 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFiHa-0008Cx-Uq
 for ath10k@lists.infradead.org; Wed, 02 Oct 2019 17:19:24 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A48BC61213; Wed,  2 Oct 2019 17:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570036762;
 bh=imE2p37CSqor8L69mmMVfy+EnI7tKW4jVxuM6K6bv+0=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=UtWYVxTwRfZt2vGfyFBwWZtJnKkjmPjWW+kZMH1GxUEF4NSAIb1xQoXOEmLBOimmS
 JhFDQbRSos1ooeG4aXdBouD9/Y430SH9zjk093WEPPn4dUuN6a5fs/xAlw0yX2Zx3c
 n4xE/m1J+QN5RrjvmpP16RmSaSzwOfjA5QE+pMxo=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6637360A78;
 Wed,  2 Oct 2019 17:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570036761;
 bh=imE2p37CSqor8L69mmMVfy+EnI7tKW4jVxuM6K6bv+0=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=T3sIHtVzzjQP3abRNcto4X7LY9am3e34E+K+9XieUyd0RW4W7iFrv2OhoKI4fC/pU
 VqN204pWOOmKKZV66MmBAdZ/o/g/DtyW1CJIymvFssOtdB3Xy48Bke41dESTNS1D86
 Us5hwPDYRWMl8tgvMrQdHTkacMPOwuNYWoY8HdYs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6637360A78
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190906215423.23589-1-chunkeey@gmail.com>
References: <20190906215423.23589-1-chunkeey@gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191002171922.A48BC61213@smtp.codeaurora.org>
Date: Wed,  2 Oct 2019 17:19:22 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_101923_013947_1077FEF2 
X-CRM114-Status: UNSURE (   8.69  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Christian Lamparter <chunkeey@gmail.com> wrote:

> This patch restores the old behavior that read
> the chip_id on the QCA988x before resetting the
> chip. This needs to be done in this order since
> the unsupported QCA988x AR1A chips fall off the
> bus when resetted. Otherwise the next MMIO Op
> after the reset causes a BUS ERROR and panic.
> 
> Cc: stable@vger.kernel.org
> Fixes: 1a7fecb766c8 ("ath10k: reset chip before reading chip_id in probe")
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

f8914a14623a ath10k: restore QCA9880-AR1A (v1) detection

-- 
https://patchwork.kernel.org/patch/11136089/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
