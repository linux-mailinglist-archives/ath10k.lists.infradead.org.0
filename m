Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735B1F42F9
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 10:19:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eIU1AuYZ93TcPSZUAC29EFMjvECUZ1RLdNzR2ubH52g=; b=FTtOSCGcFL/tjR
	YAZY3ptByGcqd3XrxFWZ3BC3UkuhJKyhzUaD4zrcHKipJ7l1560ZukYXm4Ze2kIwEkEoWQYtxWFTm
	3GaLuqsXf9AdJF0C/tQlTa8q4/hyVrn5QpiIcpwubOuNjnWEFq61c0I8lo0eNxROTqDyPUr8a8N1D
	AJy07AXRhp3dWnF9N50gAzUAn3lf/x2RtEYo58oZ7cirrNOR+sMCYKt318F8BGTgI/z8d3fN8ty8N
	uouj8FVnkNNPsqHUCC0C0Fl1ClbKru8Tpdw3dPg+uaxFJpcPqyEYtcNRodu6mQKCbvS4JxlIwu+EM
	UzHEjeuWqWCtEZNz0rhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0QQ-0003RU-JI; Fri, 08 Nov 2019 09:19:26 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0QN-0003R3-Md
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 09:19:24 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 67EC26053B; Fri,  8 Nov 2019 09:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573204763;
 bh=Xdtrd5ExGt8TcI/4Utf+Rt7j4WlQOyN8ohb9PVQej8o=;
 h=From:To:Cc:Subject:Date:From;
 b=Rr9GUsldGz8/1r+icia//2Y/37zNLhvBlmqYetGMaZ8x84I1NmsMFSY8jr58FgZqi
 Uos8dtaKNrKfvRENvGtnb1ggDmPoyqKSeDA9hpIMUXoKP9XG3JRwBvP4w55J0l2Ebt
 Y0EQ4jBq65oRqECXVcmjSE/fFkGEVUIurJAUkj/Y=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CE5DF60588;
 Fri,  8 Nov 2019 09:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573204763;
 bh=Xdtrd5ExGt8TcI/4Utf+Rt7j4WlQOyN8ohb9PVQej8o=;
 h=From:To:Cc:Subject:Date:From;
 b=Rr9GUsldGz8/1r+icia//2Y/37zNLhvBlmqYetGMaZ8x84I1NmsMFSY8jr58FgZqi
 Uos8dtaKNrKfvRENvGtnb1ggDmPoyqKSeDA9hpIMUXoKP9XG3JRwBvP4w55J0l2Ebt
 Y0EQ4jBq65oRqECXVcmjSE/fFkGEVUIurJAUkj/Y=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CE5DF60588
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: enable firmware log by default for sdio
Date: Fri,  8 Nov 2019 17:19:14 +0800
Message-Id: <20191108091914.16785-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_011923_763567_A7028326 
X-CRM114-Status: GOOD (  10.46  )
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On SDIO chips the firmware log does not impact performance. To make it
easier to debug firmware problems keep it enabled on the firmware.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/core.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 36c62d66c19e..25b484580944 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -713,18 +713,6 @@ static int ath10k_init_sdio(struct ath10k *ar, enum ath10k_firmware_mode mode)
 	if (ret)
 		return ret;
 
-	/* Explicitly set fwlog prints to zero as target may turn it on
-	 * based on scratch registers.
-	 */
-	ret = ath10k_bmi_read32(ar, hi_option_flag, &param);
-	if (ret)
-		return ret;
-
-	param |= HI_OPTION_DISABLE_DBGLOG;
-	ret = ath10k_bmi_write32(ar, hi_option_flag, param);
-	if (ret)
-		return ret;
-
 	return 0;
 }
 
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
