Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D45190DEB
	for <lists+ath10k@lfdr.de>; Tue, 24 Mar 2020 13:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Zfa3QFzlyc6/eBhBXf8O6aSNd1W3DhLLWB4c6EZpOrA=; b=EvLJkEIinLfJ+p6q3fUw06MhWw
	Xe5Cc4KIiEo28YRJ2bMFcIqApsMU6tZSDB1pxcKcBYRmifmDYp7PM1VUnGRqEf7nJFtgwxI3eWhqk
	MSp0GOjyikKiJy1SteRV0cnT+NG+1yb+zS0usmEqdGy/89hisIh9Zuy+V5/nB0vH7JMQ3hNRlDZ3p
	4Vfcq/PBFCrZe5HCqEiNdthoWq/bUSSisOk4R+yTF5s6Xf2xD8CBrWhtzE+D6naFV0BMFOJHZDKbf
	oApq+XFyVjjUE4/2dLAoPzwmd3Rhlc4DoHhM1VEVjg0aS01Fm6Vto43+s6bbfGz+EyUg9UyCyUHNK
	8xGS0muw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGiyF-0001s8-2P; Tue, 24 Mar 2020 12:47:51 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiy9-0001m6-A8
 for ath10k@lists.infradead.org; Tue, 24 Mar 2020 12:47:48 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585054066; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=NzRR+EotuW5U5VJDO8XJ4ADNpOlgqXR6IWmr91GAxYo=;
 b=Tb+CtIb2HekME6E4zx1WhwWJt+4luU/9q/yq5oRRY2eTFQhDjsqduso0sw4/2h9rql0nc9Ht
 5g0ZOAYMCPKFzV4iqwZoPNTtVoFkf1eu9BBOdE38x3duIkVgU8yPvMGqg9OWZ6UQszvT/lYq
 jw9WcydpxowG8ciHzIh6QySpDPg=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7a016c.7fdc71324b90-smtp-out-n04;
 Tue, 24 Mar 2020 12:47:40 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 36519C433CB; Tue, 24 Mar 2020 12:47:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from pillair-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9A079C433BA;
 Tue, 24 Mar 2020 12:47:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9A079C433BA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: Rakesh Pillai <pillair@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 3/3] ath10k: Add support for targets without trustzone
Date: Tue, 24 Mar 2020 18:17:24 +0530
Message-Id: <1585054044-18667-4-git-send-email-pillair@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585054044-18667-1-git-send-email-pillair@codeaurora.org>
References: <1585054044-18667-1-git-send-email-pillair@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_054747_019447_2F282241 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rakesh Pillai <pillair@codeaurora.org>, devicetree@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Add the support to attach and map iommu
domain for targets which do not have the
support of TrustZone.

Tested HW: WCN3990
Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1

Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/snoc.c | 119 ++++++++++++++++++++++++++++++++-
 drivers/net/wireless/ath/ath10k/snoc.h |   7 ++
 2 files changed, 125 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index baba36c..207ad37 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -12,6 +12,7 @@
 #include <linux/property.h>
 #include <linux/regulator/consumer.h>
 #include <linux/of_address.h>
+#include <linux/iommu.h>
 
 #include "ce.h"
 #include "coredump.h"
@@ -1500,6 +1501,112 @@ static int ath10k_setup_msa_resources(struct ath10k *ar, u32 msa_size)
 	return 0;
 }
 
+static int ath10k_fw_init(struct ath10k *ar)
+{
+	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
+	struct device *host_dev = &ar_snoc->dev->dev;
+	struct platform_device_info info;
+	struct iommu_domain *iommu_dom;
+	struct platform_device *pdev;
+	struct device_node *node;
+	int ret;
+
+	node = of_get_child_by_name(host_dev->of_node, "wifi-firmware");
+	if (!node) {
+		ar_snoc->use_tz = true;
+		return 0;
+	}
+
+	memset(&info, 0, sizeof(info));
+	info.fwnode = &node->fwnode;
+	info.parent = host_dev;
+	info.name = node->name;
+	info.dma_mask = DMA_BIT_MASK(32);
+
+	pdev = platform_device_register_full(&info);
+	if (IS_ERR(pdev)) {
+		of_node_put(node);
+		return PTR_ERR(pdev);
+	}
+
+	pdev->dev.of_node = node;
+
+	ret = of_dma_configure(&pdev->dev, node, true);
+	if (ret) {
+		ath10k_err(ar, "dma configure fail: %d\n", ret);
+		goto err_unregister;
+	}
+
+	ar_snoc->fw.dev = &pdev->dev;
+
+	iommu_dom = iommu_domain_alloc(&platform_bus_type);
+	if (!iommu_dom) {
+		ath10k_err(ar, "failed to allocate iommu domain\n");
+		ret = -ENOMEM;
+		goto err_unregister;
+	}
+
+	ret = iommu_attach_device(iommu_dom, ar_snoc->fw.dev);
+	if (ret) {
+		ath10k_err(ar, "could not attach device: %d\n", ret);
+		goto err_iommu_free;
+	}
+
+	ar_snoc->fw.iommu_domain = iommu_dom;
+	ar_snoc->fw.fw_start_addr = ar->msa.paddr;
+
+	ret = iommu_map(iommu_dom, ar_snoc->fw.fw_start_addr,
+			ar->msa.paddr, ar->msa.mem_size,
+			IOMMU_READ | IOMMU_WRITE);
+	if (ret) {
+		ath10k_err(ar, "failed to map firmware region: %d\n", ret);
+		goto err_iommu_detach;
+	}
+
+	of_node_put(node);
+
+	return 0;
+
+err_iommu_detach:
+	iommu_detach_device(iommu_dom, ar_snoc->fw.dev);
+
+err_iommu_free:
+	iommu_domain_free(iommu_dom);
+
+err_unregister:
+	platform_device_unregister(pdev);
+	of_node_put(node);
+
+	return ret;
+}
+
+static int ath10k_fw_deinit(struct ath10k *ar)
+{
+	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
+	struct iommu_domain *iommu;
+	const size_t mapped_size;
+	size_t unmapped_size;
+
+	if (ar_snoc->use_tz)
+		return 0;
+
+	mapped_size = ar_snoc->fw.mapped_mem_size;
+	iommu = ar_snoc->fw.iommu_domain;
+
+	unmapped_size = iommu_unmap(iommu, ar_snoc->fw.fw_start_addr,
+				    mapped_size);
+	if (unmapped_size != mapped_size)
+		ath10k_err(ar, "failed to unmap firmware: %d\n",
+			   unmapped_size);
+
+	iommu_detach_device(iommu, ar_snoc->fw.dev);
+	iommu_domain_free(iommu);
+
+	platform_device_unregister(to_platform_device(ar_snoc->fw.dev));
+
+	return 0;
+}
+
 static const struct of_device_id ath10k_snoc_dt_match[] = {
 	{ .compatible = "qcom,wcn3990-wifi",
 	 .data = &drv_priv,
@@ -1608,16 +1715,25 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
 		goto err_power_off;
 	}
 
+	ret = ath10k_fw_init(ar);
+	if (ret) {
+		ath10k_err(ar, "failed to initialize firmware: %d\n", ret);
+		goto err_power_off;
+	}
+
 	ret = ath10k_qmi_init(ar, msa_size);
 	if (ret) {
 		ath10k_warn(ar, "failed to register wlfw qmi client: %d\n", ret);
-		goto err_power_off;
+		goto err_fw_deinit;
 	}
 
 	ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc probe\n");
 
 	return 0;
 
+err_fw_deinit:
+	ath10k_fw_deinit(ar);
+
 err_power_off:
 	ath10k_hw_power_off(ar);
 
@@ -1649,6 +1765,7 @@ static int ath10k_snoc_remove(struct platform_device *pdev)
 
 	ath10k_core_unregister(ar);
 	ath10k_hw_power_off(ar);
+	ath10k_fw_deinit(ar);
 	ath10k_snoc_free_irq(ar);
 	ath10k_snoc_release_resource(ar);
 	ath10k_qmi_deinit(ar);
diff --git a/drivers/net/wireless/ath/ath10k/snoc.h b/drivers/net/wireless/ath/ath10k/snoc.h
index c05df45..18e19fb 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.h
+++ b/drivers/net/wireless/ath/ath10k/snoc.h
@@ -55,6 +55,13 @@ struct regulator_bulk_data;
 struct ath10k_snoc {
 	struct platform_device *dev;
 	struct ath10k *ar;
+	unsigned int use_tz;
+	struct video_firmware {
+		struct device *dev;
+		dma_addr_t fw_start_addr;
+		struct iommu_domain *iommu_domain;
+		size_t mapped_mem_size;
+	} fw;
 	void __iomem *mem;
 	dma_addr_t mem_pa;
 	struct ath10k_snoc_target_info target_info;
-- 
2.7.4

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
