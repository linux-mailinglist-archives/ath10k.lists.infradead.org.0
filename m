Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F117C1C4EED
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 09:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2YD/VKTkq1GgWXou14Mrgp0DI+LteKqV7+GtQpor604=; b=K97
	PMigc5Ib47MB3PsEc9wuC/BRKAFR0FMJUqB5+0zHqWVo4s7Tjr7woc35DVb3UGnK+llvdj1zvyLse
	0ERl1fHBrtJAYB9sZJxEkpNd4+GnLjrb7JwA/9VVT3sA/W1dQKSC//WT8K/zrdOXKvNF7sis+MxvV
	iRYhE136dMRROEcBjqusqwEp4wJzktJ8eviobJUfaRswBfdwvD+a0bTleBhyv5kSmTS3QJqA+V/KH
	cH3BlJCgHMFqMP66fx7/JvYUF/EkuNkUyA5TgB9Nl23tV1sDVgL4GDoNd6D7wXG032oWVRD2s9XIj
	D21XkTAESNP6yX2+Buu+np20An99G0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVrqO-0000zj-Bh; Tue, 05 May 2020 07:18:20 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVrqH-0000x1-O2
 for ath10k@lists.infradead.org; Tue, 05 May 2020 07:18:17 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588663096; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=FHvKSwOq7HDlR/x83tultcrCPZZOptkuScQLeJFruww=;
 b=nu0E0nzY2N8IqDFAom9Y50zlAtFbrJCPp3RWBUfMWtoe2VOu9gnAE15jzm2vzcGBMMSpitKd
 Swf1GOL8cpnGgP9tse+NZX69MxUV2gyaj4ihudSrYFVxt76LgwyCtYmejUdxDDUzRR+jY1za
 NXOsZhxeIXhL7u3bWEdirQWUHRI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb11320.7f88f615de68-smtp-out-n01;
 Tue, 05 May 2020 07:17:52 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 541DFC433CB; Tue,  5 May 2020 07:17:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from pillair-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 19569C433D2;
 Tue,  5 May 2020 07:17:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 19569C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: Rakesh Pillai <pillair@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: Skip handling del_server during driver exit
Date: Tue,  5 May 2020 12:47:41 +0530
Message-Id: <1588663061-12138-1-git-send-email-pillair@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_001816_559252_AD94BFA1 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rakesh Pillai <pillair@codeaurora.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The qmi infrastructure sends the client a del_server
event when the client releases its qmi handle. This
is not the msg indicating the actual qmi server exiting.
In such cases the del_server msg should not be processed,
since the wifi firmware does not reset its qmi state.

Hence skip the processing of del_server event when the
driver is unloading.

Tested HW: WCN3990
Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1

Fixes: ba94c753ccb4 ("ath10k: add QMI message handshake for wcn3990 client")
Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/qmi.c | 13 ++++++++++++-
 drivers/net/wireless/ath/ath10k/qmi.h |  6 ++++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 85dce43..7abdef8 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -961,7 +961,16 @@ static void ath10k_qmi_del_server(struct qmi_handle *qmi_hdl,
 		container_of(qmi_hdl, struct ath10k_qmi, qmi_hdl);
 
 	qmi->fw_ready = false;
-	ath10k_qmi_driver_event_post(qmi, ATH10K_QMI_EVENT_SERVER_EXIT, NULL);
+
+	/*
+	 * The del_server event is to be processed only if coming from
+	 * the qmi server. The qmi infrastructure sends del_server, when
+	 * any client releases the qmi handle. In this case do not process
+	 * this del_server event.
+	 */
+	if (qmi->state == ATH10K_QMI_STATE_INIT_DONE)
+		ath10k_qmi_driver_event_post(qmi, ATH10K_QMI_EVENT_SERVER_EXIT,
+					     NULL);
 }
 
 static struct qmi_ops ath10k_qmi_ops = {
@@ -1091,6 +1100,7 @@ int ath10k_qmi_init(struct ath10k *ar, u32 msa_size)
 	if (ret)
 		goto err_qmi_lookup;
 
+	qmi->state = ATH10K_QMI_STATE_INIT_DONE;
 	return 0;
 
 err_qmi_lookup:
@@ -1109,6 +1119,7 @@ int ath10k_qmi_deinit(struct ath10k *ar)
 	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 	struct ath10k_qmi *qmi = ar_snoc->qmi;
 
+	qmi->state = ATH10K_QMI_STATE_DEINIT;
 	qmi_handle_release(&qmi->qmi_hdl);
 	cancel_work_sync(&qmi->event_work);
 	destroy_workqueue(qmi->event_wq);
diff --git a/drivers/net/wireless/ath/ath10k/qmi.h b/drivers/net/wireless/ath/ath10k/qmi.h
index dc25737..b597205 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.h
+++ b/drivers/net/wireless/ath/ath10k/qmi.h
@@ -83,6 +83,11 @@ struct ath10k_qmi_driver_event {
 	void *data;
 };
 
+enum ath10k_qmi_state {
+	ATH10K_QMI_STATE_INIT_DONE,
+	ATH10K_QMI_STATE_DEINIT,
+};
+
 struct ath10k_qmi {
 	struct ath10k *ar;
 	struct qmi_handle qmi_hdl;
@@ -105,6 +110,7 @@ struct ath10k_qmi {
 	char fw_build_timestamp[MAX_TIMESTAMP_LEN + 1];
 	struct ath10k_qmi_cal_data cal_data[MAX_NUM_CAL_V01];
 	bool msa_fixed_perm;
+	enum ath10k_qmi_state state;
 };
 
 int ath10k_qmi_wlan_enable(struct ath10k *ar,
-- 
2.7.4

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
