Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9489AC9DB
	for <lists+ath10k@lfdr.de>; Sun,  8 Sep 2019 01:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20fvC2pNp32ZyTEgVvlpMX4cffdyLyIQi2cbv9njsbI=; b=VsWEgIqrB0JXxI
	X2lhMjZzBOVuqOCGuWNEwcQmLY4P4gWuwGUrWPXZqay/sE/0T78mFIuJ/g8pLsawx42PUMnAS0n/F
	jvCKXS6DiJR1tcAOENC8LjetLFVryCntum4+CBiph21vAr8/5+vUKSqctYubWGSIk9S2W/PB13yoY
	dWWKvTTjXmw3n7hGwf8fDaa8NZebESboJtShsD8N7M1PHqHQyH3NpgfE/4fPIMFf+ElC92L6yuP1S
	lVHoo7JXXgh4fsIiuaI8awgNVXlvhUjTm9tqkIsJqnDlSDRJF7Cn7a5gXuExF1+Po+GXfyuR1yC0A
	2SrOK+V4Ynx8B102ewtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6jyQ-0000Bw-Mr; Sat, 07 Sep 2019 23:18:30 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6jyI-0000BB-Jo
 for ath10k@lists.infradead.org; Sat, 07 Sep 2019 23:18:25 +0000
Received: by mail-wr1-x431.google.com with SMTP id l11so10025490wrx.5
 for <ath10k@lists.infradead.org>; Sat, 07 Sep 2019 16:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ho5rMqmvPV/b/YmpXToBzxMOBGjfEQyC6kp5sZH2O9g=;
 b=crOpftYYJyOpDkmIh1LJKrucBmKU57BKLnAB9toHsusLcFSwP6eZQCOWNOrWKy60UJ
 ZzzMUDtx42kYT/cbSJlIPQedR9JzrhwG9Ypb69UqBzY219eJyeUgrTLEweEeZ4Pnw8RW
 4bvtXTUchFuYiB8fC42pv6QXbZ/Uop0nRpFo8wlFiDMKzcLGi3oBcbAWGxJcAHJqocI1
 6VbaESA8/JYk5yP3CNhJfY4IOcyoIz/ksdAMeBu1m4c4fO4GU5OTqDaChEwUB9mB2cBP
 +W3oJf5mL2cL4sipthTAYinAwW+2rTUT+iIdLx3udeAVmsIzH5jJApsc8VZGKSm/Le7y
 pGiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ho5rMqmvPV/b/YmpXToBzxMOBGjfEQyC6kp5sZH2O9g=;
 b=d2QWdbXZ7c5d476OIl+emSfYgJeLOCEP9oZA8O40fExF8tlxwjQ6B2KBWyBdAkXuu9
 JUNpGqxCAr2GZieyD6+nzU9NcVB6hce2FqSADYafHSbgH1Q2lcOWjE6OgfMA4KE3R8cs
 22yZLICJsyNCgk/hBBG0gMRGs2UoRH4DqKOQfOduIm5whC/m36Fby7vBJpbvOO8WySn5
 4eJZs87PA4dGJ9a9dTM0QGuocOdfzQcnF5TJOfUg1rZ29cGcUGjHSl1dsXdlK7okCrcX
 pairKyDnSJWN0hoOQG3D9YeQ4XOuz4b7a9eE8G3y/gaX5TxNQOWaqO0kzqaP7fOZIWam
 Sm2A==
X-Gm-Message-State: APjAAAWPUhuzdg/eF/G2Fuhzi/kdKet03JIGno3gY+99QK0Xa6qFiURk
 ZhOzkSXQ0qpZj5l+GfCCRf+kmBWI
X-Google-Smtp-Source: APXvYqxhf+v1eBFCusMuONg6h8MDuROGxmo9w9eQTHdxd2yUSI3FQHDUGkBqlFjWwzwHp163qpj8iQ==
X-Received: by 2002:adf:ef05:: with SMTP id e5mr12502866wro.127.1567898298181; 
 Sat, 07 Sep 2019 16:18:18 -0700 (PDT)
Received: from debian64.daheim (pD9E29DC7.dip0.t-ipconnect.de.
 [217.226.157.199])
 by smtp.gmail.com with ESMTPSA id k9sm19185994wrd.7.2019.09.07.16.18.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Sep 2019 16:18:17 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.1)
 (envelope-from <chunkeey@gmail.com>)
 id 1i6jyC-0007V1-HK; Sun, 08 Sep 2019 01:18:16 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Sasha Levin <sashal@kernel.org>
Subject: stable backports for "ath10k: restore QCA9880-AR1A (v1) detection"
Date: Sun, 08 Sep 2019 01:18:13 +0200
Message-ID: <8482869.vuxnZITksI@debian64>
In-Reply-To: <20190907214359.1C52A21835@mail.kernel.org>
References: <20190906215423.23589-1-chunkeey@gmail.com>
 <20190907214359.1C52A21835@mail.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart5470804.AK8FHB7eIg"
Content-Transfer-Encoding: 7Bit
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_161822_864017_2E271535 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
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
Cc: stable@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.

--nextPart5470804.AK8FHB7eIg
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hello,

On Saturday, September 7, 2019 11:43:58 PM CEST Sasha Levin wrote:
> This commit has been processed because it contains a "Fixes:" tag,
> fixing commit: 1a7fecb766c8 ath10k: reset chip before reading chip_id in probe.
> 
> The bot has tested the following trees: v5.2.13, v4.19.71, v4.14.142, v4.9.191, v4.4.191.
> 
> v5.2.13: Failed to apply! Possible dependencies:
>     6d084ac27ab4 ("ath10k: initialise struct ath10k_bus params to zero")

The bot is right. Either add that patch or remove the "= {};" from the patch
that was sent to linux-wireless (based on "wireless-testing.git").

Alternatively, I've also added patches (as file attachments, I did this in
the hopes of fooling patchwork and the bots at least a bit... as well as
parking the patches for later). That said, I think this will go horribly
wrong because of this response. Since It has been a long time since I needed
a multi-version patch so I'm sorry for not being up-to-date with the latest
for-stable meta.

> v4.19.71: Failed to apply! Possible dependencies:
>     31324d17976e ("ath10k: support extended board data download for dual-band QCA9984")
>     [...] too much
> [...]: [...]
> 
> NOTE: The patch will not be queued to stable trees until it is upstream.
> 
> How should we proceed with this patch?
You could let loose your ci-bot on the attached patches and see if they would
do the trick. I'm very optimistic that this will need some more time though. 
So, "let's cross that bridge whenever we get there."

Cheers,
Christian
--nextPart5470804.AK8FHB7eIg
Content-Disposition: attachment; filename="4-9-ath10k-restore-QCA9880-AR1A-v1-detection.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="4-9-ath10k-restore-QCA9880-AR1A-v1-detection.patch"

From 38ac13d668f237941c8b77f16375f8f0e4de966a Mon Sep 17 00:00:00 2001
From: Christian Lamparter <chunkeey@gmail.com>
Date: Mon, 25 Mar 2019 13:50:19 +0100
Subject: [PATCH 4.9] ath10k: restore QCA9880-AR1A (v1) detection
To: linux-wireless@vger.kernel.org,
    ath10k@lists.infradead.org
Cc: Kalle Valo <kvalo@codeaurora.org>

This patch restores the old behavior that read
the chip_id on the QCA988x before resetting the
chip. This needs to be done in this order since
the unsupported QCA988x AR1A chips fall off the
bus when resetted. Otherwise the next MMIO Op
after the reset causes a BUS ERROR and panic.

Cc: stable@vger.kernel.org # 4.9
Fixes: 1a7fecb766c8 ("ath10k: reset chip before reading chip_id in probe")
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 drivers/net/wireless/ath/ath10k/pci.c | 36 +++++++++++++++++++--------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
--- a/drivers/net/wireless/ath/ath10k/pci.c	2019-09-08 00:07:21.374565470 +0200
+++ b/drivers/net/wireless/ath/ath10k/pci.c	2019-09-08 00:17:15.365912133 +0200
@@ -3172,7 +3172,7 @@ static int ath10k_pci_probe(struct pci_d
 	struct ath10k_pci *ar_pci;
 	enum ath10k_hw_rev hw_rev;
 	u32 chip_id;
-	bool pci_ps;
+	bool pci_ps, is_qca988x = false;
 	int (*pci_soft_reset)(struct ath10k *ar);
 	int (*pci_hard_reset)(struct ath10k *ar);
 	u32 (*targ_cpu_to_ce_addr)(struct ath10k *ar, u32 addr);
@@ -3181,6 +3181,7 @@ static int ath10k_pci_probe(struct pci_d
 	case QCA988X_2_0_DEVICE_ID:
 		hw_rev = ATH10K_HW_QCA988X;
 		pci_ps = false;
+		is_qca988x = true;
 		pci_soft_reset = ath10k_pci_warm_reset;
 		pci_hard_reset = ath10k_pci_qca988x_chip_reset;
 		targ_cpu_to_ce_addr = ath10k_pci_qca988x_targ_cpu_to_ce_addr;
@@ -3300,6 +3301,19 @@ static int ath10k_pci_probe(struct pci_d
 		goto err_deinit_irq;
 	}
 
+	/* Read CHIP_ID before reset to catch QCA9880-AR1A v1 devices that
+	 * fall off the bus during chip_reset. These chips have the same pci
+	 * device id as the QCA9880 BR4A or 2R4E. So that's why the check.
+	 */
+	if (is_qca988x) {
+		chip_id = ath10k_pci_soc_read32(ar, SOC_CHIP_ID_ADDRESS);
+		if (chip_id != 0xffffffff) {
+			if (!ath10k_pci_chip_is_supported(pdev->device,
+							  chip_id))
+				goto err_unsupported;
+		}
+	}
+
 	ret = ath10k_pci_chip_reset(ar);
 	if (ret) {
 		ath10k_err(ar, "failed to reset chip: %d\n", ret);
@@ -3312,11 +3326,8 @@ static int ath10k_pci_probe(struct pci_d
 		goto err_free_irq;
 	}
 
-	if (!ath10k_pci_chip_is_supported(pdev->device, chip_id)) {
-		ath10k_err(ar, "device %04x with chip_id %08x isn't supported\n",
-			   pdev->device, chip_id);
-		goto err_free_irq;
-	}
+	if (!ath10k_pci_chip_is_supported(pdev->device, chip_id))
+		goto err_unsupported;
 
 	ret = ath10k_core_register(ar, chip_id);
 	if (ret) {
@@ -3326,6 +3337,10 @@ static int ath10k_pci_probe(struct pci_d
 
 	return 0;
 
+err_unsupported:
+	ath10k_err(ar, "device %04x with chip_id %08x isn't supported\n",
+		   pdev->device, bus_params.chip_id);
+
 err_free_irq:
 	ath10k_pci_free_irq(ar);
 	ath10k_pci_rx_retry_sync(ar);

--nextPart5470804.AK8FHB7eIg
Content-Disposition: attachment; filename="4-4-ath10k-restore-QCA9880-AR1A-v1-detection.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="4-4-ath10k-restore-QCA9880-AR1A-v1-detection.patch"

From 38ac13d668f237941c8b77f16375f8f0e4de966a Mon Sep 17 00:00:00 2001
From: Christian Lamparter <chunkeey@gmail.com>
Date: Mon, 25 Mar 2019 13:50:19 +0100
Subject: [PATCH 4.4] ath10k: restore QCA9880-AR1A (v1) detection
To: linux-wireless@vger.kernel.org,
    ath10k@lists.infradead.org
Cc: Kalle Valo <kvalo@codeaurora.org>

This patch restores the old behavior that read
the chip_id on the QCA988x before resetting the
chip. This needs to be done in this order since
the unsupported QCA988x AR1A chips fall off the
bus when resetted. Otherwise the next MMIO Op
after the reset causes a BUS ERROR and panic.

Cc: stable@vger.kernel.org # 4.4
Fixes: 1a7fecb766c8 ("ath10k: reset chip before reading chip_id in probe")
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 drivers/net/wireless/ath/ath10k/pci.c | 36 +++++++++++++++++++--------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
--- a/drivers/net/wireless/ath/ath10k/pci.c	2019-09-08 00:07:21.374565470 +0200
+++ b/drivers/net/wireless/ath/ath10k/pci.c	2019-09-08 00:17:15.365912133 +0200
@@ -2988,12 +2988,13 @@ static int ath10k_pci_probe(struct pci_d
 	struct ath10k_pci *ar_pci;
 	enum ath10k_hw_rev hw_rev;
 	u32 chip_id;
-	bool pci_ps;
+	bool pci_ps, is_qca988x = false;
 
 	switch (pci_dev->device) {
 	case QCA988X_2_0_DEVICE_ID:
 		hw_rev = ATH10K_HW_QCA988X;
 		pci_ps = false;
+		is_qca988x = true;
 		break;
 	case QCA6164_2_1_DEVICE_ID:
 	case QCA6174_2_1_DEVICE_ID:
@@ -3087,6 +3088,19 @@ static int ath10k_pci_probe(struct pci_d
 		goto err_deinit_irq;
 	}
 
+	/* Read CHIP_ID before reset to catch QCA9880-AR1A v1 devices that
+	 * fall off the bus during chip_reset. These chips have the same pci
+	 * device id as the QCA9880 BR4A or 2R4E. So that's why the check.
+	 */
+	if (is_qca988x) {
+		chip_id = ath10k_pci_soc_read32(ar, SOC_CHIP_ID_ADDRESS);
+		if (chip_id != 0xffffffff) {
+			if (!ath10k_pci_chip_is_supported(pdev->device,
+							  chip_id))
+				goto err_unsupported;
+		}
+	}
+
 	ret = ath10k_pci_chip_reset(ar);
 	if (ret) {
 		ath10k_err(ar, "failed to reset chip: %d\n", ret);
@@ -3099,11 +3113,8 @@ static int ath10k_pci_probe(struct pci_d
 		goto err_free_irq;
 	}
 
-	if (!ath10k_pci_chip_is_supported(pdev->device, chip_id)) {
-		ath10k_err(ar, "device %04x with chip_id %08x isn't supported\n",
-			   pdev->device, chip_id);
-		goto err_free_irq;
-	}
+	if (!ath10k_pci_chip_is_supported(pdev->device, chip_id))
+		goto err_unsupported;
 
 	ret = ath10k_core_register(ar, chip_id);
 	if (ret) {
@@ -3113,6 +3124,10 @@ static int ath10k_pci_probe(struct pci_d
 
 	return 0;
 
+err_unsupported:
+	ath10k_err(ar, "device %04x with chip_id %08x isn't supported\n",
+		   pdev->device, bus_params.chip_id);
+
 err_free_irq:
 	ath10k_pci_free_irq(ar);
 	ath10k_pci_kill_tasklet(ar);

--nextPart5470804.AK8FHB7eIg
Content-Disposition: attachment; filename="4-14-ath10k-restore-QCA9880-AR1A-v1-detection.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="4-14-ath10k-restore-QCA9880-AR1A-v1-detection.patch"

From 38ac13d668f237941c8b77f16375f8f0e4de966a Mon Sep 17 00:00:00 2001
From: Christian Lamparter <chunkeey@gmail.com>
Date: Mon, 25 Mar 2019 13:50:19 +0100
Subject: [PATCH 4.14] ath10k: restore QCA9880-AR1A (v1) detection
To: linux-wireless@vger.kernel.org,
    ath10k@lists.infradead.org
Cc: Kalle Valo <kvalo@codeaurora.org>

This patch restores the old behavior that read
the chip_id on the QCA988x before resetting the
chip. This needs to be done in this order since
the unsupported QCA988x AR1A chips fall off the
bus when resetted. Otherwise the next MMIO Op
after the reset causes a BUS ERROR and panic.

Cc: stable@vger.kernel.org # 4.14
Fixes: 1a7fecb766c8 ("ath10k: reset chip before reading chip_id in probe")
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 drivers/net/wireless/ath/ath10k/pci.c | 36 +++++++++++++++++++--------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
--- a/drivers/net/wireless/ath/ath10k/pci.c	2019-09-08 00:07:21.374565470 +0200
+++ b/drivers/net/wireless/ath/ath10k/pci.c	2019-09-08 00:17:15.365912133 +0200
@@ -3202,7 +3202,7 @@ static int ath10k_pci_probe(struct pci_d
 	struct ath10k_pci *ar_pci;
 	enum ath10k_hw_rev hw_rev;
 	u32 chip_id;
-	bool pci_ps;
+	bool pci_ps, is_qca988x = false;
 	int (*pci_soft_reset)(struct ath10k *ar);
 	int (*pci_hard_reset)(struct ath10k *ar);
 	u32 (*targ_cpu_to_ce_addr)(struct ath10k *ar, u32 addr);
@@ -3211,6 +3211,7 @@ static int ath10k_pci_probe(struct pci_d
 	case QCA988X_2_0_DEVICE_ID:
 		hw_rev = ATH10K_HW_QCA988X;
 		pci_ps = false;
+		is_qca988x = true;
 		pci_soft_reset = ath10k_pci_warm_reset;
 		pci_hard_reset = ath10k_pci_qca988x_chip_reset;
 		targ_cpu_to_ce_addr = ath10k_pci_qca988x_targ_cpu_to_ce_addr;
@@ -3331,6 +3332,19 @@ static int ath10k_pci_probe(struct pci_d
 		goto err_deinit_irq;
 	}
 
+	/* Read CHIP_ID before reset to catch QCA9880-AR1A v1 devices that
+	 * fall off the bus during chip_reset. These chips have the same pci
+	 * device id as the QCA9880 BR4A or 2R4E. So that's why the check.
+	 */
+	if (is_qca988x) {
+		chip_id = ath10k_pci_soc_read32(ar, SOC_CHIP_ID_ADDRESS);
+		if (chip_id != 0xffffffff) {
+			if (!ath10k_pci_chip_is_supported(pdev->device,
+							  chip_id))
+				goto err_unsupported;
+		}
+	}
+
 	ret = ath10k_pci_chip_reset(ar);
 	if (ret) {
 		ath10k_err(ar, "failed to reset chip: %d\n", ret);
@@ -3343,11 +3357,8 @@ static int ath10k_pci_probe(struct pci_d
 		goto err_free_irq;
 	}
 
-	if (!ath10k_pci_chip_is_supported(pdev->device, chip_id)) {
-		ath10k_err(ar, "device %04x with chip_id %08x isn't supported\n",
-			   pdev->device, chip_id);
-		goto err_free_irq;
-	}
+	if (!ath10k_pci_chip_is_supported(pdev->device, chip_id))
+		goto err_unsupported;
 
 	ret = ath10k_core_register(ar, chip_id);
 	if (ret) {
@@ -3357,6 +3368,10 @@ static int ath10k_pci_probe(struct pci_d
 
 	return 0;
 
+err_unsupported:
+	ath10k_err(ar, "device %04x with chip_id %08x isn't supported\n",
+		   pdev->device, bus_params.chip_id);
+
 err_free_irq:
 	ath10k_pci_free_irq(ar);
 	ath10k_pci_rx_retry_sync(ar);

--nextPart5470804.AK8FHB7eIg
Content-Disposition: attachment; filename="4-19-ath10k-restore-QCA9880-AR1A-v1-detection.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="4-19-ath10k-restore-QCA9880-AR1A-v1-detection.patch"

From 38ac13d668f237941c8b77f16375f8f0e4de966a Mon Sep 17 00:00:00 2001
From: Christian Lamparter <chunkeey@gmail.com>
Date: Mon, 25 Mar 2019 13:50:19 +0100
Subject: [PATCH 4.19] ath10k: restore QCA9880-AR1A (v1) detection
To: linux-wireless@vger.kernel.org,
    ath10k@lists.infradead.org
Cc: Kalle Valo <kvalo@codeaurora.org>

This patch restores the old behavior that read
the chip_id on the QCA988x before resetting the
chip. This needs to be done in this order since
the unsupported QCA988x AR1A chips fall off the
bus when resetted. Otherwise the next MMIO Op
after the reset causes a BUS ERROR and panic.

Cc: stable@vger.kernel.org # 4.19
Fixes: 1a7fecb766c8 ("ath10k: reset chip before reading chip_id in probe")
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 drivers/net/wireless/ath/ath10k/pci.c | 36 +++++++++++++++++++--------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
--- a/drivers/net/wireless/ath/ath10k/pci.c	2019-09-08 00:07:21.374565470 +0200
+++ b/drivers/net/wireless/ath/ath10k/pci.c	2019-09-08 00:17:15.365912133 +0200
@@ -3483,7 +3483,7 @@ static int ath10k_pci_probe(struct pci_d
 	struct ath10k_pci *ar_pci;
 	enum ath10k_hw_rev hw_rev;
 	u32 chip_id;
-	bool pci_ps;
+	bool pci_ps, is_qca988x = false;
 	int (*pci_soft_reset)(struct ath10k *ar);
 	int (*pci_hard_reset)(struct ath10k *ar);
 	u32 (*targ_cpu_to_ce_addr)(struct ath10k *ar, u32 addr);
@@ -3493,6 +3493,7 @@ static int ath10k_pci_probe(struct pci_d
 	case QCA988X_2_0_DEVICE_ID:
 		hw_rev = ATH10K_HW_QCA988X;
 		pci_ps = false;
+		is_qca988x = true;
 		pci_soft_reset = ath10k_pci_warm_reset;
 		pci_hard_reset = ath10k_pci_qca988x_chip_reset;
 		targ_cpu_to_ce_addr = ath10k_pci_qca988x_targ_cpu_to_ce_addr;
@@ -3612,6 +3613,19 @@ static int ath10k_pci_probe(struct pci_d
 		goto err_deinit_irq;
 	}
 
+	/* Read CHIP_ID before reset to catch QCA9880-AR1A v1 devices that
+	 * fall off the bus during chip_reset. These chips have the same pci
+	 * device id as the QCA9880 BR4A or 2R4E. So that's why the check.
+	 */
+	if (is_qca988x) {
+		chip_id = ath10k_pci_soc_read32(ar, SOC_CHIP_ID_ADDRESS);
+		if (chip_id != 0xffffffff) {
+			if (!ath10k_pci_chip_is_supported(pdev->device,
+							  chip_id))
+				goto err_unsupported;
+		}
+	}
+
 	ret = ath10k_pci_chip_reset(ar);
 	if (ret) {
 		ath10k_err(ar, "failed to reset chip: %d\n", ret);
@@ -3624,11 +3638,8 @@ static int ath10k_pci_probe(struct pci_d
 		goto err_free_irq;
 	}
 
-	if (!ath10k_pci_chip_is_supported(pdev->device, chip_id)) {
-		ath10k_err(ar, "device %04x with chip_id %08x isn't supported\n",
-			   pdev->device, chip_id);
-		goto err_free_irq;
-	}
+	if (!ath10k_pci_chip_is_supported(pdev->device, chip_id))
+		goto err_unsupported;
 
 	ret = ath10k_core_register(ar, chip_id);
 	if (ret) {
@@ -3638,6 +3649,10 @@ static int ath10k_pci_probe(struct pci_d
 
 	return 0;
 
+err_unsupported:
+	ath10k_err(ar, "device %04x with chip_id %08x isn't supported\n",
+		   pdev->device, bus_params.chip_id);
+
 err_free_irq:
 	ath10k_pci_free_irq(ar);
 	ath10k_pci_rx_retry_sync(ar);

--nextPart5470804.AK8FHB7eIg
Content-Disposition: attachment; filename="5-2-ath10k-restore-QCA9880-AR1A-v1-detection.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="5-2-ath10k-restore-QCA9880-AR1A-v1-detection.patch"

From 38ac13d668f237941c8b77f16375f8f0e4de966a Mon Sep 17 00:00:00 2001
From: Christian Lamparter <chunkeey@gmail.com>
Date: Mon, 25 Mar 2019 13:50:19 +0100
Subject: [PATCH 5.2] ath10k: restore QCA9880-AR1A (v1) detection
To: linux-wireless@vger.kernel.org,
    ath10k@lists.infradead.org
Cc: Kalle Valo <kvalo@codeaurora.org>

This patch restores the old behavior that read
the chip_id on the QCA988x before resetting the
chip. This needs to be done in this order since
the unsupported QCA988x AR1A chips fall off the
bus when resetted. Otherwise the next MMIO Op
after the reset causes a BUS ERROR and panic.

Cc: stable@vger.kernel.org # 5.2
Fixes: 1a7fecb766c8 ("ath10k: reset chip before reading chip_id in probe")
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 drivers/net/wireless/ath/ath10k/pci.c | 36 +++++++++++++++++++--------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -3490,7 +3490,7 @@ static int ath10k_pci_probe(struct pci_dev *pdev,
 	struct ath10k_pci *ar_pci;
 	enum ath10k_hw_rev hw_rev;
 	struct ath10k_bus_params bus_params;
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


--nextPart5470804.AK8FHB7eIg
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--nextPart5470804.AK8FHB7eIg--




