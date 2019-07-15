Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B3E68F24
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 16:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIMkfg3EtDiSzEww+vPWdSXgN0xE18BAJm8D87mZLxM=; b=t6K0n0lQXvIW5m
	JDyojwP9vOlVSfALr/pSiQUcF+QIaIYiDWu/DHKEgHOac7KOEA9dMkPqcZcm7OIyAm5c82U0hNSNj
	8hA5DGDIy+ysRIAHkTDUsWskOO1FD9cYesOu+zQJvDixCW+uYLo0+TltQYkNQFUv1Cylg5GG/D1cw
	CvTRoGNjPaMdaqwkcQyCwBA5WgBnX8tDYdknVZ843/F5bofjNCUNNLLgnXT3cfefWgW9/0Epl/ui2
	ip6mEiZvs+YOwdw06yAgXkq4I0PEBgqy8sAaMg1YyoYkG5NlLPdi+23Bm7jJmSb0ua3+I3tEl5t0y
	4MvF1fd2oEvH75CwSbLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1iT-0000JP-9W; Mon, 15 Jul 2019 14:12:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1iK-0000FO-5N
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 14:12:25 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62BE220651;
 Mon, 15 Jul 2019 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563199943;
 bh=ULjxUzx+++yfz9jlrK8gl/SRLm6WxtHyr+F6CLcmbpo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oq/NRPQWsxL2cmCDu+qMAYllKgP7746VZnyHHTdVHbk2rXNHm63V3ijtpNk/Car3z
 21Yp3ED7jeU8VI4y9oBNwVjc9S59y39MEzo7QxNS6/Z6X3RRvgqodPRNG2nN40JzRF
 fftwyjDMoDQ896A+WVGRdxoCK475HlQqOzMf7d8Q=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 145/219] ath10k: fix fw crash by moving chip reset
 after napi disabled
Date: Mon, 15 Jul 2019 10:02:26 -0400
Message-Id: <20190715140341.6443-145-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715140341.6443-1-sashal@kernel.org>
References: <20190715140341.6443-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_071224_234016_6C9D66E5 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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

[ Upstream commit 08d80e4cd27ba19f9bee9e5f788f9a9fc440a22f ]

On SMP platform, when continuously running wifi up/down, the napi
poll can be scheduled during chip reset, which will call
ath10k_pci_has_fw_crashed() to check the fw status. But in the reset
period, the value from FW_INDICATOR_ADDRESS register will return
0xdeadbeef, which also be treated as fw crash. Fix the issue by
moving chip reset after napi disabled.

ath10k_pci 0000:01:00.0: firmware crashed! (guid 73b30611-5b1e-4bdd-90b4-64c81eb947b6)
ath10k_pci 0000:01:00.0: qca9984/qca9994 hw1.0 target 0x01000000 chip_id 0x00000000 sub 168c:cafe
ath10k_pci 0000:01:00.0: htt-ver 2.2 wmi-op 6 htt-op 4 cal otp max-sta 512 raw 0 hwcrypto 1
ath10k_pci 0000:01:00.0: failed to get memcpy hi address for firmware address 4: -16
ath10k_pci 0000:01:00.0: failed to read firmware dump area: -16
ath10k_pci 0000:01:00.0: Copy Engine register dump:
ath10k_pci 0000:01:00.0: [00]: 0x0004a000   0   0   0   0
ath10k_pci 0000:01:00.0: [01]: 0x0004a400   0   0   0   0
ath10k_pci 0000:01:00.0: [02]: 0x0004a800   0   0   0   0
ath10k_pci 0000:01:00.0: [03]: 0x0004ac00   0   0   0   0
ath10k_pci 0000:01:00.0: [04]: 0x0004b000   0   0   0   0
ath10k_pci 0000:01:00.0: [05]: 0x0004b400   0   0   0   0
ath10k_pci 0000:01:00.0: [06]: 0x0004b800   0   0   0   0
ath10k_pci 0000:01:00.0: [07]: 0x0004bc00   1   0   1   0
ath10k_pci 0000:01:00.0: [08]: 0x0004c000   0   0   0   0
ath10k_pci 0000:01:00.0: [09]: 0x0004c400   0   0   0   0
ath10k_pci 0000:01:00.0: [10]: 0x0004c800   0   0   0   0
ath10k_pci 0000:01:00.0: [11]: 0x0004cc00   0   0   0   0

Tested HW: QCA9984,QCA9887,WCN3990

Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/pci.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
index 2c27f407a851..6e5f7ae00253 100644
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -2059,6 +2059,11 @@ static void ath10k_pci_hif_stop(struct ath10k *ar)
 
 	ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot hif stop\n");
 
+	ath10k_pci_irq_disable(ar);
+	ath10k_pci_irq_sync(ar);
+	napi_synchronize(&ar->napi);
+	napi_disable(&ar->napi);
+
 	/* Most likely the device has HTT Rx ring configured. The only way to
 	 * prevent the device from accessing (and possible corrupting) host
 	 * memory is to reset the chip now.
@@ -2072,10 +2077,6 @@ static void ath10k_pci_hif_stop(struct ath10k *ar)
 	 */
 	ath10k_pci_safe_chip_reset(ar);
 
-	ath10k_pci_irq_disable(ar);
-	ath10k_pci_irq_sync(ar);
-	napi_synchronize(&ar->napi);
-	napi_disable(&ar->napi);
 	ath10k_pci_flush(ar);
 
 	spin_lock_irqsave(&ar_pci->ps_lock, flags);
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
