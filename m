Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC197B11C7
	for <lists+ath10k@lfdr.de>; Thu, 12 Sep 2019 17:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/f/Yu3mAqB4EXU8PDD1CCXCow56uKTL7sxybwQ/aB8=; b=lUCWizjX+GWih3
	2hHF8lNmLqlZbsMXtUQ5JEYexVG4la3/aDJLdRTtAXrzs/t9eXv4/BfZZoGxGRaen3qN9DCkXwLB9
	n+Mq+WhOPbOxaqtFAqAxOHgnl3sUm9q8azVgaO7Ios/7CaFHdhDYOEh8mlq74ntfjG7NQsKvsnsle
	mIZjzN/pTzOH6PG5KWaxhOSE2zqahr0k6pXl8XAcNJVTcPIn9pqgm/AywrWef2xQeET+ll72CJRfm
	yura0obKJA+vHmxnZPAh5P6k0AzmQoJMoeFr48AyLlC1C8sx1z+Y36ul1pVZHSrZMTUS89VM9ahaR
	6GylmRhp/NZKVRl/997Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8QfV-0006PE-2H; Thu, 12 Sep 2019 15:05:57 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8QfQ-0006Or-SP
 for ath10k@lists.infradead.org; Thu, 12 Sep 2019 15:05:54 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 2BFB060595; Thu, 12 Sep 2019 15:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568300751;
 bh=EmDled5B767UpjqGHQ2Kmli4JyKcmNLHLbVUhgKHFbM=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Gk9qmOWmMdqBCTnVGJAKm2Yhd5GQLd/DzrTXhzbiRf4QZ4A7bDZd2rHPQREqxiFQu
 sdH9LI2t6dkRbEfpEvGRbvXIs1MVXj04ZnIf1m/A4Oi5G2rSkQL+X/5L5DbUNLBVVZ
 SLIBBJJ2uZ7XsSWBYA7MQZQRMKfRqJh9fXpcCogE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CCCD9602BC;
 Thu, 12 Sep 2019 15:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568300750;
 bh=EmDled5B767UpjqGHQ2Kmli4JyKcmNLHLbVUhgKHFbM=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=ZkvtTvmhf58ifQ9AkbSehRQJnlg5FXwSz1SvPAElZW/kM5kDpjRARd5TjYCx55fS3
 1vq0DaPq5ZA32UjabOfKRg2Z2SPIMgwYsZVXP6amHZ1AGr6/zlkC321nCAfy7XkfAD
 4WiNwNzS8IbfKhE8gp2LHHzTWW05cgCne5Ns5jzI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CCCD9602BC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Fix channel info parsing for non tlv target
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1552044366-9186-1-git-send-email-pillair@codeaurora.org>
References: <1552044366-9186-1-git-send-email-pillair@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190912150551.2BFB060595@smtp.codeaurora.org>
Date: Thu, 12 Sep 2019 15:05:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_080552_941888_1CDAC0D7 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

> The tlv targets such as WCN3990 send more data in the chan info event, which is
> not sent by the non tlv targets. There is a minimum size check in the wmi event
> for non-tlv targets and hence we cannot update the common channel info
> structure as it was done in commit 13104929d2ec ("ath10k: fill the channel
> survey results for WCN3990 correctly"). This broke channel survey results on
> 10.x firmware versions.
> 
> If the common channel info structure is updated, the size check for chan info
> event for non-tlv targets will fail and return -EPROTO and we see the below
> error messages
> 
>    ath10k_pci 0000:01:00.0: failed to parse chan info event: -71
> 
> Add tlv specific channel info structure and restore the original size of the
> common channel info structure to mitigate this issue.
> 
> Tested HW: WCN3990
> 	   QCA9887
> Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
> 	   10.2.4-1.0-00037
> 
> Fixes: 13104929d2ec ("ath10k: fill the channel survey results for WCN3990 correctly")
> Cc: stable@vger.kernel.org # 5.0
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

6be6c04bcc2e ath10k: fix channel info parsing for non tlv target

-- 
https://patchwork.kernel.org/patch/10844513/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
