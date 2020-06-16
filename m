Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9C91FAAE8
	for <lists+ath10k@lfdr.de>; Tue, 16 Jun 2020 10:16:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4AKkqau1Ic62dypnAdq5YxDZ7COD0QPqkbtxudReYg=; b=O1pxOJLUIxxCAH
	gGM841E/5THR8zdZzwjQLJOTuTVRajMuILgbjgfbkwlbbpfq9ZWXkSVZh+Xf0TAZOC66WbfcEdY6Q
	AtXduveHaN1Gdpp/WhyEyflxT7vsTyd6lKjX2m0UBzqy9a5ibT4D33ax6Hpr96WBBqHRmgtE5RkER
	Eeu3O4LKC0OBW6POGz7NMwhuJSvAAKLajZsYxy2gZYlZrnkGXNJc/KRvv1L4vSCbuLflWoqmxaauj
	hmUHyVoKuygeN+QpHOp8DKJkIcnH1oTyKGHxybiUlBcBI/t5wR8dyTGCCbDIGfu2+9v2SwBYEIw3b
	Nn26y+5Y6jiMtGA2YMnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6lV-0006Si-DD; Tue, 16 Jun 2020 08:16:17 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6lP-0006Iu-OJ
 for ath10k@lists.infradead.org; Tue, 16 Jun 2020 08:16:13 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592295371; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=f64PeUzV7C5W0lKbHLkX6Uj9u1p3WpcYLvSTXK1yupk=;
 b=DV+Ed1xDKq++DkIuqXJ8aT5uRDQJRSRfUK7wEvb0vO2R6PVicX8jWnLZ45LC2cdxh1h8SEZo
 f+B5KeIwjCIEdgy767YNCAfJX7XTHKzgjWZxO64kZZ/Utag/l4AGOywcxkt6UUbon4lyf86d
 eKNi43ai2mCrv/+YXccp/tEqASw=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n12.prod.us-west-2.postgun.com with SMTP id
 5ee87fcb117610c7ff6645bc (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 16 Jun 2020 08:16:11
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 32C3CC433CB; Tue, 16 Jun 2020 08:16:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 03F28C433CA;
 Tue, 16 Jun 2020 08:16:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 03F28C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v6] ath10k: provide survey info as accumulated data
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1592232686-28712-1-git-send-email-kvalo@codeaurora.org>
References: <1592232686-28712-1-git-send-email-kvalo@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200616081611.32C3CC433CB@smtp.codeaurora.org>
Date: Tue, 16 Jun 2020 08:16:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_011611_973688_F8479F2E 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: 24601deerej@gmail.com, linux-wireless@vger.kernel.org, sven@narfation.org,
 ath10k@lists.infradead.org, markus.theil@tu-ilmenau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> wrote:

> It is expected that the returned counters by .get_survey are monotonic
> increasing. But the data from ath10k gets reset to zero regularly. Channel
> active/busy time are then showing incorrect values (less than previous or
> sometimes zero) for the currently active channel during successive survey
> dump commands.
> 
> example:
> 
>   $ iw dev wlan0 survey dump
>   Survey data from wlan0
>   	frequency:                      5180 MHz [in use]
>   	channel active time:            54995 ms
>   	channel busy time:              432 ms
>   	channel receive time:           0 ms
>   	channel transmit time:          59 ms
>   ...
> 
>   $ iw dev wlan0 survey dump
>   Survey data from wlan0
>   	frequency:                      5180 MHz [in use]
>   	channel active time:            32592 ms
>   	channel busy time:              254 ms
>   	channel receive time:           0 ms
>   	channel transmit time:          0 ms
>   ...
> 
> The correct way to handle this is to use the non-clearing
> WMI_BSS_SURVEY_REQ_TYPE_READ wmi_bss_survey_req_type. The firmware will
> then accumulate the survey data and handle wrap arounds.
> 
> Tested-on: QCA9984 hw1.0 10.4-3.5.3-00057
> Tested-on: QCA988X hw2.0 10.2.4-1.0-00047
> Tested-on: QCA9888 hw2.0 10.4-3.9.0.2-00024
> Tested-on: QCA4019 hw1.0 10.4-3.6-00140
> 
> Fixes: fa7937e3d5c2 ("ath10k: update bss channel survey information")
> Signed-off-by: Venkateswara Naralasetty <vnaralas@codeaurora.org>
> Tested-by: Markus Theil <markus.theil@tu-ilmenau.de>
> Tested-by: John Deere <24601deerej@gmail.com>
> [sven@narfation.org: adjust commit message]
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

720e5c03e5cb ath10k: provide survey info as accumulated data

-- 
https://patchwork.kernel.org/patch/11605281/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
