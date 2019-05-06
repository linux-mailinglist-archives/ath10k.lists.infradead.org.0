Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA1E14BC5
	for <lists+ath10k@lfdr.de>; Mon,  6 May 2019 16:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9fdpkJk5GrUY5BSUrccEwCUiYae5bjnkbRt8Q46D1M4=; b=bElgn6uWy2CFly
	4HgSepJ+DlNT89M7WlmTSZxmkD107yMpr2897Fk+Nsc9mvpQWQCfR51miKfwbWhy1GjvNcXG9E8hX
	bGZLGxrFwlc8Hfpluev1HwelxjL3i3wqJCks73dyjiTfliGt4PG3NV/eJKcr4e7I+LNr9nImI60+N
	NR8GkwMGsEYIJ9AmOc2j+Rv9/mRHXrhjCTVkNLbCm/cgkVLeOIxI9dxo3n5g0Ve9NwB0TYX7v1onw
	f/bIlaBLzXgrtTvQziiq8XWSw/9CAN3XveG0+AHUiBxCh9NUWEfLuwmBnQQ58yFF8gjpUWuEDPNEX
	XAa3nkeAZ1kOykzquBwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNeZL-0006qm-7R; Mon, 06 May 2019 14:26:15 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNeZH-0006q5-61
 for ath10k@lists.infradead.org; Mon, 06 May 2019 14:26:12 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 841D760A44; Mon,  6 May 2019 14:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557152770;
 bh=OeYrEMrhyC+yJSREA9uaCKqx/NT+8qWhBWFZj54qQSE=;
 h=From:To:Cc:Subject:Date:From;
 b=UeHIdt9e7egNQXn6xCuHwFOPmWuQZFspdrYuWGxF8Wm6krunuYsdml+5MhHZaQpjn
 604rUiRheNUC9qAWYrtFG5UkXarI2SJXmWFhOfyVvZfrCP18Sr15m061w5T174qLyU
 xOv6ItvAiSrGli5bIGzbh3xE0wVrlsWnXqoytjyg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from govinds-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: govinds@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 41B92608FC;
 Mon,  6 May 2019 14:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557152769;
 bh=OeYrEMrhyC+yJSREA9uaCKqx/NT+8qWhBWFZj54qQSE=;
 h=From:To:Cc:Subject:Date:From;
 b=ZAO0EuIUsGzeoKbSjD4QVmKrBPk+yzzdcpkH0VHTt9RgmM05ffAf2sYG+tSsf6Vgd
 nfXwiKF3UWKpXHIqh7N3s3BFk2uWlxGPfW1SPhHh/RiheYhQhjEbdLFh5v51FIDKqd
 sLDAOrwVvofkQs0CoxrkFQl0xyQ/eDZX0drEa8Kk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 41B92608FC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 1/1] ath10k: Enable MSA region dump support for WCN3990
Date: Mon,  6 May 2019 19:56:03 +0530
Message-Id: <20190506142603.1746-1-govinds@codeaurora.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_072611_261668_F4196DA8 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

MSA memory region caries the hw descriptors information.
Dump MSA region in core dump as this is very helpful in debugging
hw issues.

Testing: Tested on WCN3990 HW
Tested FW: WLAN.HL.3.1-00959-QCAHLSWMTPLZ-1

Signed-off-by: Govind Singh <govinds@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/coredump.c | 21 +++++++
 drivers/net/wireless/ath/ath10k/coredump.h |  1 +
 drivers/net/wireless/ath/ath10k/qmi.c      |  6 ++
 drivers/net/wireless/ath/ath10k/snoc.c     | 67 ++++++++++++++++++++++
 drivers/net/wireless/ath/ath10k/snoc.h     |  1 +
 5 files changed, 96 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/coredump.c b/drivers/net/wireless/ath/ath10k/coredump.c
index eadae2f9206b..56d62035c988 100644
--- a/drivers/net/wireless/ath/ath10k/coredump.c
+++ b/drivers/net/wireless/ath/ath10k/coredump.c
@@ -962,6 +962,19 @@ static const struct ath10k_mem_region qca4019_hw10_mem_regions[] = {
 	},
 };
 
+static const struct ath10k_mem_region wcn399x_hw10_mem_regions[] = {
+	{
+		/* MSA region start is not fixed, hence it is assigned at runtime */
+		.type = ATH10K_MEM_REGION_TYPE_MSA,
+		.len = 0x100000,
+		.name = "DRAM",
+		.section_table = {
+			.sections = NULL,
+			.size = 0,
+		},
+	},
+};
+
 static const struct ath10k_hw_mem_layout hw_mem_layouts[] = {
 	{
 		.hw_id = QCA6174_HW_1_0_VERSION,
@@ -1059,6 +1072,14 @@ static const struct ath10k_hw_mem_layout hw_mem_layouts[] = {
 			.size = ARRAY_SIZE(qca4019_hw10_mem_regions),
 		},
 	},
+	{
+		.hw_id = WCN3990_HW_1_0_DEV_VERSION,
+		.hw_rev = ATH10K_HW_WCN3990,
+		.region_table = {
+			.regions = wcn399x_hw10_mem_regions,
+			.size = ARRAY_SIZE(wcn399x_hw10_mem_regions),
+		},
+	},
 };
 
 static u32 ath10k_coredump_get_ramdump_size(struct ath10k *ar)
diff --git a/drivers/net/wireless/ath/ath10k/coredump.h b/drivers/net/wireless/ath/ath10k/coredump.h
index 5dac653e1649..9802e90483f4 100644
--- a/drivers/net/wireless/ath/ath10k/coredump.h
+++ b/drivers/net/wireless/ath/ath10k/coredump.h
@@ -126,6 +126,7 @@ enum ath10k_mem_region_type {
 	ATH10K_MEM_REGION_TYPE_IRAM2	= 5,
 	ATH10K_MEM_REGION_TYPE_IOSRAM	= 6,
 	ATH10K_MEM_REGION_TYPE_IOREG	= 7,
+	ATH10K_MEM_REGION_TYPE_MSA	= 8,
 };
 
 /* Define a section of the region which should be copied. As not all parts
diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index ba8f5a8f83d1..47da492a326b 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -817,9 +817,15 @@ ath10k_qmi_driver_event_post(struct ath10k_qmi *qmi,
 static void ath10k_qmi_event_server_exit(struct ath10k_qmi *qmi)
 {
 	struct ath10k *ar = qmi->ar;
+	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 
 	ath10k_qmi_remove_msa_permission(qmi);
 	ath10k_core_free_board_files(ar);
+	if (!test_bit(ATH10K_SNOC_FLAG_UNREGISTERING, &ar_snoc->flags)) {
+		ath10k_qmi_remove_msa_permission(qmi);
+		ath10k_snoc_fw_crashed_dump(ar);
+		ath10k_qmi_setup_msa_permissions(qmi);
+	}
 	ath10k_snoc_fw_indication(ar, ATH10K_QMI_EVENT_FW_DOWN_IND);
 	ath10k_dbg(ar, ATH10K_DBG_QMI, "wifi fw qmi service disconnected\n");
 }
diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index 0be12996beba..252dd4ee782d 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -24,6 +24,7 @@
 #include <linux/regulator/consumer.h>
 
 #include "ce.h"
+#include "coredump.h"
 #include "debug.h"
 #include "hif.h"
 #include "htc.h"
@@ -1586,6 +1587,72 @@ static int ath10k_hw_power_off(struct ath10k *ar)
 	return ret;
 }
 
+static void ath10k_msa_dump_memory(struct ath10k *ar,
+				   struct ath10k_fw_crash_data *crash_data)
+{
+	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
+	const struct ath10k_hw_mem_layout *mem_layout;
+	const struct ath10k_mem_region *current_region;
+	struct ath10k_dump_ram_data_hdr *hdr;
+	size_t buf_len;
+	u8 *buf;
+
+	lockdep_assert_held(&ar->data_lock);
+
+	if (!crash_data && !crash_data->ramdump_buf)
+		return;
+
+	mem_layout = ath10k_coredump_get_mem_layout(ar);
+	if (!mem_layout)
+		return;
+
+	current_region = &mem_layout->region_table.regions[0];
+
+	buf = crash_data->ramdump_buf;
+	buf_len = crash_data->ramdump_buf_len;
+	memset(buf, 0, buf_len);
+
+	/* Reserve space for the header. */
+	hdr = (void *)buf;
+	buf += sizeof(*hdr);
+	buf_len -= sizeof(*hdr);
+
+	hdr->region_type = cpu_to_le32(current_region->type);
+	hdr->start = cpu_to_le32(ar_snoc->qmi->msa_va);
+	hdr->length = cpu_to_le32(ar_snoc->qmi->msa_mem_size);
+
+	if (current_region->len < ar_snoc->qmi->msa_mem_size) {
+		memcpy(buf, ar_snoc->qmi->msa_va, current_region->len);
+		ath10k_warn(ar, "msa dump length is less than msa size %x, %x\n",
+			    current_region->len, ar_snoc->qmi->msa_mem_size);
+	} else {
+		memcpy(buf, ar_snoc->qmi->msa_va, ar_snoc->qmi->msa_mem_size);
+	}
+}
+
+void ath10k_snoc_fw_crashed_dump(struct ath10k *ar)
+{
+	struct ath10k_fw_crash_data *crash_data;
+	char guid[UUID_STRING_LEN + 1];
+
+	spin_lock_bh(&ar->data_lock);
+
+	ar->stats.fw_crash_counter++;
+
+	crash_data = ath10k_coredump_new(ar);
+
+	if (crash_data)
+		scnprintf(guid, sizeof(guid), "%pUl", &crash_data->guid);
+	else
+		scnprintf(guid, sizeof(guid), "n/a");
+
+	ath10k_err(ar, "firmware crashed! (guid %s)\n", guid);
+	ath10k_print_driver_info(ar);
+	ath10k_msa_dump_memory(ar, crash_data);
+
+	spin_unlock_bh(&ar->data_lock);
+}
+
 static const struct of_device_id ath10k_snoc_dt_match[] = {
 	{ .compatible = "qcom,wcn3990-wifi",
 	 .data = &drv_priv,
diff --git a/drivers/net/wireless/ath/ath10k/snoc.h b/drivers/net/wireless/ath/ath10k/snoc.h
index 25383de8f17d..6d28a6290a94 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.h
+++ b/drivers/net/wireless/ath/ath10k/snoc.h
@@ -101,5 +101,6 @@ static inline struct ath10k_snoc *ath10k_snoc_priv(struct ath10k *ar)
 }
 
 int ath10k_snoc_fw_indication(struct ath10k *ar, u64 type);
+void ath10k_snoc_fw_crashed_dump(struct ath10k *ar);
 
 #endif /* _SNOC_H_ */
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
