Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E35149B14
	for <lists+ath10k@lfdr.de>; Sun, 26 Jan 2020 15:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lB/ObqGgie1oYoZx/S9RcYtVcs3VvYrhG/mE9zbA6Wk=; b=FkchSg9R2RSa8A
	IKqYpQw9VJKx8qosOFCM5J+0TXpu0Q3AtohZYJBRRo/l9zxQGlzKtTeotd6JbiVBL9kEwb653xTLj
	6vGs7PX87IaCJKm9Ag+pBDdIjyPj36s3OCBgpCP1zp4Dfq/+MMzyPEslexgEw7iXrkJ56z0cd40Cw
	wq1BzBcubv2hrVuaI10RanMrHV4b9ZuwptGSjOyvD1qNZZF3IWqGtCovecHtvzT4D+qWdCmvKs7Vi
	AXo3XFPoi/h+ouGXZVHvbAO/2CRxczkkxk3X14uQBhIYGcgf8KKw+pagHzfCfE3n9cSMuHATlPol6
	cbcp75b4tKLFR1EWAjHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iviuI-0008K3-Pf; Sun, 26 Jan 2020 14:28:58 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iviuF-0008Jl-4I
 for ath10k@lists.infradead.org; Sun, 26 Jan 2020 14:28:56 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580048934; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=83aVOTOUDuQhoi2U4p9Ef9lBJTvA8Un2TrF11BYNdnM=;
 b=o/oojhLo8zVopp6F/NauceB4qlAy4S0c51VYZlcijWj/iYGkn4xEJo4/2nue8vvePZi2XtkC
 5LxRgpome/IPS4AIwV2thaFgSNLbumQDNca1tiKCx+OOsolMSmxF2xEoPrdzESL5cP8djK+9
 jDNrtfNSJr4L4/gw8WiNhp34mAY=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2da225.7f21c47ded88-smtp-out-n02;
 Sun, 26 Jan 2020 14:28:53 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 64BA3C43383; Sun, 26 Jan 2020 14:28:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 18990C433CB;
 Sun, 26 Jan 2020 14:28:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 18990C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Correct the DMA direction for management tx
 buffers
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1579590748-17883-1-git-send-email-pillair@codeaurora.org>
References: <1579590748-17883-1-git-send-email-pillair@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200126142852.64BA3C43383@smtp.codeaurora.org>
Date: Sun, 26 Jan 2020 14:28:52 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_062855_233807_8064FF96 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rakesh Pillai <pillair@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Rakesh Pillai <pillair@codeaurora.org> wrote:

> The management packets, send to firmware via WMI, are
> mapped using the direction DMA_TO_DEVICE. Currently in
> case of wmi cleanup, these buffers are being unmapped
> using an incorrect DMA direction. This can cause unwanted
> behavior when the host driver is handling a restart
> of the wlan firmware.
> 
> We might see a trace like below
> 
> [<ffffff8008098b18>] __dma_inv_area+0x28/0x58
> [<ffffff8001176734>] ath10k_wmi_mgmt_tx_clean_up_pending+0x60/0xb0 [ath10k_core]
> [<ffffff80088c7c50>] idr_for_each+0x78/0xe4
> [<ffffff80011766a4>] ath10k_wmi_detach+0x4c/0x7c [ath10k_core]
> [<ffffff8001163d7c>] ath10k_core_stop+0x58/0x68 [ath10k_core]
> [<ffffff800114fb74>] ath10k_halt+0xec/0x13c [ath10k_core]
> [<ffffff8001165110>] ath10k_core_restart+0x11c/0x1a8 [ath10k_core]
> [<ffffff80080c36bc>] process_one_work+0x16c/0x31c
> 
> Fix the incorrect DMA direction during the wmi
> management tx buffer cleanup.
> 
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
> 
> Fixes: dc405152bb6 ("ath10k: handle mgmt tx completion event")
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

6ba8b3b6bd77 ath10k: Correct the DMA direction for management tx buffers

-- 
https://patchwork.kernel.org/patch/11343145/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
