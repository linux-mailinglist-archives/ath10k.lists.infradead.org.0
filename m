Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4250CAEB5A
	for <lists+ath10k@lfdr.de>; Tue, 10 Sep 2019 15:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQda+AYcWZynwQ+bcgr2KnT+7+FFcY5Ty2cR+bH0CtY=; b=YAfn3QrB1CJqJI
	hEwsRcj31ktmSayXeYM0wlda+/f/a+oU5vjkxzqRb/2s9lzZ0nNK3hYw7TaGgidzGTZvnG9tOtkok
	BlQFJlR91KofoxIpa3JSi8VFV1IdzK3t/PF9Otb+HfJ2hlKLc2hRC/QNiUvK81+HHJRJ+MtUfdwBL
	xQv8kJil9S7sma6pempHYF8m2+sazSudX/7vmjdWekkbKNSePbkc/QCHJdosJPd86VUTq91+AzK5c
	a8VJgcoDuZWhRK+9qE4VvMub3hDbChFMqNNffDwYs7yVk2j9kGlTL8SxARTCjkgIb7nFSxzkN2Jfn
	Y8lUsfiuCuVqmI5vDY5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7g5W-0006B7-CW; Tue, 10 Sep 2019 13:21:42 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7g5S-0006An-1w
 for ath10k@lists.infradead.org; Tue, 10 Sep 2019 13:21:39 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B08056050D; Tue, 10 Sep 2019 13:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568121697;
 bh=AaO0IDEUweLPqWI1dylbnYPhwE2avgdcIi8aYKFtP0I=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Y+jG9l6/yeXYhtBVg+IXvqi0dPQakCWxy7NTgHk76NocXBg9b9wJTvCkTIlZ952T9
 N9cxXerHfmkcZdtZ8hI38AMrYEwlq6s+X5g7osjTWbDOWbwBVLlr5Fttu5FNv7mptH
 1GBTw5sVmnBjJ6l7xnmdF82LpIc/mpUgirmToiJE=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 425C7602F2;
 Tue, 10 Sep 2019 13:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568121695;
 bh=AaO0IDEUweLPqWI1dylbnYPhwE2avgdcIi8aYKFtP0I=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=YbqopqSEVTpocHdjJPgutEI7di+tj6lLC4x0Hx48TlamkniuYl0n6fVsoyx5MLceA
 VBPZbqyFlISAGXxfOhUfrZX+iV3nUQyBrjPEw06box4OZYg0HSTC1CTB6tDnxNDdK7
 uN/vhOpWcgdBfSJIVAopJ9bQmGoq6/Si61WCgKAQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 425C7602F2
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: add reorder and change PN check logic for mac80211
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1566368605-20109-1-git-send-email-wgong@codeaurora.org>
References: <1566368605-20109-1-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190910132137.B08056050D@smtp.codeaurora.org>
Date: Tue, 10 Sep 2019 13:21:37 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_062138_140522_D3C4B61A 
X-CRM114-Status: UNSURE (   9.90  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> For sdio chip, if the rssi is not good, then it have some retry,
> firmware will indicate the msdu list of a ppdu with a hole, it
> means it lost the hole msdu, after the msdu retry from AP, the
> hole msdu will indicate from firmware later. The hole msdu's PN
> check will fail and the hole msdu will be dropped.
> 
> PN check fail example:
> Sequence number PN number  PN check status
>      3814         6101         success
>      3815         6102         success
>      3816         6103         success
>      3818         6105         success
>      3819         6106         success
>      3820         6107         success
>      3817         6104         fail
> 
> The correct logic is reorder the msdu list and then do PN check.
> ieee80211_rx_reorder_ampdu of mac80211 will do the reorer logic
> and then do PN check in ieee80211_rx_h_decrypt of mac80211.
> 
> example after reorder:
> Sequence number PN number  PN check status
>      3814         6101         success
>      3815         6102         success
>      3816         6103         success
>      3817         6104         success
>      3818         6105         success
>      3819         6106         success
>      3820         6107         success
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

db8deae03271 ath10k: add reorder and change PN check logic for mac80211

-- 
https://patchwork.kernel.org/patch/11105545/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
