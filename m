Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C78181E13
	for <lists+ath10k@lfdr.de>; Wed, 11 Mar 2020 17:39:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72YvnK7rslK6jd0bS4E0vVSkimaN1jGFa4PgHg23X4o=; b=u3y1A+u1Y4Udsb
	qz7A3XcXOEIZQhAFpEMOxaImOaiKqnSYYpDFQSNZgQbZS672iRxTRLTIWQzvLbeET/PqG9wW+w2Qe
	5pA92CBs0A7oodb84pu9W2ALMd/YmaxhFrrhqAQeKuC6iH1DjKjJjTHnaHeYfjLDeFhAbUIlxgqPP
	UpoRgQQ47444ru9jC8/sMvCGPbL1r0iYDkTTNldB7eiW+D5JpedQMR9qBSGD9EvHNAfiJ4duKDAhf
	ASsByWO3K06E4DeqalBML1Y+s+U64NfGCPF85DDSLGnY5jAezAGkzsdrrfsJUu2r/v8Q3417ptUfG
	g5+53npLHSjdlXrCTkAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4O8-0006tz-9t; Wed, 11 Mar 2020 16:39:20 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4O1-0006tW-2D
 for ath10k@lists.infradead.org; Wed, 11 Mar 2020 16:39:18 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1583944756; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=dCBcc6LZO8xfZtNdDvLx2GB/dl+F8fo9sw7SEiiJKNo=;
 b=Y23XH4DJYOj8Q9tVgyjE5bZ0+3Z/WnDrEnFgmMfHQ91U9XWD9Xd/4PdoSSpED9/n8eUblLfX
 UBrtWmqO2V/oTJIC9I4NGxZxl18K3rN+UhdyB1/xufLY2rZkynsX0Ic++vGC4gbAtB33zm02
 ij8VOKR/Eb6dMJLe1VBaZiaurEc=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e69142b.7fb5941bec38-smtp-out-n05;
 Wed, 11 Mar 2020 16:39:07 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 883A6C432C2; Wed, 11 Mar 2020 16:39:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 02675C433BA;
 Wed, 11 Mar 2020 16:39:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 02675C433BA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: start recovery process when read int status fail
 for sdio
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200214034007.24512-1-wgong@codeaurora.org>
References: <20200214034007.24512-1-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200311163906.883A6C432C2@smtp.codeaurora.org>
Date: Wed, 11 Mar 2020 16:39:06 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_093916_987213_2B771D25 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

> When running simulate crash stress test, it happened
> "failed to read from address 0x800: -110".
> 
> Test steps:
> 1. Run command continuous
> echo soft > /sys/kernel/debug/ieee80211/phy0/ath10k/simulate_fw_crash
> 
> 2. error happened and it did not begin recovery for long time.
> [74377.334846] ath10k_sdio mmc1:0001:1: simulating soft firmware crash
> [74378.378217] ath10k_sdio mmc1:0001:1: failed to read from address 0x800: -110
> [74378.378371] ath10k_sdio mmc1:0001:1: failed to process pending SDIO interrupts: -110
> 
> It has sdio errors since it can not read MBOX_HOST_INT_STATUS_ADDRESS,
> then it has to do recovery process to recovery ath10k.
> 
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

37b7ecb75627 ath10k: start recovery process when read int status fail for sdio

-- 
https://patchwork.kernel.org/patch/11381639/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
