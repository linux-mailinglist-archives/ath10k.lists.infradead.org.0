Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0C7F2CCE
	for <lists+ath10k@lfdr.de>; Thu,  7 Nov 2019 11:51:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vuQ0ZygJibg6lxhLcDPr4r/NqPsSSxq7LRznnYLUdP0=; b=NYwXlKTH/aYupO
	MRGbW9waPF9czHNw0jFKDmFGuEkVoo/L9EtQmkH7XGLpdpUpnwUXZDWxHXjDAXuy9MUk/SP6stuO/
	KhRceOiwJbTFw32RZ1lRn0YPG6AIsFe3ntZb0zLh3YZ3uUQA7sWyOq/HygKbDGkQ4YEbHXa77aaju
	tnYjJzIofSbGrpXrMVI2EFRhdIr8MutMnar7nD0ikBgPHqF4lzRod/W7OU7YIhk7BJy3RmfkgccjH
	+ePNTYn1rIXA54yDLYD70PTHjC9JXwsonA9l1FP9AM/7zq0CR+SYD0tRMEnzSicUy0rRSVpElUw8v
	CdxF2qySRn1bL/aBfPjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSfNa-00005y-5L; Thu, 07 Nov 2019 10:51:06 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSfNV-00005J-VG
 for ath10k@lists.infradead.org; Thu, 07 Nov 2019 10:51:04 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5ED5660A44; Thu,  7 Nov 2019 10:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573123861;
 bh=LOcMY5sQJkRQiah+/yf73QQL0fTF1BGHLYaI6N12Bgg=;
 h=From:To:Cc:Subject:Date:From;
 b=KnCq1uPsh3ILruKaxqMdjmsieSqfjCFhziitN9PfDFucqSOQjzvWtk2VD5Eoo+360
 tJFBXGkugiAtOWKpm7vKdgqBE48CxAqiBFBkWnw+2GTIeAemRaH0/qp6DU7OKBQXS3
 /tmVfpoa5wXHeuu2gXzltgr5n7PT4Wt2BU6Gpo1I=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 798AC60721;
 Thu,  7 Nov 2019 10:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573123860;
 bh=LOcMY5sQJkRQiah+/yf73QQL0fTF1BGHLYaI6N12Bgg=;
 h=From:To:Cc:Subject:Date:From;
 b=PCoQ9Yan1bpiE8cxerM4/u+yQ4ITZzTL6T3aUx+J5uWEzywstjNMnQI/3yCWNXDc2
 TMNIqKYD/TItF3aF2T9r/5VKYkBfd3SHP5/qWnLsdVfBG1+htR1oc98Vgzl9ap2YkZ
 WLnV+3EKjuNI5PDVbQROH8bqoBsEYFOvBefrQ+VM=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 798AC60721
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: add NL80211_FEATURE_ND_RANDOM_MAC_ADDR for NLO
Date: Thu,  7 Nov 2019 18:50:47 +0800
Message-Id: <20191107105047.24084-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_025102_030333_0A00E437 
X-CRM114-Status: UNSURE (   6.87  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add NL80211_FEATURE_ND_RANDOM_MAC_ADDR for NLO will enable the random
mac address for netdetect case.
iw command:
iw phy0 wowlan enable net-detect net-detect
randomize=AA:7B:A1:AC:B2:41/FF:FF:FF:FF:FF:FF interval 5000 delay 30
freqs 2412 matches ssid foo.
After suspend, DUT will send probe request with mac AA:7B:A1:AC:B2:41.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00029.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/mac.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index e8bdb2ba9b18..753a6a174106 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -8911,6 +8911,7 @@ int ath10k_mac_register(struct ath10k *ar)
 			WMI_PNO_MAX_SCHED_SCAN_PLAN_INT;
 		ar->hw->wiphy->max_sched_scan_plan_iterations =
 			WMI_PNO_MAX_SCHED_SCAN_PLAN_ITRNS;
+		ar->hw->wiphy->features |= NL80211_FEATURE_ND_RANDOM_MAC_ADDR;
 	}
 
 	ar->hw->vif_data_size = sizeof(struct ath10k_vif);
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
