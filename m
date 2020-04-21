Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3123B1B2583
	for <lists+ath10k@lfdr.de>; Tue, 21 Apr 2020 14:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ur7Z2sQMPNDar9HTzkuqAhQLHL7eTR7SS3nR/ZzYX3o=; b=iSBCXgrF1aO16e
	obfrfzrEu8Dp9yHnaTNHeBg5I6COcSnkNCeZ8AS4XST0ExZp5A9mjJNDgZrZw1UrkoB6vGK5vLH0E
	LyBoJ0wWF4+XU3A8INcq63mTsaL/a/cNgdHNgivBDC1EruNUhXLDJiU7Su0pt1hCBykfSwEG2s7rd
	QV9Xzm2CXNlYkSDZE0yonIKhMjuaJw+IOgYxTpzcCoU5T7ZJBrFcaRzTvw5H9aG/qE79XFPS6snMf
	UTUn0bk4MShsJWZiykFWW65oCyMVkAX0ToaYWaP20n6xLaHYtfG4EjesWBNum7PTetyo/1ITYrHga
	24KdxaXHF6mPaC5qnzPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQrdz-0002oM-8R; Tue, 21 Apr 2020 12:04:51 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQrdu-0002nA-R1
 for ath10k@lists.infradead.org; Tue, 21 Apr 2020 12:04:49 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587470687; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=4SxVHVQVrD43/pRWvBCEq3JZFOE1kHwsNx2ELKuYVZA=;
 b=M+ItgJIySZX6Ss6kbIkG0bP4mF/5WZA51dip+gzZlmHHGeN62kjgA+JT4Zw+j/V0+QnAetiY
 qwN7npM/XakHmDCl+B2HZJxkStjdvRdpJy37pE0URc/oJMrha/lDRI/39XqiToBy/Qoq0OA4
 LY7echTi6d/VE143iv8AQmI3RWs=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9ee159.7f7ecf19c768-smtp-out-n01;
 Tue, 21 Apr 2020 12:04:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8F26BC433BA; Tue, 21 Apr 2020 12:04:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D248AC433D2;
 Tue, 21 Apr 2020 12:04:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D248AC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/4] ath10k: rename ath10k_hif_swap_mailbox() to
 ath10k_hif_start_post()
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1587037859-28873-2-git-send-email-kvalo@codeaurora.org>
References: <1587037859-28873-2-git-send-email-kvalo@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200421120440.8F26BC433BA@smtp.codeaurora.org>
Date: Tue, 21 Apr 2020 12:04:40 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_050447_669861_54A0D4C1 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> wrote:

> Convert ath10k_hif_swap_mailbox() to a more generic op so that bus drivers can
> do more than just swap the mailbox, for example set power save settings like in
> the following sdio patch.
> 
> No functional changes, compile tested only.
> 
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

4 patches applied to ath-next branch of ath.git, thanks.

557e171434eb ath10k: rename ath10k_hif_swap_mailbox() to ath10k_hif_start_post()
22f28076b6c3 ath10k: improve power save performance for sdio
589217632103 ath10k: sdio: remove _hif_ prefix from functions not part of hif interface
96c64857983f ath10k: hif: make send_complete_check op optional

-- 
https://patchwork.kernel.org/patch/11492849/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
