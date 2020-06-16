Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7551FB203
	for <lists+ath10k@lfdr.de>; Tue, 16 Jun 2020 15:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MEXBp8O4HRdlQGwqYqLd/Qyt4xFjw0YEYey+tdjN8tg=; b=bzBcbNDWMnfJwBZ84ViMM3zmrf
	T2+fdQ0Uj2wuKsyAgyyjEFPod4PceNVEolBPymwmE4mTmXPhlpt2J38b+B0aLkf/y3ZJQYu+KGpTS
	+/RybKvQQ9edzVirjjxeFxJ5XsFGYoSfprGw+qAg1Vh8A3KQvxsEPn7oRK7pxtiWb7n+ukED2rDNY
	tgvF2UbhQ1JKrdrnSuSX5NOxdc7TP2Oda/DklVAHmMFA46zzeV7KY+Lj4LWjQ2d4l2LJbYDTWCIZx
	cZD50cZEOOWt8vqJJKm9zXxza52hY3wLZ/X+p1FzFlG+LPnPC5KAd5154Ptw0ssptseAqEG47z7VV
	EXilo/VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBbY-0001L4-TU; Tue, 16 Jun 2020 13:26:20 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBbV-0001Jv-2N
 for ath10k@lists.infradead.org; Tue, 16 Jun 2020 13:26:18 +0000
Received: by mail-qk1-x742.google.com with SMTP id l17so19037414qki.9
 for <ath10k@lists.infradead.org>; Tue, 16 Jun 2020 06:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pTlena1mQ+CRfzybSksyDrFpk7Mtb5/QTwRRJ4NuDnY=;
 b=O0q+eXYHGYClPKamxbBLQlXoFX9hd2s13ymuXeXSUkSKD54LydgDIRID+dVGR2gdvr
 Ao/sTtr/B0Q53BW4/0QLLmL0Ttj3TZKn5SdxLrym/tSjlrysRm4qgYk2JO4aRLeHvYHR
 lI3KgAyMqmBwj0g/jAesCDOUe1Q1UCFcLSNvMXKkPFhhPdTc0hzrAxRhNbIHH5+qUnIz
 egcONoPb3+5b/zRvKS6oaLKFKqittMqgVDhwqIXdoTbT+uWLw3PUc5nde1v7beyTJ9xq
 s9mM/SHdlRv+inyx9jLYGWEBBmoUBGZjSxKuXZ21M4ge30o8twejbt8/CCaTM6UC6yf3
 IPzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pTlena1mQ+CRfzybSksyDrFpk7Mtb5/QTwRRJ4NuDnY=;
 b=cNuvk1lHc5oTpwBbhxJnpwlVlKgpAOanIJDNdUxu+YMVKcAsNUK9KW5Tx6HwSLi1Dh
 wpyfkHlNNSv0c7JMDq3AUd4NgVAKIALYFB/bsY9+lDsGE/qpshcCRqZMpSG9oUKb+jsa
 CaxBGZ2uOYx0ccor3hUdBE4hKxgErQnodpoHL/OnBmeaj9XFUEzwM5qw2e3KKqRjTVve
 icyxzn54XQS/H9C9X6yit1hbmhjMHOZQRn0H8uPUdPYDDPUq6SkIeNRoukAA9tER8xEH
 W/1LAONo2BSSEyCJdRgTel3rIIldiyEwEesPFvAlFxYqkaz3TYR8mMLdpxc7C2+u21Vi
 3GgQ==
X-Gm-Message-State: AOAM532bRdXf/1fSXTUSBtVHuKj74al6zIp9XPT1ZTF+UTK1IbvMtwUD
 i5kKCbUUHQpb3MhPj+N5LjU=
X-Google-Smtp-Source: ABdhPJzLtQ2/M3DbPJMIabYXwgwX3KK0G3x9vlKdL/OsJ2bik8DTzlxuvASnbBvCd1k/lzjQfIhtLw==
X-Received: by 2002:a05:620a:2295:: with SMTP id
 o21mr1354995qkh.170.1592313975169; 
 Tue, 16 Jun 2020 06:26:15 -0700 (PDT)
Received: from buszk-y710.fios-router.home
 (pool-108-54-206-188.nycmny.fios.verizon.net. [108.54.206.188])
 by smtp.googlemail.com with ESMTPSA id
 d78sm14111872qkg.106.2020.06.16.06.26.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:26:14 -0700 (PDT)
From: Zekun Shen <bruceshenzk@gmail.com>
To: 
Subject: [PATCH] net: ath10k: fix memcpy size from untrusted input
Date: Tue, 16 Jun 2020 09:25:43 -0400
Message-Id: <20200616132544.17478-1-bruceshenzk@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <87tuzbihbg.fsf@codeaurora.org>
References: <87tuzbihbg.fsf@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_062617_127875_B2BE98F9 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bruceshenzk[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 Zekun Shen <bruceshenzk@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

A compromized ath10k peripheral is able to control the size argument
of memcpy in ath10k_pci_hif_exchange_bmi_msg.

The min result from previous line is not used as the size argument
for memcpy. Instead, xfer.resp_len comes from untrusted stream dma
input. The value comes from "nbytes" in ath10k_pci_bmi_recv_data,
which is set inside _ath10k_ce_completed_recv_next_nolock with the line

nbytes = __le16_to_cpu(sdesc.nbytes);

sdesc is a stream dma region which device can write to.

Signed-off-by: Zekun Shen <bruceshenzk@gmail.com>
---
KASAN report stacktrace:
[    6.293972] ==================================================================
[    6.295696] BUG: KASAN: slab-out-of-bounds in ath10k_pci_hif_exchange_bmi_msg+0xb2f/0x14d0 [ath10k_pci]
[    6.297031] Read of size 9769 at addr ffff888034c49c00 by task kworker/u2:2/82
[    6.298054]
[    6.298288] CPU: 0 PID: 82 Comm: kworker/u2:2 Tainted: G        W         5.6.0 #51
[    6.299410] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.12.1-0-ga5cab58e9a3f-prebuilt.qemu.org 04/01/4
[    6.301107] Workqueue: ath10k_wq ath10k_core_register_work [ath10k_core]
[    6.302203] Call Trace:
[    6.302596]  dump_stack+0x75/0x9b
[    6.303114]  ? ath10k_pci_hif_exchange_bmi_msg+0xb2f/0x14d0 [ath10k_pci]
[    6.304096]  print_address_description.constprop.5+0x16/0x310
[    6.304933]  ? ath10k_pci_hif_exchange_bmi_msg+0xb2f/0x14d0 [ath10k_pci]
[    6.305898]  ? ath10k_pci_hif_exchange_bmi_msg+0xb2f/0x14d0 [ath10k_pci]
[    6.306873]  __kasan_report+0x158/0x1c0
[    6.307441]  ? ath10k_pci_hif_exchange_bmi_msg+0xb2f/0x14d0 [ath10k_pci]
[    6.308432]  kasan_report+0xe/0x20
[    6.308938]  check_memory_region+0x15d/0x1b0
[    6.309564]  memcpy+0x1f/0x50
[    6.310006]  ath10k_pci_hif_exchange_bmi_msg+0xb2f/0x14d0 [ath10k_pci]
[    6.310947]  ? ath10k_pci_rx_replenish_retry+0x170/0x170 [ath10k_pci]
[    6.311875]  ? check_unmap+0x64e/0x1bb0
[    6.312439]  ? _raw_write_lock+0xd0/0xd0
[    6.313045]  ? log_store.constprop.29+0x267/0x440
[    6.313732]  ? debug_dma_free_coherent+0x1c0/0x220
[    6.314440]  ? debug_dma_alloc_coherent+0x2f0/0x2f0
[    6.315156]  ath10k_bmi_get_target_info+0x1b8/0x350 [ath10k_core]
[    6.316058]  ? apic_timer_interrupt+0xa/0x20
[    6.316710]  ? ath10k_bmi_done+0x330/0x330 [ath10k_core]
[    6.317509]  ? ath10k_pci_diag_write_mem+0x31e/0x570 [ath10k_pci]
[    6.318402]  ? __kasan_check_read+0x10/0x10
[    6.319037]  ? _raw_spin_lock_irqsave+0x7b/0xd0
[    6.319755]  ? _raw_write_lock_irqsave+0xd0/0xd0
[    6.320463]  ? lock_timer_base+0xbc/0x150
[    6.321047]  ? enqueue_timer+0xda/0x270
[    6.321612]  ? mod_timer+0x406/0xad0
[    6.322147]  ? timer_reduce+0xb00/0xb00
[    6.322707]  ? _raw_write_lock_irqsave+0xd0/0xd0
[    6.323380]  ? ath10k_pci_sleep.part.14+0x163/0x1c0 [ath10k_pci]
[    6.324248]  ? ath10k_bus_pci_write32+0x158/0x1b0 [ath10k_pci]
[    6.325099]  ? ath10k_pci_hif_power_up+0x256/0x690 [ath10k_pci]
[    6.325970]  ? __switch_to_asm+0x40/0x70
[    6.326565]  ath10k_core_register_work+0x799/0x2070 [ath10k_core]
[    6.327453]  ? __switch_to_asm+0x34/0x70
[    6.328028]  ? __switch_to_asm+0x40/0x70
[    6.328603]  ? __switch_to+0x5d5/0xde0
[    6.329144]  ? __switch_to_asm+0x34/0x70
[    6.329754]  ? ath10k_core_stop+0xf0/0xf0 [ath10k_core]
[    6.330521]  ? __schedule+0x88c/0x1820
[    6.331068]  ? read_word_at_a_time+0xe/0x20
[    6.331675]  ? strscpy+0xa3/0x320
[    6.332162]  process_one_work+0x83c/0x14c0
[    6.332777]  worker_thread+0x82/0xee0
[    6.333335]  ? __kthread_parkme+0x8a/0x100
[    6.333955]  ? process_one_work+0x14c0/0x14c0
[    6.334592]  kthread+0x2f1/0x3a0
[    6.335070]  ? kthread_create_on_node+0xc0/0xc0
[    6.335785]  ret_from_fork+0x35/0x40
[    6.367721] ==================================================================

 drivers/net/wireless/ath/ath10k/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
index 1d941d53f..ad28d9156 100644
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -2184,7 +2184,7 @@ int ath10k_pci_hif_exchange_bmi_msg(struct ath10k *ar,
 
 	if (ret == 0 && resp_len) {
 		*resp_len = min(*resp_len, xfer.resp_len);
-		memcpy(resp, tresp, xfer.resp_len);
+		memcpy(resp, tresp, *resp_len);
 	}
 err_dma:
 	kfree(treq);
-- 
2.17.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
