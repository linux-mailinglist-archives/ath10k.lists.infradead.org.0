Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2247DAB678
	for <lists+ath10k@lfdr.de>; Fri,  6 Sep 2019 12:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UXCc6azXZ9O5J9WiitY6xMge7QSzUVd2KFiuHbiLtng=; b=QNW
	PP/aXk9OTPYzDTxox5xeNY/uEuaBtal9GT6Wv1mJpedst8iTGFbxmexsOaF7TIWQhIHxF4iBqWdSU
	HjIbfbxA6jdamIXsTWErS9d/Qetukg25g9VPY1FkEBllnb1HS8iUb+czWB7nOjUjKP75UUlhk80uM
	tNJesaprR4lw+D3978L9G2cjB/vBjqTaoWTGqmahkVgdhXTkHcJAyX+cTD/QPouiF/C03pAh13kh3
	Bvzcwq9R/BNWofhkQhmy6stbzpo5lkiZBaPd/HOssIAUFMhQxwLISYSuwR8/wg3ztxPQt9c/7XYo4
	/c2zpT4nQ1sv4KlbWbq7zYU9KAOHVZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BuA-0007Ju-Mz; Fri, 06 Sep 2019 10:55:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Bu6-00078t-9y
 for ath10k@lists.infradead.org; Fri, 06 Sep 2019 10:55:47 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E36986030B; Fri,  6 Sep 2019 10:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567767341;
 bh=cCX/dbHZsdqP02XD6v5aEiK2L+Ll9aWqxJ4VRhY2PUA=;
 h=From:To:Cc:Subject:Date:From;
 b=IFjZPPQbI1+h7wyIAnjX0YT9AjJJy0ukOXgqrWMTKvFnlaMZXmUBc8S4RLRqrVOVc
 ZMLy32gKMTHhCH9DhkVAhcDT+lzymRctaQ19vvZ8QWJtsoRImx7Bl9MsvABW8Nv2Qw
 ssIGBvTDxzzSbnQsDA2FKDiEVOhpv1bH3B6YKp0Y=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BB3E760770;
 Fri,  6 Sep 2019 10:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567767341;
 bh=cCX/dbHZsdqP02XD6v5aEiK2L+Ll9aWqxJ4VRhY2PUA=;
 h=From:To:Cc:Subject:Date:From;
 b=IFjZPPQbI1+h7wyIAnjX0YT9AjJJy0ukOXgqrWMTKvFnlaMZXmUBc8S4RLRqrVOVc
 ZMLy32gKMTHhCH9DhkVAhcDT+lzymRctaQ19vvZ8QWJtsoRImx7Bl9MsvABW8Nv2Qw
 ssIGBvTDxzzSbnQsDA2FKDiEVOhpv1bH3B6YKp0Y=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BB3E760770
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: remove the warning of sdio not full support
Date: Fri,  6 Sep 2019 18:55:01 +0800
Message-Id: <1567767301-22940-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_035546_373661_4A1939E6 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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

Recently, it has the basic feature of sdio tested success, so remove
it.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00017-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 8ed4fbd..0801215 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -2073,9 +2073,6 @@ static int ath10k_sdio_probe(struct sdio_func *func,
 		goto err_free_wq;
 	}
 
-	/* TODO: remove this once SDIO support is fully implemented */
-	ath10k_warn(ar, "WARNING: ath10k SDIO support is work-in-progress, problems may arise!\n");
-
 	return 0;
 
 err_free_wq:
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
