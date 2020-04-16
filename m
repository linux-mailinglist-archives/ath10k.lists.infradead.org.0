Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B371AC02E
	for <lists+ath10k@lfdr.de>; Thu, 16 Apr 2020 13:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mdXGcbr+b/xUXVM4B4nYpm1OEEkBatPK39MraxZ6H0Y=; b=FBJrJtuqWA9AJg6aBENx16wtQz
	/BUAM4OD9Hn36vqDNSzVtyTT6yvVgvDJNK8ZiAkc0HtqeWvsZgc0cAxHRfQGEBqpS3S/MlkFP6y1U
	QMub57vdDj6aWefGr+XRCybhVTsLVJsc2QKOk+rPVcWAjgtgYVgncHm9rW9jx+22wJd6adG+p22ud
	oo+fUnAA7qbCcQGawF+6/8x1wFXEMEXEYYGyDBKpbaalo002QS/dpvTKtXJy09Scm6CNHoC4Wdf/0
	jmC5i2ktCRbTpls2A/1v+8ERbs/9JdxcOGw7mT61kcDngzpSm9zkF4ee9wQ3E8TNlW7PnWN94P9D6
	SMaJmuUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP336-00047d-HL; Thu, 16 Apr 2020 11:51:16 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP331-00045P-EA
 for ath10k@lists.infradead.org; Thu, 16 Apr 2020 11:51:13 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587037871; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=miETs94i4blhgkGVoh5R5ywNSQzqvf7HXbvSF7NJ0NU=;
 b=vMrdcHZGM33rPwtJdtIp9U/vNN7/+Lf4V4Cmd61S+SLkAdd7Q1ZnSxcHll328e+Bb1f+u3kt
 RWadpkCxaq0pXtkwZKS2tNinautukDzB5TfGoR7+d4djIxnV+go66gg6fBHz25GHZhnQjeZ5
 Ud2SRsz6xwPuB5/iukz9gzY2vug=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9846ae.7f2c6e2b3768-smtp-out-n01;
 Thu, 16 Apr 2020 11:51:10 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3DDCDC43636; Thu, 16 Apr 2020 11:51:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7B62DC433BA;
 Thu, 16 Apr 2020 11:51:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7B62DC433BA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 4/4] ath10k: hif: make send_complete_check op optional
Date: Thu, 16 Apr 2020 14:50:59 +0300
Message-Id: <1587037859-28873-5-git-send-email-kvalo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587037859-28873-1-git-send-email-kvalo@codeaurora.org>
References: <1587037859-28873-1-git-send-email-kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_045111_654002_49BD80E6 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

That way we don't need to have an empty function in sdio.c.

No functional changes, compile tested only.

Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/hif.h  |  3 ++-
 drivers/net/wireless/ath/ath10k/sdio.c | 12 ------------
 drivers/net/wireless/ath/ath10k/usb.c  | 12 ------------
 3 files changed, 2 insertions(+), 25 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/hif.h b/drivers/net/wireless/ath/ath10k/hif.h
index 2c5d61d98337..9e45fd9073a6 100644
--- a/drivers/net/wireless/ath/ath10k/hif.h
+++ b/drivers/net/wireless/ath/ath10k/hif.h
@@ -170,7 +170,8 @@ static inline void ath10k_hif_get_default_pipe(struct ath10k *ar,
 static inline void ath10k_hif_send_complete_check(struct ath10k *ar,
 						  u8 pipe_id, int force)
 {
-	ar->hif.ops->send_complete_check(ar, pipe_id, force);
+	if (ar->hif.ops->send_complete_check)
+		ar->hif.ops->send_complete_check(ar, pipe_id, force);
 }
 
 static inline u16 ath10k_hif_get_free_queue_number(struct ath10k *ar,
diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 884e1a85e29f..e2aff2254a40 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -2101,17 +2101,6 @@ static void ath10k_sdio_hif_get_default_pipe(struct ath10k *ar,
 	*dl_pipe = 0;
 }
 
-/* This op is currently only used by htc_wait_target if the HTC ready
- * message times out. It is not applicable for SDIO since there is nothing
- * we can do if the HTC ready message does not arrive in time.
- * TODO: Make this op non mandatory by introducing a NULL check in the
- * hif op wrapper.
- */
-static void ath10k_sdio_hif_send_complete_check(struct ath10k *ar,
-						u8 pipe, int force)
-{
-}
-
 static const struct ath10k_hif_ops ath10k_sdio_hif_ops = {
 	.tx_sg			= ath10k_sdio_hif_tx_sg,
 	.diag_read		= ath10k_sdio_hif_diag_read,
@@ -2123,7 +2112,6 @@ static const struct ath10k_hif_ops ath10k_sdio_hif_ops = {
 	.get_htt_tx_complete	= ath10k_sdio_get_htt_tx_complete,
 	.map_service_to_pipe	= ath10k_sdio_hif_map_service_to_pipe,
 	.get_default_pipe	= ath10k_sdio_hif_get_default_pipe,
-	.send_complete_check	= ath10k_sdio_hif_send_complete_check,
 	.power_up		= ath10k_sdio_hif_power_up,
 	.power_down		= ath10k_sdio_hif_power_down,
 #ifdef CONFIG_PM
diff --git a/drivers/net/wireless/ath/ath10k/usb.c b/drivers/net/wireless/ath/ath10k/usb.c
index 1e0343081be9..b7daf344d012 100644
--- a/drivers/net/wireless/ath/ath10k/usb.c
+++ b/drivers/net/wireless/ath/ath10k/usb.c
@@ -693,17 +693,6 @@ static int ath10k_usb_hif_map_service_to_pipe(struct ath10k *ar, u16 svc_id,
 	return 0;
 }
 
-/* This op is currently only used by htc_wait_target if the HTC ready
- * message times out. It is not applicable for USB since there is nothing
- * we can do if the HTC ready message does not arrive in time.
- * TODO: Make this op non mandatory by introducing a NULL check in the
- * hif op wrapper.
- */
-static void ath10k_usb_hif_send_complete_check(struct ath10k *ar,
-					       u8 pipe, int force)
-{
-}
-
 static int ath10k_usb_hif_power_up(struct ath10k *ar,
 				   enum ath10k_firmware_mode fw_mode)
 {
@@ -737,7 +726,6 @@ static const struct ath10k_hif_ops ath10k_usb_hif_ops = {
 	.stop			= ath10k_usb_hif_stop,
 	.map_service_to_pipe	= ath10k_usb_hif_map_service_to_pipe,
 	.get_default_pipe	= ath10k_usb_hif_get_default_pipe,
-	.send_complete_check	= ath10k_usb_hif_send_complete_check,
 	.get_free_queue_number	= ath10k_usb_hif_get_free_queue_number,
 	.power_up		= ath10k_usb_hif_power_up,
 	.power_down		= ath10k_usb_hif_power_down,
-- 
2.7.4

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
