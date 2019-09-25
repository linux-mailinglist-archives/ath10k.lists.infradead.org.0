Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8B9BDDA6
	for <lists+ath10k@lfdr.de>; Wed, 25 Sep 2019 14:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cq8DzfGHVI5rPPCv2DvA2bGw4PPI7OTDoMCiPLVt9BY=; b=VqwMXcd7uNehpu
	AWBJQQAb6/BGRvNNDGte1s5U0F/FOzQPvO5kIJK9rULqF3SeEit1hmNlTUUH42uB7r7uQQE6zLjru
	l4N/yWik3zBFRUEDr+xiyO/DfZeo13F5ZUvlsbrH6NNHu8Gpjul7yJ9anzKPqHgYJxYFEIz8oU3Il
	E7QxCAx2IQpLtuaKgtpO4GuB5ufPfJhOPC+mr+qdFYR4aBjJhA1/Dtnr/Tb8nLchjGqT7rfiuYhlw
	XbruPaAcCBiWAj8fkwmV61sK2hMM978e7qfPksvIY22ZAhrYu5mvfjuJhOO+A8jDOR6ZuW5pJCTrs
	vMCrv4vvCFkb8evGx51Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD60S-0006UA-Js; Wed, 25 Sep 2019 12:02:52 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD60K-0006Tk-7M
 for ath10k@lists.infradead.org; Wed, 25 Sep 2019 12:02:48 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3E25E6013C; Wed, 25 Sep 2019 12:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569412963;
 bh=fzW0/s40aH0wn1UyIWcQVQckKg4nvy9gajWH4C9J5mU=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=mLtwTwAHhjpPBSF4roUrhEGyOtFjMJrVyev1q+V1lIzPyadrrh4CShe5NLYiZG+0o
 AootVORLSVBG20zpoppRa2EFKpnboj9C/vTXebNxfl232iswIZwfls7TTXcUeHz07k
 X/SHpOi26mkl173Vq/pvVq+iaNp/I/9GL6ADujCY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A15CE6013C;
 Wed, 25 Sep 2019 12:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569412962;
 bh=fzW0/s40aH0wn1UyIWcQVQckKg4nvy9gajWH4C9J5mU=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=D7eC359BlIsEnN0DLDCcOZuDS5QvVDvFgI4TPVuyLz+GOTAINpjIkFcATbNFMjo0/
 Xw1cz3RgkRwne6fJ3TqBiEEWtNiDWckoDuTuo4nz3ziB2gY/KA6AeVtupA6mFSxfjt
 v2n91FWgV9LtX394BOF0y8v6yHBhgXYYYU7VZpZA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A15CE6013C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Federico Cuello <fedux@fedux.com.ar>
Subject: Re: [PATCH] ath10k: Fix ath10k_init_uart when uart_print is false
References: <20190925090856.6964-1-fedux@fedux.com.ar>
 <20190925090856.6964-2-fedux@fedux.com.ar>
Date: Wed, 25 Sep 2019 15:02:39 +0300
In-Reply-To: <20190925090856.6964-2-fedux@fedux.com.ar> (Federico Cuello's
 message of "Wed, 25 Sep 2019 11:08:56 +0200")
Message-ID: <87o8z8inxc.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_050244_292801_1011C148 
X-CRM114-Status: UNSURE (   9.36  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

+ ath10k

Federico Cuello <fedux@fedux.com.ar> writes:

> Patch 4504f0e5b5714d9d26b1a80bf1fc133c95830588 introduced a workaround
> for a firmware UART pin configuration bug, but it caused uart_print to be
> interpreted as true when it was false and uart_pin_workaround also false.
>
> This patch corrects the exit condition when uart_print is false.
>
> Signed-off-by: Federico Cuello <fedux@fedux.com.ar>

I have already applied a fix for this:

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=ath-next&id=1340cc631bd00431e2f174525c971f119df9efa1

But it's not CCed for stable, hopefully the stable bots still catch it.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
