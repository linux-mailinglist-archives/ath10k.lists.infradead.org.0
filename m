Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2619411D377
	for <lists+ath10k@lfdr.de>; Thu, 12 Dec 2019 18:14:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JDHxw0Au99MwUpil3IGWZD+08gKYzONGS+9SycwsYFs=; b=Bzkb7Ubs75rHFm
	mPTFq6iY+PogL3ZJDdmHlKAvOTsWF5WI5JYAWpSS13pj9En8fwxtWZQS8FEQ8hutkYTij1U6nwV1n
	0Iz3hYWSFPnDhjIy+Jnvmr9ck03BOH7m1qedNHcP4y9+zVBGh125lYCbNqM9bMmztBNe0qeEweekB
	I6BlJBs63wNoo3LT3wiXd7W0MkIME4HYPWmxg45J/KZ9o9KqpI1uhXi+YN+hpElByE7p2TSmqDdnz
	mmerk8y8bBoZ2BYcS9n+LP62KL9NftJtFq2OPuXlDXjaz1G6gDtp4IvuzwGX4OAUp1CeVp/7DmTrh
	/kq0p2eDbGgvH0v9xqiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifS2f-0006gF-AW; Thu, 12 Dec 2019 17:14:21 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifS2b-0006fr-TW
 for ath10k@lists.infradead.org; Thu, 12 Dec 2019 17:14:19 +0000
Received: from ben-dt4.candelatech.com
 (50-251-239-81-static.hfc.comcastbusiness.net [50.251.239.81])
 by mail3.candelatech.com (Postfix) with ESMTP id BA15A13C283;
 Thu, 12 Dec 2019 09:14:16 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com BA15A13C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1576170856;
 bh=8pY1HIK3azgho2bzhpGrhM5tbAYHFJtFAzH+baIVhIs=;
 h=From:To:Cc:Subject:Date:From;
 b=NXY1HEWaU8dPlykutxnS1CVj7uoylNJGVLJLhkhY16+6T9DmRu22CR6zpmQnbItEd
 n2GnwiGtc29MJdki4911XyeZUjEOeeP+8UMWvV1/6ChykzqcuyR7C6GKjgYDe1hORi
 JfgNMy6+FowfloyGkqNeF+F5B9r7rsFtmRMiFx+U=
From: greearb@candelatech.com
To: linux-wireless@vger.kernel.org, kvalo@qca.qualcomm.com,
 ath10k@lists.infradead.org
Subject: [PATCH] ath10k:  Fix setting txpower to zero.
Date: Thu, 12 Dec 2019 09:14:09 -0800
Message-Id: <20191212171409.21041-1-greearb@candelatech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_091417_976292_DE81F91D 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ben Greear <greearb@candelatech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Ben Greear <greearb@candelatech.com>

Do not ignore 0 txpower setting unless the vif is of type p2p.

This should fix regression in:

commit 88407beb1b1462f706a1950a355fd086e1c450b6
Author: Ryan Hsu <ryanhsu@qca.qualcomm.com>
Date:   Tue Dec 13 14:55:19 2016 -0800

    ath10k: fix incorrect txpower set by P2P_DEVICE interface

Tested (without p2p in use) on 9984 with ath10k-ct firmware, but I don't think
this is firmware specific.

Signed-off-by: Ben Greear <greearb@candelatech.com>
---
 drivers/net/wireless/ath/ath10k/mac.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 289d03da14b2..1c5e1b5570f8 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -5902,11 +5902,18 @@ static int ath10k_mac_txpower_recalc(struct ath10k *ar)
 {
 	struct ath10k_vif *arvif;
 	int ret, txpower = -1;
+	int p2p_st;
+
+	p2p_st = ath10k_wmi_get_vdev_subtype(ar, WMI_VDEV_SUBTYPE_P2P_DEVICE);
 
 	lockdep_assert_held(&ar->conf_mutex);
 
 	list_for_each_entry(arvif, &ar->arvifs, list) {
-		if (arvif->txpower <= 0)
+		/* p2p may not initialize txpower, and we should ignore it
+		 * in that case.
+		 */
+		if ((arvif->txpower < 0) ||
+		    ((arvif->txpower == 0) && (arvif->vdev_subtype == p2p_st)))
 			continue;
 
 		if (txpower == -1)
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
