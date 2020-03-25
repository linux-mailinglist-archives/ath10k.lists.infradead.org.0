Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB12192F80
	for <lists+ath10k@lfdr.de>; Wed, 25 Mar 2020 18:41:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hZdzH6tLDwwlMbMzNA1exnGXjYNYZBHx+d/8td2bbk0=; b=XYz
	rwMTur+UfoPv2y9biGk+o8INwknDZPKDUmYdKYP10NRZ4zoe3c9BqF8sBWH9fjVq1wyCQwKnaDjHZ
	kOldOwk8ChMm2i7IiM2YzHaMa1DpAcESUSi0VhPuk/VtCwY+sPU/CevO+i4syDpUsIHzM/N87oZno
	n1BSo21ONAvszoix+0z5ak4jJ/J2P4BjCkS/W/qY84cFloRWOHKJ04eC+U8sRCVbLNUY86glrYlmt
	0515M6DQQguVPfrHiVFp0DCBrSlfjOlHLdTowvaUXv9mqn59pq+3hT226NU4IFOD+KXOInKVu/wuJ
	8QgqkOOqju+ZpOQ5zOezsyuBoW6oQyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHA27-0006P3-0i; Wed, 25 Mar 2020 17:41:39 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHA1z-0006O2-BG
 for ath10k@lists.infradead.org; Wed, 25 Mar 2020 17:41:35 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585158093; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=B5v3ApaH50C98pJ8Iz4gInkmSJGkTji9mznBIIXvY6c=;
 b=QLfMnHRHd1YE3Q11wgfMf1fMjqODlG1OMMGljKgUanjd0eEO9KFNyHkVhFk3ttwPvsWSm5Hp
 wTcQEoR1POKTxTeUceiiWtgs7v0dQlqQRFjpR9OCQYEyvwAqOSsQzJO5/UZOuCoC01+4kLIy
 YrihCeRYVHiSHy5Wookcfbd7DaM=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7b97c0.7fd137c0b490-smtp-out-n04;
 Wed, 25 Mar 2020 17:41:20 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 99B86C43637; Wed, 25 Mar 2020 17:41:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from c-gseset-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: ssreeela)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 49923C433F2;
 Wed, 25 Mar 2020 17:41:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 49923C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=ssreeela@codeaurora.org
From: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: enable radar detection in secondary segment
Date: Wed, 25 Mar 2020 23:10:41 +0530
Message-Id: <1585158041-11740-1-git-send-email-ssreeela@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_104133_776665_AEEB57E9 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lei Wang <leiwa@codeaurora.org>,
 Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>,
 linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Lei Wang <leiwa@codeaurora.org>

Enable radar detection in secondary segment for VHT160 and VHT80+80 mode
on DFS channels. Otherwise, when injecting radar pulse in the secondary
segment, the DUT can't detect radar pulse.

Tested: qca9984 with firmware ver 10.4-3.10-00047

Signed-off-by: Lei Wang <leiwa@codeaurora.org>
Signed-off-by: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/wmi-tlv.c |  6 ++---
 drivers/net/wireless/ath/ath10k/wmi.c     | 39 ++++++++++++++++++++++---------
 drivers/net/wireless/ath/ath10k/wmi.h     |  5 ++--
 3 files changed, 34 insertions(+), 16 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.c b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
index 4e68deb..e1ab900f 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.c
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
@@ -2123,7 +2123,7 @@ static int ath10k_wmi_tlv_op_get_vdev_subtype(struct ath10k *ar,
 	tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_CHANNEL);
 	tlv->len = __cpu_to_le16(sizeof(*ch));
 	ch = (void *)tlv->value;
-	ath10k_wmi_put_wmi_channel(ch, &arg->channel);
+	ath10k_wmi_put_wmi_channel(ar, ch, &arg->channel);
 
 	ptr += sizeof(*tlv);
 	ptr += sizeof(*ch);
@@ -2763,7 +2763,7 @@ static void *ath10k_wmi_tlv_put_wmm(void *ptr,
 		tlv->len = __cpu_to_le16(sizeof(*ci));
 		ci = (void *)tlv->value;
 
-		ath10k_wmi_put_wmi_channel(ci, ch);
+		ath10k_wmi_put_wmi_channel(ar, ci, ch);
 
 		chans += sizeof(*tlv);
 		chans += sizeof(*ci);
@@ -3450,7 +3450,7 @@ static u32 ath10k_wmi_tlv_prepare_peer_qos(u8 uapsd_queues, u8 sp)
 		tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_CHANNEL);
 		tlv->len = __cpu_to_le16(sizeof(*chan));
 		chan = (void *)tlv->value;
-		ath10k_wmi_put_wmi_channel(chan, &chan_arg[i]);
+		ath10k_wmi_put_wmi_channel(ar, chan, &chan_arg[i]);
 
 		ptr += sizeof(*tlv);
 		ptr += sizeof(*chan);
diff --git a/drivers/net/wireless/ath/ath10k/wmi.c b/drivers/net/wireless/ath/ath10k/wmi.c
index db6f4c7..4a3a698 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.c
+++ b/drivers/net/wireless/ath/ath10k/wmi.c
@@ -1694,10 +1694,11 @@
 	.bw160 = WMI_10_2_PEER_160MHZ,
 };
 
-void ath10k_wmi_put_wmi_channel(struct wmi_channel *ch,
+void ath10k_wmi_put_wmi_channel(struct ath10k *ar, struct wmi_channel *ch,
 				const struct wmi_channel_arg *arg)
 {
 	u32 flags = 0;
+	struct ieee80211_channel *chan = NULL;
 
 	memset(ch, 0, sizeof(*ch));
 
@@ -1717,20 +1718,36 @@ void ath10k_wmi_put_wmi_channel(struct wmi_channel *ch,
 	ch->band_center_freq2 = 0;
 	ch->mhz = __cpu_to_le32(arg->freq);
 	ch->band_center_freq1 = __cpu_to_le32(arg->band_center_freq1);
-	if (arg->mode == MODE_11AC_VHT80_80)
+	if (arg->mode == MODE_11AC_VHT80_80) {
 		ch->band_center_freq2 = __cpu_to_le32(arg->band_center_freq2);
+		chan = ieee80211_get_channel(ar->hw->wiphy,
+					     arg->band_center_freq2 - 10);
+	}
 
 	if (arg->mode == MODE_11AC_VHT160) {
-		if (arg->freq > arg->band_center_freq1)
-			ch->band_center_freq1 =
-				__cpu_to_le32(arg->band_center_freq1 + 40);
-		else
-			ch->band_center_freq1 =
-				__cpu_to_le32(arg->band_center_freq1 - 40);
+		u32 band_center_freq1;
+		u32 band_center_freq2;
+
+		if (arg->freq > arg->band_center_freq1) {
+			band_center_freq1 = arg->band_center_freq1 + 40;
+			band_center_freq2 = arg->band_center_freq1 - 40;
+		} else {
+			band_center_freq1 = arg->band_center_freq1 - 40;
+			band_center_freq2 = arg->band_center_freq1 + 40;
+		}
 
+		ch->band_center_freq1 =
+					__cpu_to_le32(band_center_freq1);
+		/* Minus 10 to get a defined 5G channel frequency*/
+		chan = ieee80211_get_channel(ar->hw->wiphy,
+					     band_center_freq2 - 10);
+		/* The center frequency of the entire VHT160 */
 		ch->band_center_freq2 = __cpu_to_le32(arg->band_center_freq1);
 	}
 
+	if (chan && chan->flags & IEEE80211_CHAN_RADAR)
+		flags |= WMI_CHAN_FLAG_DFS_CFREQ2;
+
 	ch->min_power = arg->min_power;
 	ch->max_power = arg->max_power;
 	ch->reg_power = arg->max_reg_power;
@@ -7176,7 +7193,7 @@ void ath10k_wmi_start_scan_init(struct ath10k *ar,
 		memcpy(cmd->ssid.ssid, arg->ssid, arg->ssid_len);
 	}
 
-	ath10k_wmi_put_wmi_channel(&cmd->chan, &arg->channel);
+	ath10k_wmi_put_wmi_channel(ar, &cmd->chan, &arg->channel);
 
 	ath10k_dbg(ar, ATH10K_DBG_WMI,
 		   "wmi vdev %s id 0x%x flags: 0x%0X, freq %d, mode %d, ch_flags: 0x%0X, max_power: %d\n",
@@ -7548,7 +7565,7 @@ void ath10k_wmi_start_scan_init(struct ath10k *ar,
 		ch = &arg->channels[i];
 		ci = &cmd->chan_info[i];
 
-		ath10k_wmi_put_wmi_channel(ci, ch);
+		ath10k_wmi_put_wmi_channel(ar, ci, ch);
 	}
 
 	return skb;
@@ -8952,7 +8969,7 @@ static u32 ath10k_wmi_prepare_peer_qos(u8 uapsd_queues, u8 sp)
 
 	for (i = 0; i < cap->peer_chan_len; i++) {
 		chan = (struct wmi_channel *)&peer_cap->peer_chan_list[i];
-		ath10k_wmi_put_wmi_channel(chan, &chan_arg[i]);
+		ath10k_wmi_put_wmi_channel(ar, chan, &chan_arg[i]);
 	}
 
 	ath10k_dbg(ar, ATH10K_DBG_WMI,
diff --git a/drivers/net/wireless/ath/ath10k/wmi.h b/drivers/net/wireless/ath/ath10k/wmi.h
index 5ba0c9a..2090707 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.h
+++ b/drivers/net/wireless/ath/ath10k/wmi.h
@@ -2094,7 +2094,8 @@ enum wmi_channel_change_cause {
 
 /* Indicate reason for channel switch */
 #define WMI_CHANNEL_CHANGE_CAUSE_CSA (1 << 13)
-
+/* DFS required on channel for 2nd segment of VHT160 and VHT80+80*/
+#define WMI_CHAN_FLAG_DFS_CFREQ2  (1 << 15)
 #define WMI_MAX_SPATIAL_STREAM        3 /* default max ss */
 
 /* HT Capabilities*/
@@ -7351,7 +7352,7 @@ void ath10k_wmi_put_start_scan_common(struct wmi_start_scan_common *cmn,
 				      const struct wmi_start_scan_arg *arg);
 void ath10k_wmi_set_wmm_param(struct wmi_wmm_params *params,
 			      const struct wmi_wmm_params_arg *arg);
-void ath10k_wmi_put_wmi_channel(struct wmi_channel *ch,
+void ath10k_wmi_put_wmi_channel(struct ath10k *ar, struct wmi_channel *ch,
 				const struct wmi_channel_arg *arg);
 int ath10k_wmi_start_scan_verify(const struct wmi_start_scan_arg *arg);
 
-- 
1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
