Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 827D4BF421
	for <lists+ath10k@lfdr.de>; Thu, 26 Sep 2019 15:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E4XvUzx66lj6IdG80WmloNJN9r85Pa9Gc+vpYq5NnYo=; b=L5siA44lRvCl3zmle/3I+nsruL
	BnADhCT7kdGZqW0atouc54labGe4+4dHGC+h4m9URl5eLNnpsPQtyWoJ6fGA49CEDP7dQMjU8arA+
	NMt/A68np5GNBkoc0Jr7vmLG99Y+rCQ7NwKGs6Wh9dSMnMWRyH/9NKrUj7/ExcGaLmnjXLTwvuFFK
	ZSpl0TyDvqc5plJes5RYcJxd6Br/G56WLEunAaw6p9wfKO8l6YyFUqL8LIonRDMmrT6mp3lYHLQDZ
	G/JLXsMCs6Zr7EeOdgWSODDmbv7sWVXZ7QMq/yHeeRaBbzQNQY23Aglk3+XvKGsACV64kVApfNNvg
	Az1sQU/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDTwe-0006Vi-8j; Thu, 26 Sep 2019 13:36:32 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTwX-0006Tk-UR
 for ath10k@lists.infradead.org; Thu, 26 Sep 2019 13:36:27 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A229561132; Thu, 26 Sep 2019 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569504985;
 bh=cLlAG1hDaIZeSw3bMsCwMXzg06crBIe5m/uqx7JPLG0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HCBsG2KdIRHlFVZKk++TFXl31T+IsOZZzYcXDptRRlq5XJQVQJiwFoTCUXisQ8ibc
 DshLcDWLDlNsAbTT6D3cRZTzhNEBQCvsFuKswkY3r+qpfV4nC6+P6d783eE3uWwCMG
 WGJ8xraWbcq/E5JJnC8cNlxIVEDrNreekLKGGiQs=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from localhost
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: akolli@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6B3CC60BF4;
 Thu, 26 Sep 2019 13:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569504985;
 bh=cLlAG1hDaIZeSw3bMsCwMXzg06crBIe5m/uqx7JPLG0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HCBsG2KdIRHlFVZKk++TFXl31T+IsOZZzYcXDptRRlq5XJQVQJiwFoTCUXisQ8ibc
 DshLcDWLDlNsAbTT6D3cRZTzhNEBQCvsFuKswkY3r+qpfV4nC6+P6d783eE3uWwCMG
 WGJ8xraWbcq/E5JJnC8cNlxIVEDrNreekLKGGiQs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6B3CC60BF4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=akolli@codeaurora.org
From: Anilkumar Kolli <akolli@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 2/2] ath10k: fix backtrace on coredump
Date: Thu, 26 Sep 2019 19:07:01 +0530
Message-Id: <1569505021-20515-2-git-send-email-akolli@codeaurora.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1569505021-20515-1-git-send-email-akolli@codeaurora.org>
References: <1569505021-20515-1-git-send-email-akolli@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_063626_083631_5CC55235 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anilkumar Kolli <akolli@codeaurora.org>, linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

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
---
 drivers/net/wireless/ath/ath10k/coredump.c |   11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/coredump.c b/drivers/net/wireless/ath/ath10k/coredump.c
index ecd3dd5d8356..a127122b4721 100644
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
1.7.9.5


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
