Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F296FAC23F
	for <lists+ath10k@lfdr.de>; Fri,  6 Sep 2019 23:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OTb2vOTH6OBk0J1o5TupQRNPQI52YDHvb9Q5xZ5fSvo=; b=LXWLksCja0fK9c
	lqCJK6wqOx7pxlOGKEET7WHYFXO6LrjVXHpSgecPmC4/6lQ8JJ1ivI5sefK5jpEfPiB7e/6Hu+epR
	qtae3byKJ1lKSkbcTsFUpZ7W3pRet9hPWl9Dt45YP/7OIqP5IzbT258pwx8xdBoVqPep8GuYD/DrS
	LGp9VopE77Gtukp1hdgOUaJ82rmrokSgK4jDEnGJBuvhIPRVMBSS4NuPSmNQ1attCAkam7J2Nid0h
	5XqWRgjEow/0K5MIvdMgTXxje1o50mL5uqatV+ecHl1rY/sLMF+YK03xYvw0zXZaCqfF/K5JBJ+CB
	MBRYwOL5qPDh0Thqrs6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6MBd-0007m7-VW; Fri, 06 Sep 2019 21:54:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6MBX-0007lm-Ki
 for ath10k@lists.infradead.org; Fri, 06 Sep 2019 21:54:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id y19so8016993wrd.3
 for <ath10k@lists.infradead.org>; Fri, 06 Sep 2019 14:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=leeQnibrGjVek5bG1abJ4jTx9dAaPgO2nMR8X0LXbwQ=;
 b=trE7xY9GPQv2iuCLVqox8AQq0Lsf5NU9QJTAcp2BC6+wmFEmDTXcTLyfGbivZ3e7+6
 d0BaDWT5Sqzicra5tIq0l2BkBpN32JKRwWbenNGwSK7wtXpafDd3vu/qHD80rgglhW3B
 obcgHje2W9Sqa0wzhjRvlEW9I7ycFc670oSoMhKb/FjSzNOC8/gCJbl/vItZl+KoE7wZ
 pra5UZJMvNQj+hE2EL8eLh4EysMCWds3zebIwIrWi4/4Ohz7SM6RUBKMS6H187ETnNtF
 6GNkIY0t61sSw+fUGl9Pwl2I3dUSrJn2H15VR1R2pmAPypjrB+4N4SLMevHTisyaBBP9
 +HFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=leeQnibrGjVek5bG1abJ4jTx9dAaPgO2nMR8X0LXbwQ=;
 b=sZJ3BXixqiC840esSu9Xs24EkUNd4moW7DVqvhuxc55SjfsgY6yKzbMUSHaSKeaBTi
 p70tr1nsBvCdjqViGGcZB070JY8NyxjUB0+7OJyxWvM4i6E3px8Bsw7+9JK1f6X5Je8X
 SEAHIYZuaZASM0fRizXt6MCxwFC6/2jqq4Vc/oPjY3ho35xgz99gpOgOeuJA8FjpVjgI
 y9eCJrFDz0rTRIJFwf/HCAOtDxOz6gDJ056UQxpqd1U9OYro7Igv2fFehGvEqT++HOYy
 vRx8wNaVYZY55XCmYrulZ226SDPUDUnqpSXyrIKhZ89OyQGnMeMlQOMaqNCoCKN+91uj
 yAFw==
X-Gm-Message-State: APjAAAXiEJ5LAaZtr74edP7UPze1sbFm+n6Bl+QH28NvLhT4D51va86j
 pLd1oUwQAZAN5GewqD53/To=
X-Google-Smtp-Source: APXvYqwjNxT0UzdDs3WrSxxQ0dcEXEjQWUW6TZQ0dwyL2czZEE5cLl/61EiChq7S+Pz/h3UJxmpidQ==
X-Received: by 2002:a05:6000:12d1:: with SMTP id
 l17mr8799749wrx.91.1567806865330; 
 Fri, 06 Sep 2019 14:54:25 -0700 (PDT)
Received: from debian64.daheim (p5B0D72DC.dip0.t-ipconnect.de. [91.13.114.220])
 by smtp.gmail.com with ESMTPSA id a15sm1923314wmj.25.2019.09.06.14.54.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 14:54:24 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.92.1)
 (envelope-from <chunkeey@gmail.com>)
 id 1i6MBT-00069E-Uy; Fri, 06 Sep 2019 23:54:23 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: linux-wireless@vger.kernel.org,
	ath10k@lists.infradead.org
Subject: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
Date: Fri,  6 Sep 2019 23:54:23 +0200
Message-Id: <20190906215423.23589-1-chunkeey@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_145427_729722_ECDA6EE9 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This patch restores the old behavior that read
the chip_id on the QCA988x before resetting the
chip. This needs to be done in this order since
the unsupported QCA988x AR1A chips fall off the
bus when resetted. Otherwise the next MMIO Op
after the reset causes a BUS ERROR and panic.

Cc: stable@vger.kernel.org
Fixes: 1a7fecb766c8 ("ath10k: reset chip before reading chip_id in probe")
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 drivers/net/wireless/ath/ath10k/pci.c | 36 +++++++++++++++++++--------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
index a0b4d265c6eb..347bb92e4130 100644
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -3490,7 +3490,7 @@ static int ath10k_pci_probe(struct pci_dev *pdev,
 	struct ath10k_pci *ar_pci;
 	enum ath10k_hw_rev hw_rev;
 	struct ath10k_bus_params bus_params = {};
-	bool pci_ps;
+	bool pci_ps, is_qca988x = false;
 	int (*pci_soft_reset)(struct ath10k *ar);
 	int (*pci_hard_reset)(struct ath10k *ar);
 	u32 (*targ_cpu_to_ce_addr)(struct ath10k *ar, u32 addr);
@@ -3500,6 +3500,7 @@ static int ath10k_pci_probe(struct pci_dev *pdev,
 	case QCA988X_2_0_DEVICE_ID:
 		hw_rev = ATH10K_HW_QCA988X;
 		pci_ps = false;
+		is_qca988x = true;
 		pci_soft_reset = ath10k_pci_warm_reset;
 		pci_hard_reset = ath10k_pci_qca988x_chip_reset;
 		targ_cpu_to_ce_addr = ath10k_pci_qca988x_targ_cpu_to_ce_addr;
@@ -3619,25 +3620,34 @@ static int ath10k_pci_probe(struct pci_dev *pdev,
 		goto err_deinit_irq;
 	}
 
+	bus_params.dev_type = ATH10K_DEV_TYPE_LL;
+	bus_params.link_can_suspend = true;
+	/* Read CHIP_ID before reset to catch QCA9880-AR1A v1 devices that
+	 * fall off the bus during chip_reset. These chips have the same pci
+	 * device id as the QCA9880 BR4A or 2R4E. So that's why the check.
+	 */
+	if (is_qca988x) {
+		bus_params.chip_id =
+			ath10k_pci_soc_read32(ar, SOC_CHIP_ID_ADDRESS);
+		if (bus_params.chip_id != 0xffffffff) {
+			if (!ath10k_pci_chip_is_supported(pdev->device,
+							  bus_params.chip_id))
+				goto err_unsupported;
+		}
+	}
+
 	ret = ath10k_pci_chip_reset(ar);
 	if (ret) {
 		ath10k_err(ar, "failed to reset chip: %d\n", ret);
 		goto err_free_irq;
 	}
 
-	bus_params.dev_type = ATH10K_DEV_TYPE_LL;
-	bus_params.link_can_suspend = true;
 	bus_params.chip_id = ath10k_pci_soc_read32(ar, SOC_CHIP_ID_ADDRESS);
-	if (bus_params.chip_id == 0xffffffff) {
-		ath10k_err(ar, "failed to get chip id\n");
-		goto err_free_irq;
-	}
+	if (bus_params.chip_id == 0xffffffff)
+		goto err_unsupported;
 
-	if (!ath10k_pci_chip_is_supported(pdev->device, bus_params.chip_id)) {
-		ath10k_err(ar, "device %04x with chip_id %08x isn't supported\n",
-			   pdev->device, bus_params.chip_id);
+	if (!ath10k_pci_chip_is_supported(pdev->device, bus_params.chip_id))
 		goto err_free_irq;
-	}
 
 	ret = ath10k_core_register(ar, &bus_params);
 	if (ret) {
@@ -3647,6 +3657,10 @@ static int ath10k_pci_probe(struct pci_dev *pdev,
 
 	return 0;
 
+err_unsupported:
+	ath10k_err(ar, "device %04x with chip_id %08x isn't supported\n",
+		   pdev->device, bus_params.chip_id);
+
 err_free_irq:
 	ath10k_pci_free_irq(ar);
 	ath10k_pci_rx_retry_sync(ar);
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
