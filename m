Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B4319A95E
	for <lists+ath10k@lfdr.de>; Wed,  1 Apr 2020 12:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tjVqN+9N7CTV9vBh+RzTFhQ2LZfDG+lRrMdnPaKBe7I=; b=PWo
	6wm1bTexRomJSDfFqXeQ4ZEyaLxIOVcx0SFVarm4q4gbMqEqucxepJgTIgF9+g/gC3c6+MqoIa+n7
	zu67L5ILogwXp1TTA95jO7xbq/ungD2TXimPo3xT/Bs29nqbW3Wm+8/NJwbSLX/lXCu45XQHa77vg
	fePacXKNBowjipI6fxzvSec7D0YSOiPlKx+LWD/aqfTdPYLfp155BKOUcPoSsaMLB+sD/NJv54FLZ
	Eq6jkNEPB3Xr0twdOXkmga980H1GAkXK7Cvbh5u/6wTtpSMSUKW92hjGS698cY8RsfXMk2sbyt6rz
	IOcL3OJLc9qpHoHt5QHYdL0nfjwG7rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJaSC-0006IN-0m; Wed, 01 Apr 2020 10:18:36 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJaS6-0006HL-Qi
 for ath10k@lists.infradead.org; Wed, 01 Apr 2020 10:18:33 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585736312; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=OfZiRXyl5PVeBvmkOGvR32tTRTmOR19KTl0C35AMiTI=;
 b=IT/d7+IhuMeCr4Ia44F/NxGpfrQ2kRK08QpIf9cMxwAFyOXluacloqBMUBuTFT5r63Ro4zun
 +C5Y3Xxzp7noKdBkBa0A+sAX0Yt3sBMsX+XO8pjsLhULDcHCafLuYersXIcnGvopIdMsDN0z
 nwlWQ815iGaTFmzMK4QIWnfBISk=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e846a6e.7f62545f01f0-smtp-out-n05;
 Wed, 01 Apr 2020 10:18:22 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3EAA3C433D2; Wed,  1 Apr 2020 10:18:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from vnaralas-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: vnaralas)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DA512C44788;
 Wed,  1 Apr 2020 10:18:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DA512C44788
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=vnaralas@codeaurora.org
From: Venkateswara Naralasetty <vnaralas@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: fix kernel null pointer dereference
Date: Wed,  1 Apr 2020 15:48:10 +0530
Message-Id: <1585736290-17661-1-git-send-email-vnaralas@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_031832_506840_40FE1783 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Venkateswara Naralasetty <vnaralas@codeaurora.org>,
 linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Currently sta airtime is updated without any lock in case of
host based airtime calculation. Which may result in accessing the
invalid sta pointer in case of continuous station connect/disconnect.

This patch fix the kernel null pointer dereference by updating the
station airtime with proper RCU lock in case of host based airtime
calculation.

Proceeding with the analysis of "ARM Kernel Panic".
The APSS crash happened due to OOPS on CPU 0.
Crash Signature : Unable to handle kernel NULL pointer dereference
at virtual address 00000300
During the crash,
PC points to "ieee80211_sta_register_airtime+0x1c/0x448 [mac80211]"
LR points to "ath10k_txrx_tx_unref+0x17c/0x364 [ath10k_core]".
The Backtrace obtained is as follows:
[<bf880238>] (ieee80211_sta_register_airtime [mac80211]) from
[<bf945a38>] (ath10k_txrx_tx_unref+0x17c/0x364 [ath10k_core])
[<bf945a38>] (ath10k_txrx_tx_unref [ath10k_core]) from
[<bf9428e4>] (ath10k_htt_txrx_compl_task+0xa50/0xfc0 [ath10k_core])
[<bf9428e4>] (ath10k_htt_txrx_compl_task [ath10k_core]) from
[<bf9b9bc8>] (ath10k_pci_napi_poll+0x50/0xf8 [ath10k_pci])
[<bf9b9bc8>] (ath10k_pci_napi_poll [ath10k_pci]) from
[<c059e3b0>] (net_rx_action+0xac/0x160)
[<c059e3b0>] (net_rx_action) from [<c02329a4>] (__do_softirq+0x104/0x294)
[<c02329a4>] (__do_softirq) from [<c0232b64>] (run_ksoftirqd+0x30/0x90)
[<c0232b64>] (run_ksoftirqd) from [<c024e358>] (smpboot_thread_fn+0x25c/0x274)
[<c024e358>] (smpboot_thread_fn) from [<c02482fc>] (kthread+0xd8/0xec)

Tested HW: QCA9888
Tested FW: 10.4-3.10-00047

Signed-off-by: Venkateswara Naralasetty <vnaralas@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/txrx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/txrx.c b/drivers/net/wireless/ath/ath10k/txrx.c
index 39abf8b..f46b908 100644
--- a/drivers/net/wireless/ath/ath10k/txrx.c
+++ b/drivers/net/wireless/ath/ath10k/txrx.c
@@ -84,9 +84,11 @@ int ath10k_txrx_tx_unref(struct ath10k_htt *htt,
 		wake_up(&htt->empty_tx_wq);
 	spin_unlock_bh(&htt->tx_lock);
 
+	rcu_read_lock();
 	if (txq && txq->sta && skb_cb->airtime_est)
 		ieee80211_sta_register_airtime(txq->sta, txq->tid,
 					       skb_cb->airtime_est, 0);
+	rcu_read_unlock();
 
 	if (ar->bus_param.dev_type != ATH10K_DEV_TYPE_HL)
 		dma_unmap_single(dev, skb_cb->paddr, msdu->len, DMA_TO_DEVICE);
-- 
2.7.4

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
