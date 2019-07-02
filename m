Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7165CFA3
	for <lists+ath10k@lfdr.de>; Tue,  2 Jul 2019 14:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ooJlBGaKwblfldx384Aro6jluG/myG9EKw1A8fLeLbU=; b=g8D3nOEP7MtowI
	cCftkw38kY89CI1xPyfLKPdIqAHpzlc5kkpyKaGqvvCWYzNHfMDNbPk4HBOG0vPLRzNbahzBO21qT
	B8ZhmwA8vnIWsx1kdSr9oUBU3MdaPnesaZoG4vJq/uktDbF3BSzB2wgKn1RmV4hkDpGAG09KoP3Od
	3IEog+52MSXS9e49PNsQFinlxZvCeyxdUlwg5rRdkNkRlidZ2auQxM8XG/5ak784b10FK2ud8LeB/
	ibyJ3ACGbhvurs2KEYnWjYw3Sy2VNZh3WaBMjQU+Ss70yFXj84odG58DDmqxesn5qAZfdT4oyz77Y
	9k0yqD0NKB9bNkX8FJBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiI4O-0000U2-K1; Tue, 02 Jul 2019 12:39:39 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiI3x-0000Gd-5X
 for ath10k@lists.infradead.org; Tue, 02 Jul 2019 12:39:11 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hiI3t-0000rS-1U; Tue, 02 Jul 2019 12:39:05 +0000
From: Colin King <colin.king@canonical.com>
To: Kalle Valo <kvalo@codeaurora.org>,
 "David S . Miller" <davem@davemloft.net>, Maya Erez <merez@codeaurora.org>,
 ath10k@lists.infradead.org, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, wil6210@qti.qualcomm.com
Subject: [PATCH][next] ath: fix various spelling mistakes
Date: Tue,  2 Jul 2019 13:39:04 +0100
Message-Id: <20190702123904.8786-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_053909_372290_085DFC33 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

There are a bunch of spelling mistakes in two ath drivers, fix
these.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/wireless/ath/ath10k/core.c | 2 +-
 drivers/net/wireless/ath/ath10k/mac.c  | 2 +-
 drivers/net/wireless/ath/ath10k/qmi.c  | 4 ++--
 drivers/net/wireless/ath/wil6210/wmi.c | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index dc45d16e8d21..a7c25d49683b 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -2784,7 +2784,7 @@ int ath10k_core_start(struct ath10k *ar, enum ath10k_firmware_mode mode,
 
 	status = ath10k_hif_set_target_log_mode(ar, fw_diag_log);
 	if (status && status != -EOPNOTSUPP) {
-		ath10k_warn(ar, "set traget log mode faileds: %d\n", status);
+		ath10k_warn(ar, "set target log mode failed: %d\n", status);
 		goto err_hif_stop;
 	}
 
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index e43a566eef77..20f72ec95b28 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -7417,7 +7417,7 @@ static bool ath10k_mac_set_vht_bitrate_mask_fixup(struct ath10k *ar,
 	err = ath10k_wmi_peer_set_param(ar, arvif->vdev_id, sta->addr,
 					WMI_PEER_PARAM_FIXED_RATE, rate);
 	if (err)
-		ath10k_warn(ar, "failed to eanble STA %pM peer fixed rate: %d\n",
+		ath10k_warn(ar, "failed to enable STA %pM peer fixed rate: %d\n",
 			    sta->addr, err);
 
 	return true;
diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 3b63b6257c43..d28daa2d9449 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -643,7 +643,7 @@ int ath10k_qmi_set_fw_log_mode(struct ath10k *ar, u8 fw_log_mode)
 			       wlfw_ini_req_msg_v01_ei, &req);
 	if (ret < 0) {
 		qmi_txn_cancel(&txn);
-		ath10k_err(ar, "fail to send fw log reqest: %d\n", ret);
+		ath10k_err(ar, "failed to send fw log request: %d\n", ret);
 		goto out;
 	}
 
@@ -652,7 +652,7 @@ int ath10k_qmi_set_fw_log_mode(struct ath10k *ar, u8 fw_log_mode)
 		goto out;
 
 	if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
-		ath10k_err(ar, "fw log request rejectedr: %d\n",
+		ath10k_err(ar, "fw log request rejected: %d\n",
 			   resp.resp.error);
 		ret = -EINVAL;
 		goto out;
diff --git a/drivers/net/wireless/ath/wil6210/wmi.c b/drivers/net/wireless/ath/wil6210/wmi.c
index 475b1a233cc9..e1704cdfc03e 100644
--- a/drivers/net/wireless/ath/wil6210/wmi.c
+++ b/drivers/net/wireless/ath/wil6210/wmi.c
@@ -2688,7 +2688,7 @@ int wmi_get_all_temperatures(struct wil6210_priv *wil,
 		return rc;
 
 	if (reply.evt.status == WMI_FW_STATUS_FAILURE) {
-		wil_err(wil, "Failed geting TEMP_SENSE_ALL\n");
+		wil_err(wil, "Failed getting TEMP_SENSE_ALL\n");
 		return -EINVAL;
 	}
 
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
