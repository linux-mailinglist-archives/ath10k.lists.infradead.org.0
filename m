Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7528F1BB99A
	for <lists+ath10k@lfdr.de>; Tue, 28 Apr 2020 11:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bOuAmo29q/b5BrTKpLTkmNCDcLGKpZ/pZz91/xUrHnc=; b=P/kzI9t+zUgMFk
	L+x3at7fHokxeAJIlJkh7vdapkjYhboooxYa1PeSgpwEcVpvvSHCrsTvwqsq8zrlXe3bcgagCksia
	xKI1AvUHAFyLYJZM/WgL5CBtZZMGVscxaMTHr7p4M4o45MEKj38ztHTBK4E0opyB2zFUAM/yqaaWn
	IUAYRMLh6UmRLVAxkKrhBYhITmFttA9hJMNpgQuNcYS8TOjyaK/4kLign09KgQegZwVyd6o5CsTcU
	jKErNBGvbW9wopJu4iw7m3lk0OhD46ozcB1NYEOJLyZP2+Vsba16KjSlKrx6DWz8cTz+u3pPtX3nc
	5GpyRh1oAq0x5MQ3MN0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMIg-00023W-Sd; Tue, 28 Apr 2020 09:13:10 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMIc-000233-7G
 for ath10k@lists.infradead.org; Tue, 28 Apr 2020 09:13:07 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588065184; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=zJlamWiQ80rdRVmN2kxUNycGaDkRRO8J7VFN+Onu9vI=;
 b=GuVUaTCAAL+Kdk/9jPLlaSZKKiXRSWM0PigwbB3d4SwKw9D2xRuikJMGMCHUHzSOYiwoqotk
 Yf7N9bPVuSn9UeHHSi6iKHbtly6H5rzjW3rAhEJo7d6uS1Go1rEcZi2IyTKco+ErtM/bZtsG
 +3gHoX8h5Vo32QNqi3ZMxDi8mnM=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea7f39f.7fe82c3d1068-smtp-out-n02;
 Tue, 28 Apr 2020 09:13:03 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 089AEC433D2; Tue, 28 Apr 2020 09:13:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A1A33C433CB;
 Tue, 28 Apr 2020 09:13:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A1A33C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/4] ath10k: enable firmware peer stats info for wmi tlv
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200427080416.8265-2-wgong@codeaurora.org>
References: <20200427080416.8265-2-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200428091303.089AEC433D2@smtp.codeaurora.org>
Date: Tue, 28 Apr 2020 09:13:03 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_021306_325540_132D01A5 
X-CRM114-Status: UNSURE (   8.36  )
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
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

4 patches applied to ath-next branch of ath.git, thanks.

2289bef25e32 ath10k: enable firmware peer stats info for wmi tlv
0f7cb26830a6 ath10k: add rx bitrate report for SDIO
3344b99d69ab ath10k: add bitrate parse for peer stats info
4cc02c7c1494 ath10k: correct tx bitrate of iw for SDIO

-- 
https://patchwork.kernel.org/patch/11511409/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
