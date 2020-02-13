Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A907615BDB5
	for <lists+ath10k@lfdr.de>; Thu, 13 Feb 2020 12:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MurpuVDyEyvLFiyYMtFYmOhSvaZ7LGGJdNtVhX5QXu8=; b=ViIC/PdpCg30qk
	/x7e3cpEuuG92g+SsV6P4M5xpvhfG9sodSvJJwIRdhJhH6clsqJbDh9j6mtjru9jL4yjqaAHhwixn
	VdFSIJ3V6omAEirFlV0pMKKC6Vt/sAT93bw2W+f8U9PHB5IvF/FW92JV8BeCD6MNRKOMLQt4+7pQt
	aEIdopcecwOucPPVF5W35EHpqQLsxVCqs0x2mxqi7iJaKiU1WO5s9oLO2GK/5vAGYjQZ92mWYShQv
	Ry42wjAcgdNfeJPOF4OdnpLRLJJej7x5yJfo4xaBzicKbn+i3IXpxWVdZdZZriyR7sqzGQcsQbvn8
	q/3MVa+Y0bSPn6hQWHHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2CmO-000352-Ox; Thu, 13 Feb 2020 11:35:36 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2CmK-00034d-Da
 for ath10k@lists.infradead.org; Thu, 13 Feb 2020 11:35:34 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581593732; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=7YtMdqz2y/HUhn+uy6/B1++9LOzhEXSrWKV2NhwmZnI=;
 b=mesVtJ9fgOCMqOzk+TTCGijdSBFWA1A00iwkKQNkDpYn+VRXBZPrULB9zGwr7201iFAcvgLD
 /0P6D2ICcJzDmMraykBFZjlTvdxj+lZuyjy73p+DCqtBlmN6A7CK5MYC3LWzixWAqdk6Bu8O
 lpe+Utbb9xR76XSdk3OuAM2D+ms=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e453483.7fe9bb3d4a40-smtp-out-n02;
 Thu, 13 Feb 2020 11:35:31 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6EAFCC4479C; Thu, 13 Feb 2020 11:35:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 10F06C43383;
 Thu, 13 Feb 2020 11:35:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 10F06C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: add retry mechanism for ath10k_start
References: <20200120025609.6060-1-wgong@codeaurora.org>
Date: Thu, 13 Feb 2020 13:35:27 +0200
In-Reply-To: <20200120025609.6060-1-wgong@codeaurora.org> (Wen Gong's message
 of "Mon, 20 Jan 2020 10:56:09 +0800")
Message-ID: <87mu9mwwhs.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_033532_897850_CA5443DC 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> When simulate random transfer fail for sdio write and read, it happened
> "Could not init core: -110" and then wlan up fail.
>
> Test steps:
> 1. Add config and update kernel:
> CONFIG_FAIL_MMC_REQUEST=y
> CONFIG_FAULT_INJECTION=y
> CONFIG_FAULT_INJECTION_DEBUG_FS=y
>
> 2. Run simulate fail:
> cd /sys/kernel/debug/mmc1/fail_mmc_request
> echo 100 > probability
> echo 1000 > interval
> echo 1 > times && enter system suspend
> press power button to wakeup system
>
> 3. It happened Could not init core: -110.
> [   66.432068] ath10k_sdio mmc1:0001:1: unable to send the bmi data to the device: -110
> [   66.440012] ath10k_sdio mmc1:0001:1: unable to write to the device
> [   66.453375] ath10k_sdio mmc1:0001:1: Could not init core: -110

[...]

> Add retry mechanism for ath10k_start to make sure wlan up success.

I'm not convinved about this. ath10k assumes that SDIO bus works
reliably and there's no data loss. In my opinion if the SDIO is not
working reliably we should fail immediately with a clear error message
for the user, instead of having an unstable connection. And I understand
from the logs that ath10k fails cleanly in this simulated failure.

So what you do here is ignore the assumption that the SDIO bus should
always work reliably and add a workaround by trying to restart the
firmware multiple times, and hope that by luck it works during one of 10
retry attempts. But then what? Isn't the WLAN connection flaky as SDIO
bus is not reliable? So if we were to follow that design logic,
shouldn't we add retries for _all_ ath10k SDIO transactions? But that
would make ath10k even more complex as it is.

Because I think this patch makes things worse for the user, so I would
like to understand the real life use case this patch is trying to fix
and how it would help the user.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
