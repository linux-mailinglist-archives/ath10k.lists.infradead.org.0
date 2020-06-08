Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EC31F239F
	for <lists+ath10k@lfdr.de>; Tue,  9 Jun 2020 01:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxkDkJd4DE2fs9kQ9PrGSAVq17e+ZyG7u6NxjiEFbcw=; b=St5NpEWjJWf5zB
	gqL0dW7MAbtK2JJUL71qsQa9N4rXgvY+T715d1qRQZ/AALRPM9GPeYJ8cEuqmBN96gUt9JInGkuUE
	S5fzfYgH3N1tbTV3WcKaAhxDbP9USlP3GUBTUm7QfaBdmWzE5WxPhIHC4uEAu6zkt8bNBu5edNICJ
	V/mobdLf9YSbdOUsvgcC6mNP1bLlEciQd5SHxJq+d5lXF3TE40xrrYIQqBOwhaoXhdiFFjCRS10gt
	CVIMKDNCVsedC2CfG92pEdd+IvWOqSUghn7+s6qxk7tLV8QusKa1AhDHKCeObuUDahFkA54JRgGQU
	fR39fsjmW4M3e1EfPS2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiR0j-0003dL-8C; Mon, 08 Jun 2020 23:16:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQu9-000269-VO
 for ath10k@lists.infradead.org; Mon, 08 Jun 2020 23:10:14 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39D61208A9;
 Mon,  8 Jun 2020 23:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657808;
 bh=3fRy+M5MKsobW1DMkCE6aT8AuhzEA6KfX/ybdilXmPA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ELe17dI3Nfkg8sQQkaYKaDaxivhq3puSVAAy0Y2i1BQCqu8aXfj/wmVl/LOCrsMr3
 LZIvjZj/zBxY+QJMOHxBctnUYJOJdAPIy3/GtR/zFPUE8atDgi9UvRzo5kYItfdqHG
 j+AE9h6U3L/cwks5AnW0J9bFkJB4hJZTNQXSccoE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 184/274] ath10k: Skip handling del_server during
 driver exit
Date: Mon,  8 Jun 2020 19:04:37 -0400
Message-Id: <20200608230607.3361041-184-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161010_489332_CFEC9C81 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Rakesh Pillai <pillair@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Rakesh Pillai <pillair@codeaurora.org>

[ Upstream commit 7c6d67b136ceb0aebc7a3153b300e925ed915daf ]

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
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Link: https://lore.kernel.org/r/1588663061-12138-1-git-send-email-pillair@codeaurora.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/qmi.c | 13 ++++++++++++-
 drivers/net/wireless/ath/ath10k/qmi.h |  6 ++++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 85dce43c5439..7abdef8d6b9b 100644
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
index dc257375f161..b59720524224 100644
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
2.25.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
