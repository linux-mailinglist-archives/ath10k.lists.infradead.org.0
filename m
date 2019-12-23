Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7AF1291AB
	for <lists+ath10k@lfdr.de>; Mon, 23 Dec 2019 06:49:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LV/fUiX9nx8PX85yOyE7D0O0B0Qim9UuWJdAQuuNI6w=; b=liDS4lrgeiUESE
	PTyNFhjhPwQk4pgdicjAJO9Oy/MF9zu7N8CSvw4frxPmZBKnWVwYEbikMsjmBG9riOr7gC2PaM/5z
	n+6hyDavDTZhTOIAVh7MegULggizsTtKaRFrePG4pmf6HGioT/jid5n8jhOWaFVa060hbN0SLY8gd
	2orSmQXWle/MsUfXMOq3+e80B7vty6DH9JlfDTeQMWB2/atOLls2suxKmx3OkJwSYazJ79uUn3mBW
	8Q0FLBeADoKrpu/vle9nLUcL46jbPumyBfd2Mppr0kxDfLMThruBGDyNofjkKJiseALnOlUBfs12X
	WnVdY7PPZtJpo6iFD7ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijGbC-0003yg-OO; Mon, 23 Dec 2019 05:49:46 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijGb2-0003t1-4r
 for ath10k@lists.infradead.org; Mon, 23 Dec 2019 05:49:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id b9so8239390pgk.12
 for <ath10k@lists.infradead.org>; Sun, 22 Dec 2019 21:49:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iumy1PBiJpZgzq+fMy5WNqZile1hZxg6rvR6lEmVeXg=;
 b=bdRC6gCocAk80rA1xbTl2p/ncFNdXB1ojFpp0JkL3K/81G3P//yEdsNnpzsTtfZsPf
 3YyU0Nsh/r9PJjv/AzfM7A3D+yYzf5u0BxlxQ8gLYhOzCR+5VkfCh4dpELTXWloWB/RZ
 xEw0nYFKEpzJ74Bqfh6KuIgaKyMMaJYH0WK27MRXLAYw4BAb1VbRbLchJ7aPwqqONQ/U
 4HpP293tKl5NmXsZtEcnpb1w7oE44FZg/+73qGoUtANehnUuY+ZPs641yIhmRZ9Mp8Pe
 sVNmmOF0zrhyeQms2fuNTit47iQhqaP6Ss5h4Frxw+5ND9NlufPH9VSoFHeBSr2i2miZ
 HtWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iumy1PBiJpZgzq+fMy5WNqZile1hZxg6rvR6lEmVeXg=;
 b=kC8jMBKM6ZOy7s1sTpZOnTQOwrmQ1058udNFcTVedmCB+P6w9K4GNv5XbEdD49W8Lg
 0Binc7WvV11dRuvewIqtSeZh1sErr14VsWQlGhBUYkinEEH8ABVMSa2FAuYz43lmwgh4
 ytz2FtSBA99EDBYzIiVa4P9WYgBcn8uHgqg3lvQXJnispU3tCp0/dJyR1aWHTSAPUPmS
 NXUyhryQZrbrLihZcx8VRVTm7gzdV3v/f03RKbOrhsD1RuYXsEKCvdXDcz+3ZH5ogK7M
 wVfc6Xud34tidhbyeLO89v4BIyX8h7r+KrslQEs8yhGccxv88rBZkaUA+9DRXQnvhUSG
 43cA==
X-Gm-Message-State: APjAAAWWEpc+87oZ2QYXsMT0NTStoE4OYnqOBuNUNsWWRV1Mt0AGn27b
 w6HndcW4VuhmYKFQIbnbvx505VBx7Os=
X-Google-Smtp-Source: APXvYqzEhqEiHcIOvRTWeex5QbVNVUAfTErekI8OsTPZn9rtRwW9Q326fkVGONQjLmBd3RETwbCgWQ==
X-Received: by 2002:a63:d94b:: with SMTP id e11mr29475446pgj.79.1577080169416; 
 Sun, 22 Dec 2019 21:49:29 -0800 (PST)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id l14sm19731779pgt.42.2019.12.22.21.49.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 21:49:28 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] ath10k: Add optional qdss clk
Date: Sun, 22 Dec 2019 21:48:54 -0800
Message-Id: <20191223054855.3020665-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191223054855.3020665-1-bjorn.andersson@linaro.org>
References: <20191223054855.3020665-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_214936_186267_441FEB8D 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
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
 ath10k@lists.infradead.org, Andy Gross <agross@kernel.org>,
 linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The WiFi firmware found on sm8150 requires that the QDSS clock is
ticking in order to operate, so add an optional clock to the binding to
allow this to be specified in the sm8150 dts and add the clock to the
list of clocks in the driver.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt | 2 +-
 drivers/net/wireless/ath/ath10k/snoc.c                         | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
index 017128394a3e..3fc2cce4626b 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
@@ -50,7 +50,7 @@ Optional properties:
           entry in clock-names.
 - clock-names: Should contain the clock names "wifi_wcss_cmd", "wifi_wcss_ref",
 	       "wifi_wcss_rtc" for "qcom,ipq4019-wifi" compatible target and
-	       "cxo_ref_clk_pin" for "qcom,wcn3990-wifi"
+	       "cxo_ref_clk_pin" and optionally "qdss" for "qcom,wcn3990-wifi"
 	       compatible target.
 - qcom,msi_addr: MSI interrupt address.
 - qcom,msi_base: Base value to add before writing MSI data into
diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index 7e85c4916e7f..aeb4cca92c35 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -46,7 +46,7 @@ static const char * const ath10k_regulators[] = {
 };
 
 static const char * const ath10k_clocks[] = {
-	"cxo_ref_clk_pin",
+	"cxo_ref_clk_pin", "qdss",
 };
 
 static void ath10k_snoc_htc_tx_cb(struct ath10k_ce_pipe *ce_state);
-- 
2.24.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
