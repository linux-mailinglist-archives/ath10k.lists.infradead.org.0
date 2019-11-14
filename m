Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7538BFC537
	for <lists+ath10k@lfdr.de>; Thu, 14 Nov 2019 12:20:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l2BqA7Ym90EdAhWilpq3Sv5d/1g8ItOiBTeLKoiSEtA=; b=Y0pS25ENVy18Yt
	0KJAdxOpQkXjI/Vm8I/CPfy0nx+qyu/Ma0GRgI6uYjOb4psxpIT5fuziz5+VC9iQbgWdvMGhTqB9U
	PBZLSLATbnAIKF6Tw69BWq53kMDFml6o6cGYANUvxe/dT88PrC63YIZhvElaFx2dBhU9e2uR6W84k
	qeGtri+w6BYF0h5L9t2zBjs2wiFuid5Gv9/VczltDK/kEJWjonRQPcjmYkOvgupgcMIrAdUtKNsKB
	2iDtSGdhPTxBo6E1f3miy15h9DhDTNHQCFFt9BBbITkXkmhiLioARxrvLFnVPa63l7znB3dSFpk5/
	pyXz/3f4I4MWDhfu+Ltw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVDAM-00031g-KP; Thu, 14 Nov 2019 11:19:58 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVDAI-000313-I4
 for ath10k@lists.infradead.org; Thu, 14 Nov 2019 11:19:56 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id EDC3C60128; Thu, 14 Nov 2019 11:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573730390;
 bh=xmIppeEheL2alWVMG9pBL8KjNpw3Ay3LNGssvQnvSQY=;
 h=From:To:Cc:Subject:Date:From;
 b=e87DJa1TAeakH00rg90j99Ntm5T+GaaVzg+pnOjzuhthO4uvossJCovd8LeWcaYhI
 2V6kmTMV0leMHE+LX1iHhYJGCEEe3UbzlYItDW3dgbzKL//DidLYkOJctG5ndbNtaA
 rSdK1umaaLddsC0fTaEElcIGHr5jI/LA/PIgbwHQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4B47A6039D;
 Thu, 14 Nov 2019 11:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573730388;
 bh=xmIppeEheL2alWVMG9pBL8KjNpw3Ay3LNGssvQnvSQY=;
 h=From:To:Cc:Subject:Date:From;
 b=Agl0z2I9Gf6fjIPiSPn5q40OESRbW7Wf7VRq41nW20qB7xgu7Sy1V1yHbzOHAY/Lm
 Kawx9HetTm5eamvmKI8xl4Y4rQbufaJWV+BO8SGlEdkH6DP6V133VWcqo7oMNyevep
 5jiPlR5i+e6IbAEJiff7J0TC4Gk7pOPp1OOUrleI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4B47A6039D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: report rssi of each chain to mac80211 for sdio
Date: Thu, 14 Nov 2019 19:19:31 +0800
Message-Id: <20191114111931.27800-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_031954_649301_2A29C634 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

iw command only show rssi without each chain's rssi on sdio
iw wlan0 station dump
Station a0:40:a0:93:3e:de (on wlan0)
signal:         -82 dBm
signal avg:     -82 dBm

after this patch, it will show each chain's rssi on sdio
Station a0:40:a0:93:3e:de (on wlan0)
signal:         -82 [-84, -88] dBm
signal avg:     -82 [-84, -87] dBm

For QCA6174 PCIe, the ppdu have the correct rssi of each chain, it
indicate rssi of rx data by ath10k_htt_rx_h_signal. For sdio chip, the
rssi of each chain stored in rx management reported by firmware, the
ath10k_wmi_tlv_op_pull_mgmt_rx_ev which used for tlv wmi will get the
rssi of each chain and stored them in wmi_mgmt_rx_ev_arg, then indicate
them to mac80211. For non-tlv wmi chip, it will not get the rssi of each
chain and not indicate to mac80211, for non-tlv wmi chip, this patch will
not have impact. For tlv wmi chip, if the rssi of chain in mgmt is valid,
it will be indicate to mac80211, tested with QCA6174 PCIe/SDIO, the rssi
of 2 chain in mgmt is valid.

rssi of chains in mgmt of QCA6174 SDIO:
92096.652780: ath10k:ath10k_log_warn: ath10k_sdio mmc1:0001:1 rssi[0]:70
92096.657324: ath10k:ath10k_log_warn: ath10k_sdio mmc1:0001:1 rssi[1]:68
92096.662009: ath10k:ath10k_log_warn: ath10k_sdio mmc1:0001:1 rssi[2]:128
92096.666647: ath10k:ath10k_log_warn: ath10k_sdio mmc1:0001:1 rssi[3]:128

rssi of chains in mgmt of QCA6174 PCIe:
[ 1581.049816] ath10k_pci 0000:02:00.0: mgmt rssi[0]:17
[ 1581.049818] ath10k_pci 0000:02:00.0: mgmt rssi[1]:22
[ 1581.049821] ath10k_pci 0000:02:00.0: mgmt rssi[2]:128
[ 1581.049823] ath10k_pci 0000:02:00.0: mgmt rssi[3]:128

after apply this patch, the iw's rssi of PCIe do not changed, result is
same with before.

iw wlan0 station dump of QCA6174 PCIe:
Station 6c:e8:73:b8:92:dc (on wlan0)
        signal:         -70 [-77, -72] dBm
        signal avg:     -69 [-78, -72] dBm

iw wlan-5000mhz station dump of QCA9984 PCIe
connected with 2 client which has 2 chain:
Station 70:48:0f:1f:1a:b2 (on wlan-5000mhz)
        signal:         -47 [-55, -48, -87, -88] dBm
        signal avg:     -42 [-50, -43, -83, -86] dBm
Station ac:c1:ee:39:e3:83 (on wlan-5000mhz)
        signal:         -43 [-46, -45, -79, -84] dBm
        signal avg:     -43 [-46, -46, -82, -83] dBm

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00017-QCARMSWP-1.
Tested with QCA6174 PCIe with firmware WLAN.RM.4.4.1-00110-QCARMSWP-1.
Tested with QCA9984 PCIe with firmware 10.4-3.9.0.2-00040.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htt_rx.c  |  1 -
 drivers/net/wireless/ath/ath10k/wmi-tlv.c |  5 ++++-
 drivers/net/wireless/ath/ath10k/wmi.c     | 18 ++++++++++++++++--
 drivers/net/wireless/ath/ath10k/wmi.h     |  2 ++
 4 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index d95b63f133ab..941c8e6a4f45 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -2236,7 +2236,6 @@ static bool ath10k_htt_rx_proc_rx_ind_hl(struct ath10k_htt *htt,
 	hdr = (struct ieee80211_hdr *)skb->data;
 	qos = ieee80211_is_data_qos(hdr->frame_control);
 	rx_status = IEEE80211_SKB_RXCB(skb);
-	rx_status->chains |= BIT(0);
 	if (rx->ppdu.combined_rssi == 0) {
 		/* SDIO firmware does not provide signal */
 		rx_status->signal = 0;
diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.c b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
index 69a1ec53df29..213d02e7981f 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.c
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
@@ -841,7 +841,7 @@ static int ath10k_wmi_tlv_op_pull_mgmt_rx_ev(struct ath10k *ar,
 	const struct wmi_tlv_mgmt_rx_ev *ev;
 	const u8 *frame;
 	u32 msdu_len;
-	int ret;
+	int ret, i;
 
 	tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 	if (IS_ERR(tb)) {
@@ -865,6 +865,9 @@ static int ath10k_wmi_tlv_op_pull_mgmt_rx_ev(struct ath10k *ar,
 	arg->phy_mode = ev->phy_mode;
 	arg->rate = ev->rate;
 
+	for (i = 0; i < ARRAY_SIZE(ev->rssi); i++)
+		arg->rssi[i] = ev->rssi[i];
+
 	msdu_len = __le32_to_cpu(arg->buf_len);
 
 	if (skb->len < (frame - skb->data) + msdu_len) {
diff --git a/drivers/net/wireless/ath/ath10k/wmi.c b/drivers/net/wireless/ath/ath10k/wmi.c
index 9f564e2b7a14..13f7531d945d 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.c
+++ b/drivers/net/wireless/ath/ath10k/wmi.c
@@ -2463,10 +2463,10 @@ int ath10k_wmi_event_mgmt_rx(struct ath10k *ar, struct sk_buff *skb)
 	u32 rx_status;
 	u32 channel;
 	u32 phy_mode;
-	u32 snr;
+	u32 snr, rssi;
 	u32 rate;
 	u16 fc;
-	int ret;
+	int ret, i;
 
 	ret = ath10k_wmi_pull_mgmt_rx(ar, skb, &arg);
 	if (ret) {
@@ -2525,6 +2525,20 @@ int ath10k_wmi_event_mgmt_rx(struct ath10k *ar, struct sk_buff *skb)
 
 	status->freq = ieee80211_channel_to_frequency(channel, status->band);
 	status->signal = snr + ATH10K_DEFAULT_NOISE_FLOOR;
+
+	BUILD_BUG_ON(ARRAY_SIZE(status->chain_signal) != ARRAY_SIZE(arg.rssi));
+
+	for (i = 0; i < ARRAY_SIZE(status->chain_signal); i++) {
+		status->chains &= ~BIT(i);
+		rssi = __le32_to_cpu(arg.rssi[i]);
+		ath10k_dbg(ar, ATH10K_DBG_MGMT, "mgmt rssi[%d]:%d\n", i, arg.rssi[i]);
+
+		if (rssi != ATH10K_INVALID_RSSI && rssi != 0) {
+			status->chain_signal[i] = ATH10K_DEFAULT_NOISE_FLOOR + rssi;
+			status->chains |= BIT(i);
+		}
+	}
+
 	status->rate_idx = ath10k_mac_bitrate_to_idx(sband, rate / 100);
 
 	hdr = (struct ieee80211_hdr *)skb->data;
diff --git a/drivers/net/wireless/ath/ath10k/wmi.h b/drivers/net/wireless/ath/ath10k/wmi.h
index 74adce1dd3a9..972d53d77654 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.h
+++ b/drivers/net/wireless/ath/ath10k/wmi.h
@@ -6786,6 +6786,7 @@ struct wmi_peer_delete_resp_ev_arg {
 	struct wmi_mac_addr peer_addr;
 };
 
+#define WMI_MGMT_RX_NUM_RSSI 4
 struct wmi_mgmt_rx_ev_arg {
 	__le32 channel;
 	__le32 snr;
@@ -6794,6 +6795,7 @@ struct wmi_mgmt_rx_ev_arg {
 	__le32 buf_len;
 	__le32 status; /* %WMI_RX_STATUS_ */
 	struct wmi_mgmt_rx_ext_info ext_info;
+	__le32 rssi[WMI_MGMT_RX_NUM_RSSI];
 };
 
 struct wmi_ch_info_ev_arg {
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
