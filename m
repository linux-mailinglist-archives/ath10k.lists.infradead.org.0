Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DF3158B92
	for <lists+ath10k@lfdr.de>; Tue, 11 Feb 2020 09:59:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=I2Ub2Lmv0RCN4tjD+PF4WrzV3z2UDUtuQG2m5iKZRYA=; b=Q5E
	w64ZiUMo614pGVBHXFS1ZzToqRWXfOv7p55NgoDWhvAYCHY1NJcoaaUxmkWtFZKh3j7mY313PPpe8
	ORkqpyLom+NQJwTOU50wcZtthZphhhSNupCIKtA+k+kmGQHLSdaSY1mJnxh+gNlc4x7r4P/FOVw9i
	FJBj4Em+tKZSlGfEsKm8S3iUfAbTKrzt1gAcHqoQMvKpIiJ+2UQLlbQbF0OhmPk9Oq4foXQJFS/oa
	N47pFeiW01Z9O0rie0CILoqVSFcPS2y4pznU+uZRa9VubXR7HGqMcJzFwdJV7e9r1L2c0fduc66Wj
	0BOLpHSHO28hOqiRRquxezJP/3erqOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ROb-0001e6-MU; Tue, 11 Feb 2020 08:59:53 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ROY-0001dR-AX
 for ath10k@lists.infradead.org; Tue, 11 Feb 2020 08:59:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581411588; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=naIQn2hB0n/P5Vs4krn5QFMSJuLxTMUW9SG3/BdcJfE=;
 b=DVfPhH7NSiFyiKzffur2GSRbQNaWNuC9xaryTZN89hUY03KWNnhZ9zt758Rdi2ZbA1qOi1iN
 1sNZKxnFRtg1g3VJuSkvMS9QizYxyhCxCkvyKSTlhzb8UW0+nMKKLN5+qIGOW5L1vlqShsoU
 Hhsm14R1H/utsCebwoTftIUfzPA=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e426cff.7fc83cbf0c70-smtp-out-n03;
 Tue, 11 Feb 2020 08:59:43 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AC90AC433A2; Tue, 11 Feb 2020 08:59:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 87E03C43383;
 Tue, 11 Feb 2020 08:59:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 87E03C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: fix few checkpatch warnings
Date: Tue, 11 Feb 2020 10:59:38 +0200
Message-Id: <1581411578-26388-1-git-send-email-kvalo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_005950_427600_2A52DF38 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Fix warnings which were recently introduced:

drivers/net/wireless/ath/ath10k/ahb.c:462: Alignment should match open parenthesis
drivers/net/wireless/ath/ath10k/ahb.c:470: Alignment should match open parenthesis
drivers/net/wireless/ath/ath10k/sdio.c:697: space prohibited before that close parenthesis ')'

Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/ahb.c  | 4 ++--
 drivers/net/wireless/ath/ath10k/sdio.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/ahb.c b/drivers/net/wireless/ath/ath10k/ahb.c
index ed87bc00f2aa..342a7e58018a 100644
--- a/drivers/net/wireless/ath/ath10k/ahb.c
+++ b/drivers/net/wireless/ath/ath10k/ahb.c
@@ -459,7 +459,7 @@ static int ath10k_ahb_resource_init(struct ath10k *ar)
 	ar_ahb->mem_len = resource_size(res);
 
 	ar_ahb->gcc_mem = ioremap(ATH10K_GCC_REG_BASE,
-					  ATH10K_GCC_REG_SIZE);
+				  ATH10K_GCC_REG_SIZE);
 	if (!ar_ahb->gcc_mem) {
 		ath10k_err(ar, "gcc mem ioremap error\n");
 		ret = -ENOMEM;
@@ -467,7 +467,7 @@ static int ath10k_ahb_resource_init(struct ath10k *ar)
 	}
 
 	ar_ahb->tcsr_mem = ioremap(ATH10K_TCSR_REG_BASE,
-					   ATH10K_TCSR_REG_SIZE);
+				   ATH10K_TCSR_REG_SIZE);
 	if (!ar_ahb->tcsr_mem) {
 		ath10k_err(ar, "tcsr mem ioremap error\n");
 		ret = -ENOMEM;
diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index e5316b911e1d..2e9d78222153 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -694,7 +694,7 @@ static int ath10k_sdio_mbox_rx_fetch_bundle(struct ath10k *ar)
 		htc_hdr = (struct ath10k_htc_hdr *)(ar_sdio->vsg_buffer + pkt_offset);
 		pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
 
-		if (pkt->act_len > pkt->alloc_len ) {
+		if (pkt->act_len > pkt->alloc_len) {
 			ret = -EINVAL;
 			goto err;
 		}
-- 
2.7.4

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
