Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1476E551A1
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 16:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EoV9is38rjd+TpVCW1cSwRg34qixhhpfHx3+7aTFUDI=; b=Hjb
	ZzWRya95vpqsK6OOC1yFT52np3LYZgAFXJRww75TELfddfUhWmVcYrsrOA9filsLpJVfyzAHf2oTL
	I6MzSX8DdMv9MmIo+jbUhObqow/RdQ217lVGyjCEoaNy456RILfs0nrYwTFoEyKkiCjFDTlgFqOzY
	N/svTLW+IAj0bDPrcqvmNzgeXdo+6yxqy5eRJq286m8TkKbI1Rx+jxkyYap67jD4loQrAc0a7tqp0
	oM7a6BfOR0cziXv6p2qzMbcBcMoyx1ADqzrV6leO7lxhRPCK1aaCbRBiV7RFifxXqXiDslH0JY8vW
	gY6/Ej/gBoO9kYnmReuO3ex+qV2gGRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmOl-0002gh-I8; Tue, 25 Jun 2019 14:26:15 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmOg-0002g0-Th
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 14:26:12 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E8D8960DB3; Tue, 25 Jun 2019 14:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561472769;
 bh=TEBlvaeNf4r5I6IKGuHGOaBZ98Nqii7cdoNkzjqkhe8=;
 h=From:To:Cc:Subject:Date:From;
 b=S9zlQF2auvbU/JsnBOvoQGy+0+TxipQiBAn0bLa/t/7r/38VZ+DVe6BYquLlog7a+
 fwOT9z8CgbOd9AebnP+AZpwFas8rrG5AvCPRsxtvm9nmOX7pFhwbWq+xJxGMoaXlQq
 9qNUn+gFCZbOmTy7Canw+OmagSwt7V6N4fFMO4A0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from dundi-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: dundi@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 43C8B60CEC;
 Tue, 25 Jun 2019 14:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561472769;
 bh=TEBlvaeNf4r5I6IKGuHGOaBZ98Nqii7cdoNkzjqkhe8=;
 h=From:To:Cc:Subject:Date:From;
 b=S9zlQF2auvbU/JsnBOvoQGy+0+TxipQiBAn0bLa/t/7r/38VZ+DVe6BYquLlog7a+
 fwOT9z8CgbOd9AebnP+AZpwFas8rrG5AvCPRsxtvm9nmOX7pFhwbWq+xJxGMoaXlQq
 9qNUn+gFCZbOmTy7Canw+OmagSwt7V6N4fFMO4A0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 43C8B60CEC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=dundi@codeaurora.org
From: Dundi Raviteja <dundi@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: Fix memory leak in qmi
Date: Tue, 25 Jun 2019 19:55:48 +0530
Message-Id: <1561472748-28467-1-git-send-email-dundi@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_072610_980021_20497142 
X-CRM114-Status: UNSURE (   8.99  )
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
Cc: linux-wireless@vger.kernel.org, Dundi Raviteja <dundi@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Currently the memory allocated for qmi handle is
not being freed during de-init which leads to memory leak.

Free the allocated qmi memory in qmi deinit
to avoid memory leak.

Tested HW: WCN3990
Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1

Fixes: fda6fee0001e ("ath10k: add QMI message handshake for wcn3990 client")
Signed-off-by: Dundi Raviteja <dundi@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/qmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 2e67878..dcbf20b 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -1003,6 +1003,7 @@ int ath10k_qmi_deinit(struct ath10k *ar)
 	qmi_handle_release(&qmi->qmi_hdl);
 	cancel_work_sync(&qmi->event_work);
 	destroy_workqueue(qmi->event_wq);
+	kfree(qmi);
 	ar_snoc->qmi = NULL;
 
 	return 0;
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
