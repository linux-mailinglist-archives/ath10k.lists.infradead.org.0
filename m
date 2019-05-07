Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCD116147
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 11:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8dxN1gafeiRIKZXuhSqSaZA/zzqYBo2s1+2/KR9XeSA=; b=T4R
	969zQnw1EumCoFD6zLlwV4JY8HBRoEeYmC9RXvteLoqI6F1/NTPlKlBCwDxCVWBNcLIwIzmS5EYtH
	USNcejtSWXtLlrNsNcnqcehxpnYpgekB8C4KakJYgV3CFKZLEQIkKZLGMymn8wYdJoEcp0Two3DMS
	lB/tBKBmvMieBp9HXGs2bFJMgVRGGhKxIm+8gxDHN+lCtVZh3he1ZiYA81NNMwFtI0tA6t5b7bBE4
	LbpQ22iySA46I0attrsgT0JBfKukfqfOXc/Ki5+ACp0iOoa29bF8SlAZZ6UUHJiedgj+8wn5i4Cw3
	cziUC+4vxz0mOoDP0WB2wQJy2TA3UQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNweD-0001kh-PL; Tue, 07 May 2019 09:44:29 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwe9-0001jz-Tb
 for ath10k@lists.infradead.org; Tue, 07 May 2019 09:44:27 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 603C3608FC; Tue,  7 May 2019 09:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557222265;
 bh=MpSYYtaylW8oeev7/gJ1I9Ekm8veDyfaxyznloWcv/k=;
 h=From:To:Cc:Subject:Date:From;
 b=h9TOTZb8FkYLIQI2amLMzIL8vld/2V57vPC/nu70rx9fc/C/vSYJRJ1wjV01qeAz6
 qn5D2w+yua5DD/O2LA68UVcFLsU9X4jOzPqC11Kw3659b7Wdlwe+El3yqkjURFG1fL
 7KFcHuStVYLMDmLcU2581PLCRZUpgV5uA9tDn5qo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from vnaralas-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: mpubbise@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 00DB96055D;
 Tue,  7 May 2019 09:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557222265;
 bh=MpSYYtaylW8oeev7/gJ1I9Ekm8veDyfaxyznloWcv/k=;
 h=From:To:Cc:Subject:Date:From;
 b=h9TOTZb8FkYLIQI2amLMzIL8vld/2V57vPC/nu70rx9fc/C/vSYJRJ1wjV01qeAz6
 qn5D2w+yua5DD/O2LA68UVcFLsU9X4jOzPqC11Kw3659b7Wdlwe+El3yqkjURFG1fL
 7KFcHuStVYLMDmLcU2581PLCRZUpgV5uA9tDn5qo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 00DB96055D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=mpubbise@codeaurora.org
From: Manikanta Pubbisetty <mpubbise@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath11k:print firmware info during boot
Date: Tue,  7 May 2019 15:14:13 +0530
Message-Id: <1557222253-22745-1-git-send-email-mpubbise@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_024425_987845_23F1499F 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Manikanta Pubbisetty <mpubbise@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Print fw info like version, time stamp and fw build info
during boot.

Signed-off-by: Manikanta Pubbisetty <mpubbise@codeaurora.org>
---
 drivers/net/wireless/ath/ath11k/qmi.c | 20 ++++++++++++++++----
 drivers/net/wireless/ath/ath11k/qmi.h |  1 +
 2 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath11k/qmi.c b/drivers/net/wireless/ath/ath11k/qmi.c
index aca717c..f1b272d 100644
--- a/drivers/net/wireless/ath/ath11k/qmi.c
+++ b/drivers/net/wireless/ath/ath11k/qmi.c
@@ -1774,14 +1774,26 @@ static int ath11k_qmi_request_target_cap(struct ath11k_base *ab)
 	if (resp.soc_info_valid)
 		ab->qmi.target.soc_id = resp.soc_info.soc_id;
 
-	if (resp.fw_version_info_valid)
+	if (resp.fw_version_info_valid) {
 		ab->qmi.target.fw_version = resp.fw_version_info.fw_version;
+		strlcpy(ab->qmi.target.fw_build_timestamp,
+			resp.fw_version_info.fw_build_timestamp,
+			sizeof(ab->qmi.target.fw_build_timestamp));
+	}
+
+	if (resp.fw_build_id_valid)
+		strlcpy(ab->qmi.target.fw_build_id, resp.fw_build_id,
+			sizeof(ab->qmi.target.fw_build_id));
 
 	ath11k_info(ab, "qmi target: chip_id: 0x%x, chip_family: 0x%x,"
-			"board_id: 0x%x, soc_id: 0x%x, fw_version: 0x%x\n",
+			"board_id: 0x%x, soc_id: 0x%x\n",
 		    ab->qmi.target.chip_id, ab->qmi.target.chip_family,
-		    ab->qmi.target.board_id, ab->qmi.target.soc_id,
-		    ab->qmi.target.fw_version);
+		    ab->qmi.target.board_id, ab->qmi.target.soc_id);
+
+	ath11k_info(ab, "qmi fw_version: 0x%x fw_build_timestamp: %s fw_build_id: %s",
+		    ab->qmi.target.fw_version,
+		    ab->qmi.target.fw_build_timestamp,
+		    ab->qmi.target.fw_build_id);
 
 out:
 	return ret;
diff --git a/drivers/net/wireless/ath/ath11k/qmi.h b/drivers/net/wireless/ath/ath11k/qmi.h
index b017596..1781236 100644
--- a/drivers/net/wireless/ath/ath11k/qmi.h
+++ b/drivers/net/wireless/ath/ath11k/qmi.h
@@ -98,6 +98,7 @@ struct target_info {
 	u32 soc_id;
 	u32 fw_version;
 	char fw_build_timestamp[ATH11K_QMI_WLANFW_MAX_TIMESTAMP_LEN_V01 + 1];
+	char fw_build_id[ATH11K_QMI_WLANFW_MAX_BUILD_ID_LEN_V01 + 1];
 };
 
 struct ath11k_qmi {
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
