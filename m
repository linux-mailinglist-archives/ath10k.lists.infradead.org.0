Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B28C1ABA19
	for <lists+ath10k@lfdr.de>; Thu, 16 Apr 2020 09:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxOYxmwRUVoIWWetYfAbb24SO1WV90do/q0zIcYqibY=; b=tq32aeYCYUuJZv
	8rr8hEDWoFcYCtCtfejaPTC46g3GBF7uhiB/IG52e41sz5i2GQhreTa/9xh+V0Hv+MQ3N4gw9TbI6
	Ca07zAWe5mXsu6igbm18Ci7/VcVzeCz9WBZzudqOijm2Gtbswe3mmvsPepl9VeSfaOrbtEMBEZFSU
	/1C/AkX90WcohL7zuG1Q5JuBN+zQNIlAcipmBFeVeEtsjqN2uOexHp4gu3BJC4tAUXLn0QtQY2yvf
	MyyUjYIo2jrQoGf48q75kMf6ykgvewlDbNr9i0N9x9CPCba00CRpJf5yePbsSuSPYAA9GrOETXMAa
	t0MpN0bYPw4VkUWBJfgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOz7I-0003sW-P1; Thu, 16 Apr 2020 07:39:20 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOz7B-0003rX-4N
 for ath10k@lists.infradead.org; Thu, 16 Apr 2020 07:39:18 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587022756; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=kTUwTMGt5cqrYWR5ITK2FgMxJGdYB47P8TO4nINIG3w=;
 b=QYV1tR+2+pLJcawkeVynJaNMC03r2hcuq/onQ7dmwNLuXVLll2A0mROuyXJzJQBRGTI3eoEN
 PvdLDxDg7Fzzz3vqhLgXzZdDFT8SyFSXFdmjSahWECzHL5raRT0U0cG6HPADFO57DUyuJFEf
 NzwhNIKISMWD5Luc/6NMWzu6iT4=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e980b86.7f147a972500-smtp-out-n04;
 Thu, 16 Apr 2020 07:38:46 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 92CE8C433BA; Thu, 16 Apr 2020 07:38:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0A8F6C433F2;
 Thu, 16 Apr 2020 07:38:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0A8F6C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] ath10k: allow dynamic SAR power limits to be
 configured
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1576684108-30177-3-git-send-email-kvalo@codeaurora.org>
References: <1576684108-30177-3-git-send-email-kvalo@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200416073845.92CE8C433BA@smtp.codeaurora.org>
Date: Thu, 16 Apr 2020 07:38:45 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_003916_503992_902907C2 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

> From: Wen Gong <wgong@codeaurora.org>
> 
> Add support for a vendor command for STATION, the command
> QCA_NL80211_VENDOR_SUBCMD_SET_SAR_LIMITS which is already defined in
> git://w1.fi/hostap.git (src/command/qca-vendor.h). This allows user
> space to configure power limits for 2.4 GHz and 5 GHz bands.
> 
> ath10k set pdev parameter WMI_PDEV_PARAM_TXPOWER_LIMIT2G and
> WMI_PDEV_PARAM_TXPOWER_LIMIT5G to firmware, the 2 value will
> be used as one input source to affect the tx power.
> 
> When QCA_NL80211_VENDOR_SUBCMD_SET_SAR_LIMITS set to ath10k, it will
> be saved the 2.4G and 5G limit value, If STATION is connected meanwhile,
> then the 2.4G and 5G WMI command will be set to firmware, otherwise
> it will not set to firmware at this moment. When STATION connect
> next time, it will set to firmware.
> 
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

I'll drop this from my queue now and will resend once there's a
concensus on what interface to use.

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/11301107/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
