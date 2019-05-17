Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E7D216B1
	for <lists+ath10k@lfdr.de>; Fri, 17 May 2019 12:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F7Z5V6/cCtFWhN5+VfsmDbzIBskvtfE6TmH3KaPkfkk=; b=fiOcl8IFg2XkylkmkMLId9KHNF
	4aH3n7lBa4BPZh2ZJv/jI0YA7jDYOU0y4XXUA4y6Zy6INpKU+xPqSN5k1phNvkOD0z5lQRtboZifs
	AzzNorb3CAqANdU4qgDzgYqIwUUKQwrJaG5QW1JH4RxtyXqrcJduifQf5Se3GFRcVIB4skHLx9o9V
	UxArPqQc6Sy7D/ONXwcmmuLRhkKNmBd1rq+TAnzeKnlEJYBoUoVz/b6L9/jJmwRsdgGVCxfxfCvAB
	tGrOhsudFxpdUlz/ohCRty3+Row34mAKwwIrCeLbZK01g8GER1QVzk2hJPARMa8fDuGBN8ktnK6R8
	jod1smDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZk5-00088S-06; Fri, 17 May 2019 10:05:33 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZjy-000846-MK
 for ath10k@lists.infradead.org; Fri, 17 May 2019 10:05:27 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6FF0760E5C; Fri, 17 May 2019 10:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558087526;
 bh=3FI+6YxD0MYgDR1vZht6lE9W7jGoaioQtNuUb8hI5Xs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Cz/ghU3ahjbA7G5CeJhZC5pO7SZ5evlFbMeEttDIJ/GwRUnGct3PXlIr/cEC91JRB
 SrG/OmJzgXWRF+MgXUxEv1LK0ofxCG2MpORQRclhhOGtaGst8ZEzK3sBwEInC58eTN
 v0Du+IPi/g38/W+7HMHxJuZgkeQXYw9zsAkVN7ms=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from aambure-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: aambure@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E1EA060E3E;
 Fri, 17 May 2019 10:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558087526;
 bh=3FI+6YxD0MYgDR1vZht6lE9W7jGoaioQtNuUb8hI5Xs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Cz/ghU3ahjbA7G5CeJhZC5pO7SZ5evlFbMeEttDIJ/GwRUnGct3PXlIr/cEC91JRB
 SrG/OmJzgXWRF+MgXUxEv1LK0ofxCG2MpORQRclhhOGtaGst8ZEzK3sBwEInC58eTN
 v0Du+IPi/g38/W+7HMHxJuZgkeQXYw9zsAkVN7ms=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E1EA060E3E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=aambure@codeaurora.org
From: Abhishek Ambure <aambure@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 2/2] ath10k: correct wmi_tlv command params to enable pktlog
 for WCN3990
Date: Fri, 17 May 2019 15:35:16 +0530
Message-Id: <1558087516-666-3-git-send-email-aambure@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558087516-666-1-git-send-email-aambure@codeaurora.org>
References: <1558087516-666-1-git-send-email-aambure@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_030526_741845_BCEB2E7B 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Abhishek Ambure <aambure@codeaurora.org>, linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

PKT log enable command expects pdev id in enable params which is missing
in current configuration. Fill pdev id in pkt log enable wmi command for
correct configuration.

Fixes: ca996ec56608 ("ath10k: implement wmi-tlv backend")
Tested HW: WCN3990
Tested FW: WLAN.HL.3.1-00963-QCAHLSWMTPL-1

Signed-off-by: Abhishek Ambure <aambure@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/wmi-tlv.c | 2 ++
 drivers/net/wireless/ath/ath10k/wmi-tlv.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.c b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
index 582fb11..8a209f8 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.c
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
@@ -2981,6 +2981,8 @@ static void *ath10k_wmi_tlv_put_wmm(void *ptr,
 	tlv->len = __cpu_to_le16(sizeof(*cmd));
 	cmd = (void *)tlv->value;
 	cmd->filter = __cpu_to_le32(filter);
+	cmd->pdev_id = __cpu_to_le32(0);
+	cmd->reserved = __cpu_to_le32(0);
 
 	ptr += sizeof(*tlv);
 	ptr += sizeof(*cmd);
diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.h b/drivers/net/wireless/ath/ath10k/wmi-tlv.h
index 65e6aa5..5226283 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.h
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.h
@@ -1923,6 +1923,7 @@ struct wmi_tlv_vdev_stats {
 } __packed;
 
 struct wmi_tlv_pktlog_enable {
+	__le32 pdev_id;
 	__le32 reserved;
 	__le32 filter;
 } __packed;
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
