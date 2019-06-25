Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B10654F5C
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 14:53:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bgi48Fd7TQtxeeDRs7L8h0hLzpBaOevWHLSLvenCD0E=; b=ETZc/C2EYmNmJl
	zsjb4Z4LyQ/fRTLlhDyu1xev0ibCG0NcTF47kAEZvQKdWKW/Ni2FZBW8krUWFapVoekyjs6K1Ig9P
	BtoB/e10e+zK4pzB2wnQUy2TJMcvh/dg9CUbL593KmmQGqVraaz/aNvSPrvpqzohjUrYMWX+MCyPo
	vIRjcqwJEF8ZDQdsX573TBlQa8gDP1FJDIBtLOZEYADctYXfRDylG3kFVXn58vFU2MdiEGuFBWm+A
	KMOxigkbpiGeAP/Cl+XyoZ6PpTnxWNc52soq/LAfGL1apwNqh54pS7wHypsWOjv8yzPlbryXy8lX8
	xUQxuowJUqqDs8xLZGfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkwl-0004CI-Me; Tue, 25 Jun 2019 12:53:15 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkwh-0004Bl-Hq
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 12:53:12 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 35171601B4; Tue, 25 Jun 2019 12:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467191;
 bh=Ja3ss3tOr/5lIm/1YGtE2FnzM0hoMOhF+xDDrh6TtbQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=VqcDb7BgoWFo8R5Izl+chhhfeWCkX8EC1O8CmhjbBS4JR74wWOkBETIlHBs+nJH5W
 zdq8QKC4ObHfd5fk9mGb98E0uy3+fPeNA3bBHJ2VqN2xIica9If0ZRJyvEJ6OsKYrs
 96dTKJFcsTxjNIuAAbe5TfUYbVrmXSSOhOywLCxY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 063B660254;
 Tue, 25 Jun 2019 12:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467190;
 bh=Ja3ss3tOr/5lIm/1YGtE2FnzM0hoMOhF+xDDrh6TtbQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=FeeceCQYNwVgkCO4j9Xb8+5ew72HK3AVgg2EPzjLMHBdIC48usQTQWlBzJzNuvnl0
 S2d7uke7dW6yLXeOPwBOapJgFQM5KKf1sY+efvf26uLbHUhaWKKwbFng+Grl69PS5U
 TV1s6JDOav90UkBFmPXRPLOpGr5B3/XPgDmBTLKU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 063B660254
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v3] ath10k: add support for firmware crash recovery on
 SDIO chip
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1558506776-19702-1-git-send-email-wgong@codeaurora.org>
References: <1558506776-19702-1-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625125311.35171601B4@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 12:53:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_055311_608037_3C572E31 
X-CRM114-Status: UNSURE (   9.02  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> The command to simulate firmware crash:
> echo soft > /sys/kernel/debug/ieee80211/phy0/ath10k/simulate_fw_crash
> 
> It will send WMI_FORCE_FW_HANG_ASSERT to firmware, then it will trigger
> CPU interrupt status register for SDIO chip, ath10k driver need to
> configure it while enable SDIO interrupt, otherwise ath10k driver will
> not get the assert error info.
> 
> After this change, it will success for simulate firmware crash.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Tested-by: Claire Chang <tientzu@chromium.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

0f132ba7ac64 ath10k: add support for firmware crash recovery on SDIO chip

-- 
https://patchwork.kernel.org/patch/10955189/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
