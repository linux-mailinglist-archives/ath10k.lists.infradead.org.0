Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5C8E2DF6
	for <lists+ath10k@lfdr.de>; Thu, 24 Oct 2019 11:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=v3dgG8VcslsVu7eQlJTmtmwEouyomzps4vWR58NB8bc=; b=cCa
	yBhU+p6wbd9vsP9CW5lVgimVdCqwU9p/3bR2Dqkv6Od9ojtOd9mIebM5wff40jU5oiAA40dnS0+79
	MPemnIcuVZ48ZrWDIHO41waH/jhaxgEKSKcPdx1lxr1yQzZDGZADUD5g+QFxAUyi1I17LyXDH0nz1
	VzwlzHGLyEyUn3Foi7ecTG//1PI6FBS69Q6SydsqlROp+IJR+2Gqucdh9mf4n/GsHH5OlZTOe+zku
	QyhRffpM7ixyvw1MoHfBd/bEYvB82i1oRg3IaAw47o50vaN+4mZ/Q7wYoYKwkOa4Qf76Fti4BVtE8
	qzYcGwgRS03xI7CBZ1QQ80Ij4W4gZEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZox-00044W-6F; Thu, 24 Oct 2019 09:54:19 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZos-00042o-9n
 for ath10k@lists.infradead.org; Thu, 24 Oct 2019 09:54:16 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C586F61196; Thu, 24 Oct 2019 09:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571910853;
 bh=9Wf6RMnyINCUk3PS0SF0QPwLRWMMNoeboD9LOGpLDdM=;
 h=From:To:Cc:Subject:Date:From;
 b=YbcmWlSOb3aa9nilL0ojgIj17QZr4zXBLtKz0HzjlQlCBwkE1dxUeURnv2JhojK3w
 cK1y/qK3WdpWzLOTUAQB4AKLrUVsH1CI2wYRT1vg1xDW1GPenb0m2ng9A7wnox1/qu
 B9mhbznlqg1NE5DNDXfHLMf4BH96H3AP+SHpWDFU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (unknown [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 907EB60FBB;
 Thu, 24 Oct 2019 09:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571910853;
 bh=9Wf6RMnyINCUk3PS0SF0QPwLRWMMNoeboD9LOGpLDdM=;
 h=From:To:Cc:Subject:Date:From;
 b=YbcmWlSOb3aa9nilL0ojgIj17QZr4zXBLtKz0HzjlQlCBwkE1dxUeURnv2JhojK3w
 cK1y/qK3WdpWzLOTUAQB4AKLrUVsH1CI2wYRT1vg1xDW1GPenb0m2ng9A7wnox1/qu
 B9mhbznlqg1NE5DNDXfHLMf4BH96H3AP+SHpWDFU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 907EB60FBB
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 1/2] ath10k: cosmetic cleanup to sdio files
Date: Thu, 24 Oct 2019 12:54:08 +0300
Message-Id: <1571910849-11489-1-git-send-email-kvalo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_025414_378890_C78B9213 
X-CRM114-Status: GOOD (  10.73  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Do some cosmetic cleanup while reviewing the files. No functional changes.

Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index c34637881219..ef16b45c18da 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -541,10 +541,8 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 	int pkt_cnt = 0;
 
 	if (n_lookaheads > ATH10K_SDIO_MAX_RX_MSGS) {
-		ath10k_warn(ar,
-			    "the total number of pkgs to be fetched (%u) exceeds maximum %u\n",
-			    n_lookaheads,
-			    ATH10K_SDIO_MAX_RX_MSGS);
+		ath10k_warn(ar, "the total number of pkgs to be fetched (%u) exceeds maximum %u\n",
+			    n_lookaheads, ATH10K_SDIO_MAX_RX_MSGS);
 		ret = -ENOMEM;
 		goto err;
 	}
@@ -553,10 +551,8 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 		htc_hdr = (struct ath10k_htc_hdr *)&lookaheads[i];
 		last_in_bundle = false;
 
-		if (le16_to_cpu(htc_hdr->len) >
-		    ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH) {
-			ath10k_warn(ar,
-				    "payload length %d exceeds max htc length: %zu\n",
+		if (le16_to_cpu(htc_hdr->len) > ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH) {
+			ath10k_warn(ar, "payload length %d exceeds max htc length: %zu\n",
 				    le16_to_cpu(htc_hdr->len),
 				    ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH);
 			ret = -ENOMEM;
@@ -567,8 +563,7 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 		full_len = ath10k_sdio_calc_txrx_padded_len(ar_sdio, act_len);
 
 		if (full_len > ATH10K_SDIO_MAX_BUFFER_SIZE) {
-			ath10k_warn(ar,
-				    "rx buffer requested with invalid htc_hdr length (%d, 0x%x): %d\n",
+			ath10k_warn(ar, "rx buffer requested with invalid htc_hdr length (%d, 0x%x): %d\n",
 				    htc_hdr->eid, htc_hdr->flags,
 				    le16_to_cpu(htc_hdr->len));
 			ret = -EINVAL;
@@ -590,12 +585,14 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 							    &bndl_cnt);
 
 			if (ret) {
-				ath10k_warn(ar, "alloc_bundle error %d\n", ret);
+				ath10k_warn(ar, "failed to allocate a bundle: %d\n",
+					    ret);
 				goto err;
 			}
 
 			pkt_cnt += bndl_cnt;
-			/*Next buffer will be the last in the bundle */
+
+			/* next buffer will be the last in the bundle */
 			last_in_bundle = true;
 		}
 
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
