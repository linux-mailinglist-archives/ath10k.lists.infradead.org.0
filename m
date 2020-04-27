Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6D61BA191
	for <lists+ath10k@lfdr.de>; Mon, 27 Apr 2020 12:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JqtNsXShWcElDnY4nLEa7xcTkNW06bLhVy9E5FAmGmc=; b=gpR41bWOUnfpvi
	5rwYAwcPUq7NMAY3UZ/5d0zjtJnNAcTBW+6buZHmCMjTxjLUhhwWwzPxg6EBFBWRLLyqxyCoLBZXl
	w2ZJmlEeCZZj4GVcTR88ZqumgH4nrAZXnfaHhKK/FTgGuc056hNnio6X0fZiV8I+2gpuj5oYIbyau
	Ae/kPxcYIA/oQhkCc4aHFWGqdTgNfijR2SErwd/F2OI1rPEpLJ+/87yL70Dsu/tInQr5k5Lr45f48
	mh66mF0bvCB/af+DCCT1G9GkiaRyYcKU9KydPeLJq/x5/THEP6JMmQ3Kooh7fYfA21Zmj9s6UKjgA
	trSDXUcFZq1Eox0xr0ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1Dt-0003D1-PB; Mon, 27 Apr 2020 10:42:49 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1Dq-0003C8-KE
 for ath10k@lists.infradead.org; Mon, 27 Apr 2020 10:42:48 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C946FC3326C60500B4D3;
 Mon, 27 Apr 2020 18:42:39 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.487.0; Mon, 27 Apr 2020 18:42:28 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Kalle Valo <kvalo@codeaurora.org>, Wen Gong <wgong@codeaurora.org>
Subject: [PATCH net-next] ath10k: fix possible memory leak in
 ath10k_bmi_lz_data_large()
Date: Mon, 27 Apr 2020 10:43:48 +0000
Message-ID: <20200427104348.13570-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_034246_833316_F578A99B 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-wireless@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Wei Yongjun <weiyongjun1@huawei.com>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

'cmd' is malloced in ath10k_bmi_lz_data_large() and should be freed
before leaving from the error handling cases, otherwise it will cause
memory leak.

Fixes: d58f466a5dee ("ath10k: add large size for BMI download data for SDIO")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
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




_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
