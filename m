Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD03AB0B8
	for <lists+ath10k@lfdr.de>; Fri,  6 Sep 2019 04:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IuaCgtE2UEs2oE/dK3qrKALr0rOx7+MAgDhYCbEYMiw=; b=uv6
	a8AcO9O8gIRR7p25fAykY+etrA/E80dUoOMeww4DSf/2K06dTucjwCfqeIdcC5+PWVlp26F/ctsiv
	bHCQKWW+EV6+foAGoY0B5Rk78Y/DMwpTSTFGkSpzz5PF3x1WvQQH6afrzVXSZb10+Ln8pq2SLmk+a
	LRJBFJ2HF9R/heykzwX2DKf5KeHnoBkYTiLBiKvxRAxlkR6ReYuLSYW5WVFdSE5mAPiGbB50E+2E+
	EepMG2Nx6D0jCwIpzXyQbt9nHXGsakfFqEpQ5U+e63FH1vnAdgrMG3jFzHoGyxAZs4bbLFYt3o8ls
	y2cYZ+XJGuuTQTDRAz8y0QX2A6xDErw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i64JM-0006RO-9S; Fri, 06 Sep 2019 02:49:20 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i64JJ-0006Qe-De
 for ath10k@lists.infradead.org; Fri, 06 Sep 2019 02:49:18 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 67D1160850; Fri,  6 Sep 2019 02:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567738156;
 bh=hlzVBwok/QzMQuoaegaXi8Wvuq3sxGWAqeY0kUwtYLs=;
 h=From:To:Cc:Subject:Date:From;
 b=UfVahC0LEp/k2Ys2rE6RqohL74LFRuTKV3Db0vdZwZY8uRtN+YcyMaKYcnm78PisS
 cN/ZQ0N3LYkEjH0sgXTEF/uQg2W6TixPju6o9nHnxbyxds5LNAa9pbTdq6uGWgvzr3
 vZlWACqUgmF17XgzADJslR6ynEsRtKusXAj5gfNk=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0019D60213;
 Fri,  6 Sep 2019 02:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567738156;
 bh=hlzVBwok/QzMQuoaegaXi8Wvuq3sxGWAqeY0kUwtYLs=;
 h=From:To:Cc:Subject:Date:From;
 b=UfVahC0LEp/k2Ys2rE6RqohL74LFRuTKV3Db0vdZwZY8uRtN+YcyMaKYcnm78PisS
 cN/ZQ0N3LYkEjH0sgXTEF/uQg2W6TixPju6o9nHnxbyxds5LNAa9pbTdq6uGWgvzr3
 vZlWACqUgmF17XgzADJslR6ynEsRtKusXAj5gfNk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0019D60213
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org,
	johannes@sipsolutions.net
Subject: [PATCH v3] mac80211: Store max_mtu in ieee80211_hw
Date: Fri,  6 Sep 2019 10:48:57 +0800
Message-Id: <1567738137-31748-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_194917_506776_D74BE3B6 
X-CRM114-Status: GOOD (  11.09  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Make it possibly for drivers to adjust the default max_mtu
by storing it in the hardware struct.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
v2: change to set max_mtu to IEEE80211_MAX_DATA_LEN in alloc_hw
v3: change commit log(mat_mtu->max_mtu)
 include/net/mac80211.h | 3 +++
 net/mac80211/iface.c   | 2 +-
 net/mac80211/main.c    | 1 +
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/net/mac80211.h b/include/net/mac80211.h
index d26da01..8545b03 100644
--- a/include/net/mac80211.h
+++ b/include/net/mac80211.h
@@ -2454,6 +2454,8 @@ enum ieee80211_hw_flags {
  *
  * @weight_multiplier: Driver specific airtime weight multiplier used while
  *	refilling deficit of each TXQ.
+ *
+ * @max_mtu: the max mtu could be set.
  */
 struct ieee80211_hw {
 	struct ieee80211_conf conf;
@@ -2491,6 +2493,7 @@ struct ieee80211_hw {
 	u8 max_nan_de_entries;
 	u8 tx_sk_pacing_shift;
 	u8 weight_multiplier;
+	u32 max_mtu;
 };
 
 static inline bool _ieee80211_hw_check(struct ieee80211_hw *hw,
diff --git a/net/mac80211/iface.c b/net/mac80211/iface.c
index 06aac0a..32d87f0 100644
--- a/net/mac80211/iface.c
+++ b/net/mac80211/iface.c
@@ -1877,7 +1877,7 @@ int ieee80211_if_add(struct ieee80211_local *local, const char *name,
 
 		/* MTU range: 256 - 2304 */
 		ndev->min_mtu = 256;
-		ndev->max_mtu = IEEE80211_MAX_DATA_LEN;
+		ndev->max_mtu = local->hw.max_mtu;
 
 		ret = register_netdevice(ndev);
 		if (ret) {
diff --git a/net/mac80211/main.c b/net/mac80211/main.c
index 85e4162..89a6a09 100644
--- a/net/mac80211/main.c
+++ b/net/mac80211/main.c
@@ -638,6 +638,7 @@ struct ieee80211_hw *ieee80211_alloc_hw_nm(size_t priv_data_len,
 					 IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH;
 	local->hw.uapsd_queues = IEEE80211_DEFAULT_UAPSD_QUEUES;
 	local->hw.uapsd_max_sp_len = IEEE80211_DEFAULT_MAX_SP_LEN;
+	local->hw.max_mtu = IEEE80211_MAX_DATA_LEN;
 	local->user_power_level = IEEE80211_UNSET_POWER_LEVEL;
 	wiphy->ht_capa_mod_mask = &mac80211_ht_capa_mod_mask;
 	wiphy->vht_capa_mod_mask = &mac80211_vht_capa_mod_mask;
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
