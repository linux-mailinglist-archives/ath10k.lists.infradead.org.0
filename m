Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5E7108E84
	for <lists+ath10k@lfdr.de>; Mon, 25 Nov 2019 14:10:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4WNyHP10t8Nj5/6gPLimjE0gNIMttV9s5S8zgE7r9kM=; b=BZAPDNnh7vRKEl
	SxYyLrukTm2c9+i8puk6UI/MfIit1fV4U8PTqIDpxJB8txy2X04KU9cKLyo1FlspZ1OmjxG43/nUY
	VsHtWzTNTo+pq1BwBD0lMnglQM8APNBUuCnJYkkjMQSU4JOKiijL8CX/3crczyeSuxH7UsYWaPStq
	pOPeLDXRDyjKhAWslCenBog4K8+taCyr3itmGRZmDDuO4SlgNZOaM8CHQTz8JKzDdLI0rbLTNcyzT
	e0qL48YCG7Y2y3E/DsiZ8z6j9ertuvLAbbXZGZaE6597hK26h2WRoIPaPhQptfpWN0oIWXx0NRyHp
	K2dQpVQL7tlXGK393zHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZE82-0000qb-Ca; Mon, 25 Nov 2019 13:10:10 +0000
Received: from a27-10.smtp-out.us-west-2.amazonses.com ([54.240.27.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZE7x-0008Qe-4O
 for ath10k@lists.infradead.org; Mon, 25 Nov 2019 13:10:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574687400;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
 bh=2Owm28Qx56PjGaPFd81gPGhv/n64vef1LWZesWq1Udw=;
 b=ECczmBC+mmwX8H2MjzRZYTp6kN2KQtGbvbiuCEamxlGEVxI49v4dX4A1s2gRQ3q2
 tKCH/KBuXrv+JrJ2h6IJNiVhqSCrJSpOGot9eOEZE5o4pQB1SW6h5Ul8ZwqzPz8eham
 nUIotvITUsX5zLYaOU9lugUebEkj4+Ox1gZRJZy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574687400;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
 bh=2Owm28Qx56PjGaPFd81gPGhv/n64vef1LWZesWq1Udw=;
 b=dGx9RGhjt4PKwgL8tRiur+nWKp4zD32Afxn5hQVDMlcxDAFd3sjoASGPTwnBeO6r
 /kWrXkDY2Kq+hSbU0A1Id+HFDIgsdJT2sape19knDHqRsz1EXH+SEunSL51QTdISMjp
 ai5uhcjBqdG8xt+jOIovZCOVWmaHMD7w/MR1nD0U=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E8196C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: move non-fatal warn logs to dbg level
Date: Mon, 25 Nov 2019 13:10:00 +0000
Message-ID: <0101016ea2aee33d-d5d92d04-d737-42be-8e94-c964dec2fc8f-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.25-54.240.27.10
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_051005_208504_5285A36B 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

During driver load below warn logs are printed in the console if
firmware doesn't support some optional HTC services, ex:pktlog.
It is likely some older fw version may not support PKTLOG HTC
service as legacy fw uses HTC DATA service  for pktlog.
Move this log to debug level to remove un-necessary warn message
on console.

htc.c:803:  ath10k_warn(ar, "unsupported HTC service id: %d\n",
htc.c:881:  ath10k_warn(ar, "unsupported HTC service id: %d\n",

Signed-off-by: Govind Singh <govinds@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htc.c b/drivers/net/wireless/ath/ath10k/htc.c
index 28daed5981a1..367b762632d1 100644
--- a/drivers/net/wireless/ath/ath10k/htc.c
+++ b/drivers/net/wireless/ath/ath10k/htc.c
@@ -809,8 +809,8 @@ int ath10k_htc_connect_service(struct ath10k_htc *htc,
 						&ep->ul_pipe_id,
 						&ep->dl_pipe_id);
 	if (status) {
-		ath10k_warn(ar, "unsupported HTC service id: %d\n",
-			    ep->service_id);
+		ath10k_dbg(ar, ATH10K_DBG_BOOT, "unsupported HTC service id: %d\n",
+			   ep->service_id);
 		return status;
 	}
 
@@ -887,8 +887,8 @@ static bool ath10k_htc_pktlog_svc_supported(struct ath10k *ar)
 						&ul_pipe_id,
 						&dl_pipe_id);
 	if (status) {
-		ath10k_warn(ar, "unsupported HTC service id: %d\n",
-			    ATH10K_HTC_SVC_ID_HTT_LOG_MSG);
+		ath10k_dbg(ar, ATH10K_DBG_BOOT, "unsupported HTC pktlog service id: %d\n",
+			   ATH10K_HTC_SVC_ID_HTT_LOG_MSG);
 
 		return false;
 	}
-- 
2.22.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
