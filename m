Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14EECBFFB
	for <lists+ath10k@lfdr.de>; Fri,  4 Oct 2019 18:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NeqkQnu9a6DCmBUjl9Cqxe92lPsfX4uG2AA1s6liCv4=; b=XIrIQ1vrVrx4Jj
	eLoNL1U0YG1oqNuG5sK/u776zS889pN/XjcbwXW/Vo9ASL8g3kbx6A4Qpt1zDt0MmW4fWBdLTn4O8
	knVSZ0Ro8nE5UWIZRgkYF18U5eBQcL5XbvEDklwTxq2Ft4GeHGPwtTwbFqw5RawaSSq9ihuN2kaBf
	i+2oxu2V/OEKjw8yKrMwmBG/OTKibqj+du3LaNLSaejGNGhY+znFCbGoIdJxxtGTCflhCiXSBWtV3
	9UEgne/djcEW+WbQy0P4dk47ghWPccvcpq10eCYg56N5QWRA5r6kfgSSZET2FC1dZHyzsutIJVTh8
	VtbYJvgUIAuczAhNn1TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQ2O-0002rs-SH; Fri, 04 Oct 2019 16:02:36 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQ2L-0002qs-ER
 for ath10k@lists.infradead.org; Fri, 04 Oct 2019 16:02:34 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iGQ2F-0005CI-A4; Fri, 04 Oct 2019 16:02:27 +0000
From: Colin King <colin.king@canonical.com>
To: Kalle Valo <kvalo@codeaurora.org>,
 "David S . Miller" <davem@davemloft.net>, ath10k@lists.infradead.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org
Subject: [PATCH][next] ath10k: fix null dereference on pointer crash_data
Date: Fri,  4 Oct 2019 17:02:27 +0100
Message-Id: <20191004160227.31577-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_090233_618451_C9DEC602 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

Currently when pointer crash_data is null the present null check
will also check that crash_data->ramdump_buf is null and will cause
a null pointer dereference on crash_data. Fix this by using the ||
operator instead of &&.

Fixes: 3f14b73c3843 ("ath10k: Enable MSA region dump support for WCN3990")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/wireless/ath/ath10k/snoc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index cd22c8654aa9..16177497bba7 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -1400,7 +1400,7 @@ static void ath10k_msa_dump_memory(struct ath10k *ar,
 	size_t buf_len;
 	u8 *buf;
 
-	if (!crash_data && !crash_data->ramdump_buf)
+	if (!crash_data || !crash_data->ramdump_buf)
 		return;
 
 	mem_layout = ath10k_coredump_get_mem_layout(ar);
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
