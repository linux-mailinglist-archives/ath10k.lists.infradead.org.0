Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEDB7561B
	for <lists+ath10k@lfdr.de>; Thu, 25 Jul 2019 19:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gj1RdLltBDhoqbeGOev0muJdAtzU7TJSsEe/d92Ed64=; b=EJfZ6uUwCjS9dPH8I58DIpALtf
	7I/pnCaYvrXldNvdG1IG2aOOiC8wvYEPruQ/YAQnIMSXWyCyIoIT+xz2iVwkAPdAcLkmLdO62a8ZU
	cKe7oWpd4ofzIcq/Q6YbWBz/SD8dDdKq/cYbvl7QlK+n8PtzfpkwJmmFidj/HADKhq8Id15AHBWe4
	zNpU6FtRP4QRYlGf3/yScDUpqHTf+osYgyp+n8D+Cfm+1+F0Tcx7nNz1et48bVqDbq3WFR9eBwU6K
	tifw5mh+XZZ66vkCw9rnuMLtoLKU3o5pe/TiRyJPZML0lcVrct4D8mkrFwlkCtRWD/j4WY3M3P+bg
	RXgSz5yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhql-0000Wj-UD; Thu, 25 Jul 2019 17:48:20 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhqU-0000P7-Lj
 for ath10k@lists.infradead.org; Thu, 25 Jul 2019 17:48:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id f5so14578700pgu.5
 for <ath10k@lists.infradead.org>; Thu, 25 Jul 2019 10:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/WrADzYkORlcVtAbPUzYqh5Elc5hN3CelIc55J/0298=;
 b=FVWZFcscrt7/kkd/XTahq2q0imZzvuv06upviQ083Im6gcDueZXOAG00qH8hASzjbH
 LKtwM/RJlMEco3N0AFQpFcwGzHgI7gRO03z1VAcvRI5FdpaFirHs44ovFD8jGVwgyOs9
 c8LK6bZFk22Wb/VpKq0XOz5IDcAr2pf74TN0W/ipc/m7ZfECNtBFlEqeGeOOj2tp/DYT
 BZdbEZNq5iDm66ymMMupktoQ1LctDZBYKFNWvSamlHx0N1+BLV7xan7PoiqKzGm83rRa
 2RJWR6mQkykgHy1UzqqJSI7WlvGzece53z2h/7H74s96n0IlpocT/oZ0NOV/q5xhyaIb
 GYSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/WrADzYkORlcVtAbPUzYqh5Elc5hN3CelIc55J/0298=;
 b=sbDkXS5X+oSU7d43lYxuZKSAclrKEG2koyx+3P6n8BNYvGuv/lMibQwODEY3rWKidB
 qHuYM83R8ZmElKFTDHl5WTzWeoa7oYfuOG4s9T4mNKPhF7bQC2vWQq4FXK3p41uhVgiX
 IsIEKHhy6l5e+QZsNGG6q2l3pET252cv8rl3cLH8/fpjZcGM9jz1lpvPmJxe1GeuhwwM
 c9QUMYiBtdvg9Y8W9hZgN2AuIdf3I3kzLWZhz5GHMaTVhuF9DbytpYFt2PX+T5t3tU1R
 3nBZc5IeIEpdzhou5vjA5Suul0tZrUWU3CAwftCUa7l6p+u1WPn9reOmBAlAgq7RV531
 F7qw==
X-Gm-Message-State: APjAAAXLMbgzcXJ9IjP3VASiE603MOFTP/30Wn2yzqTfhSGrBidui6rA
 k9IReGFr14X/EXtYv/dOvYKM1g==
X-Google-Smtp-Source: APXvYqy8kMWc+TEDRvzmCGrUiE09xuA8fITK35yCgtcTfwYab7PZLAJuGGJC2dJaAuypitgXX6+IlA==
X-Received: by 2002:a63:6888:: with SMTP id
 d130mr15497258pgc.197.1564076881800; 
 Thu, 25 Jul 2019 10:48:01 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id r2sm68103389pfl.67.2019.07.25.10.48.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 10:48:01 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>,
	Govind Singh <govinds@codeaurora.org>
Subject: [PATCH 2/3] ath10k: Use standard regulator bulk API in snoc
Date: Thu, 25 Jul 2019 10:47:54 -0700
Message-Id: <20190725174755.23432-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190725174755.23432-1-bjorn.andersson@linaro.org>
References: <20190725174755.23432-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_104802_903353_9992F5C5 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The regulator_get_optional() exists for cases where the driver needs do
behave differently depending on some regulator supply being present or
not, as we don't use this we can use the standard regulator_get() and
rely on its handling of unspecified regulators.

While the driver currently doesn't specify any loads the regulator
framework was updated last year to only account for load of enabled
regulators, so should the need appear it's better to apply load numbers
during initialization that dynamically.

With this the regulator wrappers have been reduced the become identical
to the standard bulk API provided by the regulator framework, so use
these instead of rolling our own.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/net/wireless/ath/ath10k/snoc.c | 184 ++++---------------------
 drivers/net/wireless/ath/ath10k/snoc.h |  13 +-
 2 files changed, 27 insertions(+), 170 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index 3d93ab09a298..1c9ff7e53e2f 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -36,11 +36,11 @@ static char *const ce_name[] = {
 	"WLAN_CE_11",
 };
 
-static struct ath10k_vreg_info vreg_cfg[] = {
-	{NULL, "vdd-0.8-cx-mx", 0, 0, false},
-	{NULL, "vdd-1.8-xo", 0, 0, false},
-	{NULL, "vdd-1.3-rfa", 0, 0, false},
-	{NULL, "vdd-3.3-ch0", 0, 0, false},
+static const char * const ath10k_regulators[] = {
+	"vdd-0.8-cx-mx",
+	"vdd-1.8-xo",
+	"vdd-1.3-rfa",
+	"vdd-3.3-ch0",
 };
 
 static struct ath10k_clk_info clk_cfg[] = {
@@ -1346,43 +1346,6 @@ static void ath10k_snoc_release_resource(struct ath10k *ar)
 		ath10k_ce_free_pipe(ar, i);
 }
 
-static int ath10k_get_vreg_info(struct ath10k *ar, struct device *dev,
-				struct ath10k_vreg_info *vreg_info)
-{
-	struct regulator *reg;
-	int ret = 0;
-
-	reg = devm_regulator_get_optional(dev, vreg_info->name);
-
-	if (IS_ERR(reg)) {
-		ret = PTR_ERR(reg);
-
-		if (ret  == -EPROBE_DEFER) {
-			ath10k_err(ar, "EPROBE_DEFER for regulator: %s\n",
-				   vreg_info->name);
-			return ret;
-		}
-		if (vreg_info->required) {
-			ath10k_err(ar, "Regulator %s doesn't exist: %d\n",
-				   vreg_info->name, ret);
-			return ret;
-		}
-		ath10k_dbg(ar, ATH10K_DBG_SNOC,
-			   "Optional regulator %s doesn't exist: %d\n",
-			   vreg_info->name, ret);
-		goto done;
-	}
-
-	vreg_info->reg = reg;
-
-done:
-	ath10k_dbg(ar, ATH10K_DBG_SNOC,
-		   "snog vreg %s load_ua %u settle_delay %lu\n",
-		   vreg_info->name, vreg_info->load_ua, vreg_info->settle_delay);
-
-	return 0;
-}
-
 static int ath10k_get_clk_info(struct ath10k *ar, struct device *dev,
 			       struct ath10k_clk_info *clk_info)
 {
@@ -1411,114 +1374,6 @@ static int ath10k_get_clk_info(struct ath10k *ar, struct device *dev,
 	return ret;
 }
 
-static int __ath10k_snoc_vreg_on(struct ath10k *ar,
-				 struct ath10k_vreg_info *vreg_info)
-{
-	int ret;
-
-	ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc regulator %s being enabled\n",
-		   vreg_info->name);
-
-	if (vreg_info->load_ua) {
-		ret = regulator_set_load(vreg_info->reg, vreg_info->load_ua);
-		if (ret < 0) {
-			ath10k_err(ar, "failed to set regulator %s load: %d\n",
-				   vreg_info->name, vreg_info->load_ua);
-			goto err_set_load;
-		}
-	}
-
-	ret = regulator_enable(vreg_info->reg);
-	if (ret) {
-		ath10k_err(ar, "failed to enable regulator %s\n",
-			   vreg_info->name);
-		goto err_enable;
-	}
-
-	if (vreg_info->settle_delay)
-		udelay(vreg_info->settle_delay);
-
-	return 0;
-
-err_enable:
-	regulator_set_load(vreg_info->reg, 0);
-err_set_load:
-
-	return ret;
-}
-
-static int __ath10k_snoc_vreg_off(struct ath10k *ar,
-				  struct ath10k_vreg_info *vreg_info)
-{
-	int ret;
-
-	ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc regulator %s being disabled\n",
-		   vreg_info->name);
-
-	ret = regulator_disable(vreg_info->reg);
-	if (ret)
-		ath10k_err(ar, "failed to disable regulator %s\n",
-			   vreg_info->name);
-
-	ret = regulator_set_load(vreg_info->reg, 0);
-	if (ret < 0)
-		ath10k_err(ar, "failed to set load %s\n", vreg_info->name);
-
-	return ret;
-}
-
-static int ath10k_snoc_vreg_on(struct ath10k *ar)
-{
-	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
-	struct ath10k_vreg_info *vreg_info;
-	int ret = 0;
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(vreg_cfg); i++) {
-		vreg_info = &ar_snoc->vreg[i];
-
-		if (!vreg_info->reg)
-			continue;
-
-		ret = __ath10k_snoc_vreg_on(ar, vreg_info);
-		if (ret)
-			goto err_reg_config;
-	}
-
-	return 0;
-
-err_reg_config:
-	for (i = i - 1; i >= 0; i--) {
-		vreg_info = &ar_snoc->vreg[i];
-
-		if (!vreg_info->reg)
-			continue;
-
-		__ath10k_snoc_vreg_off(ar, vreg_info);
-	}
-
-	return ret;
-}
-
-static int ath10k_snoc_vreg_off(struct ath10k *ar)
-{
-	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
-	struct ath10k_vreg_info *vreg_info;
-	int ret = 0;
-	int i;
-
-	for (i = ARRAY_SIZE(vreg_cfg) - 1; i >= 0; i--) {
-		vreg_info = &ar_snoc->vreg[i];
-
-		if (!vreg_info->reg)
-			continue;
-
-		ret = __ath10k_snoc_vreg_off(ar, vreg_info);
-	}
-
-	return ret;
-}
-
 static int ath10k_snoc_clk_init(struct ath10k *ar)
 {
 	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
@@ -1591,11 +1446,12 @@ static int ath10k_snoc_clk_deinit(struct ath10k *ar)
 
 static int ath10k_hw_power_on(struct ath10k *ar)
 {
+	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 	int ret;
 
 	ath10k_dbg(ar, ATH10K_DBG_SNOC, "soc power on\n");
 
-	ret = ath10k_snoc_vreg_on(ar);
+	ret = regulator_bulk_enable(ar_snoc->num_vregs, ar_snoc->vregs);
 	if (ret)
 		return ret;
 
@@ -1606,21 +1462,19 @@ static int ath10k_hw_power_on(struct ath10k *ar)
 	return ret;
 
 vreg_off:
-	ath10k_snoc_vreg_off(ar);
+	regulator_bulk_disable(ar_snoc->num_vregs, ar_snoc->vregs);
 	return ret;
 }
 
 static int ath10k_hw_power_off(struct ath10k *ar)
 {
-	int ret;
+	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 
 	ath10k_dbg(ar, ATH10K_DBG_SNOC, "soc power off\n");
 
 	ath10k_snoc_clk_deinit(ar);
 
-	ret = ath10k_snoc_vreg_off(ar);
-
-	return ret;
+	return regulator_bulk_disable(ar_snoc->num_vregs, ar_snoc->vregs);
 }
 
 static const struct of_device_id ath10k_snoc_dt_match[] = {
@@ -1691,12 +1545,20 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
 		goto err_release_resource;
 	}
 
-	ar_snoc->vreg = vreg_cfg;
-	for (i = 0; i < ARRAY_SIZE(vreg_cfg); i++) {
-		ret = ath10k_get_vreg_info(ar, dev, &ar_snoc->vreg[i]);
-		if (ret)
-			goto err_free_irq;
+	ar_snoc->num_vregs = ARRAY_SIZE(ath10k_regulators);
+	ar_snoc->vregs = devm_kcalloc(&pdev->dev, ar_snoc->num_vregs,
+				      sizeof(*ar_snoc->vregs), GFP_KERNEL);
+	if (!ar_snoc->vregs) {
+		ret = -ENOMEM;
+		goto err_free_irq;
 	}
+	for (i = 0; i < ar_snoc->num_vregs; i++)
+		ar_snoc->vregs[i].supply = ath10k_regulators[i];
+
+	ret = devm_regulator_bulk_get(&pdev->dev, ar_snoc->num_vregs,
+				      ar_snoc->vregs);
+	if (ret < 0)
+		goto err_free_irq;
 
 	ar_snoc->clk = clk_cfg;
 	for (i = 0; i < ARRAY_SIZE(clk_cfg); i++) {
diff --git a/drivers/net/wireless/ath/ath10k/snoc.h b/drivers/net/wireless/ath/ath10k/snoc.h
index 1bf7bd4ef2a3..3965ddf66d74 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.h
+++ b/drivers/net/wireless/ath/ath10k/snoc.h
@@ -42,14 +42,6 @@ struct ath10k_snoc_ce_irq {
 	u32 irq_line;
 };
 
-struct ath10k_vreg_info {
-	struct regulator *reg;
-	const char *name;
-	u32 load_ua;
-	unsigned long settle_delay;
-	bool required;
-};
-
 struct ath10k_clk_info {
 	struct clk *handle;
 	const char *name;
@@ -64,6 +56,8 @@ enum ath10k_snoc_flags {
 	ATH10K_SNOC_FLAG_8BIT_HOST_CAP_QUIRK,
 };
 
+struct regulator_bulk_data;
+
 struct ath10k_snoc {
 	struct platform_device *dev;
 	struct ath10k *ar;
@@ -75,7 +69,8 @@ struct ath10k_snoc {
 	struct ath10k_snoc_ce_irq ce_irqs[CE_COUNT_MAX];
 	struct ath10k_ce ce;
 	struct timer_list rx_post_retry;
-	struct ath10k_vreg_info *vreg;
+	struct regulator_bulk_data *vregs;
+	size_t num_vregs;
 	struct ath10k_clk_info *clk;
 	struct ath10k_qmi *qmi;
 	unsigned long flags;
-- 
2.18.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
