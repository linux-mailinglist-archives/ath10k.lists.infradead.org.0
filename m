Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6A25DD2E
	for <lists+ath10k@lfdr.de>; Wed,  3 Jul 2019 05:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4H6/orItk3YZXsLIdIaeFZ7o2VfP9xszX8p9kk+51Q8=; b=HR0SKXKNOCluCR
	w3HaCMTdCgUdEa5jUu0YCb9G3NmVw9Xiyos4wXEVK6obSO0EFOWEU0tjUdOeCT2wswYkF93M2sxnU
	PwotESYXFdk+m/U6YFv1TVtsLw0XP9f07WGLmFoVUXGnPsn4sRqL+XOWuVfXWIw6hqSuyJp+oKg7C
	NNugYfhG8HSipcpE+LbKFBXfU7ybyNVLKUtlcLMsc1zVo0KWOt4YESaT5Hmt0lqF+fP1MWn7K/at4
	xsHnQLIX4RmFSFUYcDvCqtK/6Ok5Nya4EabTSe9CUiWb6O5p8KcgugvZw0MttzYx8D/Qy4ZxpGp5W
	zFJlI2lziOZocS/WrMfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiWOn-0002vr-2Y; Wed, 03 Jul 2019 03:57:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiWOY-0002oV-B6
 for ath10k@lists.infradead.org; Wed, 03 Jul 2019 03:57:23 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1C02C609D4; Wed,  3 Jul 2019 03:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562126242;
 bh=yr6IvrVD/cRJPtxwBir+7ZAgmidrGFl4s3DIpOgm038=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G1UZVvqicseUnZttZ2XuZ8+IrMEvubRjYrzmKJlfePgmgZekQjpOiwbMLwHiRvP6C
 ymmJmNY90PP2MBZxVIFsggHUnbXcKGG4R5yr15Pez2hVMS0dZ9K1+skMiAt/phu7GW
 4IkmfB5ppFPZFVvg22lnFt8tNT7u9SjLRWvShuro=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from govinds-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: govinds@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B42DC6087F;
 Wed,  3 Jul 2019 03:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562126241;
 bh=yr6IvrVD/cRJPtxwBir+7ZAgmidrGFl4s3DIpOgm038=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VxWJRkxGfSZwWeQ6R2zpjKLSqQ4aneiIkdxDlPwia8hwxZ+hSrgEsff2cpesguIsQ
 L5nRDe7F33hM5GD1UOqgwo7O3VNmLfc63H2DLr7E4P4dYC3/4FQJVWNTyklm//Clgi
 3JsoxpfLpmYz5eY+el+L3JbtRwptnj9CAmTQH/fs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B42DC6087F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 2/3] ath10k: Move regulator config to driver private data
Date: Wed,  3 Jul 2019 09:27:10 +0530
Message-Id: <20190703035711.25592-3-govinds@codeaurora.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190703035711.25592-1-govinds@codeaurora.org>
References: <20190703035711.25592-1-govinds@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_205722_504833_55348968 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm@vger.kernel.org, Govind Singh <govinds@codeaurora.org>,
 linux-wireless@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

WCN3990 Regulator config is varying b/w different MSM platforms.
In order to have scalable config, move regulator config to driver
private data.

Signed-off-by: Govind Singh <govinds@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/snoc.c | 38 +++++++++++++++++++++-----
 drivers/net/wireless/ath/ath10k/snoc.h | 23 +++++++++-------
 2 files changed, 44 insertions(+), 17 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index ca1186ec4129..bd7d97924fe0 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -36,13 +36,20 @@ static char *const ce_name[] = {
 	"WLAN_CE_11",
 };
 
-static struct ath10k_vreg_info vreg_cfg[] = {
+static struct ath10k_vreg_info sdm845_reg_cfg[] = {
 	{NULL, "vdd-0.8-cx-mx", 800000, 850000, 0, 0, false},
 	{NULL, "vdd-1.8-xo", 1800000, 1850000, 0, 0, false},
 	{NULL, "vdd-1.3-rfa", 1300000, 1350000, 0, 0, false},
 	{NULL, "vdd-3.3-ch0", 3300000, 3350000, 0, 0, false},
 };
 
+static struct ath10k_vreg_info qcs40x_reg_cfg[] = {
+	{NULL, "vdd-0.8-cx-mx", 1224000, 1224000, 0, 0, false},
+	{NULL, "vdd-1.8-xo", 1800000, 1850000, 0, 0, false},
+	{NULL, "vdd-1.3-rfa", 1300000, 1350000, 0, 0, false},
+	{NULL, "vdd-3.3-ch0", 3300000, 3350000, 0, 0, false},
+};
+
 static struct ath10k_clk_info clk_cfg[] = {
 	{NULL, "cxo_ref_clk_pin", 0, false},
 };
@@ -54,10 +61,20 @@ static void ath10k_snoc_htt_rx_cb(struct ath10k_ce_pipe *ce_state);
 static void ath10k_snoc_htt_htc_rx_cb(struct ath10k_ce_pipe *ce_state);
 static void ath10k_snoc_pktlog_rx_cb(struct ath10k_ce_pipe *ce_state);
 
-static const struct ath10k_snoc_drv_priv drv_priv = {
+static const struct ath10k_snoc_drv_priv sdm845_wcn39xx_drv_priv = {
+	.hw_rev = ATH10K_HW_WCN3990,
+	.dma_mask = DMA_BIT_MASK(35),
+	.msa_size = 0x100000,
+	.vreg_cfg = sdm845_reg_cfg,
+	.vreg_count = ARRAY_SIZE(sdm845_reg_cfg),
+};
+
+static const struct ath10k_snoc_drv_priv qcs40x_wcn39xx_drv_priv = {
 	.hw_rev = ATH10K_HW_WCN3990,
 	.dma_mask = DMA_BIT_MASK(35),
 	.msa_size = 0x100000,
+	.vreg_cfg = qcs40x_reg_cfg,
+	.vreg_count =  ARRAY_SIZE(qcs40x_reg_cfg),
 };
 
 #define WCN3990_SRC_WR_IDX_OFFSET 0x3C
@@ -1465,7 +1482,7 @@ static int ath10k_snoc_vreg_on(struct ath10k *ar)
 	int ret = 0;
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(vreg_cfg); i++) {
+	for (i = 0; i < ar_snoc->vreg_count; i++) {
 		vreg_info = &ar_snoc->vreg[i];
 
 		if (!vreg_info->reg)
@@ -1498,7 +1515,7 @@ static int ath10k_snoc_vreg_off(struct ath10k *ar)
 	int ret = 0;
 	int i;
 
-	for (i = ARRAY_SIZE(vreg_cfg) - 1; i >= 0; i--) {
+	for (i = ar_snoc->vreg_count - 1; i >= 0; i--) {
 		vreg_info = &ar_snoc->vreg[i];
 
 		if (!vreg_info->reg)
@@ -1616,7 +1633,13 @@ static int ath10k_hw_power_off(struct ath10k *ar)
 
 static const struct of_device_id ath10k_snoc_dt_match[] = {
 	{ .compatible = "qcom,wcn3990-wifi",
-	 .data = &drv_priv,
+	 .data = &sdm845_wcn39xx_drv_priv,
+	},
+	{ .compatible = "qcom,sdm845-wcn39xx-wifi",
+	 .data = &sdm845_wcn39xx_drv_priv,
+	},
+	{ .compatible = "qcom,qcs40x-wcn39xx-wifi",
+	 .data = &qcs40x_wcn39xx_drv_priv,
 	},
 	{ }
 };
@@ -1680,8 +1703,9 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
 		goto err_release_resource;
 	}
 
-	ar_snoc->vreg = vreg_cfg;
-	for (i = 0; i < ARRAY_SIZE(vreg_cfg); i++) {
+	ar_snoc->vreg = drv_data->vreg_cfg;
+	ar_snoc->vreg_count = drv_data->vreg_count;
+	for (i = 0; i < ar_snoc->vreg_count; i++) {
 		ret = ath10k_get_vreg_info(ar, dev, &ar_snoc->vreg[i]);
 		if (ret)
 			goto err_free_irq;
diff --git a/drivers/net/wireless/ath/ath10k/snoc.h b/drivers/net/wireless/ath/ath10k/snoc.h
index d62f53501fbb..0bdada11985c 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.h
+++ b/drivers/net/wireless/ath/ath10k/snoc.h
@@ -10,10 +10,22 @@
 #include "ce.h"
 #include "qmi.h"
 
+struct ath10k_vreg_info {
+	struct regulator *reg;
+	const char *name;
+	u32 min_v;
+	u32 max_v;
+	u32 load_ua;
+	unsigned long settle_delay;
+	bool required;
+};
+
 struct ath10k_snoc_drv_priv {
 	enum ath10k_hw_rev hw_rev;
 	u64 dma_mask;
 	u32 msa_size;
+	struct ath10k_vreg_info *vreg_cfg;
+	u8 vreg_count;
 };
 
 struct snoc_state {
@@ -42,16 +54,6 @@ struct ath10k_snoc_ce_irq {
 	u32 irq_line;
 };
 
-struct ath10k_vreg_info {
-	struct regulator *reg;
-	const char *name;
-	u32 min_v;
-	u32 max_v;
-	u32 load_ua;
-	unsigned long settle_delay;
-	bool required;
-};
-
 struct ath10k_clk_info {
 	struct clk *handle;
 	const char *name;
@@ -77,6 +79,7 @@ struct ath10k_snoc {
 	struct ath10k_ce ce;
 	struct timer_list rx_post_retry;
 	struct ath10k_vreg_info *vreg;
+	u8 vreg_count;
 	struct ath10k_clk_info *clk;
 	struct ath10k_qmi *qmi;
 	unsigned long flags;
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
