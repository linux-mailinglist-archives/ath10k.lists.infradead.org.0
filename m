Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EB8C8FBB
	for <lists+ath10k@lfdr.de>; Wed,  2 Oct 2019 19:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKeNCidHSf4Q19ALd/C4usQlinUYQ51RNYQMgAmMTdc=; b=fbynzeVpckKTY5
	yRMwmvbHM132VqjsUxNs88zB+UGMxU48K38OV64jBl1J5iSAUO1T6pgq2N3QQxQC2Yn/vKu957i3F
	MQ+JpypAtP8647USBRNetjReI5HQpyCa2HTTLetS++xb39zlWd4uv3isvUYcPPbRGQt8b2bF5Tdz3
	Hg0ilmIk0oqsiGzJMOSLp+RpahYY3RzzFE4luEfi3Qko086P9D2NINyTyUyxCyWZl6WSw2zPielo1
	MIaAS/5jow1oiza8xFMvKPwaDBzYsBzk4/qVWPatusf4YXgtaFURRPtihOJDAUEbOdHbQtQEnEymD
	AIYsLK+AbTp84ug32N7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFiJO-0001QL-Gg; Wed, 02 Oct 2019 17:21:14 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFiJK-0001Px-F8
 for ath10k@lists.infradead.org; Wed, 02 Oct 2019 17:21:11 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0577960ADE; Wed,  2 Oct 2019 17:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570036870;
 bh=e0mkWPheC4RLsC5Ev5u60gSM5LPK0EZWhf9MXAn5Wxk=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Jll2Mf48OC6YkC92amylP74KcHqbAyZe6+AQWhPGe9NQVA3D6TJPrqh02hkkh6tdN
 QcbvcffIR8FH0SVDSrv8CwkBsd+GRh9XeM6YuN6gO0569k//mwJRRjUaQhKGJMj+pu
 M/cSHwJZ15yh90t/KADATKmpqMaWwC40R9lz7CWc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A13FD60790;
 Wed,  2 Oct 2019 17:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570036869;
 bh=e0mkWPheC4RLsC5Ev5u60gSM5LPK0EZWhf9MXAn5Wxk=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=HUAty5JTjljLZbFbl9uElQDhWLknEpT9YJLkslzKx/+dF76M/C8WuXIrif1UIESR/
 tdQWjPHTq/YH9na8lAWATDHy8WCsFIKPxbCnvoIIMBsOyNhx4rWrUeQu0wymCgRUqi
 ngV/FfOTDBCZmDJqUDNerQXWaKCzniNBl2T2/SC4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A13FD60790
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: add support for hardware rfkill
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <156985855686.10126.201242458794108566.stgit@potku.adurom.net>
References: <156985855686.10126.201242458794108566.stgit@potku.adurom.net>
To: Kalle Valo <kvalo@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191002172110.0577960ADE@smtp.codeaurora.org>
Date: Wed,  2 Oct 2019 17:21:09 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_102110_531247_FC0627EB 
X-CRM114-Status: GOOD (  11.52  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Kalle Valo <kvalo@codeaurora.org> wrote:

> When hardware rfkill is enabled in the firmware it will report the
> capability via using WMI_TLV_SYS_CAP_INFO_RFKILL bit in the WMI_SERVICE_READY
> event to the host. ath10k will check the capability, and if it is enabled then
> ath10k will set the GPIO information to firmware using WMI_PDEV_SET_PARAM. When
> the firmware detects hardware rfkill is enabled by the user, it will report it
> via WMI_RFKILL_STATE_CHANGE_EVENTID. Once ath10k receives the event it will
> send wmi command WMI_PDEV_SET_PARAM to the firmware to enable/disable the radio
> and also notifies cfg80211.
> 
> We can't power off the device when rfkill is enabled, as otherwise the
> firmware would not be able to detect GPIO changes and report them to the
> host. So when rfkill is enabled, we need to keep the firmware running.
> 
> Tested with QCA6174 PCI with firmware
> WLAN.RM.4.4.1-00109-QCARMSWPZ-1.
> 
> Signed-off-by: Alan Liu <alanliu@codeaurora.org>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

1382993f882b ath10k: add support for hardware rfkill

-- 
https://patchwork.kernel.org/patch/11166921/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
