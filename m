Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B68FE801C
	for <lists+ath10k@lfdr.de>; Tue, 29 Oct 2019 07:12:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oljRSBRb5y7x7UGHgFPN3/+FQFkAgKV+ooC4NSYUayc=; b=UWA
	3SOU+5dJHhbxsS6qvSri1HMOZmkxOvwH4r58a7cIm/xPuHEtyBpquVShPNOlS68kIAPUmxCZRvRMB
	hVlONAJaH4BPVfMw7w+/xr5F3Z7+IDgGC50ROE94+DKBbWgyPKybWVmV/UBqPYXHp5YsNBVgWHP8n
	DqRH78+5mrhtljlofsTRBiBZjjUUutRbjq/iGMHHLsbtqaSsyks+AEjRvT5NuuBKohjelY0BM0AGb
	i79VgMiid1p9WOi6Uiy+8J+YzmJPxgezzqfEM4bFVyn8r6nubPMYra/PvRmdLxiHAm3WinQ1Bd2cw
	GFTLAldJpEuo/RtEXmip7ZuYy43k3gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPKk7-0006QC-SJ; Tue, 29 Oct 2019 06:12:35 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPKk1-0006Oq-NR
 for ath10k@lists.infradead.org; Tue, 29 Oct 2019 06:12:32 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id CE68A602C8; Tue, 29 Oct 2019 06:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572329545;
 bh=2ORAqQGNkhzSfKv/lvYtprmI8CrPEWdo6MCV7KCcFHY=;
 h=From:To:Cc:Subject:Date:From;
 b=OiEOL4UJZtHt0pmTX5Ub99vakOwObI1HMmEN1CLLApgKuBLvbZGWfGQ/hTf0u6Agq
 +TIgOdLXzwwnxOJ+viOX2U8Xp3m43irsp3tjyemarS+1w9k6tzCOjWRCjAMnOeg4kA
 a+myYcO31RAJH497MTnGpSEbJAVKvJYpk7/lOzbw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from smtp.codeaurora.org (unknown [180.166.53.21])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: miaoqing@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4695C607C3;
 Tue, 29 Oct 2019 06:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572329545;
 bh=2ORAqQGNkhzSfKv/lvYtprmI8CrPEWdo6MCV7KCcFHY=;
 h=From:To:Cc:Subject:Date:From;
 b=OiEOL4UJZtHt0pmTX5Ub99vakOwObI1HMmEN1CLLApgKuBLvbZGWfGQ/hTf0u6Agq
 +TIgOdLXzwwnxOJ+viOX2U8Xp3m43irsp3tjyemarS+1w9k6tzCOjWRCjAMnOeg4kA
 a+myYcO31RAJH497MTnGpSEbJAVKvJYpk7/lOzbw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4695C607C3
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=miaoqing@codeaurora.org
Received: by smtp.codeaurora.org (sSMTP sendmail emulation);
 Tue, 29 Oct 2019 14:12:19 +0800
From: Miaoqing Pan <miaoqing@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: fix get invalid tx rate for Mesh metric
Date: Tue, 29 Oct 2019 14:12:17 +0800
Message-Id: <1572329537-27728-1-git-send-email-miaoqing@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_231229_787420_C660F9B9 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Hou Bao Hou <houbao@codeaurora.org>,
 Anilkumar Kolli <akolli@codeaurora.org>, linux-wireless@vger.kernel.org,
 Miaoqing Pan <miaoqing@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

ath10k does not provide transmit rate info per MSDU
in tx completion, mark that as -1 so mac80211
will ignore the rates. This fixes mac80211 update Mesh
link metric with invalid transmit rate info.

Tested HW: QCA9984
Tested FW: 10.4-3.9.0.2-00035

Signed-off-by: Hou Bao Hou <houbao@codeaurora.org>
Signed-off-by: Anilkumar Kolli <akolli@codeaurora.org>
Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/txrx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/txrx.c b/drivers/net/wireless/ath/ath10k/txrx.c
index 4102df0..39abf8b 100644
--- a/drivers/net/wireless/ath/ath10k/txrx.c
+++ b/drivers/net/wireless/ath/ath10k/txrx.c
@@ -95,6 +95,8 @@ int ath10k_txrx_tx_unref(struct ath10k_htt *htt,
 
 	info = IEEE80211_SKB_CB(msdu);
 	memset(&info->status, 0, sizeof(info->status));
+	info->status.rates[0].idx = -1;
+
 	trace_ath10k_txrx_tx_unref(ar, tx_done->msdu_id);
 
 	if (!(info->flags & IEEE80211_TX_CTL_NO_ACK))
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
