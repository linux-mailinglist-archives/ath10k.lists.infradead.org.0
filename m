Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DC3B5014
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 16:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEvxaTscnviF6xZo70HKBQ97fTE0Ls4mcNC50vY13jA=; b=p5TnPCT3uLJRnz
	PAhKOlAtP4SvZJSjNCOcCmfphFDYtam5M/8qAXeOMknle7UjSg2v+OR5au03FsQCNvIBbOkd34ylU
	dMseRFVxnbcUOEOiCmsPZqYjXtNFcU8AWxXbeHuXW4fCYR8fIlJbpHUhzWWCmFNZwR7dAo4Zr8CtF
	+bJbPA/lw+WYn2BMarU6Egfr+TsdZAV14h6pyRePsm5sNQW3cmRjRHVZ2/a8zd+JpVQMtJk2epNGn
	7cx1VSzcc8nw3DbVjYRXLC1uQB9fe3CVk934i8PhQX3wUFpw0rUnF01cfhLeefNczRwFNPRKobaMT
	UKdATtCVrbtZ5xjugScQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEDd-0004X3-Dg; Tue, 17 Sep 2019 14:12:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEDY-0004Wi-95
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 14:12:33 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0062C6141C; Tue, 17 Sep 2019 14:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729552;
 bh=kD4bbMc4g8WH+jV85zr2te+dC+OYHVAzpLQmpSpMSlk=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=CN3NJEiWf1xu/1n7z47M6rZ5kbrcFZDwwSwFZAdu+9GoFuWrVqdDWP1dOILIyzUVD
 GU4/BQzq7xEH9iTxJn/NjzmE9Cw0vYKr+Ji+cpsJUc/kyjVqJvw5xKFFPlvTaOvROT
 BzX9xS1dJb0UHFu08aP50Kq4XC1cO7t9zM8udTok=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8304960790;
 Tue, 17 Sep 2019 14:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729551;
 bh=kD4bbMc4g8WH+jV85zr2te+dC+OYHVAzpLQmpSpMSlk=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=QbGkNIE9zQFJGmZWVIs8tzo/JpGubl6MxXGNcHJZK7LzZzV7nLq6AbX1ts9QoKigN
 YvcktSlbrIzX7xMlFhjHZuZ5HUQ+JUdBfY+2QEpRWYu3y41UwDAl0TMp4dmJFBaEq5
 mEuBrML0Tlx6BOH/P25Psj7HG2LxNp8ZD6rljMaU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8304960790
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: fix latency issue for QCA988x
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1567046712-23057-1-git-send-email-miaoqing@codeaurora.org>
References: <1567046712-23057-1-git-send-email-miaoqing@codeaurora.org>
To: Miaoqing Pan <miaoqing@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190917141232.0062C6141C@smtp.codeaurora.org>
Date: Tue, 17 Sep 2019 14:12:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_071232_343169_6D35AF05 
X-CRM114-Status: UNSURE (   7.59  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Miaoqing Pan <miaoqing@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Miaoqing Pan <miaoqing@codeaurora.org> wrote:

> Bad latency is found on QCA988x, the issue was introduced by
> commit 4504f0e5b571 ("ath10k: sdio: workaround firmware UART
> pin configuration bug"). If uart_pin_workaround is false, this
> change will set uart pin even if uart_print is false.
> 
> Tested HW: QCA9880
> Tested FW: 10.2.4-1.0-00037
> 
> Fixes: 4504f0e5b571 ("ath10k: sdio: workaround firmware UART pin configuration bug")
> Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

1340cc631bd0 ath10k: fix latency issue for QCA988x

-- 
https://patchwork.kernel.org/patch/11122193/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
