Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD9154FA4
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 15:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qNQk2qeweQMdt7pKHd5Kium2QwOGm7ybDqlFUuDkF8=; b=SjF1THlqY0YDDj
	TOQ+EQP//MdXwshQW9quOJBuh6RJdn4sQS6VijQ2LlfmTsxhoT+wloUEopTkgmTx1hnHw4WUaiDow
	fuYyawvtZZXedFuEkf8Z/OLhhuIaz2Nrfaoe+pnHpuPpLe1e6XjX9/QRSSNXrzlza02A7yWkWuD/3
	o5hfTJJS3rHjyGMrNxfjkYYbZlE543idWTuRFkB+U9FZ13Qs/1lFBJaXU6hHevvliDhChhpQ0Gtbh
	ODuc6wV3eA4IXlPvLOvfS5BQzT1vDLfofsA7QCEvpWTU/r7MS/et1XgAvWbZ9ovWeX0J0O4ottr0N
	/8Yb0rMc9/4jA1k6xdUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl6n-0000c5-DS; Tue, 25 Jun 2019 13:03:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl6i-0000bG-Lj
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 13:03:34 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 57C5E6085C; Tue, 25 Jun 2019 13:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467812;
 bh=um0kHOu56NQbK5nO8lUc7zcQhQj4obdC0w6F4FGf9D4=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=KgXcpo5rkLVxVfTZeUZybrFUh2lr8YmlVrInBwI0DEIQZHuiMu7O/A6ZiFii4co1V
 ehqVMRJDhhhJGLNAoh5ox2jk5kmd4De3whC4eOuowy+FWEWGNBbArkjYhRciV2Zkup
 +EXWjGqIdqw0GpgajwRLLNmnl3dkIbdGFZ0fWhUM=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CB62360254;
 Tue, 25 Jun 2019 13:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467811;
 bh=um0kHOu56NQbK5nO8lUc7zcQhQj4obdC0w6F4FGf9D4=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=Hhe28dB69sZBItE+56FZ02t2jUHK37GZ4DS8o801xrm5hq1L7vEkvMSUPrae35iXP
 TmEGYaa35xrRDPDyIe+qRuf1gsIuvBBqzRDgyK/Wbi9PwVHJ0sqUB3HpvUUm0HwoLn
 oMaN0oXh+Wjd0D4qCGfDnmGL+Mm90/baxBmuN30Q=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CB62360254
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: fix PCIE device wake up failed
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1559180960-13565-1-git-send-email-miaoqing@codeaurora.org>
References: <1559180960-13565-1-git-send-email-miaoqing@codeaurora.org>
To: Miaoqing Pan <miaoqing@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625130332.57C5E6085C@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 13:03:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060332_735011_21412A84 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Miaoqing Pan <miaoqing@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Miaoqing Pan <miaoqing@codeaurora.org> wrote:

> Observed PCIE device wake up failed after ~120 iterations of
> soft-reboot test. The error message is
> "ath10k_pci 0000:01:00.0: failed to wake up device : -110"
> 
> The call trace as below:
> ath10k_pci_probe -> ath10k_pci_force_wake -> ath10k_pci_wake_wait ->
> ath10k_pci_is_awake
> 
> Once trigger the device to wake up, we will continuously check the RTC
> state until it returns RTC_STATE_V_ON or timeout.
> 
> But for QCA99x0 chips, we use wrong value for RTC_STATE_V_ON.
> Occasionally, we get 0x7 on the fist read, we thought as a failure
> case, but actually is the right value, also verified with the spec.
> So fix the issue by changing RTC_STATE_V_ON from 0x5 to 0x7, passed
> ~2000 iterations.
> 
> Tested HW: QCA9984
> 
> Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

011d4111c8c6 ath10k: fix PCIE device wake up failed

-- 
https://patchwork.kernel.org/patch/10968039/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
