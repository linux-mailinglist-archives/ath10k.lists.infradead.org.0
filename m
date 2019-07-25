Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729007561D
	for <lists+ath10k@lfdr.de>; Thu, 25 Jul 2019 19:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y1GUYr+d3Qnl6rQUqeVTTOmyqbbPCuNKXJOiTTCiMdI=; b=NGuMi9uab4V3manlKfAARSnnye
	ePxj7UyAroc2pq3DmkKigvKJBYgs7oxKet1SBjyAX7Lsw5DKmpK8fbCEDg3cRbZPouawiyBQF9oCS
	KYKdqbSheWST/OBKdSTB7UTKOy3auJrZSRc0vHJ5CPTLRh/yPfs8KH77hSzbBcvwZsKjndlDdCdIv
	wsZp4rmIkXx6Z7sb8Y0F+6knQs3AX0vWlrReEW4ph76fKVnCMz8MScAqnCJoCuH/THXeDd/1fl9Hc
	DIollcKmesHamPG8aJkguZ0ymFntaAjODKzBIMiCLGSsvsT0HmQg8LClpvylv5C1FNTClyzBkAm3u
	Piydk3+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhqs-0000d8-05; Thu, 25 Jul 2019 17:48:26 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhqV-0000Pk-No
 for ath10k@lists.infradead.org; Thu, 25 Jul 2019 17:48:05 +0000
Received: by mail-pf1-x441.google.com with SMTP id y15so23123496pfn.5
 for <ath10k@lists.infradead.org>; Thu, 25 Jul 2019 10:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GovT0wzh5qxyqV9OneNnQImH0OsXKl2tN6pFF75ONIw=;
 b=s/bw04vkMYnY+EKtQQO95I+PcZHokjnqpIQJmgnjVt0v3kddjrHkXiNVmJ49oyKvG7
 3mVtuJBY+seXVwEwQOWcnPe8OKRqBcoduh3YytdhvYO5doi0ioq3ZhQMMmZl6OpEvcd1
 LyGCE91q6aFZDepZVSpp4Sv6KqnXlvP9366iKr7WrqSAkZnkIo7EkKruobECtB9Bzlob
 Lb7UGj25ZI2ojkvJtcFJASgDwM6cmgHdJt2QqgDBL+j9YG9mp2lqVL3nPjGpVWnlnCA/
 BzqSwm7A6+9TfAk9Lu6j64hFiGrUYMk92Dj1Kz7Gwxvid1m57ct78IYzuvria/LNcO6w
 /5yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GovT0wzh5qxyqV9OneNnQImH0OsXKl2tN6pFF75ONIw=;
 b=WhTEWRBNdRotuqVymy8ho+5QySh/d2XowRboHk38A/b8leFLeV60VotlolMSyLdcfz
 lltU9aAFD36Chq6xuciUDm1NxT75VtYoWeNjJghXSJW6XOEzR10nr1aUs/UvbZnpZ5Q4
 pIz3qpxiCPY7tHvOGDjNpbUO0JGdUKu/zEBqlPCV8qdyf8hYkXXRvkDV0DAr9vbZ4spn
 pQpjmery1/3G2q8EIcJCNx6UzzTwxq47zTylGe/O5lvPyQIiu5SieoNS9CHtXv7pH6I3
 VjW9+XdxgiA2yPUtHNv4+JpfOMNYdRB/fJGpa7gglDBKcERctNBlM1OukLowmmpwH8wy
 UrcA==
X-Gm-Message-State: APjAAAVlk9CbdNNMJGdzKBhOuV3BUHPwozUlR5pftjWpDbaEtlPBeLXR
 4sYahpu+T0E9hKlvu53WGyQ9rw==
X-Google-Smtp-Source: APXvYqzPS2oBXex2AyU84xtOTnQkkSqQOJSpkxMxiuqCZBz7N5HtlPIK62mIcgu6+zmZeEvsY5Cqmw==
X-Received: by 2002:a17:90b:28f:: with SMTP id
 az15mr92664666pjb.18.1564076883064; 
 Thu, 25 Jul 2019 10:48:03 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id r2sm68103389pfl.67.2019.07.25.10.48.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 10:48:02 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>,
	Govind Singh <govinds@codeaurora.org>
Subject: [PATCH 3/3] ath10k: Use standard bulk clock API in snoc
Date: Thu, 25 Jul 2019 10:47:55 -0700
Message-Id: <20190725174755.23432-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190725174755.23432-1-bjorn.andersson@linaro.org>
References: <20190725174755.23432-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_104804_080725_6BEA08D1 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

No frequency is currently specified for the single clock defined in the
snoc driver, so the clock wrappers reimplements the standard bulk API
provided by the clock framework. Change to this.

The single clock defined is marked as optional so this version of the
get API is used, but might need to be reconsidered in the future.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/net/wireless/ath/ath10k/snoc.c | 125 ++++---------------------
 drivers/net/wireless/ath/ath10k/snoc.h |  11 +--
 2 files changed, 21 insertions(+), 115 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index 1c9ff7e53e2f..80ce68c0f75e 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -43,8 +43,8 @@ static const char * const ath10k_regulators[] = {
 	"vdd-3.3-ch0",
 };
 
-static struct ath10k_clk_info clk_cfg[] = {
-	{NULL, "cxo_ref_clk_pin", 0, false},
+static const char * const ath10k_clocks[] = {
+	"cxo_ref_clk_pin",
 };
 
 static void ath10k_snoc_htc_tx_cb(struct ath10k_ce_pipe *ce_state);
@@ -1346,104 +1346,6 @@ static void ath10k_snoc_release_resource(struct ath10k *ar)
 		ath10k_ce_free_pipe(ar, i);
 }
 
-static int ath10k_get_clk_info(struct ath10k *ar, struct device *dev,
-			       struct ath10k_clk_info *clk_info)
-{
-	struct clk *handle;
-	int ret = 0;
-
-	handle = devm_clk_get(dev, clk_info->name);
-	if (IS_ERR(handle)) {
-		ret = PTR_ERR(handle);
-		if (clk_info->required) {
-			ath10k_err(ar, "snoc clock %s isn't available: %d\n",
-				   clk_info->name, ret);
-			return ret;
-		}
-		ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc ignoring clock %s: %d\n",
-			   clk_info->name,
-			   ret);
-		return 0;
-	}
-
-	ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc clock %s freq %u\n",
-		   clk_info->name, clk_info->freq);
-
-	clk_info->handle = handle;
-
-	return ret;
-}
-
-static int ath10k_snoc_clk_init(struct ath10k *ar)
-{
-	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
-	struct ath10k_clk_info *clk_info;
-	int ret = 0;
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(clk_cfg); i++) {
-		clk_info = &ar_snoc->clk[i];
-
-		if (!clk_info->handle)
-			continue;
-
-		ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc clock %s being enabled\n",
-			   clk_info->name);
-
-		if (clk_info->freq) {
-			ret = clk_set_rate(clk_info->handle, clk_info->freq);
-
-			if (ret) {
-				ath10k_err(ar, "failed to set clock %s freq %u\n",
-					   clk_info->name, clk_info->freq);
-				goto err_clock_config;
-			}
-		}
-
-		ret = clk_prepare_enable(clk_info->handle);
-		if (ret) {
-			ath10k_err(ar, "failed to enable clock %s\n",
-				   clk_info->name);
-			goto err_clock_config;
-		}
-	}
-
-	return 0;
-
-err_clock_config:
-	for (i = i - 1; i >= 0; i--) {
-		clk_info = &ar_snoc->clk[i];
-
-		if (!clk_info->handle)
-			continue;
-
-		clk_disable_unprepare(clk_info->handle);
-	}
-
-	return ret;
-}
-
-static int ath10k_snoc_clk_deinit(struct ath10k *ar)
-{
-	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
-	struct ath10k_clk_info *clk_info;
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(clk_cfg); i++) {
-		clk_info = &ar_snoc->clk[i];
-
-		if (!clk_info->handle)
-			continue;
-
-		ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc clock %s being disabled\n",
-			   clk_info->name);
-
-		clk_disable_unprepare(clk_info->handle);
-	}
-
-	return 0;
-}
-
 static int ath10k_hw_power_on(struct ath10k *ar)
 {
 	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
@@ -1455,7 +1357,7 @@ static int ath10k_hw_power_on(struct ath10k *ar)
 	if (ret)
 		return ret;
 
-	ret = ath10k_snoc_clk_init(ar);
+	ret = clk_bulk_prepare_enable(ar_snoc->num_clks, ar_snoc->clks);
 	if (ret)
 		goto vreg_off;
 
@@ -1472,7 +1374,7 @@ static int ath10k_hw_power_off(struct ath10k *ar)
 
 	ath10k_dbg(ar, ATH10K_DBG_SNOC, "soc power off\n");
 
-	ath10k_snoc_clk_deinit(ar);
+	clk_bulk_disable_unprepare(ar_snoc->num_clks, ar_snoc->clks);
 
 	return regulator_bulk_disable(ar_snoc->num_vregs, ar_snoc->vregs);
 }
@@ -1560,13 +1462,22 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto err_free_irq;
 
-	ar_snoc->clk = clk_cfg;
-	for (i = 0; i < ARRAY_SIZE(clk_cfg); i++) {
-		ret = ath10k_get_clk_info(ar, dev, &ar_snoc->clk[i]);
-		if (ret)
-			goto err_free_irq;
+	ar_snoc->num_clks = ARRAY_SIZE(ath10k_clocks);
+	ar_snoc->clks = devm_kcalloc(&pdev->dev, ar_snoc->num_clks,
+				     sizeof(*ar_snoc->clks), GFP_KERNEL);
+	if (!ar_snoc->clks) {
+		ret = -ENOMEM;
+		goto err_free_irq;
 	}
 
+	for (i = 0; i < ar_snoc->num_clks; i++)
+		ar_snoc->clks[i].id = ath10k_clocks[i];
+
+	ret = devm_clk_bulk_get_optional(&pdev->dev, ar_snoc->num_clks,
+					 ar_snoc->clks);
+	if (ret)
+		goto err_free_irq;
+
 	ret = ath10k_hw_power_on(ar);
 	if (ret) {
 		ath10k_err(ar, "failed to power on device: %d\n", ret);
diff --git a/drivers/net/wireless/ath/ath10k/snoc.h b/drivers/net/wireless/ath/ath10k/snoc.h
index 3965ddf66d74..d2449a3b4a8f 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.h
+++ b/drivers/net/wireless/ath/ath10k/snoc.h
@@ -42,13 +42,6 @@ struct ath10k_snoc_ce_irq {
 	u32 irq_line;
 };
 
-struct ath10k_clk_info {
-	struct clk *handle;
-	const char *name;
-	u32 freq;
-	bool required;
-};
-
 enum ath10k_snoc_flags {
 	ATH10K_SNOC_FLAG_REGISTERED,
 	ATH10K_SNOC_FLAG_UNREGISTERING,
@@ -56,6 +49,7 @@ enum ath10k_snoc_flags {
 	ATH10K_SNOC_FLAG_8BIT_HOST_CAP_QUIRK,
 };
 
+struct clk_bulk_data;
 struct regulator_bulk_data;
 
 struct ath10k_snoc {
@@ -71,7 +65,8 @@ struct ath10k_snoc {
 	struct timer_list rx_post_retry;
 	struct regulator_bulk_data *vregs;
 	size_t num_vregs;
-	struct ath10k_clk_info *clk;
+	struct clk_bulk_data *clks;
+	size_t num_clks;
 	struct ath10k_qmi *qmi;
 	unsigned long flags;
 };
-- 
2.18.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
