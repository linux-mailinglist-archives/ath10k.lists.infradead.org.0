Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E87D68691
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 11:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJktuXeMfdiEowO2N+2Ne5Np4h17GMYjoZ1aPzhwAZA=; b=SOgkEQ2y76tHQ3
	61dH77RQE8WSI3Kn9yoqNdnUAauF1uaXfY0G2ZT4llHRyuwnNKzIw0D+qFsMVgSWrXMCG3p3r/XSd
	dPR3qm18xSQY4f13LanSiyOuFgwUUrTc5khL6wyXTsNBq+Rvp3l6/CKCSO+R16qSq2gvziNHV/Kzz
	6YlQq0H5LQ4m5p59u11Qqj+hxBDkWsAfCuJQIeIBDxxIX7ZADnk9T5qP/PE4vlcPHjFhwYeAoBIrL
	9FPATAHgGQChsBxNG4mUs+VRIPuIak/tDTPyQBpVP1Jg5UqD4f5rVGKOsN0f5mow6jK5AUywoVqeO
	cjyCWvv69j/i3ebCog2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmxXN-0003gK-8j; Mon, 15 Jul 2019 09:44:49 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmxXG-0003fR-6q
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 09:44:43 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B624261112; Mon, 15 Jul 2019 09:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563183879;
 bh=ogNfDzJGeCchNe8Cj5MSCueMmkdzlA9bajadZwl42gg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=PINET64BOpNC1lwjrFMaoBGTtCsE3gP3joRwqkgtvCJGY9hHuiNwzzhRZDME6AW/V
 oY3AJ6i8ftdmCRgl3UlLTKeiIeKQLxuHbwKYrHq/oW9Ab4WnJ+fPTeVoHvS6h6+V9f
 Nf4aHZro33Q5X+ImkDUtsvNj/+MFYj6HNjM3ODPA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 124296049C;
 Mon, 15 Jul 2019 09:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563183879;
 bh=ogNfDzJGeCchNe8Cj5MSCueMmkdzlA9bajadZwl42gg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=PINET64BOpNC1lwjrFMaoBGTtCsE3gP3joRwqkgtvCJGY9hHuiNwzzhRZDME6AW/V
 oY3AJ6i8ftdmCRgl3UlLTKeiIeKQLxuHbwKYrHq/oW9Ab4WnJ+fPTeVoHvS6h6+V9f
 Nf4aHZro33Q5X+ImkDUtsvNj/+MFYj6HNjM3ODPA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 124296049C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ath10k: work around uninitialized vht_pfr variable
References: <20190708125050.3689133-1-arnd@arndb.de>
Date: Mon, 15 Jul 2019 12:44:33 +0300
In-Reply-To: <20190708125050.3689133-1-arnd@arndb.de> (Arnd Bergmann's message
 of "Mon, 8 Jul 2019 14:50:06 +0200")
Message-ID: <87v9w3pr7i.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_024442_284650_AFCE9B13 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sriram R <srirrama@codeaurora.org>, Miaoqing Pan <miaoqing@codeaurora.org>,
 Pradeep kumar Chitrapu <pradeepc@codeaurora.org>,
 Balaji Pothunoori <bpothuno@codeaurora.org>,
 Brian Norris <briannorris@chromium.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 Rakesh Pillai <pillair@codeaurora.org>, Wen Gong <wgong@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> As clang points out, the vht_pfr is assigned to a struct member
> without being initialized in one case:
>
> drivers/net/wireless/ath/ath10k/mac.c:7528:7: error: variable 'vht_pfr' is used uninitialized whenever 'if' condition
>       is false [-Werror,-Wsometimes-uninitialized]
>                 if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7551:20: note: uninitialized use occurs here
>                 arvif->vht_pfr = vht_pfr;
>                                  ^~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7528:3: note: remove the 'if' if its condition is always true
>                 if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7483:12: note: initialize the variable 'vht_pfr' to silence this warning
>         u8 vht_pfr;
>
> Add an explicit but probably incorrect initialization here.
> I suspect we want a better fix here, but chose this approach to
> illustrate the issue.
>
> Fixes: 8b97b055dc9d ("ath10k: fix failure to set multiple fixed rate")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I'll queue this for v5.3.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
