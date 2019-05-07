Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72E51655A
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 16:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXdhWY6nq/bgvqdvDoy72e2OwuQ0oCUP5FF1yAHVf9k=; b=YNDDbLCYlC8wUI
	MG9DWAZB+l+x5hEwummWZoB/CpAb6EHI7vYRkf8+yRa8C9fGGxoh2cxhePeKaQdB84UM6ltx+oXqH
	05XffHpTBj10NZIJUKldkXK4XK0KBe6SyOzkpwtI40Qdwk5jGy6T6DEo9YjBgRAcHG3zQKBVxo/Ta
	Rk0LWjB+xX6KKTkgNxWuWjQS8ev8uWPxiRdu0e7A/S2MY1+3b094zcU3LueVtqkHODaeKyowwwi83
	NZcBDRr9924MaOyJD6HM2toa2Ibh4O1KLo/xp+SSp8jJT0EnozhYqYMKkmKo4QPbbdq7VGdSlzX68
	3oM/zG5TNeaBE44KSoPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0j3-000114-8P; Tue, 07 May 2019 14:05:45 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0iw-00010j-QP
 for ath10k@lists.infradead.org; Tue, 07 May 2019 14:05:43 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7B155609CD; Tue,  7 May 2019 14:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237938;
 bh=v7qjRgtjkDLbuRHaqLLhB5f9cQm29Ik3EIwdZG4r99A=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=UFGjFjQITF+DBTDljMzv4yOq1sBytKdjtv5yvRmtHArROKsg2CFcvAxQvD0JUfVha
 2UtUGZlLVBfb/VMzgMvSPH8anJY7qdsLlK4uc/m6fImV+TF5apW78YElnhts+TqBJK
 /01NCwrwxHaHUFenxwFphJal1W398Vx3jY8vchOs=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0778460350;
 Tue,  7 May 2019 14:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237938;
 bh=v7qjRgtjkDLbuRHaqLLhB5f9cQm29Ik3EIwdZG4r99A=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=gxwYORSWZr+tTAkFgtn5cLyC30eQFL00bJ5NHd5fHhqTGW7ZXyzOR6cKylm2LepB2
 VIo8MtTO2tybLNxOG6aLNs7LWbdul5sAARWp1pCTNjHGBS7pUlQSWHmtvM0jrk0wGh
 e/eOUKFYSCAH5+CWMdqIZL4EFmuY6/3A+q9gZp8Q=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0778460350
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: fix different tx duration output
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1555489045-18070-1-git-send-email-leiwa@codeaurora.org>
References: <1555489045-18070-1-git-send-email-leiwa@codeaurora.org>
To: Lei Wang <leiwa@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190507140538.7B155609CD@smtp.codeaurora.org>
Date: Tue,  7 May 2019 14:05:38 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_070538_883956_71949888 
X-CRM114-Status: UNSURE (   6.18  )
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
Cc: Lei Wang <leiwa@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Lei Wang <leiwa@codeaurora.org> wrote:

> TX duration output of tx_stats in debugfs and station dump had big
> difference because they got tx duration value from different statistic
> data. We should use the same statistic data.
> 
> Tested: QCA988X with firmware ver 10.2.4-1.0-00043
> 
> Signed-off-by: Lei Wang <leiwa@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Dropping per discussion, please resend once everything is clarified.

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/10904909/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
