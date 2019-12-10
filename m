Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EC5119640
	for <lists+ath10k@lfdr.de>; Tue, 10 Dec 2019 22:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pR8x6Ee/vNPryNIBtutqobegK5/JiilRKJx3R+ALdqo=; b=DPk0Ir+w5JLT6h
	kHSfjFkiGD/almq+DvetuLZpVxe6K3pcd9yTIllXMjhb7HxkFD4KG5/GJuRWCEMKZy+uWbWCVW+Df
	tr48o/bIuN8pmbcRQGX8B5zghOprgXGk54x9Ngf5dF/llp95ho+MQhQwwTJsgfNcktpHEN+rLZ3qf
	gM/hkWGvVOKOYzYjSh2v0Ay8LM0dZi7SkiJnGHSEwtz5xO1FqQlC/AuXHmeUGC/NTuxqTWV0dqbVx
	Uc3zW9H3z80rz1Rlj1vsK3Xob662M0uBiOiubwyMTAProp/hilPQZs8c8r6DA4nniIKB3IMS5mmq+
	o2iwi2fGBBZD+GwCcFbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ien0z-0007lR-QR; Tue, 10 Dec 2019 21:25:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ien0n-0007gT-F4
 for ath10k@lists.infradead.org; Tue, 10 Dec 2019 21:25:43 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E74D5206D5;
 Tue, 10 Dec 2019 21:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576013140;
 bh=Q4VBBcVHLUBqiODns1zyQG5zfK8ZHI0uDaGYoWiea0U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UdEUMuPg9WmufsAXN1hqd8kJYBmRurF2o3kez5RXpv/IEBai9AYIoTCpaTZd0zWKk
 z8mHWKHUEbFJdTKHDUVwAnPRFoNlNmlO3H35tFD40UAtQJCk4kKBA8pJA8vQzILFlg
 DZ7aja27mGZOGVm7f53dsZrSjccCvDLQaVBnjegw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 024/292] ath10k: fix backtrace on coredump
Date: Tue, 10 Dec 2019 16:20:43 -0500
Message-Id: <20191210212511.11392-24-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210212511.11392-1-sashal@kernel.org>
References: <20191210212511.11392-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_132541_565841_FC219245 
X-CRM114-Status: UNSURE (   9.87  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Anilkumar Kolli <akolli@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Anilkumar Kolli <akolli@codeaurora.org>

[ Upstream commit d98ddae85a4a57124f87960047b1b6419312147f ]

In a multiradio board with one QCA9984 and one AR9987
after enabling the crashdump with module parameter
coredump_mask=7, below backtrace is seen.

vmalloc: allocation failure: 0 bytes
 kworker/u4:0: page allocation failure: order:0, mode:0x80d2
 CPU: 0 PID: 6 Comm: kworker/u4:0 Not tainted 3.14.77 #130
 Workqueue: ath10k_wq ath10k_core_register_work [ath10k_core]
 (unwind_backtrace) from [<c021abf8>] (show_stack+0x10/0x14)
 (dump_stack+0x80/0xa0)
 (warn_alloc_failed+0xd0/0xfc)
 (__vmalloc_node_range+0x1b4/0x1d8)
 (__vmalloc_node+0x34/0x40)
 (vzalloc+0x24/0x30)
 (ath10k_coredump_register+0x6c/0x88 [ath10k_core])
 (ath10k_core_register_work+0x350/0xb34 [ath10k_core])
 (process_one_work+0x20c/0x32c)
 (worker_thread+0x228/0x360)

This is due to ath10k_hw_mem_layout is not defined for AR9987.
For coredump undefined hw ramdump_size is 0.
Check for the ramdump_size before allocation memory.

Tested on: AR9987, QCA9984
FW version: 10.4-3.9.0.2-00044

Signed-off-by: Anilkumar Kolli <akolli@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/coredump.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/coredump.c b/drivers/net/wireless/ath/ath10k/coredump.c
index b6d2932383cf6..1cfe75a2d0c3a 100644
--- a/drivers/net/wireless/ath/ath10k/coredump.c
+++ b/drivers/net/wireless/ath/ath10k/coredump.c
@@ -1208,9 +1208,11 @@ static struct ath10k_dump_file_data *ath10k_coredump_build(struct ath10k *ar)
 		dump_tlv = (struct ath10k_tlv_dump_data *)(buf + sofar);
 		dump_tlv->type = cpu_to_le32(ATH10K_FW_CRASH_DUMP_RAM_DATA);
 		dump_tlv->tlv_len = cpu_to_le32(crash_data->ramdump_buf_len);
-		memcpy(dump_tlv->tlv_data, crash_data->ramdump_buf,
-		       crash_data->ramdump_buf_len);
-		sofar += sizeof(*dump_tlv) + crash_data->ramdump_buf_len;
+		if (crash_data->ramdump_buf_len) {
+			memcpy(dump_tlv->tlv_data, crash_data->ramdump_buf,
+			       crash_data->ramdump_buf_len);
+			sofar += sizeof(*dump_tlv) + crash_data->ramdump_buf_len;
+		}
 	}
 
 	mutex_unlock(&ar->dump_mutex);
@@ -1257,6 +1259,9 @@ int ath10k_coredump_register(struct ath10k *ar)
 	if (test_bit(ATH10K_FW_CRASH_DUMP_RAM_DATA, &ath10k_coredump_mask)) {
 		crash_data->ramdump_buf_len = ath10k_coredump_get_ramdump_size(ar);
 
+		if (!crash_data->ramdump_buf_len)
+			return 0;
+
 		crash_data->ramdump_buf = vzalloc(crash_data->ramdump_buf_len);
 		if (!crash_data->ramdump_buf)
 			return -ENOMEM;
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
