Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4195A68D34
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 15:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uzof/g27dACVlewVkjt8ijB+jQlFiWmbTmHd3wa9l4E=; b=bwWDD/YSHTX4sc
	Kt7M0uafo8Yf5RUpIVIGbcxAt2ErTWmRE8jWapbeeI8xkoTJMDWg4N0l0ZqCk5PyFvLXRAJE2PAoF
	EYtG6IWnF4rm1LGm7v3/QD4QBwc6YGK3h4+OoBtYw4lfIJgkar+NLQ+woi8UmJhycCsRy07GClUh6
	Rq+dbW2NWImZw7TilaWWoxHz+Rsta3Wp5EjMwI6E2SDRVBb8DM5iWrEFZ+qD2m4FDJXA5PrR9bR/Q
	bit76MuIX5tJvkXG5DW7tU3B2zZdfLODVjlZ/PgopFCAHOi4id6oBfit9+1Juft7CDEqy3xNUOxCW
	U0q3HgU2JrcQSZ7/YVhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1TR-0008PM-1N; Mon, 15 Jul 2019 13:57:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1TI-0008Jn-1F
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 13:56:53 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 361BE21537;
 Mon, 15 Jul 2019 13:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563199011;
 bh=1vuppLEe4c9McwgEoTdwhfd5u9V66r5gDa7g32TfWCE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vv8AZDLC9q0TetpVLxvqPvQDbGHdrQPcevi7rAuXd+hxt8H6CWWHqlt6sX0Hwsjjb
 uiAizeHOvZ7C2z2+TuwylQ3RXn38i3oTImXugfWuW0Vrx7+kfW5F1pnPazKpkibwAX
 VkYvECmZRZ7u3pcKGx0aV6gzm9q4SWFMfIQX7vHI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 165/249] ath10k: fix PCIE device wake up failed
Date: Mon, 15 Jul 2019 09:45:30 -0400
Message-Id: <20190715134655.4076-165-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_065652_091557_AB8EB11E 
X-CRM114-Status: GOOD (  12.25  )
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
Cc: Sasha Levin <sashal@kernel.org>, Miaoqing Pan <miaoqing@codeaurora.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Miaoqing Pan <miaoqing@codeaurora.org>

[ Upstream commit 011d4111c8c602ea829fa4917af1818eb0500a90 ]

Observed PCIE device wake up failed after ~120 iterations of
soft-reboot test. The error message is
"ath10k_pci 0000:01:00.0: failed to wake up device : -110"

The call trace as below:
ath10k_pci_probe -> ath10k_pci_force_wake -> ath10k_pci_wake_wait ->
ath10k_pci_is_awake

Once trigger the device to wake up, we will continuously check the RTC
state until it returns RTC_STATE_V_ON or timeout.

But for QCA99x0 chips, we use wrong value for RTC_STATE_V_ON.
Occasionally, we get 0x7 on the fist read, we thought as a failure
case, but actually is the right value, also verified with the spec.
So fix the issue by changing RTC_STATE_V_ON from 0x5 to 0x7, passed
~2000 iterations.

Tested HW: QCA9984

Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/hw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/hw.c b/drivers/net/wireless/ath/ath10k/hw.c
index ad082b7d7643..b242085c3c16 100644
--- a/drivers/net/wireless/ath/ath10k/hw.c
+++ b/drivers/net/wireless/ath/ath10k/hw.c
@@ -158,7 +158,7 @@ const struct ath10k_hw_values qca6174_values = {
 };
 
 const struct ath10k_hw_values qca99x0_values = {
-	.rtc_state_val_on		= 5,
+	.rtc_state_val_on		= 7,
 	.ce_count			= 12,
 	.msi_assign_ce_max		= 12,
 	.num_target_ce_config_wlan	= 10,
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
