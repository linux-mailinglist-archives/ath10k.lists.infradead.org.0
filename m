Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8126FD4797
	for <lists+ath10k@lfdr.de>; Fri, 11 Oct 2019 20:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bjUv/Fy/ri2cqab6hJtJJ+zHQdrTDoghZfYRhftcsoc=; b=J2lT2gjPbEYUGe
	RfK8kr9INnRu4PzPVHqU5LKseTeZX4QxTBJsX37ZvORFqw6JFuRWRRYDkugrPDw/89VPBIxgkS6hs
	3fkTD/2nMGg1SgHz+3RTwdUq/o9saJ633OUxADIssA9xWSzo2nHNN4EzbR6RigjBzUvZTMkqNRnWR
	+Jfm/1dsjIoBSz48BuThRFU8knT/oZppOlY3AQN2xZ/3u3JQrjOk0WdubXBaknWLR31mvgKLGu50u
	cemAwu1w6GVFEWFISq/alPvjIspFnPGwetTSYuUzhm929HZIQr/s4bzEQc4FX50vNIFDSlFfgAYhK
	OxdpJgTxYlX2AZRhZSZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzeM-0002xM-F9; Fri, 11 Oct 2019 18:28:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzeI-0002wV-IB
 for ath10k@lists.infradead.org; Fri, 11 Oct 2019 18:28:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id v4so6570510pff.6
 for <ath10k@lists.infradead.org>; Fri, 11 Oct 2019 11:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8oCcxD88VFm1cXltnKInhOC0dvYbRf3OZje5KuISZ28=;
 b=DmSSa+o/fbCnmcSE8r3LLdGEcw4nF+cZDPt6n9Uav/Mh/6eUQUBdpUuOVjFil99enF
 yW+l+bqqnjB2LexYRbSpMwtzwWFE8E9D/KnGVyNJulBfAtHABiiSDzWBGbr2X/OK+XT8
 L9Hviw5kazL60EJ6JyhVmA3PsPTO5Un7UcOuq97b7+LwEoOnaInyOvbl78GA8DDCEIu4
 pKdxSQq3K3wzCSHxveT1nB+mV+iSi/AR5oKe8Z4vigMNNzWYy96byVbfG3DpQQRkesij
 1jl1r0OfXGl8OxMN96Wtp706aglMlW6IEQw6UURw+hIsGYJAX+wP3AqwzZkaV0dSvvrt
 Iz+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8oCcxD88VFm1cXltnKInhOC0dvYbRf3OZje5KuISZ28=;
 b=n86G5tHpZSKkB3+vSAe1KSH1CrNw/4FUCPB+/q9zfh52i4lUQIYKxh8re97lcyl4q6
 zAjw0FtyZ08d7TtbH+F8YF4Fptvs0TVUbzyeA1X7ZjRs4esifuk8YBI6lqi/98G32jaa
 ic45/eSetXg/y2VzrbtUcVHpRGqNI/wFFzsLAoa8zPby834tSfU6La64OrTwXyjDuNZ0
 jyI2kNs5tYPGVOmO7b5RuO0AOzpToFq9QePnrAI3IwkzqD73C/+ic7/qDEqGCN9JfzDY
 XglkIGRm0zoZW+OyG8Bkm5PJ629wp7h3+8ClX//A07TwejMcqSY7V6a3R970Ssmu6IZA
 Mbgw==
X-Gm-Message-State: APjAAAXL+CT8topiemKU6ZS/utbtC4CVZqXhgWWMiUxX7KEPJupq95jj
 t0jnmk/pUnRqMNinVFkEM6fSDg==
X-Google-Smtp-Source: APXvYqw0pkpNYcFqFnQAxe70uYZ67hQnflJjxtKuMR2lnBw5aheockxkUpH2gAVY12yHDaYAukkmnw==
X-Received: by 2002:a17:90b:288:: with SMTP id
 az8mr19023217pjb.18.1570818501530; 
 Fri, 11 Oct 2019 11:28:21 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a11sm8652343pfo.165.2019.10.11.11.28.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 11:28:20 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>
Subject: [PATCH v2] ath10k: Correct error handling of dma_map_single()
Date: Fri, 11 Oct 2019 11:28:17 -0700
Message-Id: <20191011182817.194565-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010162653.141303-1-bjorn.andersson@linaro.org>
References: 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_112822_663215_C1E16220 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Niklas Cassel <niklas.cassel@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The return value of dma_map_single() should be checked for errors using
dma_mapping_error() and the skb has been dequeued so it needs to be
freed.

Fixes: 1807da49733e ("ath10k: wmi: add management tx by reference support over wmi")
Reported-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- Free the dequeued skb

 drivers/net/wireless/ath/ath10k/mac.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 3d2c8fcba952..e8bdb2ba9b18 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -3904,8 +3904,10 @@ void ath10k_mgmt_over_wmi_tx_work(struct work_struct *work)
 			     ar->running_fw->fw_file.fw_features)) {
 			paddr = dma_map_single(ar->dev, skb->data,
 					       skb->len, DMA_TO_DEVICE);
-			if (!paddr)
+			if (dma_mapping_error(ar->dev, paddr)) {
+				ieee80211_free_txskb(ar->hw, skb);
 				continue;
+			}
 			ret = ath10k_wmi_mgmt_tx_send(ar, skb, paddr);
 			if (ret) {
 				ath10k_warn(ar, "failed to transmit management frame by ref via WMI: %d\n",
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
