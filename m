Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E449647B44
	for <lists+ath10k@lfdr.de>; Mon, 17 Jun 2019 09:38:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/CzSa0Zl9IR8o37MbQ6qwbTSUVn+AAPxaTvSZgC5rUo=; b=g7m
	c/sN9dHJXMXLNMil9CW9DjYCowhuDwxDN7Qwkeq+Qu0FSbBiF/ItQNUBYICsSwCPI2LAziqOWsA8P
	uQPWsC5JwDAO6PbrDb6FBC3qk+Brym2K4YIIUONnSLcq3Z8IbVKYsvzzCzJK7DFMjoUIfpQYp7Ca2
	WCsVCS6AxWjZ87Lrm1UCVw9QhQ2JIsgxpwrMfwdGseepNGTErSgxZgt8xR62GSufLE21iSRkwE5OU
	RwLNaJ/UAQrXXIb0d2pGffMzcIGRqWwacWnHc2u8TdoBYey/y7pA0U0t/+r3ewI7Pk6fF9MN51Gt2
	jMRqaXdh0h5VAhcZSLwrTp4evl8+NOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDz-0006yK-2Y; Mon, 17 Jun 2019 07:38:43 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDp-0006q6-T6
 for ath10k@lists.infradead.org; Mon, 17 Jun 2019 07:38:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 77F7B60A44; Mon, 17 Jun 2019 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560757113;
 bh=4zwy2dPQuSTet8S1EGgrunmmJm4kL4MEEtL33hgHrUM=;
 h=From:To:Cc:Subject:Date:From;
 b=jso8wdaIbYRNrmE1jFazvWo1dUOcY8DogJwSfy7RTtrkpTvfKovU35104/SfEGef5
 OxQimJyRt/znfRF+Opee+NqAYh2TE/tx6RO2B+XEeS8Fgd8zYCtKMTUqErcZD0YhOX
 pUifjJpPI7YhRvt33vLkt3tHHuM1Pirb0+HGG1WI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from localhost.localdomain (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 35CDA606FC;
 Mon, 17 Jun 2019 07:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560757113;
 bh=4zwy2dPQuSTet8S1EGgrunmmJm4kL4MEEtL33hgHrUM=;
 h=From:To:Cc:Subject:Date:From;
 b=jso8wdaIbYRNrmE1jFazvWo1dUOcY8DogJwSfy7RTtrkpTvfKovU35104/SfEGef5
 OxQimJyRt/znfRF+Opee+NqAYh2TE/tx6RO2B+XEeS8Fgd8zYCtKMTUqErcZD0YhOX
 pUifjJpPI7YhRvt33vLkt3tHHuM1Pirb0+HGG1WI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 35CDA606FC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: add mic bytes for pmf management packet
Date: Mon, 17 Jun 2019 15:37:59 +0800
Message-Id: <1560757079-19266-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003834_099441_A8085E95 
X-CRM114-Status: UNSURE (   9.11  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

For PMF case, the action,deauth,disassoc management need to encrypt
by hardware, it need to reserve 8 bytes for encryption, otherwise
the packet will be sent out with error format, then PMF case will
fail.

After add the 8 bytes, it will pass the PMF case.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00005-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htt_tx.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c b/drivers/net/wireless/ath/ath10k/htt_tx.c
index d8e9cc0..7bef9d9 100644
--- a/drivers/net/wireless/ath/ath10k/htt_tx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
@@ -1236,6 +1236,7 @@ static int ath10k_htt_tx_hl(struct ath10k_htt *htt, enum ath10k_hw_txrx_mode txm
 	struct ath10k *ar = htt->ar;
 	int res, data_len;
 	struct htt_cmd_hdr *cmd_hdr;
+	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)msdu->data;
 	struct htt_data_tx_desc *tx_desc;
 	struct ath10k_skb_cb *skb_cb = ATH10K_SKB_CB(msdu);
 	struct sk_buff *tmp_skb;
@@ -1245,6 +1246,13 @@ static int ath10k_htt_tx_hl(struct ath10k_htt *htt, enum ath10k_hw_txrx_mode txm
 	u8 flags0 = 0;
 	u16 flags1 = 0;
 
+	if ((ieee80211_is_action(hdr->frame_control) ||
+	     ieee80211_is_deauth(hdr->frame_control) ||
+	     ieee80211_is_disassoc(hdr->frame_control)) &&
+	     ieee80211_has_protected(hdr->frame_control)) {
+		skb_put(msdu, IEEE80211_CCMP_MIC_LEN);
+	}
+
 	data_len = msdu->len;
 
 	switch (txmode) {
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
