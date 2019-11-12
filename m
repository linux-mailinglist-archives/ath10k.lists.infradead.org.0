Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1EBF884F
	for <lists+ath10k@lfdr.de>; Tue, 12 Nov 2019 06:57:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QlvjY2NXUniAqmpLjmLVGuz5ux90dPd4I7mM9dcUlpY=; b=Jne3yKqUdO/0ap
	cO9PpjNfsBeO8hMexRBBdsYswOMdRM4Cdx/nKNbl3kcCkM+uHSoU5Ilaaen7qzySxO/2hlb2BKPbe
	xiu6/1B5+TnVYpNM628BHNgxOZ6BHYSEoq2N8oU2SkBlxk8c3uKp4/Ix29Icc9wS0orzEsSN+6AcL
	JGTK7Duphiie1l90jv9vciAQJ4QfB1+0q1+f1we/bBs3q4J+owo1/1TQ9FRuhYeODMKE9x3I2RUCe
	U4rL839lQZlbFO/rTKnh6diJm5YNFkzUwOZ419y1OQQeTkIQAmes/SIKix5n78X30ockkQS3XCxnF
	WtXcm55j0EsvTeXWdZsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPBR-0007rC-Mj; Tue, 12 Nov 2019 05:57:45 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPBN-0007qv-WE
 for ath10k@lists.infradead.org; Tue, 12 Nov 2019 05:57:43 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 54F7160D7B; Tue, 12 Nov 2019 05:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573538261;
 bh=mzx3N3lG/Lol6wL/LRDhTGjC7TPVERY5qOz0pGET1OU=;
 h=From:To:Cc:Subject:Date:From;
 b=itahC21ABcqmxIGW5W3fbeBqhryQTyVzfqvhVRn2W+RmNxGWVjF19PEe0E6Pgfqwa
 SZdcWL2IbB+6U6dd7b4n62282HC4yl5lllW9UZyBtPjBjsEn18cw3yBjjPM5s5Gm3H
 s9eiV0EIQfiGR2wmN9Ie4QxhvmLSqj4XfZFPLHQc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 36B7460CED;
 Tue, 12 Nov 2019 05:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573538261;
 bh=mzx3N3lG/Lol6wL/LRDhTGjC7TPVERY5qOz0pGET1OU=;
 h=From:To:Cc:Subject:Date:From;
 b=itahC21ABcqmxIGW5W3fbeBqhryQTyVzfqvhVRn2W+RmNxGWVjF19PEe0E6Pgfqwa
 SZdcWL2IbB+6U6dd7b4n62282HC4yl5lllW9UZyBtPjBjsEn18cw3yBjjPM5s5Gm3H
 s9eiV0EIQfiGR2wmN9Ie4QxhvmLSqj4XfZFPLHQc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 36B7460CED
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: remove the max_sched_scan_reqs value
Date: Tue, 12 Nov 2019 13:57:28 +0800
Message-Id: <20191112055728.28847-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_215742_055212_D24B871E 
X-CRM114-Status: UNSURE (   8.77  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

ath10k do not support NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR, if
set max_sched_scan_reqs to a non zero value, then nl80211_add_commands_unsplit
will set a SCHED_SCAN attribute, some application tool will use this attribute
to check mac random support, when it check SCHED_SCAN has set and not
set NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR, it will report mac random
not support.

Remove the max_sched_scan_reqs value will pass the application tool's
check and pass test case of random mac address.

testd with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00017-QCARMSWP-1.

Fixes: ce834e280f2f875 ("ath10k: support NET_DETECT WoWLAN feature")
Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
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
