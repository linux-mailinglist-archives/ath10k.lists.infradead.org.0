Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64837121C63
	for <lists+ath10k@lfdr.de>; Mon, 16 Dec 2019 23:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GslkTq+8vnLdOso8FSnKlrin3HrXO+2VyBt+b6ME6TQ=; b=VwlMQrtThSDk7/
	v+9GbEBr3kjPxnS93E1yuUKorKC2R8iXnfJ83BqxNG3Td7a8XWS1JRH7YOENtsng+LKA9TI4yTVOr
	0eVRMmIpBea7Fne7Zf4b47NYAi2LP1FFSG47eVeUTcnP+gIiqdPNjKrN9atV5wDozO+aXWrsYmbc/
	JjHdB9Drd0ZaEdxFJe/pkQ9z3Mmfu1RUpistVLiX9niWOd58YYhTnRjyqAOEFIWiAKlzvlm2kDzsV
	YWd8d9mN4mPorsCYnhYyVKpVQaotqtwe7Dj9AP1+8QA1Z+MkUoyTQVwoycOHC+7FwwrcopjUvlYZo
	TfDv5AZllTAEaKh54ysQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igyWz-00023b-0D; Mon, 16 Dec 2019 22:07:57 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igyWu-000230-Az
 for ath10k@lists.infradead.org; Mon, 16 Dec 2019 22:07:53 +0000
Received: from ben-dt4.candelatech.com
 (50-251-239-81-static.hfc.comcastbusiness.net [50.251.239.81])
 by mail3.candelatech.com (Postfix) with ESMTP id 06E7413C283;
 Mon, 16 Dec 2019 14:07:51 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 06E7413C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1576534071;
 bh=ZFqVxAGI8xAMa8bj4+K392PI1t7n079eUKCXai8+ysc=;
 h=From:To:Cc:Subject:Date:From;
 b=patw04LjHgnLgoa+ulw8MeQ/GwC4RbMxd1Ca0TzYwfcbS5t1DktcSu2Ggu5w1Z530
 g6xC+F32PURMgfNDtOrxeaFY2sfZRJyjrbiEJhYKa069KqYhYhI5OrXbZzE8xrpbty
 Tw+EQ+acuLwmTYbX7iK4h5vNvde02VFEk8XXkL34=
From: greearb@candelatech.com
To: linux-wireless@vger.kernel.org,
	ath10k@lists.infradead.org
Subject: [PATCH] ath10k:  Per-chain rssi should sum the secondary channels
Date: Mon, 16 Dec 2019 14:07:47 -0800
Message-Id: <20191216220747.887-1-greearb@candelatech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_140752_453762_ECF820C8 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ben Greear <greearb@candelatech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Ben Greear <greearb@candelatech.com>

This makes per-chain RSSI be more consistent between HT20, HT40, HT80.
Instead of doing precise log math for adding dbm, I did a rough estimate,
it seems to work good enough.

Tested on ath10k-ct 9984 firmware.

Signed-off-by: Ben Greear <greearb@candelatech.com>
---
 drivers/net/wireless/ath/ath10k/htt_rx.c  | 64 ++++++++++++++++++++---
 drivers/net/wireless/ath/ath10k/rx_desc.h |  3 +-
 2 files changed, 60 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index 13f652b622df..034d4ace228d 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -1167,6 +1167,44 @@ static bool ath10k_htt_rx_h_channel(struct ath10k *ar,
 	return true;
 }
 
+static int ath10k_sum_sigs_2(int a, int b) {
+	int diff;
+
+	if (b == 0x80)
+		return a;
+
+	if (a >= b) {
+		diff = a - b;
+		if (diff == 0)
+			return a + 3;
+		else if (diff == 1)
+			return a + 2;
+		else if (diff == 2)
+			return a + 1;
+		return a;
+	}
+	else {
+		diff = b - a;
+		if (diff == 0)
+			return b + 3;
+		else if (diff == 1)
+			return b + 2;
+		else if (diff == 2)
+			return b + 1;
+		return b;
+	}
+}
+
+static int ath10k_sum_sigs(int p20, int e20, int e40, int e80) {
+	/* Hacky attempt at summing dbm without resorting to log(10) business */
+	if (e40 != 0x80) {
+		return ath10k_sum_sigs_2(ath10k_sum_sigs_2(p20, e20), ath10k_sum_sigs_2(e40, e80));
+	}
+	else {
+		return ath10k_sum_sigs_2(p20, e20);
+	}
+}
+
 static void ath10k_htt_rx_h_signal(struct ath10k *ar,
 				   struct ieee80211_rx_status *status,
 				   struct htt_rx_desc *rxd)
@@ -1177,18 +1215,32 @@ static void ath10k_htt_rx_h_signal(struct ath10k *ar,
 		status->chains &= ~BIT(i);
 
 		if (rxd->ppdu_start.rssi_chains[i].pri20_mhz != 0x80) {
-			status->chain_signal[i] = ATH10K_DEFAULT_NOISE_FLOOR +
-				rxd->ppdu_start.rssi_chains[i].pri20_mhz;
+			status->chain_signal[i] = ATH10K_DEFAULT_NOISE_FLOOR
+				+ ath10k_sum_sigs(rxd->ppdu_start.rssi_chains[i].pri20_mhz,
+						  rxd->ppdu_start.rssi_chains[i].ext20_mhz,
+						  rxd->ppdu_start.rssi_chains[i].ext40_mhz,
+						  rxd->ppdu_start.rssi_chains[i].ext80_mhz);
+			//ath10k_warn(ar, "rx-h-sig, chain[%i] pri20: %d ext20: %d  ext40: %d  ext80: %d\n",
+			//	    i, rxd->ppdu_start.rssi_chains[i].pri20_mhz, rxd->ppdu_start.rssi_chains[i].ext20_mhz,
+			//	    rxd->ppdu_start.rssi_chains[i].ext40_mhz, rxd->ppdu_start.rssi_chains[i].ext80_mhz);
 
 			status->chains |= BIT(i);
 		}
 	}
 
 	/* FIXME: Get real NF */
-	status->signal = ATH10K_DEFAULT_NOISE_FLOOR +
-			 rxd->ppdu_start.rssi_comb;
-	/* ath10k_warn(ar, "rx-h-sig, signal: %d  chains: 0x%x  chain[0]: %d  chain[1]: %d  chan[2]: %d\n",
-                       status->signal, status->chains, status->chain_signal[0], status->chain_signal[1], status->chain_signal[2]); */
+	if (rxd->ppdu_start.rssi_comb_ht != 0x80) {
+		status->signal = ATH10K_DEFAULT_NOISE_FLOOR +
+			rxd->ppdu_start.rssi_comb_ht;
+	}
+	else {
+		status->signal = ATH10K_DEFAULT_NOISE_FLOOR +
+			rxd->ppdu_start.rssi_comb;
+	}
+
+	//ath10k_warn(ar, "rx-h-sig, signal: %d  chains: 0x%x  chain[0]: %d  chain[1]: %d  chain[2]: %d chain[3]: %d\n",
+	//	    status->signal, status->chains, status->chain_signal[0],
+	//	    status->chain_signal[1], status->chain_signal[2], status->chain_signal[3]);
 	status->flag &= ~RX_FLAG_NO_SIGNAL_VAL;
 }
 
diff --git a/drivers/net/wireless/ath/ath10k/rx_desc.h b/drivers/net/wireless/ath/ath10k/rx_desc.h
index dec1582005b9..6b44677474dd 100644
--- a/drivers/net/wireless/ath/ath10k/rx_desc.h
+++ b/drivers/net/wireless/ath/ath10k/rx_desc.h
@@ -726,7 +726,8 @@ struct rx_ppdu_start {
 		u8 ext80_mhz;
 	} rssi_chains[4];
 	u8 rssi_comb;
-	__le16 rsvd0;
+	u8 rsvd0; /* first two bits are bandwidth, other 6 are reserved */
+	u8 rssi_comb_ht;
 	u8 info0; /* %RX_PPDU_START_INFO0_ */
 	__le32 info1; /* %RX_PPDU_START_INFO1_ */
 	__le32 info2; /* %RX_PPDU_START_INFO2_ */
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
