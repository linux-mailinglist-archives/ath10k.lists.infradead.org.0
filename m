Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7995110AA84
	for <lists+ath10k@lfdr.de>; Wed, 27 Nov 2019 07:04:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EcCO5QC02CJ5IUIbmSObf4TbRaTrV2DiyBqMLEMrKWs=; b=slT/33O38TQh6N
	Ee7IxNVVX/IJvmWwl7u0VEC00r0A6kkpJRelFjIkdvpsPtF8ElpLHMbjC05LzreCB/wuVr/7PPuJP
	QcLdF1OM0Ppue3Ek2VITq9+scYBfiCpJ5qIUMu+PblXr7WM2WFj9bTKxaljIrSi+kaW5VT2t601RG
	xX+h09VTiO0JhhOg1lZcTHtfW3B0Icn+/n9trIMc9UoDQ0XhbDbMdbIThF9rQ9S6+7OCduxDsqg8H
	o2O0BwoOZZ3EyrUdFalg7f4EoKLzvH66CYXg77HaoTIfDByCYlsjjCWaCj4gESwRqhzUliqkgQku+
	vqsH54piZ27tFxCabdrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZqR3-0005ce-0m; Wed, 27 Nov 2019 06:04:21 +0000
Received: from a27-187.smtp-out.us-west-2.amazonses.com ([54.240.27.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZqQz-0005cF-E7
 for ath10k@lists.infradead.org; Wed, 27 Nov 2019 06:04:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574834654;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
 bh=v2TL8JjA1UFCJVbjuSoZ2qp2ZKyNT0/o7iQcl3kD3yM=;
 b=gyllgeffP15+ZM2jmqbOTnVDvoWmGxvWAw4ufBpOsvAeESNkZJy92BZqo90tRTwY
 NdQZOfSu86b/4umuY2m/IwyVU4cGIu5M6syoFO0tApRHM3EBDC0EJ5vGNkljAqq7nXI
 Fczksc4dV4xMPGUvOfLCO/YNhpBwKhSaui28b2Zo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574834654;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
 bh=v2TL8JjA1UFCJVbjuSoZ2qp2ZKyNT0/o7iQcl3kD3yM=;
 b=ZDe4pRa8vEpBZp2+SsWj0KLVoDkYcjPJls137WZ84oW78Soiaimg2gJWLwtzFSuw
 PpPU5PA0T8fF8v3V5MegxrtNvs4zp6bdFJFD6f49uenRLfE32WzusMTO+3mJkM4ziXv
 jKPrtD6SjrZNR8dW7xByTcImlvrh/+3CiAxs/jro=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 617A9C4479C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: enable wow feature for sdio chip
Date: Wed, 27 Nov 2019 06:04:14 +0000
Message-ID: <0101016eab75cdd3-92ce3745-4eea-4fcb-b829-d9d30d9713cb-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.27-54.240.27.187
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_220417_632735_FE0AE945 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.187 listed in list.dnswl.org]
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

sdio does not support wow, this patch is to enable it. When system enter
sleep state, if wowlan is enabled, then sdio chip will keep power if
platform support keep power, after resume, it will not need to re-load
firmware again.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00029.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 60849ab8088f..bd94dbb23741 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -1889,7 +1889,7 @@ static void ath10k_sdio_hif_stop(struct ath10k *ar)
 
 static int ath10k_sdio_hif_suspend(struct ath10k *ar)
 {
-	return -EOPNOTSUPP;
+	return 0;
 }
 
 static int ath10k_sdio_hif_resume(struct ath10k *ar)
@@ -2040,7 +2040,26 @@ static const struct ath10k_hif_ops ath10k_sdio_hif_ops = {
  */
 static int ath10k_sdio_pm_suspend(struct device *device)
 {
-	return 0;
+	struct sdio_func *func = dev_to_sdio_func(device);
+	struct ath10k_sdio *ar_sdio = sdio_get_drvdata(func);
+	struct ath10k *ar = ar_sdio->ar;
+	mmc_pm_flag_t pm_flag, pm_caps;
+	int ret;
+
+	if (!device_may_wakeup(ar->dev))
+		return 0;
+
+	pm_flag = MMC_PM_KEEP_POWER;
+
+	ret = sdio_set_host_pm_flags(func, pm_flag);
+	if (ret) {
+		pm_caps = sdio_get_host_pm_caps(func);
+		ath10k_warn(ar, "failed to set sdio host pm flags (0x%x, 0x%x): %d\n",
+			    pm_flag, pm_caps, ret);
+		return ret;
+	}
+
+	return ret;
 }
 
 static int ath10k_sdio_pm_resume(struct device *device)
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
