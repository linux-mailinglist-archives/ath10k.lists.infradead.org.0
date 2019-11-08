Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FEBF425D
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 09:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWBkwu60TcZMA49zrzqWaOwLyetquv72ENWD7yr3VxI=; b=loqvyQ0+7sBgph
	rAH6Qc6FciuROQGJL6Jn5RGk2adMSRuOBPxC9cNIzPl6ORDfyrxEkShJFKJCosKFAqLDqTDOyunY9
	yRnOkFCCjc0HrNX2/TmjvCVgQkFgmvzthgJCdIqlrd0Fv4jmUI83XVrncIXu8vYDQQ8b/nm6rrsvc
	BIYnCLoVgK8+pWaRMSQVTsrLUzKWmIDL6xQihOqT6Z3osE4tkRuXUoIcBDrVrTC7xi3dpwpsfLdj6
	f/qKsO7AlBNx25em7NbxzihxurNKXbI5QpME0EOqa1UBYEzMUUn6MBhGabz56bPPC4QgQ8HgooYHg
	giDLBbHwj2mQlsApZuYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzt1-0003vF-IA; Fri, 08 Nov 2019 08:44:55 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzsy-0003uh-5j
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 08:44:53 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DB0846087D; Fri,  8 Nov 2019 08:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573202691;
 bh=q2mJk7VwXyoKNejkLtZeKiAGzvIXEYJAYn1LqGhZmVI=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=nkRuvK4rRMhiqCQtOztttWGGy0+cPy87DtryHJ/GfHcU6FQZodcLjMjBo2sDiaXpi
 UOa36dypk3aAdPq+0v+oPnqAs8ElJqHz4BMQP97HkazsY5H4sf8lsRu92SYJZFequy
 TcprPnN0ufhcC5kBvuPnknSutMi1gPHYi4ATw1yI=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 81AF9606FB;
 Fri,  8 Nov 2019 08:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573202691;
 bh=q2mJk7VwXyoKNejkLtZeKiAGzvIXEYJAYn1LqGhZmVI=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=CfmtE3lkHZqLI+Jyxe5InNcD0EJsGBu+cxhqSuvRXX+50iJ5SjCZ0i4thJ4zVEm4W
 xbRkp7vqrSgLVc2i6NtIaG/tMdr2c7YoQESGBObH6AQ00pZV0BCfsFIoGHvwPA8iR8
 2LPmJ6LcymzLjRhTGZzWQgepJo52VXdE8S/e4DMw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 81AF9606FB
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: fix potential issue of peer stats allocation
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1572486133-23516-1-git-send-email-zhichen@codeaurora.org>
References: <1572486133-23516-1-git-send-email-zhichen@codeaurora.org>
To: Zhi Chen <zhichen@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191108084451.DB0846087D@smtp.codeaurora.org>
Date: Fri,  8 Nov 2019 08:44:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_004452_240955_9F10F71D 
X-CRM114-Status: UNSURE (   5.85  )
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
Cc: Zhi Chen <zhichen@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Zhi Chen <zhichen@codeaurora.org> wrote:

> STA number was not restored if OOM happened.
> 
> Tested: QCA9984 with firmware ver 10.4-3.9.0.1-00018
> Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

402838a05def ath10k: fix potential issue of peer stats allocation

-- 
https://patchwork.kernel.org/patch/11220555/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
