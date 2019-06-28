Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8929D5A4EE
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 21:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DafBsw3IeDV+8t3TjNmkDu07BysLTNjMejkpNKxNOEQ=; b=AXbDJGIZ/KNv3B
	d7EDc2kYjnHky1nCflimdxtP8oirePb26t9k8+CMr0jSCGomO6585DzAPF4iO2ihDqPXeIWilmWCS
	M4QA71OfUNAAfIalqzPAK7n0gj0nJqPtmTXI5cpBEufZk5tsf1HDXUc4IsiUGek6bAcRo6kGKbcBi
	FAQhrK9OlyQkRCF7WMCJP0xocqz7/SUShiNba71Z4vLwL3Nr3jFPpUP+EAblAYXk0Uq1BOJxOBWD4
	GcEIyAl0GOaWUSLy6ESLzM2GU6C62qSVfAOsRRRq36jPWdeZT0An3PbXYjMl5Kjb2GGV6p3Bs69st
	fK3FOksHyvIBPasQhopQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgwIR-0002qz-5f; Fri, 28 Jun 2019 19:12:31 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgwII-0002qZ-An
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 19:12:27 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 15B1660909; Fri, 28 Jun 2019 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561749142;
 bh=57OsG2MJk+mmMG66aedSpU3o/1LIsF95/LTgFx7hbvQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=XCl1QNVRoNPPLMlYG3PsUrDtTgBfY/McZnMqt+MP8+7tUpjTXHbuTBE9wsXeZJP2L
 nJUgPmaGIon+qcIRbU0NUA7wzhjxj+3w7a/HVGjkK9PwLAJa+dGguMKSjsBIMREs1O
 xxwOtqAlfg/BNyMQpwvvNlWDDyvnm3MjZ6Lo+wgk=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C3890604BE;
 Fri, 28 Jun 2019 19:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561749141;
 bh=57OsG2MJk+mmMG66aedSpU3o/1LIsF95/LTgFx7hbvQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=g69xoJ+ns/k2o4FbbMT/EKiPKodZFdUb7YgwDn6x5K8iubQcHhMWZEYUZb2EtYXkV
 iVHNLxn/XXfL7pVkkeGSETFhoiKwcQ+/eEVFOlcWMLkE6ofa07ao7zmdFZlBX6Moe9
 0xDcqqgz8FtBhsJcgUz7UOIPQSTW5H5x1vdqrpOc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C3890604BE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Move non-fatal warn logs to dbg level for SDIO
 chip
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1561516175-13873-1-git-send-email-wgong@codeaurora.org>
References: <1561516175-13873-1-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190628191222.15B1660909@smtp.codeaurora.org>
Date: Fri, 28 Jun 2019 19:12:22 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_121222_384705_B826379C 
X-CRM114-Status: UNSURE (   7.15  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> ath10k will receive some message with invalid peer id from firmware.
> reason is:
> There are incoming frames to MAC hardware that NOT find relative
> address search table, then peer id is invalid set by MAC hardware,
> it is hardware's logic, so fix it in ath10k will be more convenient.
> 
> log:
> ath10k_sdio mmc1:0001:1: Got RX ind from invalid peer: 65535
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

bd1a4ac556df ath10k: Move non-fatal warn logs to dbg level for SDIO chip

-- 
https://patchwork.kernel.org/patch/11016771/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
