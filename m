Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6326A22D1
	for <lists+ath10k@lfdr.de>; Thu, 29 Aug 2019 19:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3BbPGRd9jiuzsKIxNOUWQu+JkvaTlxH9VVNZ5B2+QqA=; b=ZBa
	Xwzu4fjBTO4BF9q5tPx121P2kdta9yjAK+uzrjtfZBmAfQ2P8yolHiwhsg2S/96CGHcqg2bV252Mu
	R7I3I1jbQxFByBKBxlMAuqDg8NB/QMr1QzGoupU7G7a9wpv77TRK3bVkStxY9N0piPvlB9D5stOk6
	5X9irv+LekXS64KlsUjl0Vxm9tFZzNCPvodouYV192RcFQeLw1Spx5U/qdTJSEywihkMdEgEzJtp6
	kCsX1WDu2t6YVNG/LEkYb7OEXEmz9Bd0qktL5W51opLbretahOoZ2/V+nyD1Xd89bzVv1xbLLSgBS
	aKwE0okzaMwg6yeN6mUfxtlHZgkWB3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3OcG-0007E1-DR; Thu, 29 Aug 2019 17:53:48 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3OcA-0007Dg-Fg
 for ath10k@lists.infradead.org; Thu, 29 Aug 2019 17:53:43 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E8BF0687EB; Thu, 29 Aug 2019 17:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567101101;
 bh=bleuRIGGQXtxy2m1UO/Sr1VcKu3Nw/apzjxW1618aAo=;
 h=From:To:Cc:Subject:Date:From;
 b=NhVkTKlzd1aXV3xOUwl9kOcFiqVLLaF/JEeTM7VyHyJrnS7cORgQZe7Sg6rO6tlJH
 CFzzbHWQIM/Iw+PutS2LsHeMhWedbvpaHMe1p92Sza4JxkNGnmwm5xzX0ctwPPJcg4
 bt055Q6OvCfYwkCfyprmqAZXBzEbRuRvuutWL9lM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from smtp.codeaurora.org (unknown [180.166.53.21])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: miaoqing@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CD65B89988;
 Thu, 29 Aug 2019 02:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567046776;
 bh=bleuRIGGQXtxy2m1UO/Sr1VcKu3Nw/apzjxW1618aAo=;
 h=From:To:Cc:Subject:Date:From;
 b=K9BXqJolkVr+10nYEjo7UV8uqgeZyr2oaDE4MEgOOsBXwFi0+Vg3OY40HL0rIDbbI
 mNiufXPr0dIXAgaYTLGOSGhjpUmfHZ73fADOqbAiCvU/pyJucyqoZlPJRnhFtKZhbD
 0huRk1ohqrkSourfcyJyl6xVY66JUueONpUgvW0A=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CD65B89988
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=miaoqing@codeaurora.org
Received: by smtp.codeaurora.org (sSMTP sendmail emulation);
 Thu, 29 Aug 2019 10:46:09 +0800
From: Miaoqing Pan <miaoqing@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: fix latency issue for QCA988x
Date: Thu, 29 Aug 2019 10:45:12 +0800
Message-Id: <1567046712-23057-1-git-send-email-miaoqing@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_105342_543609_1C838252 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, Miaoqing Pan <miaoqing@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bad latency is found on QCA988x, the issue was introduced by
commit 4504f0e5b571 ("ath10k: sdio: workaround firmware UART
pin configuration bug"). If uart_pin_workaround is false, this
change will set uart pin even if uart_print is false.

Tested HW: QCA9880
Tested FW: 10.2.4-1.0-00037

Fixes: 4504f0e5b571 ("ath10k: sdio: workaround firmware UART pin configuration bug")
Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/core.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index dc45d16..383d4fa 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -2118,12 +2118,15 @@ static int ath10k_init_uart(struct ath10k *ar)
 		return ret;
 	}
 
-	if (!uart_print && ar->hw_params.uart_pin_workaround) {
-		ret = ath10k_bmi_write32(ar, hi_dbg_uart_txpin,
-					 ar->hw_params.uart_pin);
-		if (ret) {
-			ath10k_warn(ar, "failed to set UART TX pin: %d", ret);
-			return ret;
+	if (!uart_print) {
+		if (ar->hw_params.uart_pin_workaround) {
+			ret = ath10k_bmi_write32(ar, hi_dbg_uart_txpin,
+						 ar->hw_params.uart_pin);
+			if (ret) {
+				ath10k_warn(ar, "failed to set UART TX pin: %d",
+					    ret);
+				return ret;
+			}
 		}
 
 		return 0;
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
