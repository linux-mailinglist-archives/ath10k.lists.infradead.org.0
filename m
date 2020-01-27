Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6E414AA5B
	for <lists+ath10k@lfdr.de>; Mon, 27 Jan 2020 20:19:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cmMzVe8rh8DchiF2WPtTuTrge6Z9MOrCTNKT9ZPl2qA=; b=Y/7
	t5H7Nd/YBMMQDwPPzzOwx23F/tvJ0VurTlfI43ZJQCP0mRdsNEpBOmzMtyTBwBsAb2gbCuGUq3xPP
	8DSx4QCG83SARnjA5qDqbXlLlwRyiFl2glJeqhkyna5e/OJX3xDjtlUeXPaH34bLy5sCn1Zl0ul6l
	R30d+K8b3T4Fz312sVMlM/cjg5MiJPopIwo+UMjAwFCuDmdeHjlis3MPeKrT/6gNKxFOxPX59xrdX
	IrEPCnxjRRRalICeRQhHsj+jjKWBX87mNYKgjk1fg++e9+fm8K+NTyjsCy9Y4Sj6opFxTSnm7sWu8
	laIvM8K2axXAxRRl42u6FL43HNgmO2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw9ut-0005jB-3q; Mon, 27 Jan 2020 19:19:23 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw9uo-0005ip-PH
 for ath10k@lists.infradead.org; Mon, 27 Jan 2020 19:19:20 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580152759; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=MdXY3ZJGGyYfTgmqL+DghyG0GInxACUFDhduk22Eb24=;
 b=JixnCL60Ie4jM9pmHaBAMdpn42LvfgSdrf+u4d8dBcldOcOOQr74LSAJT7tALV0f/5Al6j4l
 gyVUoC8cbdjOWy+Ri0Rr2gpfNpBNcR+7fBEnGPMcfjdDKfhENqnOfyceYxKfnRQwxrr2A6fL
 TIU42R3DsVqXBK4YFUHXu79B6CU=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2f37b3.7fc8f7385880-smtp-out-n03;
 Mon, 27 Jan 2020 19:19:15 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2A13FC43383; Mon, 27 Jan 2020 19:19:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from cheath10p342229-lin.qca.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: tamizhr)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7D3FAC433CB;
 Mon, 27 Jan 2020 19:19:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7D3FAC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=tamizhr@codeaurora.org
From: Tamizh Chelvam <tamizhr@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCHv2 1/2] dt-bindings: ath10k: Add new dt entries to identify
 coex support
Date: Tue, 28 Jan 2020 00:48:55 +0530
Message-Id: <1580152736-18654-1-git-send-email-tamizhr@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_111919_191137_4F63DDAF 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-wireless@vger.kernel.org,
 Tamizh Chelvam <tamizhr@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This adds new dt entries qcom,coexist-support and qcom,coexist-gpio-pin
which will be used by ath10k driver to identify coex support
of a hardware and notify wifi firmware the gpio pin number.
This pin number information is needed for the hardware QCA4019.

Signed-off-by: Tamizh Chelvam <tamizhr@codeaurora.org>
---
 Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
index 616c877..71bf91f 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
@@ -91,6 +91,11 @@ Optional properties:
 - qcom,msa-fixed-perm: Boolean context flag to disable SCM call for statically
 		       mapped msa region.
 
+- qcom,coexist-support : should contain eithr "0" or "1" to indicate coex
+			 support by the hardware.
+- qcom,coexist-gpio-pin : gpio pin number  information to support coex
+			  which will be used by wifi firmware.
+
 Example (to supply PCI based wifi block details):
 
 In this example, the node is defined as child node of the PCI controller.
@@ -159,6 +164,8 @@ wifi0: wifi@a000000 {
 	qcom,msi_addr = <0x0b006040>;
 	qcom,msi_base = <0x40>;
 	qcom,ath10k-pre-calibration-data = [ 01 02 03 ... ];
+	qcom,coexist-support = <1>;
+	qcom,coexist-gpio-pin = <0x33>;
 };
 
 Example (to supply wcn3990 SoC wifi block details):
-- 
1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
