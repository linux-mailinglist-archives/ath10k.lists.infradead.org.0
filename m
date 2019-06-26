Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E647755E60
	for <lists+ath10k@lfdr.de>; Wed, 26 Jun 2019 04:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GskN1vIIZWaEocftv138jesksxV0XgDiSuJahd4XtxQ=; b=asx
	X0AJlBDWAa8ToOsRctej6DO4uaOfSZ94LGKNETwP+IElihT7n8RLmQOTYp5vzBYYQeUd7FXry/kk0
	Z03LXXvj808jho3VmopF+4xAap6uDONxeGiOr9ODmsHxNYIpl+Qd7bu8Rl1nIFYrkwPmcbjV5pcFW
	Z3Dwgmb0EWpuzP1ypRWU/ID+l05SVuLCUDhpVZL70f2t3C2WZkARTycHDHVPmMnkSXnAVKHM+R9qM
	VzBf5DcSpKP65l35dKZmb10yebJtOzosyYjg65mUTRx2hsc73mzq9R7HNWxoXN3OWSZ+EER130A3C
	VIIu8lpfcXHecMDq6pM2Nf7r/vt+qyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfxh4-0000qX-W0; Wed, 26 Jun 2019 02:29:54 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfxh1-0000qC-Dg
 for ath10k@lists.infradead.org; Wed, 26 Jun 2019 02:29:52 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 2046A607DE; Wed, 26 Jun 2019 02:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561516191;
 bh=xyfamSf7/1m5zyT/MOtwY9DG0yKj9HenxOLGrwMOsg4=;
 h=From:To:Cc:Subject:Date:From;
 b=nrBPCbQqkxdGMKys/0qh9QmNf1xJNb7BkmMdKy2OcXmvCwX3ASJV59MFnFdQP51fB
 VI88VBXi+EfpCmRyUcy49tp08bWy9l93sUNUjLd5viFK0REML21QcMt+wz+NUSTStB
 A3eZGfM0iZOQRUNejXH6TLmVgT7cCJ9hdfgYTvE0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from localhost.localdomain (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C5E8C602DC;
 Wed, 26 Jun 2019 02:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561516190;
 bh=xyfamSf7/1m5zyT/MOtwY9DG0yKj9HenxOLGrwMOsg4=;
 h=From:To:Cc:Subject:Date:From;
 b=Pv7RS4eB4hXiTNBBkDAq1B9ukWOZ2KlCoNTs6pNzlZQztqD3HVtncLWV0k6m6p2si
 bhE9jlPLAw1afCteWZtYrsMglKz140WZSOAWzufiew9BWFlZsaHaN8MhJmfZn39EeO
 anZX63a+vgpXgYZF0JQWxsDq7CpNUiZ2ngFsfD6k=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C5E8C602DC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: Move non-fatal warn logs to dbg level for SDIO chip
Date: Wed, 26 Jun 2019 10:29:35 +0800
Message-Id: <1561516175-13873-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_192951_479380_0B0D5087 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

ath10k will receive some message with invalid peer id from firmware.
reason is:
There are incoming frames to MAC hardware that NOT find relative
address search table, then peer id is invalid set by MAC hardware,
it is hardware's logic, so fix it in ath10k will be more convenient.

log:
ath10k_sdio mmc1:0001:1: Got RX ind from invalid peer: 65535

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htt_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index a20ea27..14b838f 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -2082,7 +2082,7 @@ static bool ath10k_htt_rx_proc_rx_ind_hl(struct ath10k_htt *htt,
 	spin_lock_bh(&ar->data_lock);
 	peer = ath10k_peer_find_by_id(ar, peer_id);
 	spin_unlock_bh(&ar->data_lock);
-	if (!peer)
+	if (!peer && peer_id != HTT_INVALID_PEERID)
 		ath10k_warn(ar, "Got RX ind from invalid peer: %u\n", peer_id);
 
 	num_mpdu_ranges = MS(__le32_to_cpu(rx->hdr.info1),
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
