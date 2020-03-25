Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 455E719267F
	for <lists+ath10k@lfdr.de>; Wed, 25 Mar 2020 12:02:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MMMwpd/0u31YvOCr5gHrru7shSzzYoFv14MJegtXnNI=; b=riSr8FaW9J/G4HLnDBMtH7DKVB
	beXKhuNQLDAEqyO9J1fHWl8mNZaauZu9KBKBKQIrmziS5JM9/oUb8aXc+6HDYNEwJKC1zW6a8xvuM
	srwOED91EG+MqplG1tZX+CjftVXHAHvhRH+z0tAvfjjAnUks6sxKfEUSYWlZGKiclEM5JwwQXyzLf
	fu3vC3G9KaGjkenEwZrbmd+wxetn92uyDX+tVUNR9SNcEYQPuCZEo84c/tAryXNOSUvRHoR4jZ7Na
	SuvXLf7i1ItRHV4H9Rv/8zjqsyysns3PBACebwP0M1so9jDJhS+6vto7OPY9wXXTGJnPMSyc5k3qt
	9WHjJnFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3nW-0000o2-Ja; Wed, 25 Mar 2020 11:02:10 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3nM-0000Yc-Et
 for ath10k@lists.infradead.org; Wed, 25 Mar 2020 11:02:05 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585134124; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=wpCdJNvYZP9qF1wOYRfniOwkSK/ZZk5UjNBFMZ9bkXA=;
 b=lPDTeBAD/58W93dgsl+0NMVKGD5TIgySDGrfpz7HOss/O+jnWW6Z6+MIRj4BRl7vOXzAGEXr
 9wM0csePo9BeEciuvRJnFRmrpHMcFYlZnAXBVTDzncGpZzWXMt3FfK3xrLgkqz1NoF5+/DHj
 uyIyPMoUToDZxca9+JCTbS6V9F8=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7b3a21.7f9ac4fa5a08-smtp-out-n02;
 Wed, 25 Mar 2020 11:01:53 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 61107C433D2; Wed, 25 Mar 2020 11:01:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from pillair-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 18946C43636;
 Wed, 25 Mar 2020 11:01:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 18946C43636
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: Rakesh Pillai <pillair@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: ath10k: Add wifi-firmware subnode for
 wifi node
Date: Wed, 25 Mar 2020 16:31:38 +0530
Message-Id: <1585134100-5944-2-git-send-email-pillair@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585134100-5944-1-git-send-email-pillair@codeaurora.org>
References: <1585134100-5944-1-git-send-email-pillair@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_040204_312768_7A1B72E9 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: Rakesh Pillai <pillair@codeaurora.org>, devicetree@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Add a wifi-firmware subnode for the wifi node.
This wifi-firmware subnode is needed for the
targets which do not support TrustZone.

Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
---
 .../devicetree/bindings/net/wireless/qcom,ath10k.txt       | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
index 71bf91f..65ee68e 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
@@ -96,6 +96,17 @@ Optional properties:
 - qcom,coexist-gpio-pin : gpio pin number  information to support coex
 			  which will be used by wifi firmware.
 
+* Subnodes
+The ath10k wifi node can contain one optional firmware subnode.
+Firmware subnode is needed when the platform does not have TustZone.
+The firmware subnode must have:
+
+- iommus:
+	Usage: required
+	Value type: <prop-encoded-array>
+	Definition: A list of phandle and IOMMU specifier pairs.
+
+
 Example (to supply PCI based wifi block details):
 
 In this example, the node is defined as child node of the PCI controller.
@@ -196,4 +207,7 @@ wifi@18000000 {
 		memory-region = <&wifi_msa_mem>;
 		iommus = <&apps_smmu 0x0040 0x1>;
 		qcom,msa-fixed-perm;
+		wifi-firmware {
+			iommus = <&apps_iommu 0xc22 0x1>;
+		};
 };
-- 
2.7.4

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
