Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1771291A8
	for <lists+ath10k@lfdr.de>; Mon, 23 Dec 2019 06:49:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHTgWlnc+EJ+dc2RXoeDCcyByY9CBgbMq2HVdvavadg=; b=FQfgYYUQKDhb2e
	LZgb3kcPdX4nJO39MiVxPuGSts95ks8Gnfp+gs2tE3XyxLdqrbl0jx3tWRkMFy9G/3q+UemUSKhiM
	mOgHzxugtbaRfTDv6rZrXVN0p4Z9OSlry/9SeDA2BNbwcFXwlGQ799Fvx+WPhs3UYz8jGoOUftd7r
	gXj9t0VrC66dySNfMl8VbaxAgmIxi+d/ULNuPyQFoiQ2ENMCFci9x8tNDbvaqck67sUsBxVD1b+iq
	0T9RSQ1DG01c9xWF3FwZ5vsaWciLCUcvIUqnkF+e9lJbza/ZlnQHa4juQsVCwRpm262RAGJ9Odrj+
	rn+YR/mt2kN7dDIGiTFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijGb7-0003vk-8q; Mon, 23 Dec 2019 05:49:41 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijGb1-0003t4-QI
 for ath10k@lists.infradead.org; Mon, 23 Dec 2019 05:49:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id x185so8630036pfc.5
 for <ath10k@lists.infradead.org>; Sun, 22 Dec 2019 21:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1TAbfRw81wKjdlTK4DIpia8dPfGxXFTyTxBsBiwwkkI=;
 b=kG4VoaiaWW1vD5ps1J4P+FfDOHsHkXtmjijWd4hvkskVttky6HDYPqWh67j5RsN1Pn
 tiW1BqPJcpvZ9hJ48esmhbOViZZtsrE/qTw5GClQSiw3gSVUdTtKCVGzmpbjYT5vq0Ne
 gY2Uvv/3+BfdXj2uaAJ9BA72SMu7mVJ59cClzrJfp2MwMSWEmoJabVRl2uqL4N71GHfq
 UzNh8Sdjkbu7GcvVNm2uZWhlHQkJVrp27DcBpQkKxNI1UfApVheLQ0JDrfhOl4Qh0Ywj
 0MJaMlG3OpwPIVYzwNW9Ft60xrlKy8q75gxSiSf+0+56sUe363slVJsofYp4rghVRfAq
 uDTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1TAbfRw81wKjdlTK4DIpia8dPfGxXFTyTxBsBiwwkkI=;
 b=BfelYibO9Jvg0G6TY4g3pS+TrTpV9RQQS7AF0PRmmKvsElAVWl4U2AonyT40NLCXjV
 97covInRBUgEjBj08rkeDOTPX5Mo6QpuNPGt48pVuYSzrsAIS2oF0hwIk5l6XAt+mI/J
 6M7wqyO497PgSr9WRWJwUw1w5iwKDNaKa8J6odXIwGng3LxNEV1tk7cyu/O4bppjD9VR
 6TjhNq0E81q0D+BcBhDt+PxwyUhK7owJTyzx3+X1Z+cCFBWiGY1OSQAEuVjqR+VklELo
 6nLH/Qp+XmzjDOK/437sdbqx7tQnJ5e0p+Oq8+jRewWYJlE/niklFOKEjVCnXufPOh8M
 FXMg==
X-Gm-Message-State: APjAAAWPYQd/MqvHrLMqDaJqUG3h9XA3l3U4W8yiUlkR74EfOS5JcHLJ
 XV4WhGTa8MFW3PbKo8RoXXk5Hw==
X-Google-Smtp-Source: APXvYqxy4LnU/4UbJSEnuIjt2lbosN4Qr2FWETJStKyhLrZ1sLKFbK2FAuxj/bEHT6NhZ0QILwBT2w==
X-Received: by 2002:a63:fd43:: with SMTP id m3mr29595462pgj.164.1577080170792; 
 Sun, 22 Dec 2019 21:49:30 -0800 (PST)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id l14sm19731779pgt.42.2019.12.22.21.49.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 21:49:30 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/2] arm64: dts: qcom: sm8150: Specify qdss clock for wifi
Date: Sun, 22 Dec 2019 21:48:55 -0800
Message-Id: <20191223054855.3020665-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191223054855.3020665-1-bjorn.andersson@linaro.org>
References: <20191223054855.3020665-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_214935_855788_381D9B1E 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
 linux-arm-msm@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The WiFi firmware on SM8150 requires the QDSS clock to be ticking, so
specify this clock for the wifi node.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 373fa098ebb2..0f0c9db3d484 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -929,8 +929,8 @@ wifi: wifi@18800000 {
 			reg = <0 0x18800000 0 0x800000>;
 			reg-names = "membase";
 			memory-region = <&wlan_mem>;
-			clock-names = "cxo_ref_clk_pin";
-			clocks = <&rpmhcc RPMH_RF_CLK2>;
+			clock-names = "cxo_ref_clk_pin", "qdss";
+			clocks = <&rpmhcc RPMH_RF_CLK2>, <&aoss_qmp>;
 			interrupts = <GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 415 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.24.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
