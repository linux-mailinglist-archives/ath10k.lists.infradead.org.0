Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE405DD2C
	for <lists+ath10k@lfdr.de>; Wed,  3 Jul 2019 05:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F95Rj6MsitcV8cbqS3EQvRZNOj1f3lMwcs5o9L1JwTM=; b=sca9qhREZlnVkA
	xqDxnb5FLKf5tevz8cDY4MrDdSvKB81dt4V+BF6HUpWhsxEiJW9dZkqCKtleAFHaXPSztJToV77mZ
	VAOqpdidU8akHkvYlZo9yV7HLq3fBdmjQqWErXLJzPuum3b2SmmGtKsUf26SdhvKHci2p90bFDy7e
	bAkwvC4vKxDxuk/NmZO2X4qm5qrVxoJmyLsSTdFxhhXoN83ncXNfBqM/O2Ob+2EjtlygoB8Xbjd2+
	lRsrPc0o6wZX9832kLlSRxBA930zmeOjpNba1GjN5WqEEnBmfyQXMmmHJvqb12FUtoOV/20eLuPm+
	7g6oa9rTZXZRJU3IIjhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiWOc-0002o4-DW; Wed, 03 Jul 2019 03:57:26 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiWOU-0002nT-7T
 for ath10k@lists.infradead.org; Wed, 03 Jul 2019 03:57:19 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 40095605FC; Wed,  3 Jul 2019 03:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562126237;
 bh=Aq4cCJDxYrULJtxL5b8KPbo01q6oair5ivvgUrHGj6Y=;
 h=From:To:Cc:Subject:Date:From;
 b=a18CdN/RaEcu548QrtYRLupKrQAp2ZRPD+2Ht2MuLkNTeAYVz3i8DlToH0menNywH
 dprrU6XyNbkWRIRuiOMcT4JLrtq+UgLVWUcOwT2O1sDCecYhFLx0RD5+hYvK6VUbmj
 r906kT8IdA9KO48nWcaYRP2l4lXLAe97H6cgn0JM=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 337DF6038E;
 Wed,  3 Jul 2019 03:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562126236;
 bh=Aq4cCJDxYrULJtxL5b8KPbo01q6oair5ivvgUrHGj6Y=;
 h=From:To:Cc:Subject:Date:From;
 b=n6JWO34Mw4XbxIkJ5pVYQLK0Kb9XAhSRICWo/9GRxn8NWvJHLkgpuaUnUHUylBQBS
 hEhydJy1vV7e281f9BHERULra8pGFSIPprxkrfrBkcGuQEShSkBbIb4T+/SKs7fFta
 YtAP734tO2DRzgqOopGQpt34xYQhrIwklYGIhu8o=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 337DF6038E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 0/3] Move voltage regulator config to driver private data
Date: Wed,  3 Jul 2019 09:27:08 +0530
Message-Id: <20190703035711.25592-1-govinds@codeaurora.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_205718_294101_8F6BF598 
X-CRM114-Status: UNSURE (   7.35  )
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

WCN3990 voltage regulator config is varying b/w different MSM platforms ex: SDM845/
QCS404. In order to have scalable config, move regulator config to driver
private data.

Tested HW: WCN3990(SDM845/QCS404)
Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1

Govind Singh (3):
  dt: bindings: update compatible dt properties for WCN3990 wifi node
  ath10k: Move regulator config to driver private data
  arm64: dts: qcom: qcs404: Modify wifi dt node for SDM845/QCS404
    devices

 .../bindings/net/wireless/qcom,ath10k.txt     |  2 +
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi      |  3 ++
 arch/arm64/boot/dts/qcom/qcs404.dtsi          |  2 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  2 +-
 drivers/net/wireless/ath/ath10k/snoc.c        | 38 +++++++++++++++----
 drivers/net/wireless/ath/ath10k/snoc.h        | 23 ++++++-----
 6 files changed, 51 insertions(+), 19 deletions(-)

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
