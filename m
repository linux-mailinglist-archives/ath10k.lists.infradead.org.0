Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3365BAF81
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 10:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38/devCG8Dy1hBXT/GxjRacMBT7GHo91j9M7FavXa7A=; b=RpDEBXmhQVQf0A
	dWFOLHzF0fRhB6WOB5ozg21QrCNQQmDiR2lz+kdINrQT9DM2DVKtmTzTpfOfUQHrF0cDLXuh5MOEh
	ffWruIhvVj1A081tMoQo65d05uSe51Y/iLZEvX4FIBt/YKyHPJqprnBDnseD9kJfqWBPbOHIhzcv2
	amTv9Q6JoPVIkjQY7iJiRFiuLUngSigorG9MIgB7vTKU/CAh2pyA2U6BgYYQY9aDVpanFySejykWs
	YG60qQ3VeGaNqMJpKA+pdhWUh3a3vylf19XRvY8K0y4tRX90LrkuOUeMqtR8JVmlLh/IODj2UhqBj
	ekWeioDfBG7dK+EcN2+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJhT-0004Xe-2i; Mon, 23 Sep 2019 08:28:03 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJhE-0004On-1s
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 08:27:49 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 814776141B; Mon, 23 Sep 2019 08:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569227267;
 bh=mhS2G1AyLYaE6VeS+sQ3EeUrgEn1W/JYE/0x6MosluQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=MFkUGX7hBIXGtgORz1V4Eplf9H1ofwqqAypKWlg5sUv5pRNnnf96Hxl5UIzqlWvpy
 usHaRTGu7o1L5kHCQ6ZiUKoFOqQMEnBj3jNBxN7RJEX+0BE+OCm2N0xFjwvUgstdmL
 5CbNMklmS/AJumYNtcJTXiCW2kKGAu0zg68FzJqY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D31046074F;
 Mon, 23 Sep 2019 08:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569227266;
 bh=mhS2G1AyLYaE6VeS+sQ3EeUrgEn1W/JYE/0x6MosluQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=RPI8wiYVyXDmKKZULb5OEOUbxwm7ut3W+Ykam2qjnYP/1Weus7Wo8XBdQgL+DlBTg
 s3IvZj/QzxCmFw0XmwG+G3AcNCfx7eKLJX+Vmyd93m4L28bR+D0w75WlDflUkktk5z
 14oB12kG6vTLgelYQcU2GlswIS6Z7kJGmDyj9TnA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D31046074F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: remove the warning of sdio not full support
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1567767301-22940-1-git-send-email-wgong@codeaurora.org>
References: <1567767301-22940-1-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190923082747.814776141B@smtp.codeaurora.org>
Date: Mon, 23 Sep 2019 08:27:47 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_012748_138983_8A9B3D31 
X-CRM114-Status: UNSURE (   6.05  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> Recently, it has the basic feature of sdio tested success, so remove
> it.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

35cc054d944e ath10k: remove the warning of sdio not full support

-- 
https://patchwork.kernel.org/patch/11135025/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
