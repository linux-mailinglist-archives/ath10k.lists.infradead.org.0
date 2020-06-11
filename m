Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 103501F61B3
	for <lists+ath10k@lfdr.de>; Thu, 11 Jun 2020 08:21:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AyBInCPzsXAVSuh2YxFGmTBUJbADQTZV7NYTGzcCrPs=; b=FFL
	EDFi4+vvNBatfHQxThj3SkIpYFNx74qI+b04N2QnWIoiYfN7295BJvAv/btpNu4bO9n9rfm+O90YC
	nwgnavFeN4AUIpou2VXrdJ1NLVZTUkIb3xW0GqBBNExSijvz1IhqoDOFUuRi6J6bQUWzJizvvWLpO
	sGrLblskgTnt5yoq1EagQP3ltdpEiWSILOcs7kfzI0xaCSSkR+NIejG8lDaFox015sTDj7ZiIn/4b
	NYmuYO2G1Ejx1/r2eVzkOF4K8kAcvVwDvLyd7+vKLfOO/jaBzghgcuAYVgfdFpW/ssUzeZEAJQgt4
	awok5WhCjVW5h8aetUtcM9QCDKMqXDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjGaM-0001Hw-0i; Thu, 11 Jun 2020 06:21:10 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjGaG-0001HX-Fk
 for ath10k@lists.infradead.org; Thu, 11 Jun 2020 06:21:07 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591856463; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=arJl3QKKFQ/Hf8CbmhE3qTDRC4mgtRDbif79Ci3z+eM=;
 b=TYYqu0yujMFcZouL7nJn7xbxE/k8nxje02T0nCto/HGKSZ/LI91zBB5MxgksKnl3HSk7Naud
 fFdCYiQ7/ode0F2ledqviLneJa4FJZDQ5CUc/50wVCo65Br8cAbCVpzmKWhxQ41kcwOLub8g
 6W8HG7a4F1wUfFYYg1HqFuKvsOE=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n12.prod.us-west-2.postgun.com with SMTP id
 5ee1cd4e117610c7fff3098b (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 11 Jun 2020 06:21:02
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1A350C433C6; Thu, 11 Jun 2020 06:21:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from vnaralas-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: vnaralas)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 83848C433CA;
 Thu, 11 Jun 2020 06:21:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 83848C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=vnaralas@codeaurora.org
From: Venkateswara Naralasetty <vnaralas@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: fix retry packets update in station dump
Date: Thu, 11 Jun 2020 11:50:46 +0530
Message-Id: <1591856446-26977-1-git-send-email-vnaralas@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_232104_590492_8882D298 
X-CRM114-Status: GOOD (  10.72  )
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
Cc: Venkateswara Naralasetty <vnaralas@codeaurora.org>,
 linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

When tx status enabled, retry count is updated from tx completion status.
which is not working as expected due to firmware limitation where
firmware can not provide per MSDU rate statistics from tx completion
status. Due to this tx retry count is always 0 in station dump.

Fix this issue by updating the retry packet count from per peer
statistics. This patch will not break on SDIO devices since, this retry
count is already updating from peer statistics for SDIO devices.

HW used: QCA9984
FW version: 10.4-3.6-00104

Signed-off-by: Venkateswara Naralasetty <vnaralas@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htt_rx.c | 8 +++++---
 drivers/net/wireless/ath/ath10k/mac.c    | 5 +++--
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index d787cbe..cac05e7 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -3575,12 +3575,14 @@ ath10k_update_per_peer_tx_stats(struct ath10k *ar,
 	}
 
 	if (ar->htt.disable_tx_comp) {
-		arsta->tx_retries += peer_stats->retry_pkts;
 		arsta->tx_failed += peer_stats->failed_pkts;
-		ath10k_dbg(ar, ATH10K_DBG_HTT, "htt tx retries %d tx failed %d\n",
-			   arsta->tx_retries, arsta->tx_failed);
+		ath10k_dbg(ar, ATH10K_DBG_HTT, "tx failed %d\n",
+			   arsta->tx_failed);
 	}
 
+	arsta->tx_retries += peer_stats->retry_pkts;
+	ath10k_dbg(ar, ATH10K_DBG_HTT, "htt tx retries %d", arsta->tx_retries);
+
 	if (ath10k_debug_is_extd_tx_stats_enabled(ar))
 		ath10k_accumulate_per_peer_tx_stats(ar, arsta, peer_stats,
 						    rate_idx);
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 919d155..d9d4b15 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -8547,12 +8547,13 @@ static void ath10k_sta_statistics(struct ieee80211_hw *hw,
 	sinfo->filled |= BIT_ULL(NL80211_STA_INFO_TX_BITRATE);
 
 	if (ar->htt.disable_tx_comp) {
-		sinfo->tx_retries = arsta->tx_retries;
-		sinfo->filled |= BIT_ULL(NL80211_STA_INFO_TX_RETRIES);
 		sinfo->tx_failed = arsta->tx_failed;
 		sinfo->filled |= BIT_ULL(NL80211_STA_INFO_TX_FAILED);
 	}
 
+	sinfo->tx_retries = arsta->tx_retries;
+	sinfo->filled |= BIT_ULL(NL80211_STA_INFO_TX_RETRIES);
+
 	ath10k_mac_sta_get_peer_stats_info(ar, sta, sinfo);
 }
 
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
