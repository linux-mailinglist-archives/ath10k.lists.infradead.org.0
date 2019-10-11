Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF2DD3B86
	for <lists+ath10k@lfdr.de>; Fri, 11 Oct 2019 10:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rp2OnW+ylqCYlnswyBzWPbHpF3U+9E3HLgpCv7mrxaQ=; b=SCmo3m27ekSUN0
	YqbvCUC3JGX8CJ/5IEIvETfYKGSRJVVJNgyv9/5kwSAKtzigadcw2lJ7046PuYXkDMHOH1zKM/3WM
	IqYYKjwV93uz0Si6QysE7DGi6QEhJ8gPCv3Is7tkvgPVQq0GpfuJAIda6eaCRTeB6V3UbgHg/HR73
	mN5iT2Q9asZ7qcr//BJke+Ot26GviqpRs75UjfzaQVFuSK8T5JihMSFmXTDjHQxjYiNsnAOs9W+Sm
	SSQcFZXreTtjliM7CI4C95fE4zeZnLnx6ICflSekv0RN7FbORxERlQj3fyXSEHku/R11EnlJCdyi/
	dCi9ZylSwJUOGRPYnxOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqZD-0006SW-LF; Fri, 11 Oct 2019 08:46:31 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqZ9-0006S6-CT
 for ath10k@lists.infradead.org; Fri, 11 Oct 2019 08:46:28 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 105B0605FE; Fri, 11 Oct 2019 08:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570783587;
 bh=M4acdj/SpnAHRs9HrnE1kZOeO7NTUoB09Mij0APM02M=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=jQuhY2GZ8hHhUc0firQV/YKwOk6UsFRJTBoROkyPdx9ja68wSgsbULVbo9T6ugJp6
 Z3tdA0sGY9WcFfn1Xy+hTezeYRCchIGmYIwgFQPG2WAXUcADZL+KU0OuiQJKf6QE39
 6jyn5nQWQybTMa7+MNmRe4B2PI4k4lVagq3zoiCo=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AB0D16070D;
 Fri, 11 Oct 2019 08:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570783586;
 bh=M4acdj/SpnAHRs9HrnE1kZOeO7NTUoB09Mij0APM02M=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=f2iW8FN8ep3aygl5L2hgGUUGidm3BThqdgSxPoVxE5F0C5xby4Klaqlxgqnv4/lAf
 AAuioDt+T/Bv7Xhm8oMFGTBhcei8uRpJl12OETYNx0C/6O+yC6nkzXvR5P82uCn1+X
 NWQkjw/U/0QZoQ74E2mHOoXjPpHHuGM09rPSe/es=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AB0D16070D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH][next] ath10k: fix null dereference on pointer crash_data
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191004160227.31577-1-colin.king@canonical.com>
References: <20191004160227.31577-1-colin.king@canonical.com>
To: Colin King <colin.king@canonical.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191011084627.105B0605FE@smtp.codeaurora.org>
Date: Fri, 11 Oct 2019 08:46:27 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014627_443608_5AA5A40B 
X-CRM114-Status: UNSURE (   6.87  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

> Currently when pointer crash_data is null the present null check
> will also check that crash_data->ramdump_buf is null and will cause
> a null pointer dereference on crash_data. Fix this by using the ||
> operator instead of &&.
> 
> Fixes: 3f14b73c3843 ("ath10k: Enable MSA region dump support for WCN3990")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

a69d3bdd4d40 ath10k: fix null dereference on pointer crash_data

-- 
https://patchwork.kernel.org/patch/11174955/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
