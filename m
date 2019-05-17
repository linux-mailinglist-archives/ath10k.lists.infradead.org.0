Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 682D3216AF
	for <lists+ath10k@lfdr.de>; Fri, 17 May 2019 12:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=15uUvq/huae8n8BhDAcXQefzvmEHFPgrU+PaP9xvGf4=; b=SRD6ZAszo1awStraTPHvDrA2NV
	tWAgt6nkOljSp1LyULHbD4Q9cVTRHMlZ/k3jd5j81nOZiMvZH8aZkH0RFxwbbKzesmlF3vVX1w30r
	/5EoMnkX8GoPZe+gKM3UZ8kQzUGPcGZVnQPZrJjV51TmbcBVcnSSWM/6l1RLjc78TQvawT4z5sGDP
	lWihnMUq2Op7WeHHTj1GlSOBaBAM3GRsPZZyjC73uo5xNOuJ3KG4yB+R0CJg8YWMhBTdN4U4Sze9N
	zSQCTWuEGiWQ1faaEAkFZGVMXm7hAuFir03VcSzWvmqzGmNmLUwQBqbiRwkW5IUjvzSChGfDTCEpX
	sXH7w7GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZk2-00085D-FX; Fri, 17 May 2019 10:05:30 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZjx-00083d-0B
 for ath10k@lists.infradead.org; Fri, 17 May 2019 10:05:26 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C00B2609D4; Fri, 17 May 2019 10:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558087524;
 bh=e7P62AYBNfK5NvPXqx1wEnqqoUsS0GTNzKIU0NvNP3o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DSpqTu+fc/YuPIg27Q36TOwAmzS/gHb9KV1jPOgCeFE7hxy8jhuajP3fiRWEXorRz
 s213ymVsDTJNTsfEe67JdiIo6JrAJD/bhveRyre5/z+D0H+NUTk4VKEUFo+F0ObtsG
 0p7u9aEoLm4I7+geyS0UCyIjiTIpLtZ+kOVkxISs=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from aambure-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: aambure@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1E92360128;
 Fri, 17 May 2019 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558087524;
 bh=e7P62AYBNfK5NvPXqx1wEnqqoUsS0GTNzKIU0NvNP3o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DSpqTu+fc/YuPIg27Q36TOwAmzS/gHb9KV1jPOgCeFE7hxy8jhuajP3fiRWEXorRz
 s213ymVsDTJNTsfEe67JdiIo6JrAJD/bhveRyre5/z+D0H+NUTk4VKEUFo+F0ObtsG
 0p7u9aEoLm4I7+geyS0UCyIjiTIpLtZ+kOVkxISs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1E92360128
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=aambure@codeaurora.org
From: Abhishek Ambure <aambure@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 1/2] ath10k: move pktlog connect service before htc start
Date: Fri, 17 May 2019 15:35:15 +0530
Message-Id: <1558087516-666-2-git-send-email-aambure@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558087516-666-1-git-send-email-aambure@codeaurora.org>
References: <1558087516-666-1-git-send-email-aambure@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_030525_216223_CCFE6BA5 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Abhishek Ambure <aambure@codeaurora.org>, linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

WCN3990 supports HTC service for pktlog. PKTLOG service should be
connected before HTC start. Hence move connect pktlog service before
HTC start

Fixes: 713358c321f4 ("ath10k: enable pktlog for WCN3990 target")
Tested HW: WCN3990
Tested FW: WLAN.HL.3.1-00963-QCAHLSWMTPL-1

Signed-off-by: Abhishek Ambure <aambure@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htc.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htc.c b/drivers/net/wireless/ath/ath10k/htc.c
index 805a7f8..e2980fe9 100644
--- a/drivers/net/wireless/ath/ath10k/htc.c
+++ b/drivers/net/wireless/ath/ath10k/htc.c
@@ -893,6 +893,14 @@ int ath10k_htc_start(struct ath10k_htc *htc)
 	int status = 0;
 	struct ath10k_htc_msg *msg;
 
+	if (ath10k_htc_pktlog_svc_supported(ar)) {
+		status = ath10k_htc_pktlog_connect(ar);
+		if (status) {
+			ath10k_err(ar, "failed to connect to pktlog: %d\n", status);
+			return status;
+		}
+	}
+
 	skb = ath10k_htc_build_tx_ctrl_skb(htc->ar);
 	if (!skb)
 		return -ENOMEM;
@@ -919,14 +927,6 @@ int ath10k_htc_start(struct ath10k_htc *htc)
 		return status;
 	}
 
-	if (ath10k_htc_pktlog_svc_supported(ar)) {
-		status = ath10k_htc_pktlog_connect(ar);
-		if (status) {
-			ath10k_err(ar, "failed to connect to pktlog: %d\n", status);
-			return status;
-		}
-	}
-
 	return 0;
 }
 
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
