Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C474B120430
	for <lists+ath10k@lfdr.de>; Mon, 16 Dec 2019 12:42:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HzBcUkYmZ22axNSVI4GkmShKKCnZw//fKDQBrTq3WCU=; b=gAp
	FJfP0vZoso2gx+/sqwC6pabB3Nnt5wxCos6j6qV0oV3Ifdn4iAJpvWAV4Eo+Cm08YP8N4fxlZRAs0
	5zWPhZXwJXwO2dgv14uLZL/7HRV6IPTmvxfUKrKZr5LBFVDHqO0swD6+6KuyaMZ3h88IzBXoUL+KX
	R61cil4n8AliUL+B1AVjXCkvHOMi2xxZw4w8Sm5RXdDxjaFWV1aakf33/W2zs+lusHA+hwQzJUjiX
	pPIIzd5rCstAVK7B+KvXstSRxxAXSahQYT+lQxHMK2uZSlICrhGeoj8WWYuOUGabwDYv3nHIOyWVi
	Uvm609RlSg9ehj7ihfLMkeTXtSu4vyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igolV-0000L1-T8; Mon, 16 Dec 2019 11:42:17 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igolS-0000Jh-VE
 for ath10k@lists.infradead.org; Mon, 16 Dec 2019 11:42:16 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576496532; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=3FEt1x6PkgE7MJoaVAZA0pUlBjtjXhuR6plIbJ7ZDV8=;
 b=WLt0x+E8ztKdD1WVnVOa+W6rnVmIJu3xM/6E/PoVinMXJbeqQ/027BYZ33JfHAFtRJCMgThp
 OgwcplgVwo27b8XSS/AFowzVWWYa5F6f2/hkdFlXYGo/OaODlAZc5tIvNGFHm1hQnXde/ApR
 S5ct6mRcxQ75dqTZre9RyC1xuUI=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df76d8d.7f94a3cae6f8-smtp-out-n01;
 Mon, 16 Dec 2019 11:42:05 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9D789C433A2; Mon, 16 Dec 2019 11:42:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from cheath10p342229-lin.qca.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: tamizhr)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 06D80C433CB;
 Mon, 16 Dec 2019 11:42:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 06D80C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=tamizhr@codeaurora.org
From: Tamizh Chelvam <tamizhr@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: ath10k: Add new dt entries to identify coex
 support
Date: Mon, 16 Dec 2019 17:10:14 +0530
Message-Id: <1576496415-23064-1-git-send-email-tamizhr@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_034215_063732_D750A62D 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
index 0171283..a41e936 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
@@ -87,6 +87,10 @@ Optional properties:
 	Definition: Quirk specifying that the firmware expects the 8bit version
 		    of the host capability QMI request
 - qcom,xo-cal-data: xo cal offset to be configured in xo trim register.
+- qcom,coexist-support : should contain eithr "0" or "1" to indicate coex
+			 support by the hardware.
+- qcom,coexist-gpio-pin : gpio pin number  information to support coex
+			  which will be used by wifi firmware.
 
 Example (to supply PCI based wifi block details):
 
@@ -156,6 +160,8 @@ wifi0: wifi@a000000 {
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
