Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D34CF6D91
	for <lists+ath10k@lfdr.de>; Mon, 11 Nov 2019 05:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ElNHucm53ovx1txUL21whX8GJzH/XHGr6qpbo8F4E4w=; b=bnUk9AxHTkFYOL
	wL1zJJT1I2mFKp3/VFao7a6xXYc7uchb6Qmdrc4GLfOzF55nL0OEBqO2S8oPhYaSHTcuWbjXWq5WE
	pegUFk6+xjFTAfMm+E64ZOzrKQMEbd+W/iLFrQjn4SC4MUO+H9X8qvUd93KBlcXmk8kIP34zmzHQB
	loqPIR7TA/dz7LXK/r+wD6EtElVHgX98PLp/SPEuY3CTrXCCUtIKDQ97WokUg4i+Ve93t0Y1EY68f
	LUuCndxJ3NTOm3nRUvMmWC0G+xd4Hv9Mmc/fh3XsFFIduSJPcEEntNw7DmY3obOfmIFH2wNbNMcPq
	mXO0PeEN/Fpk9Qs+iP3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU1GW-0007GA-Uy; Mon, 11 Nov 2019 04:25:24 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU1GP-0007CW-6d
 for ath10k@lists.infradead.org; Mon, 11 Nov 2019 04:25:18 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E80BD60AE0; Mon, 11 Nov 2019 04:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573446316;
 bh=4Y0YwJJR6qs/159PSN+vDpI/U/hJrMx5N4QmXUvVgTM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NM2bGDqKK2OY7uUphdFFI9z05JQAG22zHpa3RnBbXUzHDnWvxkLxXxJ4NaOatTjuJ
 RcfbBZwJHJYPQ5G/Nmz8hC5/r5vV+rkyT5Gn2pSXRIsOwQrrJjTEK+kNGlzqnTp8Y/
 wWL6UVm3PkffnYKoQAW1maAop7tLiCvyUxM5U9pc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CD9166092C;
 Mon, 11 Nov 2019 04:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573446316;
 bh=4Y0YwJJR6qs/159PSN+vDpI/U/hJrMx5N4QmXUvVgTM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NM2bGDqKK2OY7uUphdFFI9z05JQAG22zHpa3RnBbXUzHDnWvxkLxXxJ4NaOatTjuJ
 RcfbBZwJHJYPQ5G/Nmz8hC5/r5vV+rkyT5Gn2pSXRIsOwQrrJjTEK+kNGlzqnTp8Y/
 wWL6UVm3PkffnYKoQAW1maAop7tLiCvyUxM5U9pc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CD9166092C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 1/2] dt: bindings: add dt entry flag to skip SCM call for
 msa region
Date: Mon, 11 Nov 2019 09:55:07 +0530
Message-Id: <20191111042508.12628-2-govinds@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191111042508.12628-1-govinds@codeaurora.org>
References: <20191111042508.12628-1-govinds@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_202517_261416_A8B6784D 
X-CRM114-Status: UNSURE (   7.75  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Govind Singh <govinds@codeaurora.org>,
 linux-wireless@vger.kernel.org
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
index 017128394a3e..7ba22918bab7 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
@@ -88,6 +88,9 @@ Optional properties:
 		    of the host capability QMI request
 - qcom,xo-cal-data: xo cal offset to be configured in xo trim register.
 
+- qcom,msa_fixed_perm: Boolean context flag to disable SCM call for statically
+		       mapped msa region.
+
 Example (to supply PCI based wifi block details):
 
 In this example, the node is defined as child node of the PCI controller.
@@ -185,4 +188,5 @@ wifi@18000000 {
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
