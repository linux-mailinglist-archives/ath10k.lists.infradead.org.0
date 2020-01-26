Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E64149A01
	for <lists+ath10k@lfdr.de>; Sun, 26 Jan 2020 11:23:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRWMuR5m413cXvVHNY/oyx8HIUt9Me4yySfhw8sUuxw=; b=uRehEF5TJ+MRkS
	HxT1o1wlklgu3g3EXyLcnobHtbY0sSNeQDTuFf0towJXWbU+jYgKXS0YQUcSMFQ1/1Ldyz7eiNSYB
	aRM8mZUn7/5XR1ZJhMaEOBWiyf62uTxX1Wcyn+80ZX64bHHdaID7vQtY3P3axgwhb5HNlLWpvceGG
	CQVmYg5is5aRDq9QtNDwwaZBHj1LQGnjku0zMQp5ZE8hrr8YwJuG9O9PkYlbbrrA8jXWB/wB5I+UT
	j1XEeoBPmJJxtr2GTvf54havpfrcgyjkqyuildo9Nt5djsTxeDn17dywF1Cv3wxTLDjOI4WsTnW6J
	yy2UDTs4cdiAOhzJVyzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivf57-0002U5-Pq; Sun, 26 Jan 2020 10:23:53 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivf53-0002TV-QV
 for ath10k@lists.infradead.org; Sun, 26 Jan 2020 10:23:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580034226; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=iWXmW163STiS69ZQzqM26+VjqGPhdChfwDJKLC2/k8k=;
 b=UCuR5vwjHNeh1mSkUvDW+L+h4p/Rx57NFGsAh7xA709QtLVLJBskc2ISCsak9ixHixXcOSeS
 TgxuC2FTLNRRrqMKC1BCBQN3lQiZtKj9keI10wT/lFfy22GFnK76iRDnuIEsleKAEc1ggoMD
 7fqLVDpHSJ/+IrasgaU9SvvvWKw=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2d68b0.7fe8c40c8c70-smtp-out-n03;
 Sun, 26 Jan 2020 10:23:44 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BED86C433A2; Sun, 26 Jan 2020 10:23:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 10FE4C433CB;
 Sun, 26 Jan 2020 10:23:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 10FE4C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] ath10k: pci: Only dump ATH10K_MEM_REGION_TYPE_IOREG
 when safe
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191219131539.1003793-2-bryan.odonoghue@linaro.org>
References: <20191219131539.1003793-2-bryan.odonoghue@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200126102344.BED86C433A2@smtp.codeaurora.org>
Date: Sun, 26 Jan 2020 10:23:44 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_022349_923044_9ED945DD 
X-CRM114-Status: UNSURE (   9.79  )
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
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, akolli@codeaurora.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bryan O'Donoghue <bryan.odonoghue@linaro.org> wrote:

> ath10k_pci_dump_memory_reg() will try to access memory of type
> ATH10K_MEM_REGION_TYPE_IOREG however, if a hardware restart is in progress
> this can crash a system.
> 
> Individual ioread32() time has been observed to jump from 15-20 ticks to >
> 80k ticks followed by a secure-watchdog bite and a system reset.
> 
> Work around this corner case by only issuing the read transaction when the
> driver state is ATH10K_STATE_ON.
> 
> Tested-on: QCA9988 PCI 10.4-3.9.0.2-00044
> 
> Fixes: 219cc084c6706 ("ath10k: add memory dump support QCA9984")
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

2 patches applied to ath-next branch of ath.git, thanks.

d239380196c4 ath10k: pci: Only dump ATH10K_MEM_REGION_TYPE_IOREG when safe
63ec5cbc31f7 ath10k: pci: Fix comment on ath10k_pci_dump_memory_sram

-- 
https://patchwork.kernel.org/patch/11303563/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
