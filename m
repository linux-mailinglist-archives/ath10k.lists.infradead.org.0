Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869A32BD37
	for <lists+ath10k@lfdr.de>; Tue, 28 May 2019 04:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=StTLdslCl4VSqVq7KQ/hnZqoYq1deMTsfDSN1dMEjFs=; b=GnK
	gwAcopVMy0+EW6mUZdP+AFf+5bHbZRn62cAC+JqvR9veCBxi+TnK9pE8r82ogjBSix6wLKTpGqvQG
	QkPnl26n1aRYLHXmV/CSBvmECpIFfkwQyrDysngI8Ei0ezQ1bhL262xcQOxBhmr7lA92OKomQm0Cr
	PT12ZJiII9NYpZdHuFvweSY0BGBIDkHI6Z5Ij8bLCBuw6nfi0/rs6yX3qu+E0Taf/fbNJpc/o/vlp
	SAexycc5uHSgrF44TJGvUIsG+5afRi7e4Y2SJg1Ejkgc8Z+RhMupoUGpEmFOlFHY8IcsDkiAz9Jil
	tr8bOPgeaEeKwy4Zt2ald0ejyXcfCbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVRpi-0002j0-Nx; Tue, 28 May 2019 02:27:22 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVRpf-0002ii-Em
 for ath10k@lists.infradead.org; Tue, 28 May 2019 02:27:20 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9D7B7602F2; Tue, 28 May 2019 02:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559010438;
 bh=y9wrH93AEtY/dSSBGwE2/AeQp/kcOUnUyK/HjZpO2TQ=;
 h=From:To:Cc:Subject:Date:From;
 b=L2PsX31e3C6cZzjQO/Hd82mhgxrkyYAKS0Hb4gcHCXV2Wg2O0qn/TF4CrWAhDAugy
 4bqmQnDiSEEgc3KIBCtu/ImuzXy32peYKPR5EwLqbr8iBpQ0qr3zho0J6XnXBsM4Z/
 0//ltIQvS3w3CBeKrsNr+j4qzFeB1marjLygTr+A=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from localhost.localdomain (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 48D88602F2;
 Tue, 28 May 2019 02:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559010438;
 bh=y9wrH93AEtY/dSSBGwE2/AeQp/kcOUnUyK/HjZpO2TQ=;
 h=From:To:Cc:Subject:Date:From;
 b=L2PsX31e3C6cZzjQO/Hd82mhgxrkyYAKS0Hb4gcHCXV2Wg2O0qn/TF4CrWAhDAugy
 4bqmQnDiSEEgc3KIBCtu/ImuzXy32peYKPR5EwLqbr8iBpQ0qr3zho0J6XnXBsM4Z/
 0//ltIQvS3w3CBeKrsNr+j4qzFeB1marjLygTr+A=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 48D88602F2
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: add report MIC error for sdio chip
Date: Tue, 28 May 2019 10:27:12 +0800
Message-Id: <1559010432-1005-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_192719_517343_D22F70F5 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Firmware will report flag with HTT_RX_IND_MPDU_STATUS_TKIP_MIC_ERR
if MIC error, the flag will be used in mac80211.

ieee80211_rx_h_michael_mic_verify will check the flag and start TKIP
countermeasures.

Now countermeasure tests pass both with WPA only and WPA2/WPA mixed
mode.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htt_rx.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index a20ea27..c0b0061 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -2101,7 +2101,9 @@ static bool ath10k_htt_rx_proc_rx_ind_hl(struct ath10k_htt *htt,
 			    num_mpdu_ranges);
 
 	if (mpdu_ranges->mpdu_range_status !=
-	    HTT_RX_IND_MPDU_STATUS_OK) {
+	    HTT_RX_IND_MPDU_STATUS_OK &&
+	    mpdu_ranges->mpdu_range_status !=
+	    HTT_RX_IND_MPDU_STATUS_TKIP_MIC_ERR) {
 		ath10k_warn(ar, "MPDU range status: %d\n",
 			    mpdu_ranges->mpdu_range_status);
 		goto err;
@@ -2162,6 +2164,9 @@ static bool ath10k_htt_rx_proc_rx_ind_hl(struct ath10k_htt *htt,
 				   RX_FLAG_MMIC_STRIPPED;
 	}
 
+	if (mpdu_ranges->mpdu_range_status == HTT_RX_IND_MPDU_STATUS_TKIP_MIC_ERR)
+		rx_status->flag |= RX_FLAG_MMIC_ERROR;
+
 	ieee80211_rx_ni(ar->hw, skb);
 
 	/* We have delivered the skb to the upper layers (mac80211) so we
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
