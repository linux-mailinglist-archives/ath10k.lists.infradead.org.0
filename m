Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B882EB191B
	for <lists+ath10k@lfdr.de>; Fri, 13 Sep 2019 09:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tO8v4q0xKKp3zclJ80vOsjOGB8QypepTnr+R8sU4DeE=; b=lVZ3fOVdJcRnkI
	ZRGbOMha0gb+JuVsp+qn+RV+n7n2/iCKkZRQVL2MPgSmSP4Do2t9LPQfORqPC/Be8HgIW9idR5RZa
	QEG69xfoDXz7nd195Ijia648mXnzLuon140lijccqy8c9I2koAR6J3+CT0GUeBcK41XgcdqJbImkR
	r+Ude14IoQPKbZ5FVScJluq2aC6aK6tGZUfGUtUMRMg8uvjRM6dVtNcjvEQnopIMNHE5ljj+sytn0
	ISGcrN6ZXq4RlyMqleoApG2/TXjb8wOUhHD670snWrjnIem5mY2XgzQyZqedKKdxBQlN3swwCpqCQ
	wygqsheSibiBDfUWjjNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8gFG-0005pv-UJ; Fri, 13 Sep 2019 07:43:55 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8gF9-0005pF-8u
 for ath10k@lists.infradead.org; Fri, 13 Sep 2019 07:43:48 +0000
Received: from [82.43.126.140] (helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1i8gF3-0003Jj-62; Fri, 13 Sep 2019 07:43:41 +0000
From: Colin King <colin.king@canonical.com>
To: Kalle Valo <kvalo@codeaurora.org>,
 "David S . Miller" <davem@davemloft.net>, ath10k@lists.infradead.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org
Subject: [PATCH] ath10k: fix spelling mistake "eanble" -> "enable"
Date: Fri, 13 Sep 2019 08:43:39 +0100
Message-Id: <20190913074339.27280-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_004347_451702_60B8C72A 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake in a ath10k_warn warning message. Fix it.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/wireless/ath/ath10k/mac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 12dad659bf68..a3d612f5f652 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -7418,7 +7418,7 @@ static bool ath10k_mac_set_vht_bitrate_mask_fixup(struct ath10k *ar,
 	err = ath10k_wmi_peer_set_param(ar, arvif->vdev_id, sta->addr,
 					WMI_PEER_PARAM_FIXED_RATE, rate);
 	if (err)
-		ath10k_warn(ar, "failed to eanble STA %pM peer fixed rate: %d\n",
+		ath10k_warn(ar, "failed to enable STA %pM peer fixed rate: %d\n",
 			    sta->addr, err);
 
 	return true;
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
