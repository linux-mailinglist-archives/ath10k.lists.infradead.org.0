Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B181E726
	for <lists+ath10k@lfdr.de>; Wed, 15 May 2019 05:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GUc5XQeDZQg21AxJWdm3IQzjmGxU8p4Pa5UyhHKKTU0=; b=cQz
	aivxg0Trb298DnXyW6DxDJThmnHtzby8nS/YqQ4Q4haByCdpmJQND81QVDdpRoVy7BX6JwddeljvK
	svzA3s9vjJVzjjphgYKh/MkjCLpe9k/+5XmzHG4fxc6LKcM18++GlFTTQ/cAp9BryCrk7e0MDCx5a
	ntlyCgh19dSTl3jXztJKMLbBD3ZnAek8+jZHR/UmTEmOLY5x5hVpAF9CVRoRO3XMEvsFUN95iWcMz
	X9TRlcFn7GkJm2mH6+XuO31/efxAyDUBqfX8cd3uAc+lDPb2ww2JHY5u2/3zL+CAOrqy/yFTlYqh2
	5GWyBRvBrKY40nQuQYMvHxz8h9QrJYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQkdY-0003vz-Kl; Wed, 15 May 2019 03:31:24 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQkdU-0003vF-SN
 for ath10k@lists.infradead.org; Wed, 15 May 2019 03:31:22 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C5654602FE; Wed, 15 May 2019 03:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557891078;
 bh=IOKYIGQpTlHEgOuel+XxeywSt8oDnC3PCxScc26wSv0=;
 h=From:To:Cc:Subject:Date:From;
 b=E4x+uuV5zn3JVj08eqUhUyFyVB5CPsy27gb5r+Uj4TVSHEAmNMIUmQGUEKI7plrS1
 KtKXcJiH0t3T+v9JGfa3nmxg4sDqSchPvmnM4X0TgKMUbwiWlQSD760P+qvNO2/xas
 +Xjc4NA3sNET7l24OZ4k+2bN584W9iy5RKUwnyAU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from localhost.localdomain (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 72E52607F4;
 Wed, 15 May 2019 03:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557891078;
 bh=IOKYIGQpTlHEgOuel+XxeywSt8oDnC3PCxScc26wSv0=;
 h=From:To:Cc:Subject:Date:From;
 b=E4x+uuV5zn3JVj08eqUhUyFyVB5CPsy27gb5r+Uj4TVSHEAmNMIUmQGUEKI7plrS1
 KtKXcJiH0t3T+v9JGfa3nmxg4sDqSchPvmnM4X0TgKMUbwiWlQSD760P+qvNO2/xas
 +Xjc4NA3sNET7l24OZ4k+2bN584W9iy5RKUwnyAU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 72E52607F4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: change firmware file name for UTF mode of SDIO/USB
Date: Wed, 15 May 2019 11:30:47 +0800
Message-Id: <1557891047-16606-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_203120_956350_304CAD20 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Firmware name for UTF mode of SDIO has changed from utf-2.bin to
utf-sdio-2.bin, so it need to change in ath10k, otherwise it will
fail for UTF mode.

After change the name in ath10k, it will success for UTF mode of
SDIO/USB.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/hw.h       |  2 ++
 drivers/net/wireless/ath/ath10k/testmode.c | 17 ++++++++++++++++-
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/hw.h b/drivers/net/wireless/ath/ath10k/hw.h
index 7131499..d4fc13d 100644
--- a/drivers/net/wireless/ath/ath10k/hw.h
+++ b/drivers/net/wireless/ath/ath10k/hw.h
@@ -151,6 +151,8 @@ enum qca9377_chip_id_rev {
 #define ATH10K_FW_UTF_FILE		"utf.bin"
 #define ATH10K_FW_UTF_API2_FILE		"utf-2.bin"
 
+#define ATH10K_FW_UTF_FILE_BASE		"utf"
+
 /* includes also the null byte */
 #define ATH10K_FIRMWARE_MAGIC               "QCA-ATH10K"
 #define ATH10K_BOARD_MAGIC                  "QCA-ATH10K-BOARD"
diff --git a/drivers/net/wireless/ath/ath10k/testmode.c b/drivers/net/wireless/ath/ath10k/testmode.c
index 6433ff1..da9c596 100644
--- a/drivers/net/wireless/ath/ath10k/testmode.c
+++ b/drivers/net/wireless/ath/ath10k/testmode.c
@@ -174,8 +174,23 @@ static int ath10k_tm_fetch_firmware(struct ath10k *ar)
 {
 	struct ath10k_fw_components *utf_mode_fw;
 	int ret;
+	char fw_name[100];
+	int fw_api2 = 2;
+
+	switch (ar->hif.bus) {
+	case ATH10K_BUS_SDIO:
+	case ATH10K_BUS_USB:
+		scnprintf(fw_name, sizeof(fw_name), "%s-%s-%d.bin",
+			  ATH10K_FW_UTF_FILE_BASE, ath10k_bus_str(ar->hif.bus),
+			  fw_api2);
+		break;
+	default:
+		scnprintf(fw_name, sizeof(fw_name), "%s-%d.bin",
+			  ATH10K_FW_UTF_FILE_BASE, fw_api2);
+		break;
+	}
 
-	ret = ath10k_core_fetch_firmware_api_n(ar, ATH10K_FW_UTF_API2_FILE,
+	ret = ath10k_core_fetch_firmware_api_n(ar, fw_name,
 					       &ar->testmode.utf_mode_fw.fw_file);
 	if (ret == 0) {
 		ath10k_dbg(ar, ATH10K_DBG_TESTMODE, "testmode using fw utf api 2");
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
