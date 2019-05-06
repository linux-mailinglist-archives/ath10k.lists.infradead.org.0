Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93641456C
	for <lists+ath10k@lfdr.de>; Mon,  6 May 2019 09:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OZaZFM5cGbIJuT+TlVjV7cA0F0WqtY+k3tyFjJD0jII=; b=R4Wtrvqo2d3olC
	vY497VkqRi/2eu7AicVfRVECNBxnIP/pbrK5cC9vRHY7RpyviiCIqaBGtM3RVIZe7Tb1Pn9hZPSfZ
	3jvnRfdavw1uaDdEZQdRrHbjNegStBP+vgo9vqrQJ8MLx7PfqjJRO3VEsvw7sprIHEWY94pdBZuxy
	BFq8ZapQF/22ALrJPPEP0eo2DA/mFyzxSatsm1X5Mml3164smbCh9+am3heMKvcGAgpFZIHyNx/2e
	ovef9TBoptW1M89a99xpS0Ezrbj0VQN19BWSc4jSakFTPxf3UmY/QWsTj/8LnsfJ3HmvXFWchHj4n
	L8A8NUk1CM0G0BTbCk5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYD1-0003Wh-OE; Mon, 06 May 2019 07:38:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYCx-0003WG-Oa
 for ath10k@lists.infradead.org; Mon, 06 May 2019 07:38:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id h1so6052313pgs.2
 for <ath10k@lists.infradead.org>; Mon, 06 May 2019 00:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eH0f+Eu6ZUxRZIXEvgdiO6zx0qQSRtdsKIC2yQILbks=;
 b=QaOdz86fyFLQbeHUAfpKUqy3CHKbeux5DBpACGjpPyo5X5D0c57mvy24MVgWmQMSvz
 1egUVxNVsRmcBa1TR61KPKVkgGejeSZq/pxfK9a/KsMK1rhJ0ejqJgqIU3lpo7i3oXRY
 z5gPdKl+vOu/z6ctMbqgWQHCiczTJp7MZqxQQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eH0f+Eu6ZUxRZIXEvgdiO6zx0qQSRtdsKIC2yQILbks=;
 b=W+xDRwRRaqaAUjcbrEUAtmRElWFG9WqR256xWJ8ABrBkt/N3oSm0Fh5D2wxrwoVqf7
 PLvvfN2u1gDJyN+44g3Kuo2SR99dRSQiY0jaG4/opM3aQO60ma0zcq6YVeOOkKDRd4j9
 tfQKCG7CtPMxM78Q4uONflllNwDZYF4W9Zd1VmpTMROQsWj9d4YUlwRqnjOh3BsRHweL
 PNaa2SaT3hWCULivoDVHRjm5gKJnzKAk6GPQR4s/SnZznZT2dG4BP3yFyVOOHNPTwq4j
 4fmgbs6vQBxuw8+uEJOFJuZzTbDb/a5NM0B/eAtHGTrHoJMt5BrsaNX6B43QmhsPfNtA
 KLXg==
X-Gm-Message-State: APjAAAWTLfvyTVlsKs5GmeFf/MWNgT+AUS0yefy0rxJWHTL5DTcxhHw9
 6A8f9R6DWLhv2rhc6odFP7jXAA==
X-Google-Smtp-Source: APXvYqzq7+RiKLUM1UGBJdOhCrgnYMsbITyjWDoqQRHZeLPQtrTv4DFlBT7QlqC+j+2pVCeGskmVHA==
X-Received: by 2002:aa7:8212:: with SMTP id k18mr31160168pfi.50.1557128322639; 
 Mon, 06 May 2019 00:38:42 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id j189sm14464852pfc.72.2019.05.06.00.38.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 00:38:41 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: kvalo@codeaurora.org
Subject: [PATCH] ath10k: acquire lock to fix lockdep's warning
Date: Mon,  6 May 2019 15:38:36 +0800
Message-Id: <20190506073836.184059-1-tientzu@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_003843_841052_DC7EFAA2 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Claire Chang <tientzu@chromium.org>, drinkcat@chromium.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Lockdep warns at lockdep_assert_held(&ar->data_lock) in
ath10k_htt_rx_pn_check_replay_hl(). Acquire ar->data_lock before calling
ath10k_htt_rx_pn_check_replay_hl() to fix it.

Call trace:
ath10k_htt_rx_pn_check_replay_hl+0x118/0x134 [ath10k_core]
ath10k_htt_rx_proc_rx_ind_hl+0xd8/0x250 [ath10k_core]
ath10k_htt_t2h_msg_handler+0x148/0xf30 [ath10k_core]
ath10k_htt_htc_t2h_msg_handler+0x24/0x40 [ath10k_core]
ath10k_sdio_irq_handler+0x374/0xaa4 [ath10k_sdio]

Fixes: 130c77495708 ("ath10k: add PN replay protection for high latency devices")
Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 drivers/net/wireless/ath/ath10k/htt_rx.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index 9eed1cb17fda..3e3be1e5bbaf 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -1952,6 +1952,7 @@ static bool ath10k_htt_rx_proc_rx_ind_hl(struct ath10k_htt *htt,
 	int num_mpdu_ranges;
 	size_t tot_hdr_len;
 	struct ieee80211_channel *ch;
+	bool pn_invalid;
 
 	peer_id = __le16_to_cpu(rx->hdr.peer_id);
 
@@ -1983,9 +1984,13 @@ static bool ath10k_htt_rx_proc_rx_ind_hl(struct ath10k_htt *htt,
 		goto err;
 	}
 
-	if (check_pn_type == HTT_RX_PN_CHECK &&
-	    ath10k_htt_rx_pn_check_replay_hl(ar, peer, rx))
-		goto err;
+	if (check_pn_type == HTT_RX_PN_CHECK) {
+		spin_lock_bh(&ar->data_lock);
+		pn_invalid = ath10k_htt_rx_pn_check_replay_hl(ar, peer, rx);
+		spin_unlock_bh(&ar->data_lock);
+		if (pn_invalid)
+			goto err;
+	}
 
 	/* Strip off all headers before the MAC header before delivery to
 	 * mac80211
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
