Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF411F233F
	for <lists+ath10k@lfdr.de>; Tue,  9 Jun 2020 01:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xjWVOLufoTGIqI6OFEnDOAx6cjmw2KBlFJ6mH38oG8=; b=HA0OL6KI3rQwOe
	llOmiXlkkFPPdAubdUtQQjNPckJD62eZAPr5UgmSFryg/ZWV8niK+rXsIfAlDtOrND5VQx2V4l7rX
	yDi4KzzJEXiVFJj1vudXN1ETbgtXX9l6s9ghbuPTPVudy02LMt7+V0I6vTxXq8wrR9Bdwy0ZOyDBv
	B2nvMTg+hkuE5TnBTE8RVNZoO8oTeQmG8mfHIoMreTnMaRAckyI81lPZSrpPkknGT1cWwDIrC49rn
	nvqwtOGjTKb9hOXlX4MuIZ6VPG7UmZUMiO3mzzFZ4O+hTFCpTILr5FnNlA9MWfyzSimNY9TaA5owc
	8awfPiRznMYe93nw9D+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQyk-0007tW-FY; Mon, 08 Jun 2020 23:14:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQta-0000oz-Ci
 for ath10k@lists.infradead.org; Mon, 08 Jun 2020 23:09:36 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2562C208FE;
 Mon,  8 Jun 2020 23:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657773;
 bh=IAdVph0fG5ogOIukRAnscPJyX0P9LSD/fmItIjoQA6w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sQfSHCDrQL6b7JgP2w1D5u+3u7UgUrMstqS62Z4xg44YjmKC5ZjZPrtG5Ku8vC8Ny
 3dxmczQP6TeUeou2TXLtHMSFMDBvtWg8ZCpQ4ucEB1GOhrPbBWzDdvyd+Ae2rtQnO7
 Y+KJMyk2Kp4NhQO4mPQsx9TKzRo6mys1w6JShqPw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 156/274] ath10k: fix possible memory leak in
 ath10k_bmi_lz_data_large()
Date: Mon,  8 Jun 2020 19:04:09 -0400
Message-Id: <20200608230607.3361041-156-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_160934_514936_852ADFE9 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Wei Yongjun <weiyongjun1@huawei.com>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Wei Yongjun <weiyongjun1@huawei.com>

[ Upstream commit 2326aa011967f0afbcba7fe1a005d01f8b12900b ]

'cmd' is malloced in ath10k_bmi_lz_data_large() and should be freed
before leaving from the error handling cases, otherwise it will cause
memory leak.

Fixes: d58f466a5dee ("ath10k: add large size for BMI download data for SDIO")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Link: https://lore.kernel.org/r/20200427104348.13570-1-weiyongjun1@huawei.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/bmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/ath10k/bmi.c b/drivers/net/wireless/ath/ath10k/bmi.c
index ea908107581d..5b6db6e66f65 100644
--- a/drivers/net/wireless/ath/ath10k/bmi.c
+++ b/drivers/net/wireless/ath/ath10k/bmi.c
@@ -380,6 +380,7 @@ static int ath10k_bmi_lz_data_large(struct ath10k *ar, const void *buffer, u32 l
 						  NULL, NULL);
 		if (ret) {
 			ath10k_warn(ar, "unable to write to the device\n");
+			kfree(cmd);
 			return ret;
 		}
 
-- 
2.25.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
