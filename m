Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31341BB9E9
	for <lists+ath10k@lfdr.de>; Tue, 28 Apr 2020 11:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6b6A4sxWEjYytZlmevAyDbzuCpLZJoAkrYSjkFQ7/28=; b=YpAY8+rhmUnk8f
	sM9pU0ecah6Y/x4zGbB/zPIRvl7KsfvdlzlpQwF1MPyBLh/+mM3eKkIGp2/efhe5azdJBmEVGSggK
	RpHiPQIA97YZZrqCaQMpIZk8U5T4vmX0cIO6IQPec0D57Lqwhcv2ctw7yJNRBq9LGPPYORLZV9j+c
	7SvI6+1S7gokgtQYEKPNAHedqexQu2T6DAzpDRPWKAPiBo3l4Drbx7rlBPhh/m0GbEXV6gic+P9b1
	At4TiDSDu9uLBNslOdgo3AkKRUSjxdmLPLHnPQBS3q1zWJKEfApv3lAWH5vo37b8zWg2//ymPDyBN
	OFy0rlg+wBY79s+GfMEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMdC-0000NS-0j; Tue, 28 Apr 2020 09:34:22 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMd4-0000MZ-3p
 for ath10k@lists.infradead.org; Tue, 28 Apr 2020 09:34:19 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588066457; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=ZJDw4uzstyr32yvRRVc+6/V2a+CvApC6DC2EqgKHIZg=;
 b=mFy/u8JQuscqjwjpMpI/DhWFIh2ygOV51sBetRXFApwIzWRacqSiTOFr4uNmBX3FMbNvh2nm
 rNoQV9y7JBaMwcAWvB1yJD7OlenIsqkPxNRIZ2btbs6A8i4+vo+ZNsi7j4eWghQ08VtDOSUm
 hXEDv/NQ9bTb7P5WWAjJIk6mV64=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea7f886.7fb561045c38-smtp-out-n02;
 Tue, 28 Apr 2020 09:33:58 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C5485C433D2; Tue, 28 Apr 2020 09:33:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 43D2FC433CB;
 Tue, 28 Apr 2020 09:33:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 43D2FC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v2 1/4] ath10k: enable firmware peer stats info for wmi tlv
References: <20200427080416.8265-2-wgong@codeaurora.org>
 <20200428091303.089AEC433D2@smtp.codeaurora.org>
Date: Tue, 28 Apr 2020 12:33:54 +0300
In-Reply-To: <20200428091303.089AEC433D2@smtp.codeaurora.org> (Kalle Valo's
 message of "Tue, 28 Apr 2020 09:13:03 +0000 (UTC)")
Message-ID: <87k120eyyl.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_023417_331152_919D19EF 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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

Kalle Valo <kvalo@codeaurora.org> writes:

> Wen Gong <wgong@codeaurora.org> wrote:
>
>> For wmi tlv type, firmware disable peer stats info by default, after
>> enable it, firmware will report WMI_TLV_PEER_STATS_INFO_EVENTID if
>> ath10k send WMI_TLV_REQUEST_PEER_STATS_INFO_CMDID to firmware.
>> 
>> Enable it will only set a flag in firmware, firmware will not report
>> it without receive request WMI command.
>> 
>> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.
>> 
>> Signed-off-by: Wen Gong <wgong@codeaurora.org>
>> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>
> 4 patches applied to ath-next branch of ath.git, thanks.
>
> 2289bef25e32 ath10k: enable firmware peer stats info for wmi tlv
> 0f7cb26830a6 ath10k: add rx bitrate report for SDIO
> 3344b99d69ab ath10k: add bitrate parse for peer stats info
> 4cc02c7c1494 ath10k: correct tx bitrate of iw for SDIO

I think these caused a new warning which I missed:

drivers/net/wireless/ath/ath10k/wmi-tlv.c:3013:34: warning: incorrect type in assignment (different base types)
drivers/net/wireless/ath/ath10k/wmi-tlv.c:3013:34:    expected restricted __le32 [usertype] reset_after_request
drivers/net/wireless/ath/ath10k/wmi-tlv.c:3013:34:    got unsigned int [usertype] reset

Please send a followup patch to fix that.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
