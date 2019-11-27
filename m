Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB74C10A906
	for <lists+ath10k@lfdr.de>; Wed, 27 Nov 2019 04:19:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=95UgeCHWVMlmr6tlmQV9+rddSeDrANcXcCWpnNmVLaM=; b=sSZNMkwnbtdqTp
	pT6JJWneo0HtnqUHXFO0STmsD7FfZqga4Z/BjXhaNVhpT1EttbmgDcLMnhTrliVeqYf5Y9vQDv6pI
	Rrxt1JBRz1xQY/oVQCp7e+EJDUcvD7xo/au4YlCeBepSNMAiNHGnh+3/CqxEy/PwyF4hdhpPgXICt
	C8tjVI1z1lYkUqwN0M+tmSIyi8JNfb+yf1ExC4YoACiWBKv8NaRaNlf/QselzZEDAtrsSZiaS9y/x
	zPqjDKolTQRc3dsTCDs++DIjuTiakbEi7FQ6kv5UrdPpc85IsdniqjwL6bx5a6YaCG3I9FeSeXH6U
	e6LBmyMVXfravyLDCMuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZnrZ-00014E-GB; Wed, 27 Nov 2019 03:19:33 +0000
Received: from a27-18.smtp-out.us-west-2.amazonses.com ([54.240.27.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZnrT-00013T-1j
 for ath10k@lists.infradead.org; Wed, 27 Nov 2019 03:19:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574824764;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
 bh=92Cgq7YPc/LoYHy38dUZaTP5T9x4xucq6/3tGdweYc0=;
 b=fLLfphSGcKb+OyHVmR7YGGWFIbRXacPoCg1BxxRVpBB84/6yF4eZJjoGoRCYLLQ5
 j0O1H2itdiwA96sMavBb6c+9V2Ok/3SL1OrSkFrkOyDYwWHnaIIDbRFDaeE3TNI3gpP
 Onmmmv/Gx0GQdXA/HmdheZyqGPGxmp45+L4nrnL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574824764;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
 bh=92Cgq7YPc/LoYHy38dUZaTP5T9x4xucq6/3tGdweYc0=;
 b=SMdEkHI/L0FQWoxztx9jJ/BqNMgKbKijrCWjRRwjtjMBPxC/qMiEYUKoUkt+Rul5
 8urrlbVw3hWGHjzf6NMUnBq9izG1ra9ArsdpC7kDTULUUQbKFYvWJsO8DxuEU6BMjKY
 kwzZ4Xpp32vgAp+M9pbxM9EabWe2FWIEIFfnuKek=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8F3FFC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: set WMI_PEER_AUTHORIZE after a firmware crash
Date: Wed, 27 Nov 2019 03:19:24 +0000
Message-ID: <0101016eaadee369-fd09e9d4-d13b-4547-a4fe-0039577ad4b8-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.27-54.240.27.18
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_191927_170906_7A126553 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

After the firmware crashes ath10k recovers via ieee80211_reconfig(),
which eventually leads to firmware configuration and including the
encryption keys. However, because there is no new auth/assoc and
4-way-handshake, and firmware set the authorize flag after
4-way-handshake, so the authorize flag in firmware is not set in
firmware without 4-way-handshake. This will lead to a failure of data
transmission after recovery done when using encrypted connections like
WPA-PSK. Set authorize flag after installing keys to firmware will fix
the issue.

This was noticed by testing firmware crashing using simulate_fw_crash
debugfs file.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/mac.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index ae84f8e4e7dd..0829582c0d50 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -6329,6 +6329,9 @@ static int ath10k_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 	if (sta && sta->tdls)
 		ath10k_wmi_peer_set_param(ar, arvif->vdev_id, sta->addr,
 					  ar->wmi.peer_param->authorize, 1);
+	else if (sta && cmd == SET_KEY && (key->flags & IEEE80211_KEY_FLAG_PAIRWISE))
+		ath10k_wmi_peer_set_param(ar, arvif->vdev_id, peer_addr,
+					  ar->wmi.peer_param->authorize, 1);
 
 exit:
 	mutex_unlock(&ar->conf_mutex);
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
