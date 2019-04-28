Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57413B4BD
	for <lists+ath10k@lfdr.de>; Sun, 28 Apr 2019 04:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jdqLfybxhoMcJMs1YvD51osXgSq7oWgbEqv9mtWq3lM=; b=R8d
	pYny1yaE7vNE6w/rpCEp7bQnItBOqR2nILpJLXG4ucMW4msqoEI/zcSKmagCft+ORBGbM23Bkoowf
	hvnujZ/ZE4vHypAG92Vp0erzxeAd6Z3/6HiZEogw8Vezv8PqZzXhbSAnVqXX9ElC3sPJGwo2TgXhk
	y8eAeqI+B8ty+XpLERR0HG/wbV0PqUIU44t3Y2AwWfAd9GihJ0JV0quHOJLi/C++bNpClp4IoKhv4
	8sF1yw2SLrSTBf5swkLPB+5Ox1/I6fQXJXmLFHtTM6CQ0uufjEsbZS81trsyan7Pjn4a4ShrzkrLf
	CD1U1pNTE9/lNpa6IlTpsyH7HN8+aDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKZNa-0000Sv-H8; Sun, 28 Apr 2019 02:17:22 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKZNX-0000Sd-0p
 for ath10k@lists.infradead.org; Sun, 28 Apr 2019 02:17:20 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0686D604B4; Sun, 28 Apr 2019 02:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556417838;
 bh=8Z+Xnff/4eQbJDrCB2cyLkFo5QwmntY2rBb88/5s6/w=;
 h=From:To:Cc:Subject:Date:From;
 b=QMVjQORQpcRmNxlA+iV2lrKpMz99SPQ3qaRfK0lLouTdOpP3JIt3e+AnYu7mO0337
 qxP9KH7WYZFCDvPBJ9o/Vpqy7bELusuIWArBjVqW+XrEmMh7kwxU8Y2GoHH8d/kyvy
 uu1PUsN8D8vOtYq3Dv8nq/oTo7Bc2MMSGolQvG90=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from localhost.localdomain (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id ADCE4601B4;
 Sun, 28 Apr 2019 02:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556417837;
 bh=8Z+Xnff/4eQbJDrCB2cyLkFo5QwmntY2rBb88/5s6/w=;
 h=From:To:Cc:Subject:Date:From;
 b=Yjn7zJOtiQjwCNgf+VYIr0Y8z7rbb0hxohTorJSOp22cb7sxphk62zBxcHtExUh4o
 JgDkBbYNsQyKjPEuQsCSPiw4Rm3dfUL63oBXo4SSrMJrMXekSsoWS6RV0Quxp+/Onq
 pjsGkakcZvq0y1lt8vV/HtSVbdZoBSjRFdRJDxxU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org ADCE4601B4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: remove mmc_hw_reset while hif power down
Date: Sun, 28 Apr 2019 10:17:05 +0800
Message-Id: <1556417825-13713-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_191719_083837_BD57ADF9 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

For sdio 3.0 chip, the clock will drop from 200M Hz to 50M Hz after load
ath10k driver, it is because mmc_hw_reset will reset the sdio's power,
then mmc will consider it as sdio 2.0 and drop the clock.

Remove mmc_hw_reset will avoid the drop of clock.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index fae56c6..f1d2af8 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -1433,10 +1433,6 @@ static void ath10k_sdio_hif_power_down(struct ath10k *ar)
 		return;
 	}
 
-	ret = mmc_hw_reset(ar_sdio->func->card->host);
-	if (ret)
-		ath10k_warn(ar, "unable to reset sdio: %d\n", ret);
-
 	sdio_release_host(ar_sdio->func);
 
 	ar_sdio->is_disabled = true;
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
