Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0DEE4B2
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 16:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quHQhy/Tl4ZYI2pwVuwyilYrUVYvypXnHTUqNuqUnU0=; b=e7pvhh05qBdld+
	8Vn6i521j8CJJM+rxByImx23l4qMEbqAFX9fsudmMVlF0gWsboyd2aUDIty1FB0VSgr/+J21u7ZeD
	UFLWlWEpjxzvaSqm7IukgC+xUu3b7d9lyMOHBUQ4bnyODeFBul8zLE6j+H6EvbXyl4mCBVv7M/OEP
	olkv5msoO3MieUM/PsiVtQz1nRxLFi/2/pGDeaTHmNbbXYHbVi4V3Y+nNrOfz13NoO3BI36qJQ/pV
	ETiH6gQ/Pj83fTg5T9aFJluadWZUWrBJYzVZyzNwZ+CiB7A0Pro0R6iwFkM/ZuiedJjgohlRFu0Hz
	VS5lMlV8+w0x0JS9J86Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7Dx-0000pV-Gt; Mon, 29 Apr 2019 14:25:41 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7Dt-0000ox-G9
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 14:25:39 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 2614F60131; Mon, 29 Apr 2019 14:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556547937;
 bh=EGOI48/+C+Z0i5k7Bvh5aq2RV5rfms7ybbnlc+NgiFw=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=jLiPmckFsVMBD+Y9NPSghNs/VCUwCTD+3s15d5DEBNevJ9mWguMwyQb2EUK0DRfPr
 LCZ9td/y1N9qvrmhHMCkLtqBi4zekNkT7wvG4L92Jg54G6bHSrtQAFRUTV2YZw7avz
 hVxd/E8aSR7cEZAnr069bN6y8HDcVG+utRZm6mCA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 15BFC60247;
 Mon, 29 Apr 2019 14:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556547936;
 bh=EGOI48/+C+Z0i5k7Bvh5aq2RV5rfms7ybbnlc+NgiFw=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=dDgRmUrDSjhO0IoNiDZOgYCU7NI64UcTmYu4JzhhSwYFNO+fFi33hUQ7AnfURP2ga
 fysqj/xtX+wZdNZy6pfSKWHK8Rps5R2dsDtnfslLrtXoIVNL8WtDAgD9CvBupsXro9
 l3eZzw+67WctVIyEx3PsYyJjjiOohYr32/djfvls=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 15BFC60247
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH for-5.1] ath10k: perform crash dump collection in workqueue
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190326205728.168973-1-briannorris@chromium.org>
References: <20190326205728.168973-1-briannorris@chromium.org>
To: Brian Norris <briannorris@chromium.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190429142537.2614F60131@smtp.codeaurora.org>
Date: Mon, 29 Apr 2019 14:25:37 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_072537_575597_FA6B1510 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Carl Huang <cjhuang@codeaurora.org>,
 Brian Norris <briannorris@chromium.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Wen Gong <wgong@codeaurora.org>,
 =?utf-8?q?Micha=C5=82_Kazior?= <kazikcz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Brian Norris <briannorris@chromium.org> wrote:

> Commit 25733c4e67df ("ath10k: pci: use mutex for diagnostic window CE
> polling") introduced a regression where we try to sleep (grab a mutex)
> in an atomic context:
> 
> [  233.602619] BUG: sleeping function called from invalid context at kernel/locking/mutex.c:254
> [  233.602626] in_atomic(): 1, irqs_disabled(): 0, pid: 0, name: swapper/0
> [  233.602636] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G        W         5.1.0-rc2 #4
> [  233.602642] Hardware name: Google Scarlet (DT)
> [  233.602647] Call trace:
> [  233.602663]  dump_backtrace+0x0/0x11c
> [  233.602672]  show_stack+0x20/0x28
> [  233.602681]  dump_stack+0x98/0xbc
> [  233.602690]  ___might_sleep+0x154/0x16c
> [  233.602696]  __might_sleep+0x78/0x88
> [  233.602704]  mutex_lock+0x2c/0x5c
> [  233.602717]  ath10k_pci_diag_read_mem+0x68/0x21c [ath10k_pci]
> [  233.602725]  ath10k_pci_diag_read32+0x48/0x74 [ath10k_pci]
> [  233.602733]  ath10k_pci_dump_registers+0x5c/0x16c [ath10k_pci]
> [  233.602741]  ath10k_pci_fw_crashed_dump+0xb8/0x548 [ath10k_pci]
> [  233.602749]  ath10k_pci_napi_poll+0x60/0x128 [ath10k_pci]
> [  233.602757]  net_rx_action+0x140/0x388
> [  233.602766]  __do_softirq+0x1b0/0x35c
> [...]
> 
> ath10k_pci_fw_crashed_dump() is called from NAPI contexts, and firmware
> memory dumps are retrieved using the diag memory interface.
> 
> A simple reproduction case is to run this on QCA6174A /
> WLAN.RM.4.4.1-00132-QCARMSWP-1, which happens to be a way to b0rk the
> firmware:
> 
>   dd if=/sys/kernel/debug/ieee80211/phy0/ath10k/mem_value bs=4K count=1
> of=/dev/null
> 
> (NB: simulated firmware crashes, via debugfs, don't trigger firmware
> dumps.)
> 
> The fix is to move the crash-dump into a workqueue context, and avoid
> relying on 'data_lock' for most mutual exclusion. We only keep using it
> here for protecting 'fw_crash_counter', while the rest of the coredump
> buffers are protected by a new 'dump_mutex'.
> 
> I've tested the above with simulated firmware crashes (debugfs 'reset'
> file), real firmware crashes (the 'dd' command above), and a variety of
> reboot and suspend/resume configurations on QCA6174A.
> 
> Reported here:
> http://lkml.kernel.org/linux-wireless/20190325202706.GA68720@google.com
> 
> Fixes: 25733c4e67df ("ath10k: pci: use mutex for diagnostic window CE polling")
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-current branch of ath.git, thanks.

38faed150438 ath10k: perform crash dump collection in workqueue

-- 
https://patchwork.kernel.org/patch/10872181/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
