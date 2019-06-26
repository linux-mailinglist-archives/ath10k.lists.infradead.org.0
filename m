Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E27855E5E
	for <lists+ath10k@lfdr.de>; Wed, 26 Jun 2019 04:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B/aUp7xsChZEgA4hEvkNmMQDOb+nJRZAv7IimrRDDK4=; b=MQw
	an4Ok/QWaMDt9XGDPc4AbfviPUF4cJH0MdGozn6lW3+1Nb7E9MWLkWpo6GdFPHx5WtzNu8V58D10e
	VCkELiHwYco/NZ8ojvvuZXJWM6+sEY14lZueo92S/6mBn+zo/+o26TnY/JdIFBnzIsqXlMg0vw8ZA
	Ch0fWBu8Re6yWUc5/DSoAT0/Cnj3PcyYLrBsRbsKft07JTs8+uSJwg7zJJPKwwWTl/gyfkym74pC1
	uSPU/2c6R3+tmTdq0zqedZkY06VKLhTo7EIe2/foq4L0tSqzzbEBTGO0GISTCgdgh4BHm1uixirqy
	6sBFDjSbCGUvtxEuazTSiDJP3qvtNlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfxdG-0000dA-QA; Wed, 26 Jun 2019 02:25:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfxdD-0000cq-HG
 for ath10k@lists.infradead.org; Wed, 26 Jun 2019 02:25:56 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id AA04760867; Wed, 26 Jun 2019 02:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561515954;
 bh=f0pKdkF8K45BM2sOKIgyVxyJV7l1MVEf4khNSJWXkTQ=;
 h=From:To:Cc:Subject:Date:From;
 b=EKjNN5CexsYfVYBimOBjmTv0wfYT15UUYcarSPUItE9KBPvNXHHE/Yc7URncMG+bi
 U7nSXVdCGRUI1dR5TT6X4RTWgC0dUEAN+0WwH4ywJ9xmDN2m+KX5swoxkd8yM483Ve
 0qpghY+kFlIM0UzmaBDAFxUEEuj6UyW89jgrGUsE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from localhost.localdomain (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 687B160208;
 Wed, 26 Jun 2019 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561515954;
 bh=f0pKdkF8K45BM2sOKIgyVxyJV7l1MVEf4khNSJWXkTQ=;
 h=From:To:Cc:Subject:Date:From;
 b=EKjNN5CexsYfVYBimOBjmTv0wfYT15UUYcarSPUItE9KBPvNXHHE/Yc7URncMG+bi
 U7nSXVdCGRUI1dR5TT6X4RTWgC0dUEAN+0WwH4ywJ9xmDN2m+KX5swoxkd8yM483Ve
 0qpghY+kFlIM0UzmaBDAFxUEEuj6UyW89jgrGUsE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 687B160208
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: destroy sdio workqueue while remove sdio module
Date: Wed, 26 Jun 2019 10:25:40 +0800
Message-Id: <1561515940-13748-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_192555_592207_702257BC 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The workqueue need to flush and destory while remove sdio module,
otherwise it will have thread which is not destory after remove
sdio modules.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index fae56c6..40c3b4b 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -2077,6 +2077,9 @@ static void ath10k_sdio_remove(struct sdio_func *func)
 	cancel_work_sync(&ar_sdio->wr_async_work);
 	ath10k_core_unregister(ar);
 	ath10k_core_destroy(ar);
+
+	flush_workqueue(ar_sdio->workqueue);
+	destroy_workqueue(ar_sdio->workqueue);
 }
 
 static const struct sdio_device_id ath10k_sdio_devices[] = {
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
