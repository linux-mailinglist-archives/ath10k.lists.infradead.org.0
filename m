Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24B268AFB
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 15:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNm2O2RlxIBVk6lnj0cNbnjqFGUTZqNVTM39xJhFHmw=; b=YKzz9DXt40q8Le
	0Hpz7GLLHZau3EL7gMQRk0nzTioI1sL/3gw7ecgnkqNoA7XFg42rLLSgZsYIbtLcd0aI8h8Pbr3ME
	ND8dnqgm/YIriFsB3+cG+wBOo9pPuuEhPjZhJjfhp5nFz9rS2WuRdc3dw4SQaLFEDyYvyED2EenPF
	fpkKVJb3m0j9Vm84FO9jV1URyaBmGjEJF5iaBhKpA5TsM1uQGrijeIJjrOlxUOS/7ZewKUbqCiBIx
	Do91d23lKPFfcrvbAylZsaP4oc7uiygV6+3PHdfxo7BK+Bo+960V8kI34cRQq92o3KjxmSVH/HXJH
	WdpKzQlQBdQJZXJVGRnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1Bx-0004xI-41; Mon, 15 Jul 2019 13:38:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1Bh-0004pi-NX
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 13:38:44 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB3FD2086C;
 Mon, 15 Jul 2019 13:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563197921;
 bh=v1PQWlyIIUKb7uwAvPPpO/t5SdRgQrA1dwadJe0wwAk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ntaay8tIm7WPQIyN1JPeO5AAtS0FdTRn+RGi3YWqayMYUwqCGskek3hwAG5o2EFey
 MvgZpPPRA9RAKmrl5/9SPLiLfLNw/3glsLU+lwiLnuptaioCDJR5ZalViAD1fP4X2B
 JfOpe9UPeDeNUprjB2eMe+x6AmAkOYt28hytCLNE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 012/219] ath10k: add peer id check in
 ath10k_peer_find_by_id
Date: Mon, 15 Jul 2019 09:34:44 -0400
Message-Id: <20190715133811.2441-12-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715133811.2441-1-sashal@kernel.org>
References: <20190715133811.2441-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_063841_817397_BBB39821 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Wen Gong <wgong@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Wen Gong <wgong@codeaurora.org>

[ Upstream commit 49ed34b835e231aa941257394716bc689bc98d9f ]

For some SDIO chip, the peer id is 65535 for MPDU with error status,
then test_bit will trigger buffer overflow for peer's memory, if kasan
enabled, it will report error.

Reason is when station is in disconnecting status, firmware do not delete
the peer info since it not disconnected completely, meanwhile some AP will
still send data packet to station, then hardware will receive the packet
and send to firmware, firmware's logic will report peer id of 65535 for
MPDU with error status.

Add check for overflow the size of peer's peer_ids will avoid the buffer
overflow access.

Call trace of kasan:
dump_backtrace+0x0/0x2ec
show_stack+0x20/0x2c
__dump_stack+0x20/0x28
dump_stack+0xc8/0xec
print_address_description+0x74/0x240
kasan_report+0x250/0x26c
__asan_report_load8_noabort+0x20/0x2c
ath10k_peer_find_by_id+0x180/0x1e4 [ath10k_core]
ath10k_htt_t2h_msg_handler+0x100c/0x2fd4 [ath10k_core]
ath10k_htt_htc_t2h_msg_handler+0x20/0x34 [ath10k_core]
ath10k_sdio_irq_handler+0xcc8/0x1678 [ath10k_sdio]
process_sdio_pending_irqs+0xec/0x370
sdio_run_irqs+0x68/0xe4
sdio_irq_work+0x1c/0x28
process_one_work+0x3d8/0x8b0
worker_thread+0x508/0x7cc
kthread+0x24c/0x264
ret_from_fork+0x10/0x18

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/txrx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/txrx.c b/drivers/net/wireless/ath/ath10k/txrx.c
index c5818d28f55a..4102df016931 100644
--- a/drivers/net/wireless/ath/ath10k/txrx.c
+++ b/drivers/net/wireless/ath/ath10k/txrx.c
@@ -150,6 +150,9 @@ struct ath10k_peer *ath10k_peer_find_by_id(struct ath10k *ar, int peer_id)
 {
 	struct ath10k_peer *peer;
 
+	if (peer_id >= BITS_PER_TYPE(peer->peer_ids))
+		return NULL;
+
 	lockdep_assert_held(&ar->data_lock);
 
 	list_for_each_entry(peer, &ar->peers, list)
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
