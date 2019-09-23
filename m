Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DB7BAF90
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 10:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KdOxXNnB87LYeG4J5fBO4fv3tS3DMyb5Md5tNqK/rUg=; b=IizClwpnsfx9Ls
	4A8p4e2mVbJVIP7tYzxvYaF92LTrNP0+XHgyS82PhtIQeu7Xw/Ee/l9ceTGoQBz10YoRYkkbWpSb+
	93ZgnD+5uqQ7+v8+Il51z6nKBHQ6rAFSrlAOXmLZDTMfNfm+7p5vfIZSxPFZp9rBIBbRUuXcQJPm/
	wcdQsdbcXzlVFPBniPwzcOZnYPWh6rhyXHp9wEoDEfW53Njyjnez8348tbwkAo76Xl5es31nB2541
	SYbT8POVyY8EA9upYpMe/gqdW/f9jwHzcnhr3MMZVPLPfFzZ0cp/DczzlUgfPrtpBbsWZl9NM3eLh
	3dp9RwjgB6s7MYJZRTuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJk4-0006Ki-NV; Mon, 23 Sep 2019 08:30:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJjz-0006KH-Df
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 08:30:40 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id AE7F26074F; Mon, 23 Sep 2019 08:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569227438;
 bh=HnVJwJj5gHPia0BvUBaqff8A/iNw+l5vst68Tr3N/wc=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=kiAR8ZIHao1pQs13hKha1x/JKGbQjIH1jPav2rr2uOwx+O3dRvuRxe4pENeyeoszX
 3QT6Et+F4jpSZDqLparwjzFWJM9OYODtT/8CtJlxJ/LSTnMK7WSdNas/o5an3nqWAZ
 lVAvT1DBYttVy/BTHQhBlxrmRjYW141yM3Jtn4BI=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id ED8E66034D;
 Mon, 23 Sep 2019 08:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569227438;
 bh=HnVJwJj5gHPia0BvUBaqff8A/iNw+l5vst68Tr3N/wc=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=jOn1C3cwpkY5l/Q8GPPzdvehHy/RTXK8Eh/7pzSYj3BnRI0IbqEQcSk1gRC528yjN
 o7Dk+uuuKQMbqGBDU+ri+4EDNOP6pbznwHhO3eVe4CKYVGte4DxjoDeMepHFSroUS5
 Nz+WFL6FQU7XVqX7ZKYWWSyxZ8llGG0ajGe1oYGs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org ED8E66034D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: fix memory leak
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190920013632.30796-1-navid.emamdoost@gmail.com>
References: <20190920013632.30796-1-navid.emamdoost@gmail.com>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190923083038.AE7F26074F@smtp.codeaurora.org>
Date: Mon, 23 Sep 2019 08:30:38 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_013039_483792_E2266DEC 
X-CRM114-Status: UNSURE (   6.11  )
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
Cc: , linux-wireless@vger.kernel.org, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org, emamd001@umn.edu,
 smccaman@umn.edu, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Navid Emamdoost <navid.emamdoost@gmail.com> wrote:

> In ath10k_usb_hif_tx_sg the allocated urb should be released if
> usb_submit_urb fails.
> 
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

b8d17e7d93d2 ath10k: fix memory leak

-- 
https://patchwork.kernel.org/patch/11153699/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
