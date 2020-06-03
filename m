Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942671ED0E3
	for <lists+ath10k@lfdr.de>; Wed,  3 Jun 2020 15:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VRW1Lzb2akLNYc1cAPhtEJ1v9KhW1W/zS32pHeAZKZA=; b=YVb
	15Dee926vTBV5BYN1WJ/4zTpIhrynSxwtWP0CMhHZU8GZEt6rWk4YpbbR+CgYG9Rmd3Xl0icVEmez
	iIqXLo/J9SVV0vjGZUYr/6K/mx4yTsuK/RDepUs6xhNI9YFZwi1jglF1Ce9rAL/BB5lXOHiBvdBSc
	XIz3etQqfH04SfdvqfEODdfJSdvE5U3J8Xes7BszN8/Nimz8/xgCrZcwlWV6tjvaVuIugGr+43GEc
	KQZxpm5Ua4NddonU/r7dLOvVW+YitnhNUlsK0Fe+1rLQ/TmED/XZvgRs+1XqYrfPb7BaNloUeh4+e
	ulL4Dll7kaOhtJLlm/mBOwXMrBg5Nkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTXI-0000Sh-Fk; Wed, 03 Jun 2020 13:34:28 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTXC-0000LD-Da
 for ath10k@lists.infradead.org; Wed, 03 Jun 2020 13:34:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591191261; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=7x/UvRiWgJpAX06BFIJz9rHjUfD/PoIrfzp1KJclTHM=;
 b=RVSG3b0LrSKQJv+Nt5gSbR9HwUTbKrz5Yq9MtO/FEYER6PIlbSZDIlrr4WvtMkN3oi7BZxeg
 B8S1MSSIxcPVitSo9CJM8dl6K3gU5/Zr4UfviZef/RwX6G6RYLjCAwhdLmXD1Pgho5UIq3f6
 bxJ4F9lFFQXu5S/UGPVk+C8EEfI=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-west-2.postgun.com with SMTP id
 5ed7a6dc4db551abdeb9fe2a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 03 Jun 2020 13:34:20
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 88A5AC433AF; Wed,  3 Jun 2020 13:34:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from dundi-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: govinds)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 596F0C43387;
 Wed,  3 Jun 2020 13:34:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 596F0C43387
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: Move msa region map/unmap to init/deinit path
Date: Wed,  3 Jun 2020 19:03:51 +0530
Message-Id: <1591191231-31917-1-git-send-email-govinds@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_063422_532950_595CE0FB 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

With kernel qrtr switch from user space qrtr, fw crash is seen
during reboot. During reboot modem rproc shutdown causes wlan qmi
service exit and msa region gets unmapped. Since pdev is not suspended
hw still accessing the msa region and this results in  fw crash as
msa region is unmapped.

Decouple msa mapping from wlan qmi server arrive/exit to init/deinit
path.

Testing is pending with "0c2204a4ad71 net: qrtr: Migrate nameservice
to kernel from userspace", only regression sanity performed with user space
qrtr on QCS404/SC7180.

Fixes: 0c2204a4ad71 net: qrtr: Migrate nameservice to kernel from userspace
Signed-off-by: Govind Singh <govinds@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/qmi.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 5ae829b46c3d..8b1291e28ba2 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -796,22 +796,16 @@ static void ath10k_qmi_event_server_arrive(struct ath10k_qmi *qmi)
 	 */
 	msleep(20);
 
-	ret = ath10k_qmi_setup_msa_permissions(qmi);
-	if (ret)
-		return;
-
 	ret = ath10k_qmi_msa_ready_send_sync_msg(qmi);
 	if (ret)
-		goto err_setup_msa;
+		return;
 
 	ret = ath10k_qmi_cap_send_sync_msg(qmi);
 	if (ret)
-		goto err_setup_msa;
+		return;
 
 	return;
 
-err_setup_msa:
-	ath10k_qmi_remove_msa_permission(qmi);
 }
 
 static int ath10k_qmi_fetch_board_file(struct ath10k_qmi *qmi)
@@ -854,7 +848,6 @@ static void ath10k_qmi_event_server_exit(struct ath10k_qmi *qmi)
 	struct ath10k *ar = qmi->ar;
 	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 
-	ath10k_qmi_remove_msa_permission(qmi);
 	ath10k_core_free_board_files(ar);
 	if (!test_bit(ATH10K_SNOC_FLAG_UNREGISTERING, &ar_snoc->flags))
 		ath10k_snoc_fw_crashed_dump(ar);
@@ -1046,6 +1039,10 @@ int ath10k_qmi_init(struct ath10k *ar, u32 msa_size)
 	if (ret)
 		goto err_qmi_lookup;
 
+	ret = ath10k_qmi_setup_msa_permissions(qmi);
+	if (ret)
+		goto err_qmi_lookup;
+
 	return 0;
 
 err_qmi_lookup:
@@ -1064,6 +1061,7 @@ int ath10k_qmi_deinit(struct ath10k *ar)
 	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 	struct ath10k_qmi *qmi = ar_snoc->qmi;
 
+	ath10k_qmi_remove_msa_permission(qmi);
 	qmi_handle_release(&qmi->qmi_hdl);
 	cancel_work_sync(&qmi->event_work);
 	destroy_workqueue(qmi->event_wq);
-- 
2.22.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
