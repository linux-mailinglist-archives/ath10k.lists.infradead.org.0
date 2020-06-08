Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834161F22D6
	for <lists+ath10k@lfdr.de>; Tue,  9 Jun 2020 01:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZh5yx2uoYxKzIlJJRCEmDmP7syggAFQnzlXuWgxMGA=; b=bOOmcfDT8UUB65
	1DAm58RfP2CzoTu47nq18txob/Nv2Tz+Wfp3dPeHTjuUk0lYE05IOoqUe5UWqdv73VvEHBh1Wi9Id
	juCcxGaGizVOxxCwvAeYWfOOHv38B7uNATyHRRFm7tAvpwidzXNgNlFUEmDI2SldWePzVWYJpQxFy
	XAsgPsQH3f3ssCp5yuWONiI5Grgh6NWASUif6cReydYCWqcin6EBp+DZgJdvzbyZwLYuuSnkaUlR3
	7iF2JyEweX2+knUjnIsJbIQr9HuTVeBzf3LGDrXiJc4bKAOUE9ICz6Gbh8llxgMWtTMmreG5Vl51+
	OlxiYXbXMBiBcZOpcnkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQvg-00052O-Bi; Mon, 08 Jun 2020 23:11:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQsF-00084Y-Rw
 for ath10k@lists.infradead.org; Mon, 08 Jun 2020 23:08:13 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3832B20842;
 Mon,  8 Jun 2020 23:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657691;
 bh=UgH8czb3Zqf99cuf6/cq5xSM1xd308oDJ5vXdkILL9g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NImMvxuqEixileN0cKasTp1aFKdtMLCwg1iIfjFyF9fv37jbF6iU7Ct6dEOMmIxa7
 LLgNlo/97uYHUknNhQvR+Di4AMmidwrMVeXXL/99neosQJYELI35TL23LxOfpeiRwS
 8NbV7BOq/QM++pzixWzH2Y1W+cGAvdILbkhsrDc8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 092/274] ath10k: fix kernel null pointer
 dereference
Date: Mon,  8 Jun 2020 19:03:05 -0400
Message-Id: <20200608230607.3361041-92-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_160811_973766_39E95211 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Venkateswara Naralasetty <vnaralas@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Venkateswara Naralasetty <vnaralas@codeaurora.org>

[ Upstream commit acb31476adc9ff271140cdd4d3c707ff0c97f5a4 ]

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
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Link: https://lore.kernel.org/r/1585736290-17661-1-git-send-email-vnaralas@codeaurora.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/txrx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/txrx.c b/drivers/net/wireless/ath/ath10k/txrx.c
index 39abf8b12903..f46b9083bbf1 100644
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
2.25.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
