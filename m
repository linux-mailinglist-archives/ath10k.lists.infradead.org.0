Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71548149A1D
	for <lists+ath10k@lfdr.de>; Sun, 26 Jan 2020 11:32:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvnJhYshh+T/LNo40emM9QSD60LF0s9eZrRPL5myrpw=; b=gt4/l+jMkCgPJ9
	zyDNwODIW3pkfTCSNF7ZQFjAplBq7IPxIJDZBrnRbxfsYIC1+qziEK8v5UrUvYM2LHkLlpU5y20Bu
	KFqFvN+R49oC8gQOmTxea2/NJNPCgPxq6YsE5J7/965L2OzBDjyBqIPT4eKCM3riq1O0pxdF/WHfq
	sU0j38T/aSF2Gt1kO8t4A0jLgV2RKyrOFtIE5Gr8L8ooZ6ZRsnecSPzOJNJPwoY6/PZ6oB1GjDlHq
	PZwUpCy8gCcEilWO62sU+yGApTUH72ZPE9k0ReFjZzBnp/RNjmEC+IUMG4PmUObZ4HCIi85pZjUqJ
	1TnqBk095ISBGo02IFOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivfDe-0005pG-Io; Sun, 26 Jan 2020 10:32:42 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivfDZ-0005oR-Ns
 for ath10k@lists.infradead.org; Sun, 26 Jan 2020 10:32:40 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580034758; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=Xnw2nB7eeU+5KQsNsqg6sCtZQfoLKG6lA21NLlZ5bFQ=;
 b=JxTjB8kRnQwOys7yXR5RJBrrd7ZR1rKYhZaResGyJFVoa5+2R64tdjl0NuiDz6h3ddP50SV1
 5D5PfW5tl71uXcNJNbd29HS1imsD1Ompuh6uaieCNUV+qMeRmekFrlrTgLZTQA6VoeH1aCmo
 PjlBLRQzqAillHWHUS/oQtnI2aI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2d6abb.7f6060886a78-smtp-out-n01;
 Sun, 26 Jan 2020 10:32:27 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0EABAC433A2; Sun, 26 Jan 2020 10:32:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BA439C433CB;
 Sun, 26 Jan 2020 10:32:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BA439C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: drop RX skb with invalid length for sdio
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191231092706.6136-1-wgong@codeaurora.org>
References: <20191231092706.6136-1-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200126103227.0EABAC433A2@smtp.codeaurora.org>
Date: Sun, 26 Jan 2020 10:32:27 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_023238_402069_9CBE0645 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

> When simulate random transfer fail for sdio write and read, it crash
> sometimes.
> 
> Test steps:
> 1. Add config and update kernel:
> CONFIG_FAIL_MMC_REQUEST=y
> CONFIG_FAULT_INJECTION=y
> CONFIG_FAULT_INJECTION_DEBUG_FS=y
> 
> 2. run simulate fail:
> cd /sys/kernel/debug/mmc1/fail_mmc_request
> echo 10 > probability
> echo 10 > times # repeat until hitting issues
> 
> 3. it crash, the act len of ath10k_htc_hdr is higher than allocate len, it cause panic:
> [   99.723482] skbuff: skb_over_panic: text:00000000caa0f780 len:57013 put:57013 head:000000004116f24a data:0000000019ecb4dc tail:0xdef5 end:0x640 dev:<NULL>
> [   99.737697] ------------[ cut here ]------------
> [   99.742327] kernel BUG at /mnt/host/source/src/third_party/kernel/v4.19/net/core/skbuff.c:104!
> [   99.750937] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
> [   99.831154] Process kworker/0:2 (pid: 151, stack limit = 0x00000000728010bf)
> [   99.838200] CPU: 0 PID: 151 Comm: kworker/0:2 Tainted: G W 4.19.85 #48
> [   99.846022] Hardware name: MediaTek krane sku0 board (DT)
> [   99.851429] Workqueue: events sdio_irq_work
> [   99.855614] pstate: 60000005 (nZCv daif -PAN -UAO)
> [   99.860402] pc : skb_panic+0x64/0x68
> [   99.863974] lr : skb_panic+0x64/0x68
> [   99.867542] sp : ffffff8008833a90
> [   99.870850] x29: ffffff8008833ac0 x28: ffffffe52e337370
> [   99.876159] x27: ffffffe52e328a90 x26: 000000000000e0d0
> [   99.881469] x25: ffffffe52e336b60 x24: 000000000000deb5
> [   99.886779] x23: ffffffe52e340680 x22: ffffffe4efd47e00
> [   99.892088] x21: 000000000000deb5 x20: ffffffa516d85b4c
> [   99.897397] x19: ffffffa526928037 x18: 0000000000000000
> [   99.902706] x17: 000000000000003c x16: ffffffa5265b6c80
> [   99.908015] x15: 0000000000000006 x14: 3a76656420303436
> [   99.913325] x13: 0000000000029bf0 x12: 0000000000000000
> [   99.918634] x11: 0000000000000000 x10: 0000000000000000
> [   99.923943] x9 : a3b907e4b2783000 x8 : a3b907e4b2783000
> [   99.929253] x7 : 0000000000000000 x6 : ffffffa526f66d76
> [   99.934563] x5 : 0000000000000000 x4 : 0000000000000000
> [   99.939872] x3 : 000000000002a5ab x2 : ffffffe53feed918
> [   99.945182] x1 : ffffffe53fee4a08 x0 : 000000000000008e
> [   99.950491] Call trace:
> [   99.952937]  skb_panic+0x64/0x68
> [   99.956165]  skb_put+0x7c/0x84
> [   99.959224]  ath10k_sdio_irq_handler+0x740/0xbb8 [ath10k_sdio]
> [   99.965055]  process_sdio_pending_irqs+0x58/0x1a4
> [   99.969758]  sdio_run_irqs+0x34/0x60
> [   99.973329]  sdio_irq_work+0x1c/0x28
> [   99.974930] cros-ec-spi spi2.0: SPI transfer timed out
> [   99.976904]  process_one_work+0x210/0x410
> [   99.976911]  worker_thread+0x234/0x3dc
> [   99.976923]  kthread+0x120/0x130
> [   99.982090] cros-ec-spi spi2.0: spi transfer failed: -110
> [   99.986054]  ret_from_fork+0x10/0x18
> [   99.986063] Code: aa1403e2 2a1503e4 a90023e9 97e37d1a (d4210000)
> [   99.986068] ---[ end trace cb6d948c5a0fd6c7 ]---
> [  100.017250] Kernel panic - not syncing: Fatal exception
> [  100.018879] cros-ec-spi spi2.0: Command xfer error (err:-110)
> [  100.023659] SMP: stopping secondary CPUs
> [  100.023703] Kernel Offset: 0x251dc00000 from 0xffffff8008000000
> [  100.023707] CPU features: 0x0,2188200c
> [  100.023709] Memory Limit: none
> 
> The simulate fail of sdio is not a real sdio transter fail, it only
> set an error status in mmc_should_fail_request after the transfer end,
> actually the transfer is success, then sdio_io_rw_ext_helper will
> return error status and stop transfer the left data. For example,
> the really RX len is 286 bytes, then it will split to 2 blocks in
> sdio_io_rw_ext_helper, one is 256 bytes, left is 30 bytes, if the
> first 256 bytes get an error status by mmc_should_fail_request,then
> the left 30 bytes will not read in this RX operation. Then when the
> next RX arrive, the left 30 bytes will be considered as the header
> of the read, the top 8 bytes will be considered as ath10k_htc_hdr,
> but actually the 8 bytes is not the ath10k_htc_hdr, so the act_len
> from this ath10k_htc_hdr is not correct, if it is a big value, such
> as 57013, it will trigger skb_panic.
> 
> Drop the skb with invalid length will be reasonable.
> 
> This patch only effect sdio chips.
> 
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

218f646d235a ath10k: drop RX skb with invalid length for sdio

-- 
https://patchwork.kernel.org/patch/11313849/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
