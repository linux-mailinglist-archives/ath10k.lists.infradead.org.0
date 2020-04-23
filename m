Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 107EB1B53D7
	for <lists+ath10k@lfdr.de>; Thu, 23 Apr 2020 06:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkBigNhRqIQLhNUQr8GkpZNoRsB7z2Ycwm8q5ZUzOjc=; b=k9lguYE5tePqZS
	OGWUbdQk5sLHNEMcZdtoCF5WpkOn7BcE1roh9EYAzGCcdokEzO+VNWjvWfrpVuGDAFxAIGhT/5TUo
	e5aEaB2W7pLbiGT0Q5jUoXmeJLhWksI3IRPgoUSgDNh+RsFvTwMTn1mDkzTDOHLeqnubSJvNyy/PT
	/FOYQHo+i00PE2SXJAwx0rIWg7O0u2HGjviUdLw/UukKxYa7/1VFs50PSOS8MueBDy1aDjDS1L7Zi
	2YNAN+Y7AQbboIshbrdQtRIYCoyjHqHYNFe1dylPKpUYOYSsXIZzzNzKiB3xYzXMrLeucUDQowgVA
	97lCQiDfGHAAf7qQ8csw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRTrR-0007wg-H6; Thu, 23 Apr 2020 04:53:17 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRTrL-0007uL-JP
 for ath10k@lists.infradead.org; Thu, 23 Apr 2020 04:53:15 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587617583; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=3gaGITc2mtUH4RMdNO+XHqahY0BeFHkvQfICw+F+45I=;
 b=qUfPX3W8K0EoLPRUPQAAaZaDX9PIH9lPmoONP9tpt0XMNm+UPMe0gce+QoErlFiPnGXTWenS
 PpnuSJg4AXZMcncvw+HGH4CWsHWQhdg0GHsAisPBtpSaNR6Dk12UJQ2o+VqOmT6UXZm/910o
 841kXmoJTr8A8SHF5rCI7UQ4EVQ=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea11f2c.7fe4253db5e0-smtp-out-n01;
 Thu, 23 Apr 2020 04:53:00 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 26118C433BA; Thu, 23 Apr 2020 04:52:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AB336C433CB;
 Thu, 23 Apr 2020 04:52:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AB336C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Fix the invalid tx/rx chainmask configuration
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1587495512-29813-1-git-send-email-mkenna@codeaurora.org>
References: <1587495512-29813-1-git-send-email-mkenna@codeaurora.org>
To: Maharaja Kennadyrajan <mkenna@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200423045259.26118C433BA@smtp.codeaurora.org>
Date: Thu, 23 Apr 2020 04:52:59 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_215311_697334_EF421117 
X-CRM114-Status: UNSURE (   8.41  )
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Maharaja Kennadyrajan <mkenna@codeaurora.org> wrote:

> The driver is allowing the invalid tx/rx chainmask configuration
> (other than 1,3,7,15) set by the user. It causes the firmware
> crash due to the invalid chainmask values.
> 
> Hence, reject the invalid chainmask values in the driver by not
> sending the pdev set command to the firmware.
> 
> Tested hardware: QCA9888
> Tested firmware: 10.4-3.10-00047
> 
> Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

aac392d8553f ath10k: Fix the invalid tx/rx chainmask configuration

-- 
https://patchwork.kernel.org/patch/11502099/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
