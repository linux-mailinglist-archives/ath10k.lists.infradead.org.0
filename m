Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9561B9678
	for <lists+ath10k@lfdr.de>; Mon, 27 Apr 2020 07:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tl35OD6z5s+bjSOGA9HI/6QBcxpkntKP1g44mIAs/g=; b=ZCdpQQYagWXqli
	o/G8tjlfwQrVYzqx497pw+jbdyzbX/ZhAQAcGnGyoEE/iIVUQHayRKIoPUxvhbYQhqSsc7PwbVqPw
	/hIOaHJt0K099QFP7+wdWKu4qHjPMyy+N0kYhvFQMF1dAii4uhjuPWYpoJNWBDM3ZGt74/wvWGVji
	2rH+QrxA0CGHNoi2I0x+iXYNQed7JAFdBksD4esocQ5DzpzdKOA/GxmFSxSkns4LnktTDtkyDVPeN
	cwC9s19lmAV74CU+0PBHHN0zHsZDA9vJ4tyKKiuza9p9xXxRz/GYvqHy0+l8UHNpDUvG4XgrqUuR2
	po2xilbzjnztZV0Yd75g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSwD2-0000Ty-A3; Mon, 27 Apr 2020 05:21:36 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSwCz-0000Sw-1R
 for ath10k@lists.infradead.org; Mon, 27 Apr 2020 05:21:34 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587964892; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=3DQ/DlFkABOYaJeRnE3dymnHF4sQARiZ6liUShqYYLg=;
 b=oBH6+jTdkz+a3p/uk7wzsqRL6U8jO2MUxap3Xd9yzgijBExq59czRTG0k2pc0RSf2gsOUDKu
 HVXJlrk9xr+FAH0iZnlcFXTF9jgySt3UY52Gxawb7tc660SWEkdSqA30grlB5pr8hXWVKNXQ
 3sYR4ds45oW2Xa+zeNNx4ObrPCI=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea66bdc.7f63f31dc0a0-smtp-out-n03;
 Mon, 27 Apr 2020 05:21:32 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id EEF2BC433F2; Mon, 27 Apr 2020 05:21:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8CEFCC433D2;
 Mon, 27 Apr 2020 05:21:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8CEFCC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/4] ath10k: enable firmware peer stats info for wmi tlv
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200423091856.24297-2-wgong@codeaurora.org>
References: <20200423091856.24297-2-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200427052130.EEF2BC433F2@smtp.codeaurora.org>
Date: Mon, 27 Apr 2020 05:21:30 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_222133_148060_8A85693F 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> For wmi tlv type, firmware disable peer stats info by default, after
> enable it, firmware will report WMI_TLV_PEER_STATS_INFO_EVENTID if
> ath10k send WMI_TLV_REQUEST_PEER_STATS_INFO_CMDID to firmware.
> 
> Enable it will only set a flag in firmware, firmware will not report
> it without receive request WMI command.
> 
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

Fails to apply, please rebase.

error: patch failed: drivers/net/wireless/ath/ath10k/core.h:502
error: drivers/net/wireless/ath/ath10k/core.h: patch does not apply
error: patch failed: drivers/net/wireless/ath/ath10k/mac.c:8326
error: drivers/net/wireless/ath/ath10k/mac.c: patch does not apply
stg import: Diff does not apply cleanly

4 patches set to Changes Requested.

11505367 [1/4] ath10k: enable firmware peer stats info for wmi tlv
11505377 [2/4] ath10k: add rx bitrate report for SDIO
11505371 [3/4] ath10k: add bitrate parse for peer stats info
11505369 [4/4] ath10k: correct tx bitrate of iw for SDIO

-- 
https://patchwork.kernel.org/patch/11505367/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
