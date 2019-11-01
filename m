Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC72BEBD47
	for <lists+ath10k@lfdr.de>; Fri,  1 Nov 2019 06:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IseNmsq7qWVV3BZxzObWIPGk18hhROWcMRmuqHxSKwY=; b=fx0YsEM1TWUAmf
	CiU/hEft1orlnT16wz+P53maRJ5ZBnF4QRq0fYTsFfOxz6KPpJnyGoLbAeM0w564oDiGBlMXQ3o3p
	EQbMzQSiPcaawEF4yIJSwFlqVQi2hW3G5jEyZxGhVZQmtv9LPU9W/ZkOZKBi9R3s1JKgTQVe6bLSm
	XIYkPjdXCklcdTp5m0JaWYoQ7cIQLgP44tde8ozmEq+6qn8Ta8e9MfctAZ/QmYX3tjQCdp4VNUFVf
	CLaeYgOJ+asrtBActYC32q0FnfyPZbG71iRFR2wYqWmpCIL9CRwa6H1cIZwDMviSjayazlEwOeH79
	IKjthlZTZwRMbOYH0gZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQPg3-0002gn-QR; Fri, 01 Nov 2019 05:40:51 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQPfz-0002gL-Ut
 for ath10k@lists.infradead.org; Fri, 01 Nov 2019 05:40:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id u23so5786326pgo.0
 for <ath10k@lists.infradead.org>; Thu, 31 Oct 2019 22:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=87LDioEh9QArbtKje2Ha+R3GcGCadSMWQHWuBYLzjuI=;
 b=EWImVPA87TD2kh6PA559dlNc+n4rQqoHwyEpsEAWLcv5GBJZG6m5C6ugqPSn+4jVS7
 wlgTmQIF2i5QkMRaxTYWAZ44so4xHKaU9s0gLO7c48BCOT9UFR5U9tC+F2+oEm0yqILh
 YvfTaygs0sSX6ocutJPJcbV5MbGqVkr9yS7+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=87LDioEh9QArbtKje2Ha+R3GcGCadSMWQHWuBYLzjuI=;
 b=aDRJ/fUvIYg5N65gL7+Nhn96YDJVpM6RIsv1IpjEeHq8Qwh+XZPm5BjNl49AVvdM10
 fdWgQiI6aKwWV5MwdkcWErgS2ECNVUyZHIfD1G3bLLDMpL4cjuUVn20id/CjtwN581Lk
 RMxbX/kXU522nXmGmQdFDaSGUlh6VH/wIfFLd2VHM1h3CBdsRturTxiuq3AyR5fojzmz
 r23/G8dj0rDOW/DjcHCTJDlDzbMT16Ny9JVFcrq6IlnLODCqVoqRDzIamTC3qjpYnY5s
 89O2m6rU/ovEwbDiAiSyhyj07rbd/DOfCzXVxprfefWhE7XEMxGbNmEPw9KuYlOfEBld
 TIpg==
X-Gm-Message-State: APjAAAWbpCpBmDQZD3j39urQwmwRSW6tniNdbYj0ULOp81Vt0zcojFIx
 hEP9IVmuVV9NRDpXcrR+md5Kf5fCdARGqQ==
X-Google-Smtp-Source: APXvYqzmEFT6XObk/Pkzshp1rgxcYK0KGZjMpS1zkQ0VFL6rDsk3N+SH1c2LjWcJS3JUYdRAMO5HHA==
X-Received: by 2002:a63:2057:: with SMTP id r23mr11730719pgm.274.1572586843673; 
 Thu, 31 Oct 2019 22:40:43 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com
 ([2401:fa00:1:10:254e:2b40:ef8:ee17])
 by smtp.gmail.com with ESMTPSA id 16sm7460747pgd.0.2019.10.31.22.40.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 22:40:43 -0700 (PDT)
From: Ikjoon Jang <ikjn@chromium.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: disable cpuidle during downloading firmware.
Date: Fri,  1 Nov 2019 13:40:35 +0800
Message-Id: <20191101054035.42101-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_224048_022713_F4DA28F9 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Ikjoon Jang <ikjn@chromium.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Downloading ath10k firmware needs a large number of IOs and
cpuidle's miss predictions make it worse. In the worst case,
resume time can be three times longer than the average on sdio.

This patch disables cpuidle during firmware downloading by
applying PM_QOS_CPU_DMA_LATENCY in ath10k_download_fw().

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
---
 drivers/net/wireless/ath/ath10k/core.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 36c62d66c19e..4f76ba5d78a9 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -11,6 +11,7 @@
 #include <linux/property.h>
 #include <linux/dmi.h>
 #include <linux/ctype.h>
+#include <linux/pm_qos.h>
 #include <asm/byteorder.h>
 
 #include "core.h"
@@ -1027,6 +1028,7 @@ static int ath10k_download_fw(struct ath10k *ar)
 	u32 address, data_len;
 	const void *data;
 	int ret;
+	struct pm_qos_request latency_qos;
 
 	address = ar->hw_params.patch_load_addr;
 
@@ -1060,8 +1062,14 @@ static int ath10k_download_fw(struct ath10k *ar)
 			    ret);
 	}
 
-	return ath10k_bmi_fast_download(ar, address,
-					data, data_len);
+	memset(&latency_qos, 0, sizeof(latency_qos));
+	pm_qos_add_request(&latency_qos, PM_QOS_CPU_DMA_LATENCY, 0);
+
+	ret = ath10k_bmi_fast_download(ar, address, data, data_len);
+
+	pm_qos_remove_request(&latency_qos);
+
+	return ret;
 }
 
 void ath10k_core_free_board_files(struct ath10k *ar)
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
