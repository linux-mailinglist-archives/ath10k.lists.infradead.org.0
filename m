Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE7A1310DA
	for <lists+ath10k@lfdr.de>; Mon,  6 Jan 2020 11:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BjWJ2q7DOI36dFH6DOYwJAGPB/rDHRemXpeIKuG6SrM=; b=M1u
	GaeTNg8QEUN9xFa1OaJX7IPIoh0/2hqEOcVEU85jdESqGWunMpTe/TyxtPwl9toKVq1bafqGZrmt3
	KAJ2/T++cB1u8kGggJGB2FarNLb9Om11OWH7m2e6wSO7h0J11fLIWKLJBb6UHozOOmjYG/TIjoP1+
	VSel9FpnwRze0q90Ga/qXpswxc0bTvCQnVHcDrP1f3gxx2MDfKZZ/FyaK+zcRIq+SYWI3FDtmEyQb
	e1oeY6PCZqef02rO8WBFtQGf9JQ+KjOR4IR0yaeFz8Itd+vhXbT4G5BfxoOmSg/eix29eaL8qjCan
	sWssEDLy1feHLtF1pDitHZA7/5x8XqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPyZ-0006HR-UO; Mon, 06 Jan 2020 10:51:11 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPyV-0006Ge-K5
 for ath10k@lists.infradead.org; Mon, 06 Jan 2020 10:51:09 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578307866; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=/5Cj4kGBRUTN/E1SEncRP8qPjJOV4btr6EY3RJAXrPE=;
 b=wcaEsjoCa/dkNBbB8B/9tgoDmU3Ml/ZzRhSbi+Es7ggFsD4t2l28iuTg1V3jDaw8v5ITqK4U
 mMEtjcuDM88DfHb8Al5OXg0GaIKK/u6BcYQ463/2qMNJ1CTkS7eKo25lYQWIR5vKr9hLXiCs
 h+0mzC0gMReI3WJu6lrOJr9vq3s=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e131119.7f771c47bb90-smtp-out-n01;
 Mon, 06 Jan 2020 10:51:05 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1BF8EC43383; Mon,  6 Jan 2020 10:51:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from che-swdbs-01.qca.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: mkenna)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6BDC2C433CB;
 Mon,  6 Jan 2020 10:51:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6BDC2C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=mkenna@codeaurora.org
From: Maharaja Kennadyrajan <mkenna@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: avoid consecutive OTP download to reduce boot time
Date: Mon,  6 Jan 2020 16:21:05 +0530
Message-Id: <1578307865-25090-1-git-send-email-mkenna@codeaurora.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_025107_721884_7C1C087A 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 Vikas Patel <vikpatel@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Vikas Patel <vikpatel@codeaurora.org>

Currently, OTP is downloaded twice in case of "pre-cal-dt"
and "pre-cal-file" to fetch the board ID and takes around
~2 sec more boot uptime.

First OTP download happens in "ath10k_core_probe_fw" and
second in ath10k_core_start. First boot does not need OTP
download in core start when valid board id acquired.

The second OTP download is required upon core stop/start.

This patch skips the OTP download when first OTP download
has acquired a valid board id. This patch also marks board
id invalid in "ath10k_core_stop", which will force the OTP
download in ath10k_core_start and fetches valid board id.

Tested HW: QCA9984
Tested FW: 10.4-3.6-00104

Signed-off-by: Vikas Patel <vikpatel@codeaurora.org>
Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/core.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 5ec16ce..8fef991 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -874,6 +874,13 @@ static int ath10k_core_get_board_id_from_otp(struct ath10k *ar)
 		return -ENODATA;
 	}
 
+	if (ar->id.bmi_ids_valid) {
+		ath10k_dbg(ar, ATH10K_DBG_BOOT,
+			   "boot already acquired valid otp board id,skip download, board_id %d chip_id %d\n",
+			   ar->id.bmi_board_id, ar->id.bmi_chip_id);
+		goto skip_otp_download;
+	}
+
 	ath10k_dbg(ar, ATH10K_DBG_BOOT,
 		   "boot upload otp to 0x%x len %zd for board id\n",
 		   address, ar->normal_mode_fw.fw_file.otp_len);
@@ -921,6 +928,8 @@ static int ath10k_core_get_board_id_from_otp(struct ath10k *ar)
 	ar->id.bmi_board_id = board_id;
 	ar->id.bmi_chip_id = chip_id;
 
+skip_otp_download:
+
 	return 0;
 }
 
@@ -2863,6 +2872,8 @@ void ath10k_core_stop(struct ath10k *ar)
 	ath10k_htt_tx_stop(&ar->htt);
 	ath10k_htt_rx_free(&ar->htt);
 	ath10k_wmi_detach(ar);
+
+	ar->id.bmi_ids_valid = false;
 }
 EXPORT_SYMBOL(ath10k_core_stop);
 
-- 
1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
