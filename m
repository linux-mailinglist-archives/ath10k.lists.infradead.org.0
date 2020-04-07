Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 448A91A05FA
	for <lists+ath10k@lfdr.de>; Tue,  7 Apr 2020 06:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zwg8lBCzu/HIHsIY9T+uS7BL4dQVD8G/xnjUR8AyEn0=; b=TqfDPByyYOLhsX
	5QNWJ9uk3BJGUX8hZ4ioDG6ZhMIhLkeJgjLP5PlPAZ53ZmV86oHhMtzw2dxmISLGSPIIvMTm14hnt
	5q0Fd6tab++UA1hqJNdnquP/nTWajZ2O6E1yyxkcTKI5p/U3d/+kj/5hDCFw8cQJ6tB/ZNoDnkHAa
	vpaMkWDUEi0Hk+itgnEpyglOF9K/LurZbUONNMCnl7c0+D4LqW0/PMd7W0LrY5iRArFRUdTJWGB0Q
	8mn2CiJAX+n/+xF/l6fveCbbreuCNk0uwrghynB8dhHwR5Uw7Acp3lHMDUmdzkZHL7ErraEG/Y1BY
	crMUSBeLPIi5vylsLHyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLgH5-0008R1-CA; Tue, 07 Apr 2020 04:55:47 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLgGy-0008Qa-8x
 for ath10k@lists.infradead.org; Tue, 07 Apr 2020 04:55:44 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586235343; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=X/GZBrPjzhohs2EciwYj8PzkEbWiJ7M/xZcNnceLXxM=;
 b=gL8ZX34d4enTGa1p3QWIGIS32QwtCdOanFcqf6Biz6rAIBqUCp2+pdX5wh7D0ScK0GFUJLvn
 iARLdrIkBg/TxQsen02/CQbfoSDhmGMqF6tAgaff9/I8cPut5t1GOOHOyNrfWuzdQ0RLCWhu
 UcEGD/2VipR477aEqOky0+MKqdY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8c07c0.7f1ccf737ed8-smtp-out-n03;
 Tue, 07 Apr 2020 04:55:28 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C8BA0C433F2; Tue,  7 Apr 2020 04:55:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6FA3AC433D2;
 Tue,  7 Apr 2020 04:55:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6FA3AC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: fix kernel null pointer dereference
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1585736290-17661-1-git-send-email-vnaralas@codeaurora.org>
References: <1585736290-17661-1-git-send-email-vnaralas@codeaurora.org>
To: Venkateswara Naralasetty <vnaralas@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200407045527.C8BA0C433F2@smtp.codeaurora.org>
Date: Tue,  7 Apr 2020 04:55:27 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_215543_119129_EE903622 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Venkateswara Naralasetty <vnaralas@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Venkateswara Naralasetty <vnaralas@codeaurora.org> wrote:

> Currently sta airtime is updated without any lock in case of
> host based airtime calculation. Which may result in accessing the
> invalid sta pointer in case of continuous station connect/disconnect.
> 
> This patch fix the kernel null pointer dereference by updating the
> station airtime with proper RCU lock in case of host based airtime
> calculation.
> 
> Proceeding with the analysis of "ARM Kernel Panic".
> The APSS crash happened due to OOPS on CPU 0.
> Crash Signature : Unable to handle kernel NULL pointer dereference
> at virtual address 00000300
> During the crash,
> PC points to "ieee80211_sta_register_airtime+0x1c/0x448 [mac80211]"
> LR points to "ath10k_txrx_tx_unref+0x17c/0x364 [ath10k_core]".
> The Backtrace obtained is as follows:
> [<bf880238>] (ieee80211_sta_register_airtime [mac80211]) from
> [<bf945a38>] (ath10k_txrx_tx_unref+0x17c/0x364 [ath10k_core])
> [<bf945a38>] (ath10k_txrx_tx_unref [ath10k_core]) from
> [<bf9428e4>] (ath10k_htt_txrx_compl_task+0xa50/0xfc0 [ath10k_core])
> [<bf9428e4>] (ath10k_htt_txrx_compl_task [ath10k_core]) from
> [<bf9b9bc8>] (ath10k_pci_napi_poll+0x50/0xf8 [ath10k_pci])
> [<bf9b9bc8>] (ath10k_pci_napi_poll [ath10k_pci]) from
> [<c059e3b0>] (net_rx_action+0xac/0x160)
> [<c059e3b0>] (net_rx_action) from [<c02329a4>] (__do_softirq+0x104/0x294)
> [<c02329a4>] (__do_softirq) from [<c0232b64>] (run_ksoftirqd+0x30/0x90)
> [<c0232b64>] (run_ksoftirqd) from [<c024e358>] (smpboot_thread_fn+0x25c/0x274)
> [<c024e358>] (smpboot_thread_fn) from [<c02482fc>] (kthread+0xd8/0xec)
> 
> Tested HW: QCA9888
> Tested FW: 10.4-3.10-00047
> 
> Signed-off-by: Venkateswara Naralasetty <vnaralas@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

acb31476adc9 ath10k: fix kernel null pointer dereference

-- 
https://patchwork.kernel.org/patch/11468873/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
