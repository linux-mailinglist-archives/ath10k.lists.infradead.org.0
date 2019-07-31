Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A1A7C0B9
	for <lists+ath10k@lfdr.de>; Wed, 31 Jul 2019 14:07:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u7HQE9nuEYWSdoPOEDJYW5HmcvxjNkjU7bEZRiCkkV0=; b=FiiIPbJiej2Fip
	frqrX+qzG0zmOyqpr/evcCFe4sqsRw22I3+qNEABgnOTn2pu22OwDxwevfSkm2DhlMeepqQTUThmU
	vCopH5zwztdM1Y4ITlPokcydw6JBQit0ETiwItw7sA6POittw/sWI9s5a9uO0tatfQeN/HyZA5+3w
	2YVVuYPxpuuT7iXX0eADGBil57Xa2X2a/5J6ltw9nhkaDiFtcvd937eUYHDMzkK2Oe4d4vyDb3INu
	SViGJGMPFaQwtC8EGNi8cLqsl3U9qv70ylGd6yKJwqQpBo/+DISR/pm8SmjUNsCFSSQRY0Smz9O2M
	DDX7NUZa+Z8yDzqkb0qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnO0-0002eP-AL; Wed, 31 Jul 2019 12:07:16 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnNw-0002dh-S7
 for ath10k@lists.infradead.org; Wed, 31 Jul 2019 12:07:14 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 763C060736; Wed, 31 Jul 2019 12:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564574832;
 bh=rVH9V3it4LEiKudkuZmS2VzM+fb6oDu0Rom01crhfjs=;
 h=From:To:Cc:Subject:Date:From;
 b=aHryC/htmsQ1cZvVBJU8qHnrHRif6DN/gPTC1mgzBh81Wwfq1p2qIrky35siO1h3G
 s6OjR9ZTn5qY1Y67OpQbJ2OejeazLS5mUVp7p8lJHQTpoBDYhBWwQaqDJEgVxLdJaY
 OG9juiLhStUgu6nHze9ve/5FyoOd8QNwkrJDInCU=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3C7276047C;
 Wed, 31 Jul 2019 12:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564574832;
 bh=rVH9V3it4LEiKudkuZmS2VzM+fb6oDu0Rom01crhfjs=;
 h=From:To:Cc:Subject:Date:From;
 b=aHryC/htmsQ1cZvVBJU8qHnrHRif6DN/gPTC1mgzBh81Wwfq1p2qIrky35siO1h3G
 s6OjR9ZTn5qY1Y67OpQbJ2OejeazLS5mUVp7p8lJHQTpoBDYhBWwQaqDJEgVxLdJaY
 OG9juiLhStUgu6nHze9ve/5FyoOd8QNwkrJDInCU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3C7276047C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, ath10k@lists.infradead.org
Subject: [PATCH v2] arm64: dts: qcom: qcs404: Add wifi rails in QCS404 dt node
 for proxy votes
Date: Wed, 31 Jul 2019 17:37:04 +0530
Message-Id: <20190731120704.7039-1-govinds@codeaurora.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_050712_935443_D378F551 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Add wifi regulators in qcs404 dt node for proxy vote. Proxy votes are
required for handling driver recovery scenarios to prevent
un-clocked register access during driver recovery.

Signed-off-by: Govind Singh <govinds@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
index 11c0a7137823..2289b01ee9f0 100644
--- a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
@@ -270,6 +270,9 @@
 
 &wifi {
 	status = "okay";
+	vdd-0.8-cx-mx-supply = <&vreg_l2_1p275>;
+	vdd-1.8-xo-supply = <&vreg_l5_1p8>;
+	vdd-1.3-rfa-supply = <&vreg_l1_1p3>;
 };
 
 /* PINCTRL - additions to nodes defined in qcs404.dtsi */
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
