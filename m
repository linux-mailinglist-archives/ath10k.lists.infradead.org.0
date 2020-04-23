Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053261B54BE
	for <lists+ath10k@lfdr.de>; Thu, 23 Apr 2020 08:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IDHGBAgnryAoVi7oxu6FXIXVAunIIfuwz3giorUsY4=; b=f/0eda7hNs3zLG
	IQYw9S4bfqaUgVnaXxlMgLVpQvEGgBq7+HRGmDT6BTagP/vh7Q3KU63ytYiK+AXrnO96VcOKX1JwF
	x9vZ6M0Bm2BR6xNGcGsD6QGYVU7Smqtf3rBjrR76/ctsqM27YEiI8kii6cjxgaJ1q6xw8lJK04xpT
	MSpahdj+ZXGvBurjYMgkS3aLk0Lkr1cDRTPnzD5waVulLazbuI7gZr71O/7eKbbqIlkQ+QcjUphOp
	SvqmrrNfAP2JfuuiCHF9l/CMHkXZegBGmKdLoyAG1xW2FdMFDygjWo5JGfP0Hx/1+Zg4Ccp30AGXA
	W90ZdiWpCX0zveiyoBfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVQz-0000if-8h; Thu, 23 Apr 2020 06:34:05 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVQr-0000gi-OL
 for ath10k@lists.infradead.org; Thu, 23 Apr 2020 06:34:02 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587623639; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=d6DeLgdxZxGHqKCavQ16Pn/ermyK+T7kgS/aq6u/nXg=;
 b=TfhMU4XC3yDBEu23FJajR473B54473sedsBjEUE+Q54V7agpoxj+8W2WKj7XzlVCfyn+FuH+
 zePLgWRohPm4CYQQAjZ4FCf3yzHpfkRRQKihfw+1wrwwBp+89/jCiXrHr4oNmwmJRXYAnVBy
 UdemE1GOCl7pzX22q5w6oVYU6TI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea136d1.7f5604e10ea0-smtp-out-n02;
 Thu, 23 Apr 2020 06:33:53 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 208E9C433CB; Thu, 23 Apr 2020 06:33:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AC5BCC433D2;
 Thu, 23 Apr 2020 06:33:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AC5BCC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: Remove ATH10K_STATE_RESTARTED in simulate fw
 crash
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1555059170-11988-1-git-send-email-wgong@codeaurora.org>
References: <1555059170-11988-1-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200423063353.208E9C433CB@smtp.codeaurora.org>
Date: Thu, 23 Apr 2020 06:33:53 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_233359_853531_C5CA1665 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> When test simulate firmware crash, it is easy to trigger error.
> command:
> echo soft > /sys/kernel/debug/ieee80211/phyxx/ath10k/simulate_fw_crash.
> 
> If input more than two times continuously, then it will have error.
> Error message:
> ath10k_pci 0000:02:00.0: failed to set vdev 1 RX wake policy: -108
> ath10k_pci 0000:02:00.0: device is wedged, will not restart
> 
> It is because the state has not changed to ATH10K_STATE_ON immediately,
> then it will have more than two simulate crash process running meanwhile,
> and complete/wakeup some field twice, it destroy the normal recovery
> process.
> 
> add flag wait-ready for this command:
> echo soft wait-ready > /sys/kernel/debug/ieee80211/phyxx/ath10k/simulate_fw_crash
> 
> Tested with QCA6174 PCI with firmware
> WLAN.RM.4.4.1-00109-QCARMSWPZ-1, but this will also affect QCA9377 PCI.
> It's not a regression with new firmware releases.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

I'm dropping this as I suspect the real bug is somewhere else and this
is just a workaround.

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/10897587/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
