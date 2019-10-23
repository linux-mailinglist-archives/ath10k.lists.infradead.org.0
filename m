Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE04E1661
	for <lists+ath10k@lfdr.de>; Wed, 23 Oct 2019 11:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyrqEyggUmsLMvfD/OYW6eSJ88yMdcwuJQJU2KCNPrg=; b=tFzb2XzvzZCMU7
	TiaJplCl4wUudFAs7UDBJwCFi0/YfXchJ7tM63Kk8D38VnHqx4OPuKppcUQRA2wG8ZN65IxlxTzUr
	8E6xfI/nEqDB8lrJC52Fmd0gIzMoGVO9dHg30hWG186cmgUdkC9l9w2a2e+8PJ8dgSn5H8/X2iAxS
	cCNjahtEt7GYBXED1HsTCzKF3JfnPjPLaKc07mjcBC8AYzq7NEPIsa2bfyhdQNQ3bVoF1zf0fVP7Z
	KUdPOS4U3PrVKk5KmFk8rD2CYluc2RbToRBtOGgrtwc3CyG7MPOPFdndumTrrrd4svV+sduBWaJSJ
	i5kdYMPqAwaJRGhZav5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iND83-0001dw-5P; Wed, 23 Oct 2019 09:40:31 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iND7w-0001aD-Ba
 for ath10k@lists.infradead.org; Wed, 23 Oct 2019 09:40:26 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id AAA1D60D7C; Wed, 23 Oct 2019 09:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571823623;
 bh=1FdIWU3NXZTyquxhr5b4dFgwvB9EwK3th1VnVW4Z/OY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e/YwuCJL/CpmhBsgGQ9w91bWFnh3KrJNASLMFVqXFyb5M5sht2xXYD48+RKvxrEHM
 9ynChkeDJXjLPDQBwdSISMb/Vu7xlmFau5E5M+DuDaDZPHOLvMapkchTOwHyPsMwKZ
 oPnOw210ycTx8ENRU6dsFkrVY0b4rMDrBsOvIebs=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 615B560A1B;
 Wed, 23 Oct 2019 09:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571823622;
 bh=1FdIWU3NXZTyquxhr5b4dFgwvB9EwK3th1VnVW4Z/OY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SA3Q3TvW1Qxz3SwD8Mqw9y0ccWBX4PUNcNo3JVX41T+MwtOhHNvlg8BHnK4CW4i41
 lOOkrzrKG9L+NTHjUsQJAK/lZ0xwGZlI136b6YcdRReQfLQwGkOpBr9keyuJFABt6a
 OjZA5G2f24mLs/6OI2Y7bwxKDPZ1Zilr8NvOQ9dI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 615B560A1B
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 1/2] dt: bindings: add dt entry flag to skip SCM call for msa
 region
Date: Wed, 23 Oct 2019 15:10:13 +0530
Message-Id: <20191023094014.28683-2-govinds@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191023094014.28683-1-govinds@codeaurora.org>
References: <20191023094014.28683-1-govinds@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_024024_426920_B7861138 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 81859507db67..0d868443375d 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
@@ -83,6 +83,9 @@ Optional properties:
 		    and "sky85803" etc.
 - qcom,xo-cal-data: xo cal offset to be configured in xo trim register.
 
+- qcom,msa_fixed_perm: Boolean context flag to disable SCM call for statically
+		       mapped msa region.
+
 Example (to supply PCI based wifi block details):
 
 In this example, the node is defined as child node of the PCI controller.
@@ -180,4 +183,5 @@ wifi@18000000 {
 		vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
 		memory-region = <&wifi_msa_mem>;
 		iommus = <&apps_smmu 0x0040 0x1>;
+		qcom,msa_fixed_perm;
 };
-- 
2.22.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
