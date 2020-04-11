Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FA51A573A
	for <lists+ath10k@lfdr.de>; Sun, 12 Apr 2020 01:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3L4xZMjA0v9IR4GMTLD9Saxc3wr6YJTNv8CVEh3GKv0=; b=q0JrBkwUlmtUu6
	mZAfouVyZGu1SSbNd9Mb5WJfd8A8aMPZhr4tbJ2HMBrPHfEMQ98QTzRsjKQTw9NO/Hfn5lSUFXgwr
	0tUFuPe3aDCk0hsb1dlZRl/mbiAIDN1ZQ5duRbP/qnutoq3VZUcjT+d2Brotv3tkHqGF6+uThamam
	GGiQOG3NGE0SsIE1DoQZbw2GDR9VBSPJ+lzmPKF1+LDIQVEskKm4Fd0ZhFOeiiIhss6wcl42YILeb
	iQ3EW7x5mcawmRHAg/CvQakruEaM7vqdsn90+v4lvLTGPAadh2U95tpomydn0T6SVc+iKfkIiZLDe
	iqHgiTcBkfpbu8N7on0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPRY-00051r-Mc; Sat, 11 Apr 2020 23:21:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPJ3-0000Jp-8D
 for ath10k@lists.infradead.org; Sat, 11 Apr 2020 23:13:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C62BB20708;
 Sat, 11 Apr 2020 23:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646776;
 bh=qatoofgB5RrvttR39Yh97SfdZun7nyvSZh5sTNU+DiE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1V86hcAqW+S2ED/MbJpL5q0lwyv4x4wyKZr8azHTswkBQ6uC+RD81Py5RhRO207oi
 hU1YH0I/AgLKkOCK6te1TITMVlixhobZ7MvAU+LnqNJ7EYK7CJaKvbf6ozA9xl7FJR
 T929VtbAnSFIZdpJyBxTvHvF6pgD9WtIQwwTYFH4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 43/66] ath10k: start recovery process when read
 int status fail for sdio
Date: Sat, 11 Apr 2020 19:11:40 -0400
Message-Id: <20200411231203.25933-43-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411231203.25933-1-sashal@kernel.org>
References: <20200411231203.25933-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_161257_325922_AADB1F7D 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Wen Gong <wgong@codeaurora.org>

[ Upstream commit 37b7ecb75627699e96750db1e0c5ac56224245df ]

When running simulate crash stress test, it happened
"failed to read from address 0x800: -110".

Test steps:
1. Run command continuous
echo soft > /sys/kernel/debug/ieee80211/phy0/ath10k/simulate_fw_crash

2. error happened and it did not begin recovery for long time.
[74377.334846] ath10k_sdio mmc1:0001:1: simulating soft firmware crash
[74378.378217] ath10k_sdio mmc1:0001:1: failed to read from address 0x800: -110
[74378.378371] ath10k_sdio mmc1:0001:1: failed to process pending SDIO interrupts: -110

It has sdio errors since it can not read MBOX_HOST_INT_STATUS_ADDRESS,
then it has to do recovery process to recovery ath10k.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 0cdaecb0e28a9..1606bd71f3834 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -915,8 +915,11 @@ static int ath10k_sdio_mbox_read_int_status(struct ath10k *ar,
 	 */
 	ret = ath10k_sdio_read(ar, MBOX_HOST_INT_STATUS_ADDRESS,
 			       irq_proc_reg, sizeof(*irq_proc_reg));
-	if (ret)
+	if (ret) {
+		queue_work(ar->workqueue, &ar->restart_work);
+		ath10k_warn(ar, "read int status fail, start recovery\n");
 		goto out;
+	}
 
 	/* Update only those registers that are enabled */
 	*host_int_status = irq_proc_reg->host_int_status &
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
