Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EDFE124
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 13:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fH5GLyt4rHLg34FFODFzTTjOIhZOMXXFCxYyFUZo2hI=; b=oqI
	fcNgbPAlQtjwHbNYQo26v/maFFuIGFD38wJfF4cRPd+4xXubtP9GQRDxOT8goHxlbC3zABh+ZbHna
	MQliCB83J/wS6YWcN8xH6VbQzBtTJsyU+fTZR3CxNwltXk6bWItKIefBrhiDqAuq+qU9SnX5StPtI
	X4ztjEkyl0U12/rRjTdGFBc7y75S4i2OJH8mxQLegXnFlhv+aI2y/IUEX8N0FRHk5KlZa1g82Lyte
	HpNBPutdvR3DWLmCjx0rwyRFwp8FoN2ubq/b7WQ2JqMVnaqeWF4mFOz0LrM0cblLZk39GY5omnsQX
	NDzyLaoNGVMYWIYv90UiZ5h9RyKCwZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL4Hp-0004ji-Hf; Mon, 29 Apr 2019 11:17:29 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL4Hl-0004jP-1x
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 11:17:26 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 66D5260850; Mon, 29 Apr 2019 11:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556536644;
 bh=G7qmYnFyZ7SZtqYRxNkY37C+3IDBvulY8cS6uCDp7X8=;
 h=From:To:Cc:Subject:Date:From;
 b=LjWWUe+NxkWXukKecssUaZxI1bTiKPZ2cjdcPHWGksuURQpIZAXlLKADUxPJmRn8L
 IJIiW5IelK+m9Z+oBceNkQW69fsCXwa/nXYX933GgHd9FG/xRqvKdo8fk3OqNKcGLq
 s1PI36vwbbLWsuOO4kXaTXcyyAKCTYggVQmicexI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from localhost.localdomain (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 139B960863;
 Mon, 29 Apr 2019 11:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556536644;
 bh=G7qmYnFyZ7SZtqYRxNkY37C+3IDBvulY8cS6uCDp7X8=;
 h=From:To:Cc:Subject:Date:From;
 b=LjWWUe+NxkWXukKecssUaZxI1bTiKPZ2cjdcPHWGksuURQpIZAXlLKADUxPJmRn8L
 IJIiW5IelK+m9Z+oBceNkQW69fsCXwa/nXYX933GgHd9FG/xRqvKdo8fk3OqNKcGLq
 s1PI36vwbbLWsuOO4kXaTXcyyAKCTYggVQmicexI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 139B960863
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2] ath10k: add peer id check in ath10k_peer_find_by_id
Date: Mon, 29 Apr 2019 19:17:12 +0800
Message-Id: <1556536632-19433-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_041725_118957_6C095CCF 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

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
---
v2: changed from BITS_PER_BYTE to BITS_PER_TYPE
 drivers/net/wireless/ath/ath10k/txrx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/txrx.c b/drivers/net/wireless/ath/ath10k/txrx.c
index 23606b6..3b837b8 100644
--- a/drivers/net/wireless/ath/ath10k/txrx.c
+++ b/drivers/net/wireless/ath/ath10k/txrx.c
@@ -157,6 +157,9 @@ struct ath10k_peer *ath10k_peer_find_by_id(struct ath10k *ar, int peer_id)
 {
 	struct ath10k_peer *peer;
 
+	if (peer_id >= BITS_PER_TYPE(peer->peer_ids))
+		return NULL;
+
 	lockdep_assert_held(&ar->data_lock);
 
 	list_for_each_entry(peer, &ar->peers, list)
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
