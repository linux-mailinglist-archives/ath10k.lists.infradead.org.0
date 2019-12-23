Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD551291A9
	for <lists+ath10k@lfdr.de>; Mon, 23 Dec 2019 06:49:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oMwGJiPsviAiQJX3mEOgKrsC0wVoiTE9NXEoSW2irfU=; b=Hjpfeoyn0jTdGo
	ggn2dWBNo6aaL0+83QLuCjglvGO2dpHGNYopdMeGvvJ3FZ1Fbpb90Ct8J9m5m3ONsI/qPpmUxQWmL
	cvs2xTYWVwswSsjnZ1d6uFMZ23gOv8sf0SKf8F2AG55K6CxnpZ8h5J6aF7fMw+tGvtyZITZxGiQKH
	otTiuh2G7JNcXCRgaRWFjnHxiMoJaTHuT6Fyf2Ut3iqAYdaTBmHVGAf7qdSdwGxUpdf1lfPKrmken
	oYaq46msn2aR7gZ2P/ysg9y36Clhjoz0Tx35CumDWpmtCr5b0sFWWBK+WTjyDcSVATzm2A/W5qZwy
	ikLRAaPPtwRggVcJq7rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijGb4-0003um-RV; Mon, 23 Dec 2019 05:49:38 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijGb0-0003sv-At
 for ath10k@lists.infradead.org; Mon, 23 Dec 2019 05:49:35 +0000
Received: by mail-pj1-x1044.google.com with SMTP id s7so6992571pjc.0
 for <ath10k@lists.infradead.org>; Sun, 22 Dec 2019 21:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1XUacwVg6UtA8MchmvXuh03DJHAG9CnuImbIcloSG5k=;
 b=P+iJV5pbry18PLZyr669o+IPKh7QicKAILliFehkugV8ZOKOxqSVcVXCmVSgYN9xrj
 xPe/xyLltPJI0X9rQ5GMwIfto/S4RT67Q3m7djdZY1OI6uYLvGqoHUhK+AGCiiojEPLm
 zvsrB/SWV0NUhLbE2cPom+DB22t5tcs8k0dhTICX6mSFxKzyzMegfjldRBFkbD/PA23q
 /7U/8X+5JVjimI1Q24WalhGe91L1whzdSfg6ro0rNYPBfCCiKVfg6vC3RmjDE9Zhon/S
 TiNnGD7+dIqmKWYJuX7UXloGM21mecV56nSdh2yFlLZPDfGvWj+zzjQSW6+QbV0LY3dd
 afFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1XUacwVg6UtA8MchmvXuh03DJHAG9CnuImbIcloSG5k=;
 b=pEx3z285w2bPzuKxojoST7xHSn8sN6UnOi42WvxCv5/QLqaTPVkDLzV5FpffRzkpke
 CxxHKyphzjhHUZYuWi3pHwrAfwq0KkAk+zoFDy9zqtIQ605tfza+RX66jgV7WPiXAQFJ
 QulrE/dYOpzItC50ULm9rjSC4PFck5CYmd0Nz6QPZvDnoFl/TOnCHvShhk3vkL8hr0fC
 DxdvMJdkmZD1jLrKRbmaoe9zvx1Bj+dmgwo4ntA2wXPCV9GFoOwZh8tWMAio+tmdF/MA
 irpy0O8krFwNVyjVmA/gNhEUDWZbywrzbObu2DLwcGWCMsqEGY5uztYLjTM/fQopuTGQ
 BD+w==
X-Gm-Message-State: APjAAAXzZlXK03uIzYk2puAnFannNnNiYjBPSiunu1U8RmM4Y9o8pWAZ
 m6/+aXIEvn8vAwHh0Fpwye6vKA==
X-Google-Smtp-Source: APXvYqw+lXD6B//G6RmvqL6dzbQ+OHOTBYMX7tSL/CHI+FnUJbP04tPOj2vJTeE6aVXU6tCj3fxQmQ==
X-Received: by 2002:a17:90a:b392:: with SMTP id
 e18mr25820505pjr.118.1577080168070; 
 Sun, 22 Dec 2019 21:49:28 -0800 (PST)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id l14sm19731779pgt.42.2019.12.22.21.49.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 21:49:27 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH 0/2] ath10k: Enable QDSS clock on sm8150
Date: Sun, 22 Dec 2019 21:48:53 -0800
Message-Id: <20191223054855.3020665-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_214934_378678_83A14F00 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On SM8150 the WiFi firmware depends on the QDSS clock ticking, or the system
will reset due to an NoC error. So this adds an optional clock to the ath10k
binding and makes sure it's enabled while the WiFi firmware needs it.

Bjorn Andersson (2):
  ath10k: Add optional qdss clk
  arm64: dts: qcom: sm8150: Specify qdss clock for wifi

 .../devicetree/bindings/net/wireless/qcom,ath10k.txt          | 2 +-
 arch/arm64/boot/dts/qcom/sm8150.dtsi                          | 4 ++--
 drivers/net/wireless/ath/ath10k/snoc.c                        | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.24.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
