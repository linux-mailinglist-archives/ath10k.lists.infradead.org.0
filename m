Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A037C044
	for <lists+ath10k@lfdr.de>; Wed, 31 Jul 2019 13:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GqKQDyq51hHe04zueV1/xHioJn9bReuMnqKyO6flvto=; b=Btxsklr1603ltm
	6N6DcW+aChG05gOLg6udtVOM2R5Nh/yuGN79hNvMzHddEOAtcqdZl8Gsl0Pa3EYXh1SAzUX3z2RrJ
	o1szpMj8rxcl5HEsnYzFQkN/6Ccf/nzDKi9V5XmpwbOLotYkiuloOVGNHjou+JGmrXXYqUScl28/u
	PsP/77Txhu682EoS/NeSdwZ8SepCBW8hfHVk01wjrMUM4PYbcerw6LK2Q06BG163RYPxN+PiPdGKV
	6kIi7/Ft41q11t4faCZ3ut9zhVRrfcyYTsCw0fLeIyDABar6eWehLuTINncLG1NgwQJCrzwRRqjME
	7Lm5NryctJn3fgymol1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsn05-0003F5-K7; Wed, 31 Jul 2019 11:42:33 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsn02-0003Ea-Qo
 for ath10k@lists.infradead.org; Wed, 31 Jul 2019 11:42:32 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DC94E60A97; Wed, 31 Jul 2019 11:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564573349;
 bh=ogVQDO12SawzTxJX9ZUztmWfkhG5Pw/7rGll6TPcbxU=;
 h=From:To:Cc:Subject:Date:From;
 b=KhAA48/01mr4c+gQqQdVn+YrJpPss95Xoun8kftMlWkQJNkVudRYI2qyN8WD5tWR7
 6inIKxsJ33+Z/zR0crzbxb9apA5FtYavURvXaIjatL7MaJ2murZ3n/vxOO8myKY4Cx
 8BTxRVOKMjyKIwXG8Q6676d+y7ixrQs3JTpclzpk=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4E3B0605A5;
 Wed, 31 Jul 2019 11:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564573349;
 bh=ogVQDO12SawzTxJX9ZUztmWfkhG5Pw/7rGll6TPcbxU=;
 h=From:To:Cc:Subject:Date:From;
 b=KhAA48/01mr4c+gQqQdVn+YrJpPss95Xoun8kftMlWkQJNkVudRYI2qyN8WD5tWR7
 6inIKxsJ33+Z/zR0crzbxb9apA5FtYavURvXaIjatL7MaJ2murZ3n/vxOO8myKY4Cx
 8BTxRVOKMjyKIwXG8Q6676d+y7ixrQs3JTpclzpk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4E3B0605A5
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: revalidate the msa region coming from firmware
Date: Wed, 31 Jul 2019 17:12:20 +0530
Message-Id: <20190731114220.22830-1-govinds@codeaurora.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_044230_909948_44ACA7A1 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

driver sends QMI_WLFW_MSA_INFO_REQ_V01 QMI request to firmware
and in response expects range of addresses and size to be mapped.
Add condition to check whether addresses in response falls
under valid range otherwise return failure.

Testing: Tested on WCN3990 HW
Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1

Signed-off-by: Govind Singh <govinds@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/qmi.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 2e678780df5d..3457509a003f 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -111,6 +111,7 @@ static int ath10k_qmi_msa_mem_info_send_sync_msg(struct ath10k_qmi *qmi)
 	struct wlfw_msa_info_resp_msg_v01 resp = {};
 	struct wlfw_msa_info_req_msg_v01 req = {};
 	struct ath10k *ar = qmi->ar;
+	phys_addr_t max_mapped_addr;
 	struct qmi_txn txn;
 	int ret;
 	int i;
@@ -150,8 +151,20 @@ static int ath10k_qmi_msa_mem_info_send_sync_msg(struct ath10k_qmi *qmi)
 		goto out;
 	}
 
+	max_mapped_addr = qmi->msa_pa + qmi->msa_mem_size;
 	qmi->nr_mem_region = resp.mem_region_info_len;
 	for (i = 0; i < resp.mem_region_info_len; i++) {
+		if (resp.mem_region_info[i].size > qmi->msa_mem_size ||
+		    resp.mem_region_info[i].region_addr > max_mapped_addr ||
+		    resp.mem_region_info[i].region_addr < qmi->msa_pa ||
+		    resp.mem_region_info[i].size +
+		    resp.mem_region_info[i].region_addr > max_mapped_addr) {
+			ath10k_err(ar, "received out of range memory region address 0x%llx with size 0x%x, aborting\n",
+				   resp.mem_region_info[i].region_addr,
+				   resp.mem_region_info[i].size);
+			ret = -EINVAL;
+			goto fail_unwind;
+		}
 		qmi->mem_region[i].addr = resp.mem_region_info[i].region_addr;
 		qmi->mem_region[i].size = resp.mem_region_info[i].size;
 		qmi->mem_region[i].secure = resp.mem_region_info[i].secure_flag;
@@ -165,6 +178,8 @@ static int ath10k_qmi_msa_mem_info_send_sync_msg(struct ath10k_qmi *qmi)
 	ath10k_dbg(ar, ATH10K_DBG_QMI, "qmi msa mem info request completed\n");
 	return 0;
 
+fail_unwind:
+	memset(&qmi->mem_region[0], 0, sizeof(qmi->mem_region[0]) * i);
 out:
 	return ret;
 }
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
