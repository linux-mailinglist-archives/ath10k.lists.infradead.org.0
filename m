Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954E01474C0
	for <lists+ath10k@lfdr.de>; Fri, 24 Jan 2020 00:25:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k9adfPpLQZLuyQAEu1chaUJ7cK5ARWiZRxi4m5hAF+M=; b=Mw5+NyC7cx5NiA
	iNi7rsGDSc3sNljQ8813BtNkYKB/TwS5nxjsz5Z7l/Ap44a6fmbkNfsWQ8ehhaYznMLi+ayW1Vhg5
	7TdJyORRkp/4tTnapX4i2uLMSFGQieCxLH2lwO7Gn/iUczXr3gTn4u6pAqNYPJpEJjJWlAqTlNSoG
	sA0QREdLacs2HW5r/ROkOYJ+3bUcKR2Ui2hri+ddlJ4PiwrD4XG0NUGDzmXGK+1cl5FSXu+vBgK8J
	okjFy0AqZIzRaLXvjjYCd+9z0TJHLweIQhzW/y6wBPwxcvVnYYOuaM41f/pTpeM6ff5oCYiH7M41M
	L0Y2u04sh8x3dCkXVkWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulqR-0002eo-N5; Thu, 23 Jan 2020 23:25:03 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulqM-0002cL-Tz
 for ath10k@lists.infradead.org; Thu, 23 Jan 2020 23:25:00 +0000
Received: by mail-pj1-x1041.google.com with SMTP id d5so175631pjz.5
 for <ath10k@lists.infradead.org>; Thu, 23 Jan 2020 15:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4aX5l/dML5eau8GIuNAKI55XbIc1iZhh7nAnGo45frU=;
 b=fIOS/1qVRkjNyhx3V73sope4wo1BXA5gIGf2pMh9gjTD90sZUTga2GQxpqKojDByNR
 vM8uII6xaga31QKDa3gsfws/qchBWSUnFcIjCytJoWPwM9JAsYPeQtvJLyZ1m/iYGg8D
 i5H8kY81G1W1AyK1MldthNgzwsAaLJemjl1wM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4aX5l/dML5eau8GIuNAKI55XbIc1iZhh7nAnGo45frU=;
 b=C5Giby85z3Nt5DZCFOI8g+iS3BV7HdmwZ0ooYQHdfYlyUsQ6HbGP261RtwNia7rfIP
 5BtSXvabnwX014sgCW5puqIVhLDtbI8wci9Q8PQ6isNzwg4G7CPyiY0nOFFIFjzs0m09
 wbh/HZdtjVwH7X/uc9V2oPekfBX/H4mRF71cSSTfPsz5iWPr9OfhHRmGapjGoOLP6XlX
 keMiSBnBShmMeJhL2Si6i3RMhIAM0tP6XSxyCK3+iI063l7noLciw9ZZ8Ca2gv9b5ogh
 sKbfPzjj56smSfkBwgowPIVBDzyVO9uTJNphoYpJTg/+oZWPUVJslFOYrjyPem5BpUMU
 NFdw==
X-Gm-Message-State: APjAAAXf4aMWxCP7s0O4QauTBF5av8Q9ANA0B47GTK/cmz3JqL6urcTO
 9DXgrCIFXmfRW42pArytsVAT/STpq429Cw==
X-Google-Smtp-Source: APXvYqzyIxhJ9N7AmSY8hYmSpeu53DPs0ZzjqEnLgPK9rcHArpPdcPqUrGEPOiU5PX5ysoAwh/+z1g==
X-Received: by 2002:a17:902:aa41:: with SMTP id
 c1mr568850plr.105.1579821898215; 
 Thu, 23 Jan 2020 15:24:58 -0800 (PST)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id c19sm4085849pfc.144.2020.01.23.15.24.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 15:24:57 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH] ath10k: Add newlines to printk messages
Date: Thu, 23 Jan 2020 15:24:56 -0800
Message-Id: <20200123232456.36197-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_152459_017637_6C688B9A 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Some printks in here don't have newlines at the end, meaning the log
will be sort of hard to read. Add newlines.

Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/net/wireless/ath/ath10k/snoc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index 7e85c4916e7f..19a4d053d1de 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -582,7 +582,7 @@ static void ath10k_snoc_process_rx_cb(struct ath10k_ce_pipe *ce_state,
 				 max_nbytes, DMA_FROM_DEVICE);
 
 		if (unlikely(max_nbytes < nbytes)) {
-			ath10k_warn(ar, "rxed more than expected (nbytes %d, max %d)",
+			ath10k_warn(ar, "rxed more than expected (nbytes %d, max %d)\n",
 				    nbytes, max_nbytes);
 			dev_kfree_skb_any(skb);
 			continue;
@@ -1201,7 +1201,7 @@ static int ath10k_snoc_request_irq(struct ath10k *ar)
 				  irqflags, ce_name[id], ar);
 		if (ret) {
 			ath10k_err(ar,
-				   "failed to register IRQ handler for CE %d: %d",
+				   "failed to register IRQ handler for CE %d: %d\n",
 				   id, ret);
 			goto err_irq;
 		}
@@ -1485,7 +1485,7 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
 
 	ret = dma_set_mask_and_coherent(dev, drv_data->dma_mask);
 	if (ret) {
-		dev_err(dev, "failed to set dma mask: %d", ret);
+		dev_err(dev, "failed to set dma mask: %d\n", ret);
 		return ret;
 	}
 
-- 
Sent by a computer, using git, on the internet


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
