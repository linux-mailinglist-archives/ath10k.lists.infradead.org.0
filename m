Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432F911A59
	for <lists+ath10k@lfdr.de>; Thu,  2 May 2019 15:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5+vebmAKUJ8zdSnm3APsahfIRnzZXFy0CH/kMzsFFn0=; b=Rje
	CjJ7wub4ZtXWF+nglKEYiDxzvHKolMo+CKtJJeSUSH2xYfkq+WQY/1HV3FMTKeqDZa0fg6urUkEKx
	so5Baj1VM2KqOa7/Nxlqdgok2jwnSeWPW1IxQlC6txrWkWmt8tfSncbLCregWWpVdIsqwkFhim3p3
	Pur27Ox64YUnI2Cf9H+W3gx8dMsgMB4kLD4bXu3GWesbx9bHRc+WEm3e/nnYO+zsjo7Jreg35Pb54
	NJyzf696ZIra+8JANxmtjGIhIqF8fkmO5JGiFR3vL9ZiDGnaCNxe2N4TF+/jFIpdCo3VugNJfa/ul
	WdyzYktBPChXmZwmDWWN2c+tk5eFDUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBtF-0004B6-Oy; Thu, 02 May 2019 13:36:45 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBtB-0004AF-SP
 for ath10k@lists.infradead.org; Thu, 02 May 2019 13:36:43 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 493B060E41; Thu,  2 May 2019 13:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556804201;
 bh=0JFvp52OyBwf49RIzG+yuBXweHAZDmaCdelkT+rDO7w=;
 h=From:To:Cc:Subject:Date:From;
 b=mG6jLsRpPE0uTgF+G+M3ZcSQEtx50HLt5+S3yQ4Rp2rsFYBzF5v9p8kgFbNwkxl7O
 8p6gGOXr4olSPPpLxiRLOqdzCdqjcACV8/ewC5QZ5oJhU7isdnp+Rc+GXno7Oozf46
 +K4Na8Nft+de+n/lyAW+CDfoKnB6G0zyLqOkCxVM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from yintang-HP-Z230-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: yintang@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D439E60863;
 Thu,  2 May 2019 13:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556804200;
 bh=0JFvp52OyBwf49RIzG+yuBXweHAZDmaCdelkT+rDO7w=;
 h=From:To:Cc:Subject:Date:From;
 b=XaFYK4aNxvXw5gEZZbhtK1PYJ1561zL7Vs6SE2Eq65LeYLrGNwCq0300OMH/0vUsB
 DBRSeTMd+1OkA8OKCD+wTEeMXbFOmt2C/q5K2XG6jOQVuj6iKS6E77c/P6VaoCKUAr
 ckbOILAfYzEpNPprMsEgdK76Yfcb0vXAk/46u3Ak=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D439E60863
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=yintang@codeaurora.org
From: Yingying Tang <yintang@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: Check tx_stats before use it
Date: Thu,  2 May 2019 21:36:50 +0800
Message-Id: <1556804210-28599-1-git-send-email-yintang@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_063642_005900_2D7DE0B2 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

tx_stats will be freed and set to NULL before debugfs_sta node is
removed in station disconnetion process. So if read the debugfs_sta
node there may be NULL pointer error. Add check for tx_stats before
use it to resove this issue.

Signed-off-by: Yingying Tang <yintang@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/debugfs_sta.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/debugfs_sta.c b/drivers/net/wireless/ath/ath10k/debugfs_sta.c
index 0f3fd65..4a8d94d 100644
--- a/drivers/net/wireless/ath/ath10k/debugfs_sta.c
+++ b/drivers/net/wireless/ath/ath10k/debugfs_sta.c
@@ -674,6 +674,13 @@ static ssize_t ath10k_dbg_sta_dump_tx_stats(struct file *file,
 
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
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
