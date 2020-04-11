Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4427A1A5427
	for <lists+ath10k@lfdr.de>; Sun, 12 Apr 2020 01:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHWgp2d9NIKy5XoFh4fx3DNrv6JN4baW6kxNCYSdwB4=; b=JNpqZv+xwk9R/m
	U+lWA/Fcy5McbHBilSEDjWHwPcEAffvG5GLqA5WBM5GLV66kKhRt0EVmdmD6Lx1jWtJ0MTp305ubW
	JQrjcL+rmfq/c2NhY+2HXVamINoE2TnwgB2YguGEkc5XHJYN499cKRb/pI/y7yl5LIuDUNapcq0OM
	kSNWGlawXGAJRjhatlBUjX8T5zxM2qdAqj4FZphkPeCsIlYzbkRoIDK7PqUgT5hFbskHyBSDLtyHC
	507Ad5gZPo4ui78gyUhNVxMv8FNzEIFn1WUvw6TEd7pnXAHRd0AeuTbDlzvHuBR6AT/S26V71wht7
	pMir61JQ35TW1jWHq4YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPAu-00050O-4V; Sat, 11 Apr 2020 23:04:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPAl-0004vV-60
 for ath10k@lists.infradead.org; Sat, 11 Apr 2020 23:04:25 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D2FB820CC7;
 Sat, 11 Apr 2020 23:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646262;
 bh=fQQrI1is47szD1JB450MaksP2SRAc72CAzFcPy3oKW8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0m5n+XjgCUx1fY6sEMA46Lf3EXiGHZ6hDEFLlIO75ZgWjxxOMuniVicIEWCxWtmas
 pbpxEHBBePUAge7DitRDeWO62eNxQslhVjJxOxOOgh55Oo/djBMWth3PzjDZQgSqqe
 LukA8WyKgNKYbe28Hl+RRiY+JgbEd/MVvlgOGBG0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 028/149] ath10k: use kzalloc to read for
 ath10k_sdio_hif_diag_read
Date: Sat, 11 Apr 2020 19:01:45 -0400
Message-Id: <20200411230347.22371-28-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230347.22371-1-sashal@kernel.org>
References: <20200411230347.22371-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_160423_311531_1927A183 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Wen Gong <wgong@codeaurora.org>

[ Upstream commit 402f2992b4d62760cce7c689ff216ea3bf4d6e8a ]

When use command to read values, it crashed.

command:
dd if=/sys/kernel/debug/ieee80211/phy0/ath10k/mem_value count=1 bs=4 skip=$((0x100233))

It will call to ath10k_sdio_hif_diag_read with address = 0x4008cc and buf_len = 4.

Then system crash:
[ 1786.013258] Unable to handle kernel paging request at virtual address ffffffc00bd45000
[ 1786.013273] Mem abort info:
[ 1786.013281]   ESR = 0x96000045
[ 1786.013291]   Exception class = DABT (current EL), IL = 32 bits
[ 1786.013299]   SET = 0, FnV = 0
[ 1786.013307]   EA = 0, S1PTW = 0
[ 1786.013314] Data abort info:
[ 1786.013322]   ISV = 0, ISS = 0x00000045
[ 1786.013330]   CM = 0, WnR = 1
[ 1786.013342] swapper pgtable: 4k pages, 39-bit VAs, pgdp = 000000008542a60e
[ 1786.013350] [ffffffc00bd45000] pgd=0000000000000000, pud=0000000000000000
[ 1786.013368] Internal error: Oops: 96000045 [#1] PREEMPT SMP
[ 1786.013609] Process swapper/0 (pid: 0, stack limit = 0x0000000084b153c6)
[ 1786.013623] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.19.86 #137
[ 1786.013631] Hardware name: MediaTek krane sku176 board (DT)
[ 1786.013643] pstate: 80000085 (Nzcv daIf -PAN -UAO)
[ 1786.013662] pc : __memcpy+0x94/0x180
[ 1786.013678] lr : swiotlb_tbl_unmap_single+0x84/0x150
[ 1786.013686] sp : ffffff8008003c60
[ 1786.013694] x29: ffffff8008003c90 x28: ffffffae96411f80
[ 1786.013708] x27: ffffffae960d2018 x26: ffffff8019a4b9a8
[ 1786.013721] x25: 0000000000000000 x24: 0000000000000001
[ 1786.013734] x23: ffffffae96567000 x22: 00000000000051d4
[ 1786.013747] x21: 0000000000000000 x20: 00000000fe6e9000
[ 1786.013760] x19: 0000000000000004 x18: 0000000000000020
[ 1786.013773] x17: 0000000000000001 x16: 0000000000000000
[ 1786.013787] x15: 00000000ffffffff x14: 00000000000044c0
[ 1786.013800] x13: 0000000000365ba4 x12: 0000000000000000
[ 1786.013813] x11: 0000000000000001 x10: 00000037be6e9000
[ 1786.013826] x9 : ffffffc940000000 x8 : 000000000bd45000
[ 1786.013839] x7 : 0000000000000000 x6 : ffffffc00bd45000
[ 1786.013852] x5 : 0000000000000000 x4 : 0000000000000000
[ 1786.013865] x3 : 0000000000000c00 x2 : 0000000000000004
[ 1786.013878] x1 : fffffff7be6e9004 x0 : ffffffc00bd45000
[ 1786.013891] Call trace:
[ 1786.013903]  __memcpy+0x94/0x180
[ 1786.013914]  unmap_single+0x6c/0x84
[ 1786.013925]  swiotlb_unmap_sg_attrs+0x54/0x80
[ 1786.013938]  __swiotlb_unmap_sg_attrs+0x8c/0xa4
[ 1786.013952]  msdc_unprepare_data+0x6c/0x84
[ 1786.013963]  msdc_request_done+0x58/0x84
[ 1786.013974]  msdc_data_xfer_done+0x1a0/0x1c8
[ 1786.013985]  msdc_irq+0x12c/0x17c
[ 1786.013996]  __handle_irq_event_percpu+0xe4/0x250
[ 1786.014006]  handle_irq_event_percpu+0x28/0x68
[ 1786.014015]  handle_irq_event+0x48/0x78
[ 1786.014026]  handle_fasteoi_irq+0xd0/0x1a0
[ 1786.014039]  __handle_domain_irq+0x84/0xc4
[ 1786.014050]  gic_handle_irq+0x124/0x1a4
[ 1786.014059]  el1_irq+0xb0/0x128
[ 1786.014072]  cpuidle_enter_state+0x298/0x328
[ 1786.014082]  cpuidle_enter+0x30/0x40
[ 1786.014094]  do_idle+0x190/0x268
[ 1786.014104]  cpu_startup_entry+0x24/0x28
[ 1786.014116]  rest_init+0xd4/0xe0
[ 1786.014126]  start_kernel+0x30c/0x38c
[ 1786.014139] Code: f8408423 f80084c3 36100062 b8404423 (b80044c3)
[ 1786.014150] ---[ end trace 3b02ddb698ea69ee ]---
[ 1786.015415] Kernel panic - not syncing: Fatal exception in interrupt
[ 1786.015433] SMP: stopping secondary CPUs
[ 1786.015447] Kernel Offset: 0x2e8d200000 from 0xffffff8008000000
[ 1786.015458] CPU features: 0x0,2188200c
[ 1786.015466] Memory Limit: none

For sdio chip, it need the memory which is kmalloc, if it is
vmalloc from ath10k_mem_value_read, then it have a memory error.
kzalloc of ath10k_sdio_hif_diag_read32 is the correct type, so
add kzalloc in ath10k_sdio_hif_diag_read to replace the buffer
which is vmalloc from ath10k_mem_value_read.

This patch only effect sdio chip.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index e5316b911e1dd..9208291aaca3d 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -1647,23 +1647,33 @@ static int ath10k_sdio_hif_diag_read(struct ath10k *ar, u32 address, void *buf,
 				     size_t buf_len)
 {
 	int ret;
+	void *mem;
+
+	mem = kzalloc(buf_len, GFP_KERNEL);
+	if (!mem)
+		return -ENOMEM;
 
 	/* set window register to start read cycle */
 	ret = ath10k_sdio_write32(ar, MBOX_WINDOW_READ_ADDR_ADDRESS, address);
 	if (ret) {
 		ath10k_warn(ar, "failed to set mbox window read address: %d", ret);
-		return ret;
+		goto out;
 	}
 
 	/* read the data */
-	ret = ath10k_sdio_read(ar, MBOX_WINDOW_DATA_ADDRESS, buf, buf_len);
+	ret = ath10k_sdio_read(ar, MBOX_WINDOW_DATA_ADDRESS, mem, buf_len);
 	if (ret) {
 		ath10k_warn(ar, "failed to read from mbox window data address: %d\n",
 			    ret);
-		return ret;
+		goto out;
 	}
 
-	return 0;
+	memcpy(buf, mem, buf_len);
+
+out:
+	kfree(mem);
+
+	return ret;
 }
 
 static int ath10k_sdio_hif_diag_read32(struct ath10k *ar, u32 address,
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
