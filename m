Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61050BAF52
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 10:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGrdSE8ysvRyRHchgVU5s1PqhvDa3sxnGQb5KoZItKk=; b=jg7FotSqqW+6Jl
	9Nxa4J6PPet0bbC0k7nLCJyFol1hPmi1em1DK509JT3uEkZioUqWLKmgj8+2QbxJEZR7pnWiiAOsp
	CRSpLagUAFnaQetaqWxqIgc6VQhIOnqAy4XSWHxNehBTrWwFB2vKDKBzBC7QIkNmxOADk8jgk8Sx1
	09ZTJLvOhwcWoFO7nXEc4By6y9hR35KcJwq3SBo59f9Zr+wHwqDkDirZRaCel8G9tPhR0LLocWY5K
	mvxqYXm7Wkm18ryd0CaLXRRbJhnJssA9miobnNXUS13OEsv743wOPSZP+bAke8kNQ9wmQzDWng51n
	KXZ37L4P05igWevM/G/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJey-00042N-TJ; Mon, 23 Sep 2019 08:25:28 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJeh-0003qU-L1
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 08:25:12 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 52E7C613A3; Mon, 23 Sep 2019 08:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569227111;
 bh=WOFRHwq7H+xLOuFoB5NSwTtl8vKLqopZli8GexNDdAg=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=jefdjzggo1SuHyUOqv5y/m6CCjHi7L9q3YXcxvsEl3p3zAp/ib+Q5Y6uwHvoBmPdE
 sCqnlzlKavjH6mwyEvtT0J/Ne9BKDx4wIl7l3PZr15x40POFM5tbR445QkWH8+LMpA
 cKUQHN1C3FAZL/GnM3NASSzuic5SuAny6ja1fTQU=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8D73C60850;
 Mon, 23 Sep 2019 08:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569227110;
 bh=WOFRHwq7H+xLOuFoB5NSwTtl8vKLqopZli8GexNDdAg=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=ZEUFMhZTZofECZ+NjFNcRCX33MNFX7u+h5sr5xTlGF7oCdrSlgjW7hssDpm0GNXbh
 WHhbH4Hw7IfDjt0r6012c3MR9Na8Y+ChLA6bOq7sIRhp81jySN2lFaE810OWN4vJ/7
 ndayYPXUE6zXfrCEiEF6iwKibTicvoWZDP6bum+s=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8D73C60850
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH][next] ath: fix various spelling mistakes
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190702123904.8786-1-colin.king@canonical.com>
References: <20190702123904.8786-1-colin.king@canonical.com>
To: Colin King <colin.king@canonical.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190923082511.52E7C613A3@smtp.codeaurora.org>
Date: Mon, 23 Sep 2019 08:25:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_012511_707498_E22A4BF7 
X-CRM114-Status: UNSURE (   5.52  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maya Erez <merez@codeaurora.org>, kernel-janitors@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 wil6210@qti.qualcomm.com, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Colin King <colin.king@canonical.com> wrote:

> There are a bunch of spelling mistakes in two ath drivers, fix
> these.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

80ce8ca7a647 ath: fix various spelling mistakes

-- 
https://patchwork.kernel.org/patch/11027799/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
