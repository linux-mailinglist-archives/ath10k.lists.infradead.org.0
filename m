Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD98F6D92
	for <lists+ath10k@lfdr.de>; Mon, 11 Nov 2019 05:25:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XG39R7N/gy4+55cnZvktHFy/syl9HNYZMKTxAmMHt2Q=; b=V36jgVo1ocfwV2
	FLAfClBZtu8QVPOp0OBxCOyMas2b8b0xjP//a7zgYBmBP7ZGtUwaQiEDCrilW7768pE/fQDrvOrEB
	v2W4CiOYQRZdKZHz8+dE/74i2Mqv2fZtjhrbHGw70ba8jqg/dsxvwgrEjDYQalG0LZ5J4zO9a6vSz
	O+cIcE2NJeO2prbK2sijykuRhbDR9x1sf/PX4cDxMGttJRj/sm1MUO9fKw26yXqHaSJfDx25fcHvY
	4ULFV/6qfHWyuPmK+XT6R3iG2ifBBJu+9I8tMb8t/2spF6T0hhIA2xCiO+qxMs6o3WczcMtIG4wnv
	vcZRcTL8scXIhGZxG+UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU1GZ-0007IM-No; Mon, 11 Nov 2019 04:25:27 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU1GR-0007DK-65
 for ath10k@lists.infradead.org; Mon, 11 Nov 2019 04:25:21 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D852F60B7E; Mon, 11 Nov 2019 04:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573446318;
 bh=RcK9pHRRt96unH/MIVK4xHvAlRqDPAqVKYYnTuF0V+Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Lb/StXWiya9IlBVHPCMkqlBIpHpBnc+sGFseeR3b7q7Fq+hDZEJiF8rSKCjyBfZ/h
 TrviiH5t6XBfKhHI8ui8ddlsDdXewWja6DeQqSOQnHY9DR28C9w8Ffg1Hz3NpsPJQC
 UEoV3b0eFrDorzyQv/qDidF8Xevxyf/E/B5aONYU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from govinds-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: govinds@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F33B66092C;
 Mon, 11 Nov 2019 04:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573446318;
 bh=RcK9pHRRt96unH/MIVK4xHvAlRqDPAqVKYYnTuF0V+Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Lb/StXWiya9IlBVHPCMkqlBIpHpBnc+sGFseeR3b7q7Fq+hDZEJiF8rSKCjyBfZ/h
 TrviiH5t6XBfKhHI8ui8ddlsDdXewWja6DeQqSOQnHY9DR28C9w8Ffg1Hz3NpsPJQC
 UEoV3b0eFrDorzyQv/qDidF8Xevxyf/E/B5aONYU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org F33B66092C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 2/2] ath10k: Don't call SCM interface for statically mapped
 msa region
Date: Mon, 11 Nov 2019 09:55:08 +0530
Message-Id: <20191111042508.12628-3-govinds@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191111042508.12628-1-govinds@codeaurora.org>
References: <20191111042508.12628-1-govinds@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_202519_274319_8E86083F 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Govind Singh <govinds@codeaurora.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

For some targets ex: QCS404, SCM permissions for MSA region is
statically configured in TrustZone fw. Add SCM call disable option
for such targets to avoid duplicate permissions.

Testing: Tested on WCN3990 HW
Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1

Signed-off-by: Govind Singh <govinds@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/qmi.c | 9 +++++++++
 drivers/net/wireless/ath/ath10k/qmi.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 637f83ef65f8..40ffc444ab7b 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -84,6 +84,9 @@ static int ath10k_qmi_setup_msa_permissions(struct ath10k_qmi *qmi)
 	int ret;
 	int i;
 
+	if (qmi->msa_fixed_perm)
+		return 0;
+
 	for (i = 0; i < qmi->nr_mem_region; i++) {
 		ret = ath10k_qmi_map_msa_permission(qmi, &qmi->mem_region[i]);
 		if (ret)
@@ -102,6 +105,9 @@ static void ath10k_qmi_remove_msa_permission(struct ath10k_qmi *qmi)
 {
 	int i;
 
+	if (qmi->msa_fixed_perm)
+		return;
+
 	for (i = 0; i < qmi->nr_mem_region; i++)
 		ath10k_qmi_unmap_msa_permission(qmi, &qmi->mem_region[i]);
 }
@@ -1018,6 +1024,9 @@ static int ath10k_qmi_setup_msa_resources(struct ath10k_qmi *qmi, u32 msa_size)
 		qmi->msa_mem_size = msa_size;
 	}
 
+	if (of_property_read_bool(dev->of_node, "qcom,msa_fixed_perm"))
+		qmi->msa_fixed_perm = true;
+
 	ath10k_dbg(ar, ATH10K_DBG_QMI, "msa pa: %pad , msa va: 0x%p\n",
 		   &qmi->msa_pa,
 		   qmi->msa_va);
diff --git a/drivers/net/wireless/ath/ath10k/qmi.h b/drivers/net/wireless/ath/ath10k/qmi.h
index 40aafb875ed0..dc257375f161 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.h
+++ b/drivers/net/wireless/ath/ath10k/qmi.h
@@ -104,6 +104,7 @@ struct ath10k_qmi {
 	bool fw_ready;
 	char fw_build_timestamp[MAX_TIMESTAMP_LEN + 1];
 	struct ath10k_qmi_cal_data cal_data[MAX_NUM_CAL_V01];
+	bool msa_fixed_perm;
 };
 
 int ath10k_qmi_wlan_enable(struct ath10k *ar,
-- 
2.22.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
