Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F75AE5ACB
	for <lists+ath10k@lfdr.de>; Sat, 26 Oct 2019 15:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=amVUEjOUYPAzVaEM1nfIz0Hzs0QSXTqqJCSAnphS230=; b=HVyz+tL+NWZUmg
	SnH6rZ9R2jpAmDaulaFglTg8TLp6bFcp1G0h8yppWmCvuuDdq+KI1uNB5+PED3hmWtXE/iq9Jjr9J
	6YveYdPfJWLP0yw9V8KqvnEvksbHOPFI0fLEfe4+mAk26s4SZTec2/eff0+NFD2PhM4kyn3ZfhDEW
	DHKMmb/snL096bWNdtzTufWchBAFN/7u93rlzEic76in1VpFrqp5ySEejG4L4vPtgeaDsMQIsyNYN
	AaO3tSkk5s7grF5y+Yir3FffG2o4zVmQ41T5B+8D5+DYP3sRpTdhxRE9BrpY4WhbKAKH1KnN/ltrG
	82Pfk5eIgHr541IfhgXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOLx5-0007Bi-4I; Sat, 26 Oct 2019 13:17:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOLx1-0007BL-BL
 for ath10k@lists.infradead.org; Sat, 26 Oct 2019 13:17:52 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F60A21D80;
 Sat, 26 Oct 2019 13:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572095871;
 bh=Nw/PIM1BjEYj1uKwxNWpIozPv3bYm3XR3iJqsJno1EI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0vPu2tHzAruBId00QFJyMfZiEDGO6cPuhHnskQ3wISjBaEULY81dz9QJ6eeB1D/a3
 +lXSfA27tKgPNGSwEt34fnL+deJK7il+gakcO9EvtAO4OzcCWiQd1s8CbF4JwX4nWE
 XohtOPLhsAFZ2Eu94IntoSPN0hC/8GDP+fMUmhhs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 60/99] ath10k: fix latency issue for QCA988x
Date: Sat, 26 Oct 2019 09:15:21 -0400
Message-Id: <20191026131600.2507-60-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191026131600.2507-1-sashal@kernel.org>
References: <20191026131600.2507-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_061751_408729_158F966D 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Miaoqing Pan <miaoqing@codeaurora.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Miaoqing Pan <miaoqing@codeaurora.org>

[ Upstream commit d79749f7716d9dc32fa2d5075f6ec29aac63c76d ]

(kvalo: cherry picked from commit 1340cc631bd00431e2f174525c971f119df9efa1 in
wireless-drivers-next to wireless-drivers as this a frequently reported
regression)

Bad latency is found on QCA988x, the issue was introduced by
commit 4504f0e5b571 ("ath10k: sdio: workaround firmware UART
pin configuration bug"). If uart_pin_workaround is false, this
change will set uart pin even if uart_print is false.

Tested HW: QCA9880
Tested FW: 10.2.4-1.0-00037

Fixes: 4504f0e5b571 ("ath10k: sdio: workaround firmware UART pin configuration bug")
Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/core.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index dc45d16e8d214..383d4fa555a88 100644
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
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
