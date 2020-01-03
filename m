Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7C912F8EA
	for <lists+ath10k@lfdr.de>; Fri,  3 Jan 2020 14:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+fVDC1QhBzxyQ04mTK//JBqU0a2gAlCktaRCLVCGCIg=; b=MM7EmY6qCOtni6
	bLgvlssk14J/RPaghblZ3XGl8gZDg0vHkI6L5ZV9zShvFtjQri2HKu1CIpQm1DG+so8BcIh1fDWV3
	PKVD8ERVvd9me3ZJZS5q6JmIgxVuELLg7R/FlI50J+MJhGuHe17vtWwEoDnVEmh6WqWncxK+jx3T/
	u2JcYS/gWp06cZa+4dDIQy8+5G+a6FfSAXjeoFKW4xHlV11YQ2cjOcG/S/go7rhjM7Pg4iCGQZXoK
	3vXnKrFgT6UOsZimYZJLTAwak7EZMU2We6SeMiIfp2EK2QsMIxyYst8x0XREf0W+I0GkqmK5P/Shm
	HN7VehG1bO0JrckXpdLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inNFh-0000E8-VP; Fri, 03 Jan 2020 13:44:33 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inNFb-0000Bm-Lk
 for ath10k@lists.infradead.org; Fri, 03 Jan 2020 13:44:29 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578059068; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=fNO2KuVzmU5dgBshcB7p+blPOPhtX1gtLSdkDstJNHs=;
 b=Cq+SSdREFikCcPC97lUlHuhIM/AjlQsJpaMp94G/c8+Ga3fnsQVx/KZ8scIdMZhx281t7iNA
 PPiP8FExXLYDftr0OpJc9uLcFuD71kaBGHSlaS7Lwp7hg1XCbruF2hB+A/cIkDv6I8F7VR7X
 wJPFVSq/h0sunHn/5f6D7IQnpao=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0f4538.7f2ca1e99998-smtp-out-n02;
 Fri, 03 Jan 2020 13:44:24 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3216AC43383; Fri,  3 Jan 2020 13:44:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from govinds-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: govinds)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D70E0C433A2;
 Fri,  3 Jan 2020 13:44:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D70E0C433A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: robh@kernel.org,
	devicetree@vger.kernel.org,
	ath10k@lists.infradead.org
Subject: [PATCH v3 1/2] dt: bindings: add dt entry flag to skip SCM call for
 msa region
Date: Fri,  3 Jan 2020 19:14:13 +0530
Message-Id: <20200103134414.15457-2-govinds@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200103134414.15457-1-govinds@codeaurora.org>
References: <20200103134414.15457-1-govinds@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_054428_175123_555A5718 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add boolean context flag to disable SCM call for statically
mapped msa region.

Signed-off-by: Govind Singh <govinds@codeaurora.org>
---
 .../devicetree/bindings/net/wireless/qcom,ath10k.txt          | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
index 017128394a3e..633366dc33da 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
@@ -88,6 +88,9 @@ Optional properties:
 		    of the host capability QMI request
 - qcom,xo-cal-data: xo cal offset to be configured in xo trim register.
 
+- qcom,msa-fixed-perm: Boolean context flag to disable SCM call for statically
+		       mapped msa region.
+
 Example (to supply PCI based wifi block details):
 
 In this example, the node is defined as child node of the PCI controller.
@@ -185,4 +188,5 @@ wifi@18000000 {
 		vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
 		memory-region = <&wifi_msa_mem>;
 		iommus = <&apps_smmu 0x0040 0x1>;
+		qcom,msa-fixed-perm;
 };
-- 
2.22.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
