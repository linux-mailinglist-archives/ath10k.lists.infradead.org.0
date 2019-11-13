Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D258FBCA6
	for <lists+ath10k@lfdr.de>; Thu, 14 Nov 2019 00:36:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FZ7Xl8bXP18dc5azFv0//v5itfpkQayeMP97ZioO+iQ=; b=g1n/2uTKx8ljIc
	VNRqBOzJ2wZYPgw4vVUs3hOGTsIOp20iBQJ8v8OZU1mIJCawTMeIRcd0FAWKghpqpjhwTLMzObC2y
	HDVqEFHJ+OAdCPsNw0n3GkRP7ISoQ9UKqn3r++VR4npfXiTcq4wQTl9uQ6rNjWmwcylZMVTgJ+Fh/
	5wmXyzTE3UtWp0SHZL/1TSIC6DCAcE3uUnTHtoz4oL3JIPBwAJ1xbmrgq07YLhNd2lb2TytwGAOgb
	kSvGEqvPSIh/omVoUTaT3IYdC1X+C30Oel76fGi1aLX7wM85wyYFqYw/3leiHmvO0ZoHVArHLcz/e
	23JI8GCOTcKvPHTodsHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV2BD-0005fP-2u; Wed, 13 Nov 2019 23:36:07 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV2B9-0005ez-Lm
 for ath10k@lists.infradead.org; Wed, 13 Nov 2019 23:36:05 +0000
Received: by mail-pf1-x442.google.com with SMTP id x28so2748159pfo.6
 for <ath10k@lists.infradead.org>; Wed, 13 Nov 2019 15:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SjmhxW54SXkSEjAKtCETMQbt3jTR5yZxCqORBZRYl58=;
 b=UYHYWaYYM781SsQdehbJpzWjlTZmQAIGfEsd5+W03I1MfDcbb+sfyDvqsXdbEIJnD/
 VeX0GVTgrjC/zFLMI9MKbhZmJFhBTj5owbuGxRzMRJGL+EDTPcud/hGhzCG0fQXR9z0y
 ZVZBuaYIAnn4lTJYx4KcQ0mPRfIOjmYRvElsfqVJQol+GC5yiyGfGn9j9dGdVRISKxmD
 dLOuZuTrtwISDD3egQH3LrKeKD3mJndVfjhSunIcGroSQDvVOVL1pxfV+3CboksyLw6v
 MOxNXnaoEsbIdnFE3y8/gqEZRfS+pr6IL2n9uxDjuGsY0e0cPXyA79uQk0BEXoIsDlaK
 fxKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SjmhxW54SXkSEjAKtCETMQbt3jTR5yZxCqORBZRYl58=;
 b=oO3fqDR0JEN7KSX9CHt52Wio4wY0r7tvGF0qJPPPVBAoNDI4USSK79mVnSI0Y8h7eN
 ltc1E+838Bkj6JK8VzfOSut3NagzNYD6DYKH9KmqI593h6qlgmxWPbGs5W4rpHIw/CFx
 a/ZY7idJ03ha2YGFbvzRwhp8I2zI7MAi12Evo4zptOIf0VNjMhTbOOs3MUq/YSY210l0
 uze9BZ70RdHsicmXs6vmPb+omts+uq6++nI5V03t72VMlphA49aBeCjnGo5UOr7zwldX
 A/tF548u0M6cXr4CAv81t/aqAF/ldmkFtCAauhF3DtWVfsXAIGUNbMYHrXDjE3F4fQs4
 RTqg==
X-Gm-Message-State: APjAAAWtgcguuxCRcWkbiL1ZECmr8KEPe2KZ0Fb4aaVVFWIXrGPFVHq8
 WcWfLroC9qJLgtBdBgb524fUJdhdPow=
X-Google-Smtp-Source: APXvYqzevviBfAs8NwUJeoBiiRsJnoiWpZyqm4FO+fpamuqtnkn0q+9YBFL5LiaKBLj/jtOre/3uvA==
X-Received: by 2002:a63:731a:: with SMTP id o26mr6696115pgc.108.1573688162549; 
 Wed, 13 Nov 2019 15:36:02 -0800 (PST)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id v10sm3526345pgr.37.2019.11.13.15.36.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 15:36:01 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>
Subject: [PATCH] ath10k: qmi: Sleep for a while before assigning MSA memory
Date: Wed, 13 Nov 2019 15:35:58 -0800
Message-Id: <20191113233558.4040259-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_153603_840557_FB6B64D8 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: govinds@codeaurora.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Unless we sleep for a while before transitioning the MSA memory to WLAN
the MPSS.AT.4.0.c2-01184-SDM845_GEN_PACK-1 firmware triggers a security
violation fairly reliably. Unforutnately recovering from this failure
always results in the entire system freezing.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/net/wireless/ath/ath10k/qmi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 637f83ef65f8..a0ba07b85362 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -773,6 +773,13 @@ static void ath10k_qmi_event_server_arrive(struct ath10k_qmi *qmi)
 	if (ret)
 		return;
 
+	/*
+	 * HACK: sleep for a while inbetween receiving the msa info response
+	 * and the XPU update to prevent SDM845 from crashing due to a security
+	 * violation, when running MPSS.AT.4.0.c2-01184-SDM845_GEN_PACK-1.
+	 */
+	msleep(20);
+
 	ret = ath10k_qmi_setup_msa_permissions(qmi);
 	if (ret)
 		return;
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
