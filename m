Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E78454F70
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 14:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0d0+h9s+GBTYlujkdUsxvpext0A5cB9HGk6jJ59ujU=; b=e6d+7q7pV2MA51
	saeMe8BwlnaWMnhBLDkf5+AHUF2AiS8qTDt+6tFCzEyyf3ZXnyOEQMi9PzYQdFba5eUbkF04YxfDU
	NHtOQGyxtRwEp8gYhOM/v2+jW6C/+ZPUeWQ6KcY+knA0VRUIM87JxuYUHhfQFLBivJvvwa8oZ+YDu
	/ItxDq8N/QSGmS09OPQisKtP79VyJJaYL9MpYQz0gqCdqK1HYhzyKNUeDO72R47sTNaNVMvYvOlx1
	YKkTvbf3lSTmDEweRY3QoS5N+0vUpB8kWKvWJmqYWY2W/W0gs6kt4cluuQrzQQmc2reZyGiY+VmDg
	EXSgx3xQwvne9gsZ6AjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl0A-0006aS-Og; Tue, 25 Jun 2019 12:56:46 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl06-0006Zz-PD
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 12:56:44 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 14A2860867; Tue, 25 Jun 2019 12:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467402;
 bh=FTPTJcuABQER6lKniScqhPccKzGnG+MXaGguW45oagg=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=CZg8V71fdFN8G2TwOhBU5ULG/Rvvquywsx/jcI+fKdVOObQbbLzVUcIxW3P7dAksF
 fTEJrR+ozwUpUGTJPZg/esni3VMbcQnfb2KKoHkhJ6EtJx92x8vgvdU5Hy0j+TegZI
 ijQ8DwhA5qsxsDm3UsRfTJa6QfHF2uh/1nPCDg44=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 604B960300;
 Tue, 25 Jun 2019 12:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467400;
 bh=FTPTJcuABQER6lKniScqhPccKzGnG+MXaGguW45oagg=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=AMsOKW0frEvliFqXooRtEoMC5u8hmXYuifdQsCM85ZOnF0A4xxVm6UbYFuAyvIUDt
 YC/EHdzZ6uiD6NqJL0QIqfC6srSedR9yyMgB7yQK04M9VEfc9giJKuP/JG/UMWwFky
 kxJ76+bYdvSYeMlsdxhJsqEBTIbFCsOQzSKy5+L4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 604B960300
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: enabling tx stats support over pktlog
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1557759187-23910-1-git-send-email-bpothuno@codeaurora.org>
References: <1557759187-23910-1-git-send-email-bpothuno@codeaurora.org>
To: Balaji Pothunoori <bpothuno@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625125642.14A2860867@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 12:56:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_055642_836462_75BC4475 
X-CRM114-Status: UNSURE (   7.77  )
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
Cc: Balaji Pothunoori <bpothuno@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Balaji Pothunoori <bpothuno@codeaurora.org> wrote:

> For QCA988X target, pktlog gives details of the tx bitrate
> which is used in the driver for station info.
> 
> Enabling pktlog by default will cause more interrupts
> in target to host CE pipe, which can impact more CPU usage
> for targets ex:WCN3990 and also not required for all other
> platforms (eg: WCN3990), for getting tx bitrate.
> 
> Enable pktlog only for QCA988X based on hardware params.
> 
> Tested HW : WCN3990
> Tested FW : WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
> 
> Fixes: e8123bb74c4e ("ath10k: add per peer tx stats support for 10.2.4")
> Signed-off-by: Balaji Pothunoori <bpothuno@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

4fa42adebe5b ath10k: enabling tx stats support over pktlog

-- 
https://patchwork.kernel.org/patch/10941167/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
