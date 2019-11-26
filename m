Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A92109AFD
	for <lists+ath10k@lfdr.de>; Tue, 26 Nov 2019 10:18:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NV+uu6U9ZzHmsqTtDIXottjrXOrS80OUgYK1rPvllfM=; b=YDTeZnWXJa3PDo
	a1aDO8TJPtgIX0mQecTm1XDTC/prr7jreMmme3fXrwq41dH8P7aw1wgruyF0tzZ5S8wpZYZgUIBaj
	d1bEGn6pnjOOYHUrdc+2sm8bq2aefDh/AMKIKJo6fCMmqDys9vKaGSSyHmcD5d2XCzPeoSc5VQpQ1
	ffXl7JeSpT+lZ2rMuQCjuiuiS/MkYF/nRR0UfmBQlnOhX1DpFEl+ROavdRTX0rIQgvY132qFosw7J
	w+E6lCU/ps4OBmIiXECo9Orzt2IVXF5N3NHoBdFcoJDuxCT9gV2xB/b5fJHIX+m4bcNvl2Q6RCKuC
	0+LgzKOrc4OQEM8uO+Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZWzS-00058m-Ow; Tue, 26 Nov 2019 09:18:34 +0000
Received: from a27-21.smtp-out.us-west-2.amazonses.com ([54.240.27.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZWzP-00058J-Hg
 for ath10k@lists.infradead.org; Tue, 26 Nov 2019 09:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574759907;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
 bh=X5V8s0Eli1EcgJsp36WqwwwNfr8P8+kw3efGveKQfu0=;
 b=Gx6zRrGjftLYjnaA9rWZSrUXfdzE9I0yEEIZdcRGGbalf3mSN9ocxThvghaLMKIX
 3l4fZOMXEdS17mcigOGwEYvX14us5Z3ltVU+Lz2RrsZHMm1SPXc/y9onRQcWcLdcP7y
 vsZwr+Mt5YcyriXImDrAcBxBwWyyWgANEvU+1ksc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574759907;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
 bh=X5V8s0Eli1EcgJsp36WqwwwNfr8P8+kw3efGveKQfu0=;
 b=akfjZjhRIsU9VfJ3klpMgCkkH7nI5SXV0PUYGsl8Tzccn/oBhc4nMNy8+qKDsH9q
 kAMKYNMlS523g0/lW16H8EoNpLOI4ELBSVm9bBzqdD0mG8gEQ8C7tNradS60iicKYA3
 kg7ExN179J3BGzJPxcJy5U+6qvp9/AWIfuQ73Oy4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 95B09C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: drop the TX packet which size exceed credit size for
 sdio
Date: Tue, 26 Nov 2019 09:18:27 +0000
Message-ID: <0101016ea70141b4-8bba1ff2-ed89-438b-bc8a-faf94f91686f-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.26-54.240.27.21
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_011831_712759_887C55A4 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

sdio chip use DMA buffer to receive TX packet from ath10k, and it has
limitation of each buffer, if the packet size exceed the credit size,
it will trigger error in firmware.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00017-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
this patch depens on the patch "ath10k: add htt TX bundle for sdio"
 drivers/net/wireless/ath/ath10k/htc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/htc.c b/drivers/net/wireless/ath/ath10k/htc.c
index 03c358cd16d4..51addcc654a0 100644
--- a/drivers/net/wireless/ath/ath10k/htc.c
+++ b/drivers/net/wireless/ath/ath10k/htc.c
@@ -846,6 +846,11 @@ int ath10k_htc_send_hl(struct ath10k_htc *htc,
 	struct ath10k_htc_ep *ep = &htc->endpoint[eid];
 	struct ath10k *ar = htc->ar;
 
+	if (sizeof(struct ath10k_htc_hdr) + skb->len > ep->tx_credit_size) {
+		ath10k_dbg(ar, ATH10K_DBG_HTC, "tx exceed max len %d\n", skb->len);
+		return -ENOMEM;
+	}
+
 	ath10k_dbg(ar, ATH10K_DBG_HTC, "htc send hl: eid:%d, bundle:%d, tx count:%d, len:%d\n",
 		   eid, ep->bundle_tx, skb_queue_len(&ep->tx_req_head), skb->len);
 
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
