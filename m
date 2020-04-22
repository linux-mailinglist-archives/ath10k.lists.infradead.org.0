Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18551B3A83
	for <lists+ath10k@lfdr.de>; Wed, 22 Apr 2020 10:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TkYE4VkA5SqTaRpFHPBhPbYobxpThmcoUsoBZRqnXG8=; b=M38dTHGrBsMjdn
	XhwQ1Evw4UQGqtUzSkeG6YnQVZRKz0mBch9Sa4FCIMa5kgg1mD7cp/SSn5jhbKmSnHJKPBYwJUYLl
	7G/Qxnja7qy5XwkqJ13SuawruSSX9LoSO7vCHzrQF+nDtgLYNPuVyBrODjWHWHJfLj+xlaokC2c9i
	1nCOXt/dr6+F7u2E7VRrD55cU0I4QwQSfM1i08Z4iRx+0CFcTZ9oCVEWVQjfKij7Ya0WqlcYBDHil
	za6hPgdQatiPxfaDb83g3xwzpkVSEXQPwCtuwMGFoYM0O7BfzfPC/AhZFMHtFXS6WTXAd+U5/Sgeb
	FT03Jy/Tf7wgG7ewdX3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRB3G-0000xp-Ic; Wed, 22 Apr 2020 08:48:14 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRB39-0000wS-7U
 for ath10k@lists.infradead.org; Wed, 22 Apr 2020 08:48:12 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587545290; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=U5XjU8OF/7fOaST2iHHrzf1k4iXFdOXagWvhDgQwyLw=;
 b=L0Z2+HT2VPU1/R548O11wtnSLtM7LaPv9VTesbonY1q0XqGC2oKGEngFUnbsfrrlGPFsVtqc
 5phnh9lrf/tUCtPkLzkTHHJtVzdTCksDCh+D9iPrDim5TOq8yfdJBz5OUchqX8p15Qy/RzS3
 k4zSwai5sj+Lbl4NnyZDU9GpEiI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea004b6.7ff699ac6b58-smtp-out-n02;
 Wed, 22 Apr 2020 08:47:50 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9F220C433D2; Wed, 22 Apr 2020 08:47:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2135EC433F2;
 Wed, 22 Apr 2020 08:47:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2135EC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2] ath10k: drop the TX packet which size exceed credit size
 for sdio
Date: Wed, 22 Apr 2020 16:47:19 +0800
Message-Id: <20200422084719.3479-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_014811_004580_3276C822 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-wireless@vger.kernel.org, wgong@codeaurora.org
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
v2: rebase to ath-next
 drivers/net/wireless/ath/ath10k/htc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/htc.c b/drivers/net/wireless/ath/ath10k/htc.c
index 58ceba75d20a..31df6dd04bf6 100644
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
 	ath10k_dbg(ar, ATH10K_DBG_HTC, "htc send hl eid %d bundle %d tx count %d len %d\n",
 		   eid, ep->bundle_tx, skb_queue_len(&ep->tx_req_head), skb->len);
 
-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
