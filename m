Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F188E1474D0
	for <lists+ath10k@lfdr.de>; Fri, 24 Jan 2020 00:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/RgCQBnnDhRGypicwiETF/I+BUzDmJTpMsD5rXVh5LU=; b=V3KApPHC5yoTPN
	jQ1zuqk2KWxngZ9oHAZ3/2rOwZyNiCkwo/5Q9amfuxeIMqzCtTLtREHScww+QZqCncjGIUzADuNK5
	KowhDgNvhxSmKByz9PAGXOqYRbiLTy5425/eUGWtmaBBqXwMz7xbmfVyZF9vbuGxQlsnnIgxfeRxF
	bBpGbf3e+cpG1Ny5WfE28gHAAyxBaqkI1K55WHIsYGBk5vvH8YraB5T/rO8EOF8xJH6x5ehyPvggv
	t/HZGL9BA0ggrmfhvyT1HwQSQULT2nunGo3HOW6bu0paFiwd7zrtudM3cSETDe1jonvth9lZR5lMu
	l+wdud4qUYcF2IECg0qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulv9-00049T-CR; Thu, 23 Jan 2020 23:29:55 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulv5-00048j-TO
 for ath10k@lists.infradead.org; Thu, 23 Jan 2020 23:29:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id x6so150591pfo.10
 for <ath10k@lists.infradead.org>; Thu, 23 Jan 2020 15:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KLJZo46tQPRXDmKRyvfvXMbLAN2h1kL3Vua+/I58BTE=;
 b=hcYWKNAo8Cy8EeRiueJAEn+mXal6m5OY6GOKQabIHmRKD6AGZLLsfjrNZKv3rt9MFc
 JTAf6Lqkvg5zu5qR+nH7g7Ou3JUx87svy/KnmRVTQRQNNl+gn/17w+2G1xdrH07eBTrF
 ey32vEsWdRNpQN0unvqosgXbFWv9VUiHd/tmM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KLJZo46tQPRXDmKRyvfvXMbLAN2h1kL3Vua+/I58BTE=;
 b=SrKut/pdTis/3Qtt7gRLw2ZmrWL6ZHkZCt6qDV3EF18dwdv/J3XuvpZQghF5+BJVrr
 adjOH8Oou/x4Py/KB4Nd2k+Oh76JRF4VY7errK9ZuHkFQi2YpxZTL7OAk3VyUbbXviMa
 HPaXGUH0uQpt04UpusYABdssxjU2J7XmMsMGF+6U5rS9oWF+ABSDflg8uZYAfia7yO8V
 WXdQD845zP5GsyCS2PSWdaxm/EP8fdd12nqPlGHzNN6/6uS3LjTUTl+nYU6vEYqW97t+
 26uzhfKo8oetDkSDKjjfCNKSlcrf74a8ZbY696ZENZNXLoXhiZAp5nLHmwz7jlZ3NLrd
 8m/w==
X-Gm-Message-State: APjAAAVuqJpcnxfOH7h5Yo6+6uPqAlz9rT2DOn+rgw6eJz8JqF2xmAGf
 OyLpS6mh4h3ynQWYuf3e0RnTAQ==
X-Google-Smtp-Source: APXvYqzGg6/xG/ALOXguOUyZGSJKC0EKTomJZgx4LZsRS1iAXgQ5k6JifZ8wlhHRo551vRDHtc+yCw==
X-Received: by 2002:a62:d405:: with SMTP id a5mr661947pfh.254.1579822185284;
 Thu, 23 Jan 2020 15:29:45 -0800 (PST)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id 3sm3973649pjg.27.2020.01.23.15.29.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 15:29:44 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH] ath10k: Use device_get_match_data() to simplify code
Date: Thu, 23 Jan 2020 15:29:44 -0800
Message-Id: <20200123232944.39247-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_152951_948828_D8CDAE40 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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

Use device_get_match_data() here to simplify the code a bit.

Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/net/wireless/ath/ath10k/snoc.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index 19a4d053d1de..88900f0399f5 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -1466,7 +1466,6 @@ MODULE_DEVICE_TABLE(of, ath10k_snoc_dt_match);
 static int ath10k_snoc_probe(struct platform_device *pdev)
 {
 	const struct ath10k_snoc_drv_priv *drv_data;
-	const struct of_device_id *of_id;
 	struct ath10k_snoc *ar_snoc;
 	struct device *dev;
 	struct ath10k *ar;
@@ -1474,14 +1473,13 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
 	int ret;
 	u32 i;
 
-	of_id = of_match_device(ath10k_snoc_dt_match, &pdev->dev);
-	if (!of_id) {
+	dev = &pdev->dev;
+	drv_data = device_get_match_data(dev);
+	if (!drv_data) {
 		dev_err(&pdev->dev, "failed to find matching device tree id\n");
 		return -EINVAL;
 	}
 
-	drv_data = of_id->data;
-	dev = &pdev->dev;
 
 	ret = dma_set_mask_and_coherent(dev, drv_data->dma_mask);
 	if (ret) {
-- 
Sent by a computer, using git, on the internet


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
