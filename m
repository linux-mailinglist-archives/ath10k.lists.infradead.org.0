Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00EF1CEF0F
	for <lists+ath10k@lfdr.de>; Tue, 12 May 2020 10:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDHm+Uq3hdW+AebqSKeWSninZJU9WANGBe6Psn42H4I=; b=G/ME7d7AL2zMn0
	5OIGcL0Z8dn2ecp4Jo58E7zyUWNzkQw3k/UyZizhKyDu40n5oyed4CtYSPfubw3zY5dWhdoK3xfjw
	u4iJmN1k1+D6sBjkwavzkyWNapAZUt52XGhd8yhjUuLLkI6dXRthsiBjgCk3US/CaofAhDHd5CYoT
	KZsQ2SF1nJCTmmRTfPHDmTxhcO+j3QX02f7Je/IalTdprO/MA/sTQ2LRSMK3wP/MZ5iITaiXNw0Fg
	82/RhD8mDWoDc6ILyTznwxKznXnz7Js5VI/0RpClX2XMzfs0aQpNKDR9ZbGBf9c7+dXRgc+rewVM7
	NweMNqk/6qyovaftq+qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQFB-0003ey-BU; Tue, 12 May 2020 08:26:29 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQF4-0003ct-OH
 for ath10k@lists.infradead.org; Tue, 12 May 2020 08:26:26 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589271985; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=TV65y6oLK5pNW+mE95g0Ej8UbZJk8QvFaDrsBpyV5sI=;
 b=UyxpnrpHRKWbu3AXFVneoqJdJtdoP/WzxxwYSYAqM77/xbry2/MNlxIsGzbLgq6nLPfKVOhY
 yhyUCB/N58HPgzEDrss/8md1m9/vFLiPulM45kPUu4n03s8F51EdNhR7PtV6w4xVPKY6WvUB
 zzJTIMZS9tpJaBAkh8HzGd585pg=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eba5da2.7fb5e3f55bc8-smtp-out-n04;
 Tue, 12 May 2020 08:26:10 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 08623C433F2; Tue, 12 May 2020 08:26:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 38B57C433CB;
 Tue, 12 May 2020 08:26:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 38B57C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [ath6kl:pending 21/24]
 drivers/net/wireless/ath/ath11k/pci.c:49:34: warning: Local variable
 'msi_config' shadows outer variable [shadowVariable]
References: <202005121153.gLRyf9Tw%lkp@intel.com>
Date: Tue, 12 May 2020 11:26:06 +0300
In-Reply-To: <202005121153.gLRyf9Tw%lkp@intel.com> (kbuild test robot's
 message of "Tue, 12 May 2020 11:11:56 +0800")
Message-ID: <87sgg536g1.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_012625_219494_627A1D7A 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Govind Singh <govinds@codeaurora.org>, kbuild-all@lists.01.org,
 ath11k@lists.infradead.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

+ ath11k

kbuild test robot <lkp@intel.com> writes:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git pending
> head:   6303acc5b03a5fc3bf6cf5fa072ae0dc9aaa5dd0
> commit: 398a800c183de17a49a5779550e72fbc3ba1e592 [21/24] ath11k: Add msi config init for QCA6390
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
>
> cppcheck warnings: (new ones prefixed by >>)
>
>>> drivers/net/wireless/ath/ath11k/pci.c:49:34: warning: Local variable 'msi_config' shadows outer variable [shadowVariable]
>     const struct ath11k_msi_config *msi_config;
>                                     ^
>    drivers/net/wireless/ath/ath11k/pci.c:23:39: note: Shadowed declaration
>    static const struct ath11k_msi_config msi_config = {
>                                          ^
>    drivers/net/wireless/ath/ath11k/pci.c:49:34: note: Shadow variable
>     const struct ath11k_msi_config *msi_config;

I fixed this in the pending branch by changing renaming the static
variable to ath11k_msi_config:

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=76bce5bd3875bd3d8329a69057e2d63064d90b09

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
