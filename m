Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08FA126361
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 14:24:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4L0dHF4fkAKnynkRm1akOt7GCX6HjZS6nu1TuqmPi6Y=; b=I1Op/pX3gD9STR
	YDWNTuO3mXu4WV9Y38hlC+VifdRZO+Pl5nI75SPwpiYdInvO1H17QxRGgRUmnX2HsUk5ZrhvTZtp0
	cyfhhnQCc9bZ0LRdIbSCO/Sat3t1E/yWCzfydN7CAHt9xbZuwfGoHad2mHBnbOHlmaBfSmZ9OUa3Q
	7E1xMR4m2dOz0BhBzOilF9kv78Ojmkoj8iojrCEgQpE3EVrRm4fuLDgUk83NJZMT388//B+T8ATVX
	/Jzb5STQMZs8mLKOcTLzsiL1qiJH+WnwEgE4J7kWuQcRHxicwDLSQOxUyjnxk35Iwa49dxrJnk0Gf
	/YIbaoaqYLklgA1sx9nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihvn5-00049d-AK; Thu, 19 Dec 2019 13:24:31 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihvn0-00047K-Js
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 13:24:27 +0000
Received: by mail-ed1-x543.google.com with SMTP id f8so4869743edv.2
 for <ath10k@lists.infradead.org>; Thu, 19 Dec 2019 05:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uH+aDS9FUX0GfFwi0ZzL3xSE3Gr6/KDnkMPDTHrbWGU=;
 b=RX/8tecahw1r+PMulH8xINJ4kaoUwAGQs0CjBfHXoXKe+ddKMMVL98ff/55YHZHUpq
 yz1iwfJnQxcCJNookUWotO6cCBnhD+nZMSZJE0Z5Ilyjvz3L/h69HYiuqLMDO2XI7S7e
 QpZw+eRlmNE1IIaLhbIHW6/GkfbfIUQ2+0ftG3TqUgdTDaC1N2aFREZ7IWBaOtJBcQuG
 +kOojnN65cO/XwKn0j/vfRq+wOt66EfKKxIeY2Xupa31oGxOCyxrwIpTpFUrHS/J9E7y
 X1LmQZUJCLAV0DDu8J8k2EgRi2E6DrcR+ccrlhsAMZQ4sqMLtapT4f+0uD/jTxUmw780
 w75w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uH+aDS9FUX0GfFwi0ZzL3xSE3Gr6/KDnkMPDTHrbWGU=;
 b=fCdcyBVfQ8JfnuA/RIQ+pzmc4IT0DlKvoHS8mCKsHgzQt8/Ojn8UA46e36Mvt/tSXc
 AAZ4is68GPfwM6lTEUSpy1ujRY9bomudfKxdwn1+T1Aa+dPjo0N76pAo9mcECRGr9wRh
 LS+5cOa6Qm5rVuoQ7Ltv7l5R3LxQtCiKUPiQ4R+3hpxUPHTER5D+7pkHTy8qJeoKL97d
 nRbE99yiUxKTISI4qUB9Ha5lvN5TT8HoQAhdxvM8SBUlv9EYhoC6lbBD+6n7KEKtvFYN
 WKOis7l0lNgZ6OJyCjczOzlqR9OfakzRCtL7ftUSZL7FzJagwCS50q7o0SKCbDwtKrMC
 vfQQ==
X-Gm-Message-State: APjAAAXbE3YFGEZ5nYPgiPQKAFCZZbBNkL741nMkX8moQWulxg6X/3/Y
 28eRcEjdqkAgS8UZn0BErC6nug==
X-Google-Smtp-Source: APXvYqzllGHKaz42y389MG+UUUFshXZdU8TK+QtM1Os0aRVrOP2s4lubdfeYnEqljWeTGFXE629Dzg==
X-Received: by 2002:a17:906:260b:: with SMTP id
 h11mr9333551ejc.327.1576761863807; 
 Thu, 19 Dec 2019 05:24:23 -0800 (PST)
Received: from localhost.localdomain ([176.61.57.127])
 by smtp.gmail.com with ESMTPSA id cw15sm410286edb.44.2019.12.19.05.24.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 05:24:23 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: kvalo@codeaurora.org,
	akolli@codeaurora.org,
	ath10k@lists.infradead.org
Subject: [PATCH 2/2] ath10k: pci: Fix comment on ath10k_pci_dump_memory_sram
Date: Thu, 19 Dec 2019 13:15:39 +0000
Message-Id: <20191219131539.1003793-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191219131539.1003793-1-bryan.odonoghue@linaro.org>
References: <20191219131539.1003793-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_052426_648182_2934BBFB 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The description of ath10k_pci_dump_memory_sram() is inaccurate, an error
can never be returned, it is always the length. Update the comment to
reflect.

Fixes: 219cc084c6706 ("ath10k: add memory dump support QCA9984")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/net/wireless/ath/ath10k/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
index 4822a65f6f3c..ded7a220a4aa 100644
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -1578,7 +1578,7 @@ static int ath10k_pci_set_ram_config(struct ath10k *ar, u32 config)
 	return 0;
 }
 
-/* if an error happened returns < 0, otherwise the length */
+/* Always returns the length */
 static int ath10k_pci_dump_memory_sram(struct ath10k *ar,
 				       const struct ath10k_mem_region *region,
 				       u8 *buf)
-- 
2.24.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
