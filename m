Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5F61EE9FC
	for <lists+ath10k@lfdr.de>; Thu,  4 Jun 2020 19:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HWV9oKU58CsFS9tH2s5fcJ+lpie+ESVSde51CYJjyvY=; b=j4rj5XUCjVgZBI
	hVnAnOoGck0/VwiRsOuobHT80yo2+UseWBcTINBSGQm3HhcW0JtoXKTN1+eoaS8GVBT9FErssOFUg
	IYVlJNBzdq+2rXvhqPn80fHviZkpTgIpWsrKgpFj1OmkMeNRObWWrLJRPj+2dVSKB/ijq9XwCAN/N
	iE96+AyoxS4nRRxpM/Ogjv+ypmPjANzyfmvH6Osi+S48QpuqmH+D5oo/mgRyPOw6LspEy2fS1KypV
	+uShRdisQ/v3z9iAgFVl1fICrQM9hk/kc1une8wD7rGmu1OTTGi3atSVoDcQSMrGan7dwBdrzFRd4
	4ZyMWHwtXjUKwqWnx2dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgu9I-0005YJ-6v; Thu, 04 Jun 2020 17:59:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgu9F-0005Xp-6W
 for ath10k@lists.infradead.org; Thu, 04 Jun 2020 17:59:26 +0000
Received: by mail-pg1-x544.google.com with SMTP id r10so3804804pgv.8
 for <ath10k@lists.infradead.org>; Thu, 04 Jun 2020 10:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2qJ1KmR7n31K99rmmaGKTiex9LAFKCkmBxAmhTYhJxo=;
 b=O25wYAeOqYLKutlDyi60xIlbTuDdCOT5e2XYNOsNGhC4B+NaMg3VxpH/LIFlYcKegJ
 T2d7Nsibm7xBSN7jaERDrF77NKlRLBhUJZhYCNyaOF8giEp3RryXOHyVxA+KlQtlUkqU
 MR3J/581kbOBBRQlO36Kq+wpxgAQjeV+sg00s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2qJ1KmR7n31K99rmmaGKTiex9LAFKCkmBxAmhTYhJxo=;
 b=d31mMWNPVhicimtLnZ0f7kh8fswNW7KWQHjv3VBuHHMsgl5KWYqOxP8Ud1674YY/YP
 znnY+kuA2f4wCBssb854/kvsDDiYK3mSAr2MTaYpJSpCLvmXb8AlZ+7Hl5sINcJZtH7N
 yBP4bwl5NF6ikx9ax0KNNrsdLsnI+HmEetUgtVagP6LU9vKqfBuSGRQo2rfUC3hVJzAS
 s5GBjsopwdDeMHYl244BYol1UtY8GwH2xIYOLVAq1ozW9npNsN5QZD2qZorkhxSwbAXH
 wH7egyEhlMD3sh9DV7x2CLgUCF1yWIDxb+okOnAKUe5vo86cg8Ogoi76ZuMMRTK2mmTE
 GkfQ==
X-Gm-Message-State: AOAM533qYtBcG1cumWXIo2ifxkr4xFIK1bBKXR2H70blSitRrMgNhEOp
 ZwH2+jre97ifQhmEmexXP1jBsg==
X-Google-Smtp-Source: ABdhPJy8aqjpj6isz3vL3kGOUE53Wgd2Jl+2f1JtJGfWBzh0MNQ1ovSw5R16ThJEKXvXpFgxlTMkiA==
X-Received: by 2002:a63:454c:: with SMTP id u12mr5625732pgk.153.1591293563926; 
 Thu, 04 Jun 2020 10:59:23 -0700 (PDT)
Received: from evgreen-glaptop.cheshire.ch
 ([2601:646:c780:1404:1c5a:73fa:6d5a:5a3c])
 by smtp.gmail.com with ESMTPSA id q13sm2568927pfk.8.2020.06.04.10.59.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 04 Jun 2020 10:59:23 -0700 (PDT)
From: Evan Green <evgreen@chromium.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH] ath10k: Acquire tx_lock in tx error paths
Date: Thu,  4 Jun 2020 10:59:11 -0700
Message-Id: <20200604105901.1.I5b8b0c7ee0d3e51a73248975a9da61401b8f3900@changeid>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_105925_239204_D0DEA16A 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Govind Singh <govinds@qti.qualcomm.com>, kuabhs@google.com.org,
 sujitka@chromium.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 ath10k@lists.infradead.org, Michal Kazior <michal.kazior@tieto.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

ath10k_htt_tx_free_msdu_id() has a lockdep assertion that htt->tx_lock
is held. Acquire the lock in a couple of error paths when calling that
function to ensure this condition is met.

Fixes: 6421969f248fd ("ath10k: refactor tx pending management")
Fixes: e62ee5c381c59 ("ath10k: Add support for htt_data_tx_desc_64
descriptor")
Signed-off-by: Evan Green <evgreen@chromium.org>
---

 drivers/net/wireless/ath/ath10k/htt_tx.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c b/drivers/net/wireless/ath/ath10k/htt_tx.c
index e9d12ea708b62..e8c00af2cce1d 100644
--- a/drivers/net/wireless/ath/ath10k/htt_tx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
@@ -1545,7 +1545,9 @@ static int ath10k_htt_tx_32(struct ath10k_htt *htt,
 err_unmap_msdu:
 	dma_unmap_single(dev, skb_cb->paddr, msdu->len, DMA_TO_DEVICE);
 err_free_msdu_id:
+	spin_lock_bh(&htt->tx_lock);
 	ath10k_htt_tx_free_msdu_id(htt, msdu_id);
+	spin_unlock_bh(&htt->tx_lock);
 err:
 	return res;
 }
@@ -1752,7 +1754,9 @@ static int ath10k_htt_tx_64(struct ath10k_htt *htt,
 err_unmap_msdu:
 	dma_unmap_single(dev, skb_cb->paddr, msdu->len, DMA_TO_DEVICE);
 err_free_msdu_id:
+	spin_lock_bh(&htt->tx_lock);
 	ath10k_htt_tx_free_msdu_id(htt, msdu_id);
+	spin_unlock_bh(&htt->tx_lock);
 err:
 	return res;
 }
-- 
2.24.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
