Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93349691DB
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 16:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdyP49vaAqQvzDroaaCReMe19Ep+oVT7YHwdMYTb8kg=; b=a13bR8mBWV93qe
	gYX8QkUDlPGLehpUY9BmnbB5GvchCfUHD++E0pW0l/tt+fQ3GIDpyp3orkNfVhHGQoThzmgS2WXWm
	Tjfh4rqCAnw2MJBEHd9m68wVduekCI/ro/rf2GC0+NCZksxO/Uxi4IrJQePcPDuDTlBQ+pAsXu+Sr
	6EmJyoIBl4w+fm1X/uAdwfYzH6V9Eh1gw5+D8BAyG9keAC+vK9f+YIO88HS1B34qMNVwc4OER4VWJ
	p3i8/zw1yhxjWaFQOq/H3jcMAFk86jm0eRX3lnML3pdJEga/pVZ67R2JA7Pm4Ks/strkqPgZWh4G/
	QF2HXotgYat/ZePnRUIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn23a-00059f-V8; Mon, 15 Jul 2019 14:34:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn23W-00059D-9t
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 14:34:19 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 03FC9204FD;
 Mon, 15 Jul 2019 14:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563201258;
 bh=g6FeDpZMbvqQEdTPMB47Po8DSAzxTD5qheByBCtU7LE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zwIaSa69CwnhGgInY+Ncp5zU+c37/TD6N6EQWTKbRWoFgH0uuZ441fJz5WeOjVX86
 S6wwdetQ3m7ObPoLXMz7YcS8O0LSy6iDhIpZpNmaMAjctMQDLSZ6i2UixhOGQdC+lX
 PDPMyMY30aF+D2+doDGdzbebOB32tE0bqSjYoViw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 091/105] ath10k: destroy sdio workqueue while
 remove sdio module
Date: Mon, 15 Jul 2019 10:28:25 -0400
Message-Id: <20190715142839.9896-91-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715142839.9896-1-sashal@kernel.org>
References: <20190715142839.9896-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_073418_359145_623FD66C 
X-CRM114-Status: UNSURE (   8.37  )
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

[ Upstream commit 3ed39f8e747a7aafeec07bb244f2c3a1bdca5730 ]

The workqueue need to flush and destory while remove sdio module,
otherwise it will have thread which is not destory after remove
sdio modules.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index c6440d28ab48..0a1248ebccf5 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -2076,6 +2076,9 @@ static void ath10k_sdio_remove(struct sdio_func *func)
 	cancel_work_sync(&ar_sdio->wr_async_work);
 	ath10k_core_unregister(ar);
 	ath10k_core_destroy(ar);
+
+	flush_workqueue(ar_sdio->workqueue);
+	destroy_workqueue(ar_sdio->workqueue);
 }
 
 static const struct sdio_device_id ath10k_sdio_devices[] = {
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
