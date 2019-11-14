Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C959FBEE5
	for <lists+ath10k@lfdr.de>; Thu, 14 Nov 2019 06:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3LoTEh+GaoTJwmad2jczRRxjtLGVo7aASt7HHcRJwXs=; b=IYux5zonNXQ1pR
	3+F4Cf2YsoRSX3cRLSUpKzSWsukM8EMpJfO8357Q9SkKO2GGba/6OGDoKmJzqLNQMdR3uDF5mJ7kK
	PLS0rbHuKCtEvCooHFtbnZH3Sf2FTXy8yGlIKra9a3qpG/jVvK4MJMeywEC+vvf7ohyxnkQjd2YSE
	R3BHXhxx6TqFgp0Kr0VXz3AbKfj4x3gZnXTkWpgWsF4gAB2TPtnRw/RhbU+4mtFyuCpEKvi4T5o4N
	/HdqCGjjqKrF0cbNc3nrpl7TZMO5OBibkaEXOG+deVpake6eXtd3dRDQwtr0WdT2au+mkKICp1PKw
	2Kl3b0Hmzk3D2SWKbDbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV7FB-0002RG-3u; Thu, 14 Nov 2019 05:00:33 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV7F8-0002Ql-2L
 for ath10k@lists.infradead.org; Thu, 14 Nov 2019 05:00:31 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7FE8160540; Thu, 14 Nov 2019 05:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573707628;
 bh=ctXjkgCpsp43C0Lz3c3lWtvVfW2eTKhURTiQ60BIdjc=;
 h=From:To:Cc:Subject:Date:From;
 b=aIQrjSuU4bVwapLwEdQr8uxO0Du/+35HSzpzYk4F7pj0pL8pqK8IX1gJJVDpkLzNq
 +UdHN2CYX6zSWm+80R67JfjWTur2kruVw/w3HlG4D4KMgjOJ6T89k6ZGmIoLNht4FB
 DSZd0kiwmMVTX+P9eCunwRd4O12t1BvynjCBzXVc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D209660540;
 Thu, 14 Nov 2019 05:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573707626;
 bh=ctXjkgCpsp43C0Lz3c3lWtvVfW2eTKhURTiQ60BIdjc=;
 h=From:To:Cc:Subject:Date:From;
 b=YS4HCOOxCQtbPBVahbqz9m+tv8Rxcq32dh5YLFejJn5gbm3TJYAF5IM/COBgmnkKD
 tzNd6Z7Aq4RNeLz5EIzLayCQ1ns3zdefL0R6vckUAKfvwNjGLGWQPQJBddUSWsFbQR
 LG708xnK1O5jOjQijC9h9cylNrZOR7uz7WDbIgbo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D209660540
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2] ath10k: remove the max_sched_scan_reqs value
Date: Thu, 14 Nov 2019 13:00:01 +0800
Message-Id: <20191114050001.4658-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_210030_130353_BAD28BD6 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The struct cfg80211_wowlan of NET_DETECT WoWLAN feature share the same
struct cfg80211_sched_scan_request together with scheduled scan request
feature, and max_sched_scan_reqs of wiphy is only used for sched scan,
and ath10k does not support scheduled scan request feature, so ath10k
does not set flag NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR, but ath10k
set max_sched_scan_reqs of wiphy to a non zero value 1, then function
nl80211_add_commands_unsplit of cfg80211 will set it support command
NL80211_CMD_START_SCHED_SCAN because max_sched_scan_reqs is a non zero
value, but actually ath10k not support it, then it leads a mismatch result
for sched scan of cfg80211, then application shill found the mismatch and
stop running case of MAC random address scan and then the case fail.

After remove max_sched_scan_reqs value, it keeps match for sched scan and
case of MAC random address scan pass.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
Tested with QCA6174 PCIe with firmware WLAN.RM.4.4.1-00110-QCARMSWP-1.

Fixes: ce834e280f2f875 ("ath10k: support NET_DETECT WoWLAN feature")
Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
v2: change commit log
 drivers/net/wireless/ath/ath10k/mac.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index e8bdb2ba9b18..9aa499b0527e 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -8902,7 +8902,6 @@ int ath10k_mac_register(struct ath10k *ar)
 	ar->hw->wiphy->max_scan_ie_len = WLAN_SCAN_PARAMS_MAX_IE_LEN;
 
 	if (test_bit(WMI_SERVICE_NLO, ar->wmi.svc_map)) {
-		ar->hw->wiphy->max_sched_scan_reqs = 1;
 		ar->hw->wiphy->max_sched_scan_ssids = WMI_PNO_MAX_SUPP_NETWORKS;
 		ar->hw->wiphy->max_match_sets = WMI_PNO_MAX_SUPP_NETWORKS;
 		ar->hw->wiphy->max_sched_scan_ie_len = WMI_PNO_MAX_IE_LENGTH;
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
