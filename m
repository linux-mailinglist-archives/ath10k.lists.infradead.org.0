Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539BACFE00
	for <lists+ath10k@lfdr.de>; Tue,  8 Oct 2019 17:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZUkol4bWEe/+4TW0NLSE3JnGpQjhD9FAklOUcE5u34=; b=hAYwou1h21X2Re
	h+zDmDiyUwIBtBqaBn+f/ZOlcYYnyN8xslzk2LNEmbIUoKeDuxvxXjiWiEPsEq3z8iQmWRP6PPeaT
	rWUsA5DbCXWhghlsuCwojH7AWtaOeVULf0eYkTfnvr2Dbs2g5Jt/iTdbcaHk9KQKoMEy/1+a95Da8
	E8c7S4/GzExbbgghKUJNLV6p7Re+U8tDNGwnQ8qzoqzNBjivdE20Q8pRBuprT4v+Xk+he1CQFUSJ9
	RT/+DgOv4nsRfzVVNCpxs4YZ/nctXKsdIP7W+JwJrg9RcFw7sOVUvct31ylusKX0cbl7tetI7YiXo
	2EXpS+a+05rDdTe6ZP0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrfp-0003xL-SH; Tue, 08 Oct 2019 15:45:17 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrda-0000qW-QZ
 for ath10k@lists.infradead.org; Tue, 08 Oct 2019 15:43:02 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1E36B60ACF; Tue,  8 Oct 2019 15:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570549376;
 bh=PtXv/2PG6+HWdTsnqs6llorLWiI9qSK6Mjw3frrEvdU=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=pMtdY3BmpOdH1vXJJop/zCSHtunVJJQDZCK8GaxO2TsoaNoqyhao6E0bAAvG0I8uq
 j53ycZ1t+020hcZeZ1yZLVscaIzZQ6EDAJiqZeWp7Ho3p0yahAHg/iLvdyRoXArOMS
 9n2iDNM9U4o8TwvHQNq9Ks2tTbGoMIvytEZcEdlI=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B58D061ADB;
 Tue,  8 Oct 2019 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570549375;
 bh=PtXv/2PG6+HWdTsnqs6llorLWiI9qSK6Mjw3frrEvdU=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=WF+BvjbczkSra7F7qLXxhbe0xA1TwPJ4MSUSWXDR5ytPA9DnHK8nO547bgjuDhjBp
 O5vbv9uTnpFMeYjYbJ7lCB1QWA/JDp4JU4Eyp4fau3b6IXyZFy9xwsj2LYNsZJ+lY/
 WJ7AXekaFOJixje2MwyjlQX5r3BsJZ9mdGC2jryc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B58D061ADB
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Fix an && vs || typo
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191007085003.GB3865@mwanda>
References: <20191007085003.GB3865@mwanda>
To: Dan Carpenter <dan.carpenter@oracle.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191008154256.1E36B60ACF@smtp.codeaurora.org>
Date: Tue,  8 Oct 2019 15:42:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084258_924955_BA86EBD5 
X-CRM114-Status: UNSURE (   7.27  )
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
Cc: kernel-janitors@vger.kernel.org, Govind Singh <govinds@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Dan Carpenter <dan.carpenter@oracle.com> wrote:

> The kernel will Oops later in the function if either of these pointers
> is NULL so clearly || was intended instead of &&.
> 
> Fixes: 3f14b73c3843 ("ath10k: Enable MSA region dump support for WCN3990")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Sorry, Colin was faster :)

https://patchwork.kernel.org/patch/11174955/

Patch set to Rejected.

-- 
https://patchwork.kernel.org/patch/11176991/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
