Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A8928F83
	for <lists+ath10k@lfdr.de>; Fri, 24 May 2019 05:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SP4bgiprhqrpNYaHDEbp+iEpwlAb8kdXvRYXH8r7jhw=; b=b1+
	L2oh112y007gp+R26x3xK7qSur0dUdwbzxblUmiQrsFkvJ7UJk/xJkYJ7/L7vIISnELV6stI3d78l
	MZVS5QpolNfGgKelktMjzX1AYCrjIgdNuiyNDiYdfRR+CXNEiUffRtfcPExIKgL5DOt+dAS8Ut/36
	Gu0c3iDTQknd6/Yrv7G3g2ahk4s7BhB41hsO85TFgPUyCthCl9JCroxCHJ+fopDnOL70gtFkXXfvR
	gs4J8e7u3r3P3raFgie6ne0O5wiOZYocyDmu37p+IWpR+4uT0ynCT6JyhS73vwVT8o4NQn6/A9xhf
	30zPyH32sb6Dk3La5ObqGX3YAQ3YY0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU0hL-0002jQ-Ry; Fri, 24 May 2019 03:16:47 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU0hG-0002iY-Pz
 for ath10k@lists.infradead.org; Fri, 24 May 2019 03:16:45 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 4B3F960D0C; Fri, 24 May 2019 03:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558667802;
 bh=KfH87lSkJ7hpFH9obuGjQSRv2pB4WFr3MC32uwO+sTQ=;
 h=From:To:Cc:Subject:Date:From;
 b=kIhf8neneuk7DcpISVKopnkCzP1+EKdClXCJpMYZhCB+P5tvTrRXvXgmd8QTxUbmS
 IyBsQqPPgrYbIRbVCaqTHT07S3Kgy6sUOxQBLruQlLUxJBV+4RAaIxDtJgO7deHm0P
 tmh89kAG+qy1eZao7LHpIu5L3QfK+zpJX79Sp7Bo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from smtp.codeaurora.org (unknown [180.166.53.21])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: miaoqing@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8E86F602F8;
 Fri, 24 May 2019 03:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558667801;
 bh=KfH87lSkJ7hpFH9obuGjQSRv2pB4WFr3MC32uwO+sTQ=;
 h=From:To:Cc:Subject:Date:From;
 b=otJwjpLpFBb0TjQccYs/C+mI+3wpz8JagCeiS/hh4Ne5qXe6SU/bt7gFK3ba5k4iO
 5S+rDmeYDv7kTL+JUWhj/yM2QM2xydxXtrZ5mRLvoHlLx4g8mu6Pu5c/reLucSNrzZ
 //0KSV0TJv4HxnvFnxycXRsXp7+GbuPoiJHZYM+o=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8E86F602F8
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=miaoqing@codeaurora.org
Received: by smtp.codeaurora.org (sSMTP sendmail emulation);
 Fri, 24 May 2019 11:16:30 +0800
From: Miaoqing Pan <miaoqing@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2] ath10k: fix fw crash by moving chip reset after napi
 disabled
Date: Fri, 24 May 2019 11:16:22 +0800
Message-Id: <1558667782-10998-1-git-send-email-miaoqing@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_201642_874490_D5C26890 
X-CRM114-Status: UNSURE (   9.14  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: linux-wireless@vger.kernel.org, Miaoqing Pan <miaoqing@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On SMP platform, when continuously running wifi up/down, the napi
poll can be scheduled during chip reset, which will call
ath10k_pci_has_fw_crashed() to check the fw status. But in the reset
period, the value from FW_INDICATOR_ADDRESS register will return
0xdeadbeef, which also be treated as fw crash. Fix the issue by
moving chip reset after napi disabled.

ath10k_pci 0000:01:00.0: firmware crashed! (guid 73b30611-5b1e-4bdd-90b4-64c81eb947b6)
ath10k_pci 0000:01:00.0: qca9984/qca9994 hw1.0 target 0x01000000 chip_id 0x00000000 sub 168c:cafe
ath10k_pci 0000:01:00.0: htt-ver 2.2 wmi-op 6 htt-op 4 cal otp max-sta 512 raw 0 hwcrypto 1
ath10k_pci 0000:01:00.0: failed to get memcpy hi address for firmware address 4: -16
ath10k_pci 0000:01:00.0: failed to read firmware dump area: -16
ath10k_pci 0000:01:00.0: Copy Engine register dump:
ath10k_pci 0000:01:00.0: [00]: 0x0004a000   0   0   0   0
ath10k_pci 0000:01:00.0: [01]: 0x0004a400   0   0   0   0
ath10k_pci 0000:01:00.0: [02]: 0x0004a800   0   0   0   0
ath10k_pci 0000:01:00.0: [03]: 0x0004ac00   0   0   0   0
ath10k_pci 0000:01:00.0: [04]: 0x0004b000   0   0   0   0
ath10k_pci 0000:01:00.0: [05]: 0x0004b400   0   0   0   0
ath10k_pci 0000:01:00.0: [06]: 0x0004b800   0   0   0   0
ath10k_pci 0000:01:00.0: [07]: 0x0004bc00   1   0   1   0
ath10k_pci 0000:01:00.0: [08]: 0x0004c000   0   0   0   0
ath10k_pci 0000:01:00.0: [09]: 0x0004c400   0   0   0   0
ath10k_pci 0000:01:00.0: [10]: 0x0004c800   0   0   0   0
ath10k_pci 0000:01:00.0: [11]: 0x0004cc00   0   0   0   0

Tested HW: QCA9984,QCA9887,WCN3990

Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
---
Changes since v1:
- update commit message
---
 drivers/net/wireless/ath/ath10k/pci.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
index 2bd6cba..80bcb2e 100644
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -2059,6 +2059,11 @@ static void ath10k_pci_hif_stop(struct ath10k *ar)
 
 	ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot hif stop\n");
 
+	ath10k_pci_irq_disable(ar);
+	ath10k_pci_irq_sync(ar);
+	napi_synchronize(&ar->napi);
+	napi_disable(&ar->napi);
+
 	/* Most likely the device has HTT Rx ring configured. The only way to
 	 * prevent the device from accessing (and possible corrupting) host
 	 * memory is to reset the chip now.
@@ -2072,10 +2077,6 @@ static void ath10k_pci_hif_stop(struct ath10k *ar)
 	 */
 	ath10k_pci_safe_chip_reset(ar);
 
-	ath10k_pci_irq_disable(ar);
-	ath10k_pci_irq_sync(ar);
-	napi_synchronize(&ar->napi);
-	napi_disable(&ar->napi);
 	ath10k_pci_flush(ar);
 
 	spin_lock_irqsave(&ar_pci->ps_lock, flags);
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
