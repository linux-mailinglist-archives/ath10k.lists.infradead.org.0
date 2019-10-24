Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F038E2D5A
	for <lists+ath10k@lfdr.de>; Thu, 24 Oct 2019 11:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiwDOhE2IMjZ6F14nzJnA5ZsAkmaI/vYLsi3lXYRe3Q=; b=r18lKoAP3N7JUa
	lPlhraLY6Jz0Eo2/0S+ABLCKhHKL8VsSNqQAnEpIBfImfSkG4Yi6fhs8vniSXCecFia/hQhwEZ+h0
	u0hoeugr4mGHycu/5vplDExV3ASyLvrs9Nf3JHSCDUwKB0Kec5/MkBmt0tS/V3fqlj8E/+SXen5cr
	kloCDbWao+qCm/wewMLGNhdpfvJ2k8W4eO36ffYwq65DFwqJFy0VQX0Cr28qRQ8JCigfGgZ6Xjz6A
	2aMafxBv5n5LGCNcwYYN9/0/OO1tSKx0bXgvGpQifxLY6EY/IR/uL/c0jmOHOAAcL0+W/OCFkbyoJ
	xRRJ42lRRuqiMbdddYag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZSP-0006y4-SL; Thu, 24 Oct 2019 09:31:01 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZSK-0006xU-PY
 for ath10k@lists.infradead.org; Thu, 24 Oct 2019 09:30:59 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B8952607C3; Thu, 24 Oct 2019 09:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571909456;
 bh=2SfAZN67qACR4mjTRZZNqUaA1fycIXiYFgyuyNyBHq8=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=U8eR/MHd3FT2j4Fb5bZNcb0ua/00oolOhzsTFkOKjgTxotZLwbRMfPPNo1/tf+Nws
 9Q0JdZaYeQB/mS+tWYPEYikosqIJiR5nN/ZjvJftj4RhqRVGydMCBobbIcdE03mFLQ
 6oJd74ZmUShQf7A9DupKsX3PfQfGD0P9A+qQmWhI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (unknown [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 65578607C3;
 Thu, 24 Oct 2019 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571909454;
 bh=2SfAZN67qACR4mjTRZZNqUaA1fycIXiYFgyuyNyBHq8=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=KvJb15DFDdqDHY7se6I6W6g54Q+V/cdnbNerQWWMoJ9lxJp6THV216YrXHzzqBZIK
 09H7I3BNDLMRMYj/daXGM7Dx5vKdsa7q0ty4il53lz20WoSdSHERyaB1i6GHJ+Wvte
 pUUjD3tfx65FX3NZN/2tmpR2f21oe1i6wU3rLe5w=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 65578607C3
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v6 2/3] ath10k: change max RX bundle size from 8 to 32 for
 sdio
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-3-git-send-email-wgong@codeaurora.org>
Date: Thu, 24 Oct 2019 12:30:50 +0300
In-Reply-To: <1569402639-31720-3-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Wed, 25 Sep 2019 17:10:38 +0800")
Message-ID: <87mudqsd6d.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_023057_597788_2D4A9500 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Wen Gong <wgong@codeaurora.org> writes:

> The max bundle size support by firmware is 32, change it from 8 to 32
> will help performance. This results in significant performance
> improvement on RX path.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWPZ-1
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -24,7 +24,7 @@
>  #include "trace.h"
>  #include "sdio.h"
>  
> -#define ATH10K_SDIO_VSG_BUF_SIZE	(32 * 1024)
> +#define ATH10K_SDIO_VSG_BUF_SIZE	(64 * 1024)

Is allocating 64 kb with kmalloc() reliable, especially on smaller
systems? I hope it is, but checking if someone else knows better. We
only do this only once in probe(), though.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
