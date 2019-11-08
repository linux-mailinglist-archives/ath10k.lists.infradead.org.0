Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8389BF45D3
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 12:38:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0ElojCSfW05JX1wTivfI+wDkNKX/w2nzDfCuLdjnfs=; b=l7aQXvXm6V0T6W
	NCjpIHN18e/U1S59UMqgiNF51bZC6CXvOyLC1uihdxQwokDfQ4r5gBjkdPtPVv/t/RxXTYot2McUk
	ZCMdvOGkr09sMACxeR1M5q/ZMbSSA6lKM49coLZUliv0qLHKLNuNKdRtZVw82vq4gVTrELL+IkyUB
	XCNOsGAfEzXKuAc4Kv7tDgOt0G3N72A4eB9EFI6zi9wWU31Cp+Wrs1lWv9D2R2WfYj0zd9uk3LKjP
	UtHtsmtuS4nbL6lK8gJX/l1AqXomnO8q3O83kIz/b3LhU14vIVTsMWORaJSBWGC48D3iUGYrZ6RGQ
	5itrHkrctdxHNIPrexoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2aX-0006ze-PH; Fri, 08 Nov 2019 11:38:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2aT-0006yV-Vk
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 11:37:59 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 79FAC21D7E;
 Fri,  8 Nov 2019 11:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573213076;
 bh=Fg5pM85VZ8gc9IacEwwS48xCug5JBY0OJ95DuXzajTs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=x5O88K7Pd2bwa14FpvcXui/gGDcwavr8FSr5g3pfkRbqKXUqV2hkX1DVfKHURot0g
 RrktS9RR0edwgsUYe/kAfTau6O5+7deSBpgTQlN/xwK72brfvDy155+u6LHuC3JQak
 dM4w5zPo0h4/pSFlpOnkfxjtxvnmM2ashd3uDfmE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 003/205] ath10k: fix kernel panic by moving pci
 flush after napi_disable
Date: Fri,  8 Nov 2019 06:34:30 -0500
Message-Id: <20191108113752.12502-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108113752.12502-1-sashal@kernel.org>
References: <20191108113752.12502-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_033758_059736_3FD84003 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Tamizh chelvam <tamizhr@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Tamizh chelvam <tamizhr@codeaurora.org>

[ Upstream commit bd1d395070cca4f42a93e520b0597274789274a4 ]

When continuously running wifi up/down sequence, the napi poll
can be scheduled after the CE buffers being freed by ath10k_pci_flush

Steps:
  In a certain condition, during wifi down below scenario might occur.

ath10k_stop->ath10k_hif_stop->napi_schedule->ath10k_pci_flush->napi_poll(napi_synchronize).

In the above scenario, CE buffer entries will be freed up and become NULL in
ath10k_pci_flush. And the napi_poll has been invoked after the flush process
and it will try to get the skb from the CE buffer entry and perform some action on that.
Since the CE buffer already cleaned by pci flush this action will create NULL
pointer dereference and trigger below kernel panic.

Unable to handle kernel NULL pointer dereference at virtual address 0000005c
PC is at ath10k_pci_htt_rx_cb+0x64/0x3ec [ath10k_pci]
ath10k_pci_htt_rx_cb [ath10k_pci]
ath10k_ce_per_engine_service+0x74/0xc4 [ath10k_pci]
ath10k_ce_per_engine_service [ath10k_pci]
ath10k_ce_per_engine_service_any+0x74/0x80 [ath10k_pci]
ath10k_ce_per_engine_service_any [ath10k_pci]
ath10k_pci_napi_poll+0x48/0xec [ath10k_pci]
ath10k_pci_napi_poll [ath10k_pci]
net_rx_action+0xac/0x160
net_rx_action
__do_softirq+0xdc/0x208
__do_softirq
irq_exit+0x84/0xe0
irq_exit
__handle_domain_irq+0x80/0xa0
__handle_domain_irq
gic_handle_irq+0x38/0x5c
gic_handle_irq
__irq_usr+0x44/0x60

Tested on QCA4019 and firmware version 10.4.3.2.1.1-00010

Signed-off-by: Tamizh chelvam <tamizhr@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/ahb.c | 4 ++--
 drivers/net/wireless/ath/ath10k/pci.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/ahb.c b/drivers/net/wireless/ath/ath10k/ahb.c
index c9bd0e2b5db7e..be90c9e9e5bc1 100644
--- a/drivers/net/wireless/ath/ath10k/ahb.c
+++ b/drivers/net/wireless/ath/ath10k/ahb.c
@@ -655,10 +655,10 @@ static void ath10k_ahb_hif_stop(struct ath10k *ar)
 	ath10k_ahb_irq_disable(ar);
 	synchronize_irq(ar_ahb->irq);
 
-	ath10k_pci_flush(ar);
-
 	napi_synchronize(&ar->napi);
 	napi_disable(&ar->napi);
+
+	ath10k_pci_flush(ar);
 }
 
 static int ath10k_ahb_hif_power_up(struct ath10k *ar)
diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
index af2cf55c4c1e6..97fa5c74f2fe7 100644
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -2068,9 +2068,9 @@ static void ath10k_pci_hif_stop(struct ath10k *ar)
 
 	ath10k_pci_irq_disable(ar);
 	ath10k_pci_irq_sync(ar);
-	ath10k_pci_flush(ar);
 	napi_synchronize(&ar->napi);
 	napi_disable(&ar->napi);
+	ath10k_pci_flush(ar);
 
 	spin_lock_irqsave(&ar_pci->ps_lock, flags);
 	WARN_ON(ar_pci->ps_wake_refcount > 0);
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
