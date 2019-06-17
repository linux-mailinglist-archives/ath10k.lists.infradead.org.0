Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A20490B8
	for <lists+ath10k@lfdr.de>; Mon, 17 Jun 2019 22:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bA3ZNy/156MiSwnMspNRLDRnHBZaE1wpe3Xb/RXNJTE=; b=nF8AWljjG0cumX
	UoniOo/8zzWq3lDltjSMCALQWVnyRkHPbELwUmZVDUF3aF0eI805ff+iX/j0dhLUgk++AT9ubNdUH
	3x+vNAyVnC0S/0to8azy6wE+F60YhQUg2UTqB7icd+uRzg/KkhVYy9VYLjiFxknrtV9TgFJohgkDB
	pD6xO39UIYEKAuHpMrrJVuVLVcdndq2AhPsMmfRchbTgehv68QytKfqhFFH4cXZNOUck/TLeNU0dJ
	ja7EX7E9Jd7cmd3WUVuYAPC3BktOhzuXJj1nShDKbPKpZnLcgUx6OEBYuVIbxZCETsjNA+xQBoQrR
	q8ICvAReNzABbCy5UREw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxpo-0004NN-MB; Mon, 17 Jun 2019 20:02:32 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxpi-0004KW-42
 for ath10k@lists.infradead.org; Mon, 17 Jun 2019 20:02:27 +0000
Received: by mail-lj1-x243.google.com with SMTP id m23so10548440lje.12
 for <ath10k@lists.infradead.org>; Mon, 17 Jun 2019 13:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=el/lmx3URjPIgcoee+SzjF2RP1q5hM7+uu7Bj9EF3vk=;
 b=tZ5OnQajpIZ9SBlSH6SWDGOMWySXm6XR9I7pogLt4tUnlyVOoBR1TPYGl6VdN9GsnH
 +yhxHl1pAjCN3NO1qyVh9p65Q9oyiWJzkiQDlUJ8bHkYT2dE5rGB6/Po4IK9zp+Gdm4w
 gHoahmZFLuAndWzPYtY6ovrhldh7xTwjMmtmLkjzJq1N0vAG8Q7/XIsJUuO/QwDDybFC
 LCS5dhLZJ1KgbN5a29e/6JJyk65JfzbskDJc23CsxVVyo6c5/qRwsff4acnhMBXzZ/t7
 CpoklaFA3H4577VW265ZeIdm0DTxR8i2FhnbCyPOeK3IFNz1+jYrJhvET6pUUk6l5IQK
 qiXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=el/lmx3URjPIgcoee+SzjF2RP1q5hM7+uu7Bj9EF3vk=;
 b=sML4xf5AMkWqtqG5uXsYJWZVzJ9HzSxW5DI4Hfygeo0JSTaBkeEeCxUEqh9W74SmyK
 TDOTJ2PfDghgL+VMkg+KtqcsiXy/0ZubLiNtEe3zQEwJfWTlLfxXvhQU7q5eQ08bkVfu
 aWotsFzY9/FrB8+OVZkL0IH2ZZ9T+DVrTCkxO2GD0f4u5k7ErtD9wXpWt3Zhd1aMLq+k
 Wv40EeeT3pQSRAWJ/Umdl9NcbGISwK4cMbPZAJAA0incp7qOym7Sxvy3bai5Zv+8tggJ
 pl2V2ZeiOJ783H3/nURZR20wcqEGlOBBDMshfLEakI5g+61hz1LSt0o4rbncL88ce3bm
 A2SA==
X-Gm-Message-State: APjAAAVJt35WequnGHx1LuS4J1o2Eyq2BliZso+hMAKBAzfVcnJ1SCS2
 cLXJ6+fKK36i73mjRXccQWNuCItV8flj7w==
X-Google-Smtp-Source: APXvYqytxTqltTU/5ZwjjxHJxPCf68q2+FZPL9kg5tufSXQY1XiNTsj5qLJJNsms3tadjNQ6qNKUfQ==
X-Received: by 2002:a2e:6313:: with SMTP id x19mr52311170ljb.25.1560801743538; 
 Mon, 17 Jun 2019 13:02:23 -0700 (PDT)
Received: from localhost.localdomain (81-233-89-221-no75.tbcn.telia.com.
 [81.233.89.221])
 by smtp.gmail.com with ESMTPSA id j90sm2245780ljb.29.2019.06.17.13.02.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 13:02:23 -0700 (PDT)
From: Erik Stromdahl <erik.stromdahl@gmail.com>
To: johannes@sipsolutions.net, kvalo@codeaurora.org, davem@davemloft.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ath10k: switch to ieee80211_tx_dequeue_ni
Date: Mon, 17 Jun 2019 22:01:40 +0200
Message-Id: <20190617200140.6189-2-erik.stromdahl@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190617200140.6189-1-erik.stromdahl@gmail.com>
References: <20190617200140.6189-1-erik.stromdahl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_130226_160575_42A43A76 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (erik.stromdahl[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Erik Stromdahl <erik.stromdahl@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Since ath10k_mac_tx_push_txq() can be called from process context, we
must explicitly disable softirqs before the call into mac80211.

By calling ieee80211_tx_dequeue_ni() instead of ieee80211_tx_dequeue()
we make sure softirqs are always disabled even in the case when
ath10k_mac_tx_push_txq() is called from process context.

Calling ieee80211_tx_dequeue_ni() with softirq's already disabled
(e.g., from softirq context) should be safe as the local_bh_disable()
and local_bh_enable() functions (called from ieee80211_tx_dequeue_ni)
are fully reentrant.

Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>
---
 drivers/net/wireless/ath/ath10k/mac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 2d503d6cdcd2..bbed9f1b1778 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -4033,7 +4033,7 @@ int ath10k_mac_tx_push_txq(struct ieee80211_hw *hw,
 	if (ret)
 		return ret;
 
-	skb = ieee80211_tx_dequeue(hw, txq);
+	skb = ieee80211_tx_dequeue_ni(hw, txq);
 	if (!skb) {
 		spin_lock_bh(&ar->htt.tx_lock);
 		ath10k_htt_tx_dec_pending(htt);
-- 
2.22.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
