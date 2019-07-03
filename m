Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E049E5DD2F
	for <lists+ath10k@lfdr.de>; Wed,  3 Jul 2019 05:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6kug5Hbag2jmoFNPwyFi5U685Wbh7Uvj47vJcOZSQU=; b=jqg+Mzw+stGFlZ
	Af5ldKEA2zgE/Zm88XUs31jqUnBh/J9TLrXqbgV+6HE7jPdSB8NcvRKqcewBV1e97SGTlhNhA5Kxw
	qKa05PuT/1P25/29kpajC4NKfeEDXo7F9GfNc0JRm6xA1IyBwTXZ5HS6NvvBRPmZB05r0mXT5i2ic
	2YYb/3WeLxj7gQTsTWVG2esM3iUO7QQZsgqJO6uvYxbRvHmZFum/M4cVDC7Iyl9OwSiDo5PSYrTRV
	jB94dJ6lkZBm03d+cbnE2lUc7iZYfUby9UZH12sB2MioNxzglAg1uCutj6/ADMWxsESkxuG5DRksY
	QxpxpaJfgtnT3d7KufTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiWOt-00030n-9S; Wed, 03 Jul 2019 03:57:43 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiWOa-0002pS-76
 for ath10k@lists.infradead.org; Wed, 03 Jul 2019 03:57:26 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0130F60A24; Wed,  3 Jul 2019 03:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562126244;
 bh=lT+3JP6Q5Qzd8cH72nFr7WWzGlN+4tb3P640dP5zzwo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MiNwKyVlmQvbxlJnk/JXOUsAy9aC0fwQsvvKHsHPUz+eT6cMTjFfRyX2RpzvOwlh3
 ijymBO0F5V5hNsJMZAvifj/OyM6qCrLX54JBkFMl/M9l5+4rHfWDNzEIRjQoC7xwUq
 mLqADnJTIhf6GVBogPnV7D7nIHlSbjzLmDm1z3JY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0059D608FF;
 Wed,  3 Jul 2019 03:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562126243;
 bh=lT+3JP6Q5Qzd8cH72nFr7WWzGlN+4tb3P640dP5zzwo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QzQJqv3gGuhq1avojbYfdCY5zmmXBQmXD+9r486Sd0P/gl21hRVDBnlkzBzmcG1RD
 wfMhLsGaiTPN0I15D41hrxLIEyttaa24+atCXSozWvjo7nVvOuK/rHrDDkGaXpTsGV
 lO1fhQrEFpVqlSHz+9OfIHC8RReNF+ozab5zEY+o=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0059D608FF
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: qcom: qcs404: Modify wifi dt node for
 SDM845/QCS404 devices
Date: Wed,  3 Jul 2019 09:27:11 +0530
Message-Id: <20190703035711.25592-4-govinds@codeaurora.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190703035711.25592-1-govinds@codeaurora.org>
References: <20190703035711.25592-1-govinds@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_205725_373602_397E1128 
X-CRM114-Status: GOOD (  11.65  )
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

Modify the compatible string of wifi node for SDM845/QCS404 devices.
Add wifi regulators in qcs404 dt node for proxy vote. Proxy votes are
required for handling driver recovery scenarios to prevent
un-clocked register access during driver recovery.

Signed-off-by: Govind Singh <govinds@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi | 3 +++
 arch/arm64/boot/dts/qcom/qcs404.dtsi     | 2 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi     | 2 +-
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
index 50b3589c7f15..ff81b9c5b057 100644
--- a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
@@ -190,6 +190,9 @@
 
 &wifi {
 	status = "okay";
+	vdd-0.8-cx-mx-supply = <&vreg_l2_1p275>;
+	vdd-1.8-xo-supply = <&vreg_l5_1p8>;
+	vdd-1.3-rfa-supply = <&vreg_l1_1p3>;
 };
 
 /* PINCTRL - additions to nodes defined in qcs404.dtsi */
diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index e8fd26633d57..d9e2173cd3e9 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -480,7 +480,7 @@
 		};
 
 		wifi: wifi@a000000 {
-			compatible = "qcom,wcn3990-wifi";
+			compatible = "qcom,qcs40x-wcn39xx-wifi";
 			reg = <0xa000000 0x800000>;
 			reg-names = "membase";
 			memory-region = <&wlan_msa_mem>;
diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 5308f1671824..fdb5fcd814f4 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2235,7 +2235,7 @@
 		};
 
 		wifi: wifi@18800000 {
-			compatible = "qcom,wcn3990-wifi";
+			compatible = "qcom,sdm845-wcn39xx-wifi";
 			status = "disabled";
 			reg = <0 0x18800000 0 0x800000>;
 			reg-names = "membase";
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
