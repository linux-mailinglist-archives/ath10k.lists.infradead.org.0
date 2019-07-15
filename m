Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 349C068A9C
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 15:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qDrpE1uc0l0fhSjlYzS2t6LYdcvZ3+MXbmaw0RvuWwM=; b=ioVbshJlrVEoKr
	QDfXgZieYlZQL427AIltW1LVNjXJUcombMzoLyP3H7g8rLeTWjPobD07hjGRcDPFLdUxKkvZ0teje
	MOkNxvGVhsAx7FTlDuKF6QZlDr91BcLnizQokJ0YkcfUJb26cqq1q7gYOXVJvBrgZXPUoubu7dZUn
	rXlzNeOjAQ5vcmVcFNB0oRYeMWJ5XeDtwkCehaKmILc3esy9QOb/PgCAzDhpAz662uI5/ca3V//X+
	XSDCNMkURwoPrgl5apcK/LQi95QpR59mHZl9hnznmuwpStDHk3s8QaH9hJR8hntEVkxFJvk5Ue3+c
	mIBLynTDrRBHiQ9oiJEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn197-0003Up-3h; Mon, 15 Jul 2019 13:36:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn18z-0003Tu-Ut
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 13:35:55 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EA9D2067C;
 Mon, 15 Jul 2019 13:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563197753;
 bh=NZraKEDuaB6vwvz8xVUkIR+7IQqLDfLfw8tb08+gex4=;
 h=From:To:Cc:Subject:Date:From;
 b=sA/q7qK/JT7OgOyOo3n+66mDEh2siS8VOyCKvH1uB8PDNL+AREhnM+nQDeoS+0kK1
 fhZX+ICWXsUTDKRY2KMI8kOCMBwp1xDlcb61/NLOZrcZonQy/MdxlcA82sSqdImDv+
 HxJqb7yymYjOdKfJbFYTtbS8SlyjONsHmU3JAH0w=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 001/249] ath10k: Check tx_stats before use it
Date: Mon, 15 Jul 2019 09:31:42 -0400
Message-Id: <20190715133550.1772-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_063554_012282_84F336A4 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Yingying Tang <yintang@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Yingying Tang <yintang@codeaurora.org>

[ Upstream commit 9e7251fa38978b85108c44743e1436d48e8d0d76 ]

tx_stats will be freed and set to NULL before debugfs_sta node is
removed in station disconnetion process. So if read the debugfs_sta
node there may be NULL pointer error. Add check for tx_stats before
use it to resove this issue.

Signed-off-by: Yingying Tang <yintang@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/debugfs_sta.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/debugfs_sta.c b/drivers/net/wireless/ath/ath10k/debugfs_sta.c
index c704ae371c4d..42931a669b02 100644
--- a/drivers/net/wireless/ath/ath10k/debugfs_sta.c
+++ b/drivers/net/wireless/ath/ath10k/debugfs_sta.c
@@ -663,6 +663,13 @@ static ssize_t ath10k_dbg_sta_dump_tx_stats(struct file *file,
 
 	mutex_lock(&ar->conf_mutex);
 
+	if (!arsta->tx_stats) {
+		ath10k_warn(ar, "failed to get tx stats");
+		mutex_unlock(&ar->conf_mutex);
+		kfree(buf);
+		return 0;
+	}
+
 	spin_lock_bh(&ar->data_lock);
 	for (k = 0; k < ATH10K_STATS_TYPE_MAX; k++) {
 		for (j = 0; j < ATH10K_COUNTER_TYPE_MAX; j++) {
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
