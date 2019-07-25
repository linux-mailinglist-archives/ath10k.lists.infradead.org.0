Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502ED75617
	for <lists+ath10k@lfdr.de>; Thu, 25 Jul 2019 19:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YvbWuIaWD1si74IUwPNy9sgM2UDn0NeTuQgz6JMq08A=; b=WxfmOlsY+OjQmL5nKOT+ME7Mms
	LmyKUyybKUqIAf8dzmZJW3rDlu1rbOzRXhdPfY8Znit4ZVxjbRMvmmDPtHX0D8Z7V5sFIazjAJq25
	e2SFaIW+zupnkrte8FO9HRgkG1ymEQVy9E5Y1hQ5h03yydfcjubB2yzQdJi3QhdW9Zedex962LKZj
	x4M3ePNi/fsS+U/GToH+O2e/qZB3TG/Uxxq1K4Lhk2z3kaRcTKhoOc3MGlsVWHGmeBIe1e85eXWN7
	qZ+vnbRpJnMB6YWIxU6u82/UsPgJttLw5KdzwJC9sM13FNPnKaCRGZpCPXpCr4pLd5pUG9UMo0d6F
	860BuYlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhqf-0000SV-Ob; Thu, 25 Jul 2019 17:48:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhqT-0000Ok-5y
 for ath10k@lists.infradead.org; Thu, 25 Jul 2019 17:48:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id b13so23123202pfo.1
 for <ath10k@lists.infradead.org>; Thu, 25 Jul 2019 10:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QrMxyVc1zDSi0vs7OhTYgzu3OEGoWgT+T+Dw+YVkahA=;
 b=FBtNJFdb5Upz2AH4s+VB92FH7J1QWb00rt7yEE+fpBZ5N7S4k8ZAyVn2nUAtgftsP3
 BDTdblo7Lrm47RqKVfYOKatWqxVG9lgObs4AZRT5IZKOBP3WnkxxfZuMR1cSliGx++JP
 vk8V4AOXvhCqOgeUEGQfRVB/u2YZy4IV2JG3tRfoVG0rpklZL1pKH9yB+T8WKZTBHTQj
 E7mMKW9Y/te4c1uNmW4in2k6DpiZtNrlLa/ybrFJqgMPcPI971iImshozI993OinDJE5
 KgzG7OhMfRRBsFnMOCEXVKVe/4CevH/soHHAhxzhlpQh/rpZOVjWqsIiPebdVkwkWjmt
 GAZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QrMxyVc1zDSi0vs7OhTYgzu3OEGoWgT+T+Dw+YVkahA=;
 b=nQGSQqPzLUYLdV4THBTk/GwvfhOUXAYBebfkpIaJwtl+T2rgKRFySmRp3vLw5t7KlB
 b9gVGd+aNkEy5kIu2z6F441u+3XVq4cVcTar3V6ZKYuR3bNpAq2TMCO2u9pk/rFr+N5X
 TyKxlN7nF0sw2r7zLpqhEZBJBC8IkOniLeby/X5LXDTz4F1NqaMPIBmIFD2tX3U7K+1T
 +Mgf4pwooWbaMkc0MZD/SP0ZzoFovUiPkYJw/DUWuyKiZmcD41hajxEfMsm3lZ5Nvu1h
 o1Lv/vVqxYT+WlP3lJ0gV/KbSyjrI37K/lHgZOjsgnkyiCljUVN/BdD/ecmGzPu4j0or
 ESSA==
X-Gm-Message-State: APjAAAX4VTCyR70WoweM6USPeDMVnuvXYayfK8LiaeYcjXAMASmv9ovq
 GPulALYjCUNs/M0U1jUmsToKJA==
X-Google-Smtp-Source: APXvYqwekoX7JDpQsI3IDTHrGT7s/jfkXzjLB1wd9p4/mqvLcf0bxF1vgF++94o8TYuNevIcvnFKAw==
X-Received: by 2002:a65:5a44:: with SMTP id z4mr87590926pgs.41.1564076880400; 
 Thu, 25 Jul 2019 10:48:00 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id r2sm68103389pfl.67.2019.07.25.10.47.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 10:47:59 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>,
	Govind Singh <govinds@codeaurora.org>
Subject: [PATCH 1/3] ath10k: snoc: skip regulator operations
Date: Thu, 25 Jul 2019 10:47:53 -0700
Message-Id: <20190725174755.23432-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190725174755.23432-1-bjorn.andersson@linaro.org>
References: <20190725174755.23432-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_104801_221102_4E9FD6B1 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

The regulator operations is trying to set a voltage to a fixed value, by
giving some wiggle room. But some board designs specifies regulator
voltages outside this limited range. One such example is the Lenovo Yoga
C630, with vdd-3.3-ch0 in particular specified at 3.1V.

But consumers with fixed voltage requirements should just rely on the
board configuration to provide the power at the required level, so this
code should be removed.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

This patch is required for Lenovo Yoga C630 to succeed in power on ath10k, it
can be merged independently of the two following cleanup patches.

 drivers/net/wireless/ath/ath10k/snoc.c | 27 ++++++--------------------
 drivers/net/wireless/ath/ath10k/snoc.h |  2 --
 2 files changed, 6 insertions(+), 23 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index fc15a0037f0e..3d93ab09a298 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -37,10 +37,10 @@ static char *const ce_name[] = {
 };
 
 static struct ath10k_vreg_info vreg_cfg[] = {
-	{NULL, "vdd-0.8-cx-mx", 800000, 850000, 0, 0, false},
-	{NULL, "vdd-1.8-xo", 1800000, 1850000, 0, 0, false},
-	{NULL, "vdd-1.3-rfa", 1300000, 1350000, 0, 0, false},
-	{NULL, "vdd-3.3-ch0", 3300000, 3350000, 0, 0, false},
+	{NULL, "vdd-0.8-cx-mx", 0, 0, false},
+	{NULL, "vdd-1.8-xo", 0, 0, false},
+	{NULL, "vdd-1.3-rfa", 0, 0, false},
+	{NULL, "vdd-3.3-ch0", 0, 0, false},
 };
 
 static struct ath10k_clk_info clk_cfg[] = {
@@ -1377,9 +1377,8 @@ static int ath10k_get_vreg_info(struct ath10k *ar, struct device *dev,
 
 done:
 	ath10k_dbg(ar, ATH10K_DBG_SNOC,
-		   "snog vreg %s min_v %u max_v %u load_ua %u settle_delay %lu\n",
-		   vreg_info->name, vreg_info->min_v, vreg_info->max_v,
-		   vreg_info->load_ua, vreg_info->settle_delay);
+		   "snog vreg %s load_ua %u settle_delay %lu\n",
+		   vreg_info->name, vreg_info->load_ua, vreg_info->settle_delay);
 
 	return 0;
 }
@@ -1420,15 +1419,6 @@ static int __ath10k_snoc_vreg_on(struct ath10k *ar,
 	ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc regulator %s being enabled\n",
 		   vreg_info->name);
 
-	ret = regulator_set_voltage(vreg_info->reg, vreg_info->min_v,
-				    vreg_info->max_v);
-	if (ret) {
-		ath10k_err(ar,
-			   "failed to set regulator %s voltage-min: %d voltage-max: %d\n",
-			   vreg_info->name, vreg_info->min_v, vreg_info->max_v);
-		return ret;
-	}
-
 	if (vreg_info->load_ua) {
 		ret = regulator_set_load(vreg_info->reg, vreg_info->load_ua);
 		if (ret < 0) {
@@ -1453,7 +1443,6 @@ static int __ath10k_snoc_vreg_on(struct ath10k *ar,
 err_enable:
 	regulator_set_load(vreg_info->reg, 0);
 err_set_load:
-	regulator_set_voltage(vreg_info->reg, 0, vreg_info->max_v);
 
 	return ret;
 }
@@ -1475,10 +1464,6 @@ static int __ath10k_snoc_vreg_off(struct ath10k *ar,
 	if (ret < 0)
 		ath10k_err(ar, "failed to set load %s\n", vreg_info->name);
 
-	ret = regulator_set_voltage(vreg_info->reg, 0, vreg_info->max_v);
-	if (ret)
-		ath10k_err(ar, "failed to set voltage %s\n", vreg_info->name);
-
 	return ret;
 }
 
diff --git a/drivers/net/wireless/ath/ath10k/snoc.h b/drivers/net/wireless/ath/ath10k/snoc.h
index 9db823e46314..1bf7bd4ef2a3 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.h
+++ b/drivers/net/wireless/ath/ath10k/snoc.h
@@ -45,8 +45,6 @@ struct ath10k_snoc_ce_irq {
 struct ath10k_vreg_info {
 	struct regulator *reg;
 	const char *name;
-	u32 min_v;
-	u32 max_v;
 	u32 load_ua;
 	unsigned long settle_delay;
 	bool required;
-- 
2.18.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
