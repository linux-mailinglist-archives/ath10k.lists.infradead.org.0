Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276B8E46C5
	for <lists+ath10k@lfdr.de>; Fri, 25 Oct 2019 11:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M7EspS9SOgLVLbW4z/IBcQ0/IVH6k0qDsf1Pct/6h3E=; b=C6wtWLROewb94n
	dcnXCneD11vIn2hzm8HjzgXu2YxcQw75SwJBjgTdsxasLrWD6ytf6b9fylrwD64ad3iJLWqMVU70c
	Kgxgkcw456GT2aYmln9Vy4NsPlBx0nigneag4tOvDjnihmjR7enY2xPvQ2gExG2aoOWh2/Hmn2mtU
	zqTVKaf23MBhusFp/1v3BGuL1OcH6KFZhBLDsbErt7HGqoDJvXILuqdr9C0rQ1dacJcGzvGe5Y23l
	UzTDnM8mhc5GhHJmIpPVBUUfHpTWpMmtOP7/IlqiQhoHv6hHISc7RQA/EXNGDrnA9CYHgh6GfD1Ls
	/0fnzNGOG3hH0+0dcVJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvdm-0002bX-6e; Fri, 25 Oct 2019 09:12:14 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvdi-0002ai-RW
 for ath10k@lists.infradead.org; Fri, 25 Oct 2019 09:12:12 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id F0B85A2AF2293B7914DC;
 Fri, 25 Oct 2019 17:12:01 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Fri, 25 Oct 2019
 17:11:54 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <kvalo@codeaurora.org>, <davem@davemloft.net>
Subject: [PATCH] ath10k: remove unneeded semicolon
Date: Fri, 25 Oct 2019 17:10:41 +0800
Message-ID: <20191025091041.34056-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_021211_062030_E2101A1A 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

remove unneeded semicolon.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/wireless/ath/ath10k/htt_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index 9f0e7b4..d95b63f 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -2073,7 +2073,7 @@ static void ath10k_htt_rx_mpdu_desc_pn_hl(struct htt_hl_rx_desc *rx_desc,
 	case 24:
 		pn->pn24 = __le32_to_cpu(rx_desc->pn_31_0);
 		break;
-	};
+	}
 }
 
 static bool ath10k_htt_rx_pn_cmp48(union htt_rx_pn_t *new_pn,
-- 
2.7.4



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
