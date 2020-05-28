Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC2E1E6ABC
	for <lists+ath10k@lfdr.de>; Thu, 28 May 2020 21:24:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EE8KWg3js5YTyL5qv3/iXBc64N2iEWkvnkG8mTNrbHo=; b=ig2z2PLOTyF6We
	XnyQ9VMiJee2kGtEGFEVXzBCOjNfUrm67oHAmvSrb5DyS6okWgLVfBG6drymx4KELaoF0Ejnih/cr
	Wm+jd9JR30tgZa6V/3ydfpo7jDBwWcX03oTwHpfhB3fmQUAAFxmJd2jUYiOb0ulepvTH6lFetAPhp
	5YI60RAV2w6a8UaxjOkdEN+xtdSmoYeiHzczD1BxNrDuhuxQhOiPd/mPjlzGpXjM1DgD6Ip+E0jVj
	LcVVAQVT6uv6u0QaXtplSJQglPx4FvU0xtTLOK7VR/T+mC9yS2AGm5Le9fGlTl2o11tZk9w2ytqXf
	oNVk7+x/iW5n3OMTTRnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeO96-00017a-AS; Thu, 28 May 2020 19:24:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeO63-00076F-1z
 for ath10k@lists.infradead.org; Thu, 28 May 2020 19:21:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id j21so48627pgb.7
 for <ath10k@lists.infradead.org>; Thu, 28 May 2020 12:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y6S8UT7fOzgLP5qh6hspSGqd2CboLdcTSP/4m/p79vQ=;
 b=I9riZ1kCTjkAjgZQb6aDNzAbdKeGBwRNOUJ4ULr4c5YCaT0tSFe32xf7r6vTQfi+Yz
 HMmfSquN3oTGCbPb4eaETRVyLNIX4QrM4CpjGjMudXBkCfJlewS0v3NeBkAoiKpw4IYt
 EQUChaK4yvPaG+0SWNOR+DG8Vqt4u13ZuykKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y6S8UT7fOzgLP5qh6hspSGqd2CboLdcTSP/4m/p79vQ=;
 b=iRg1QpWnoaDzDKkqgoLav1l8efOn3xjgPsKsK4+BajxTPghWeetW6Cu50BqI4YCTi8
 wcjE4Dr2v+4d+bELUHfQKaHLPdBQfgW17LM+8XbAJ3QYubzW43Fj64BEKAjFhrJF+98D
 tVRyiWE/IOJayK3UpssRw6N0QdtDjXnX7b5gPe8O86k9kB6Bcgf/KtljWLxtS648j5XY
 Jq6DFIkWv89NsTSwrqAR9miYO0+WqbtjYm9RIjNmxHF4WVfaYcAq0pUn7+ISi9WrCXnp
 U6CB/R0C5WT/KffbK7vrpTrq0GRWG0LrDCz2JcmQZU+xijZOdyCv6gMjBSK0tw9d3X+r
 EUlQ==
X-Gm-Message-State: AOAM5301+jUf/2fJ9Uh+TCXcf8aeS6DJYBxi7Ug8eqTzr4PwrIRXRQF0
 0ZDulX3plRt8DSVuEXqC/F5q0g==
X-Google-Smtp-Source: ABdhPJye6QMenut6Cdb/aFoZAscfJN27BnFnVZBdVCmU8aOVmFGacFa/HAo0AxTatDB/ZDw6FTNwrw==
X-Received: by 2002:a62:8c15:: with SMTP id m21mr4752243pfd.59.1590693699587; 
 Thu, 28 May 2020 12:21:39 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id v12sm5630151pjt.32.2020.05.28.12.21.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 12:21:39 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH] ath10k: Remove ath10k_qmi_register_service_notifier()
 declaration
Date: Thu, 28 May 2020 12:21:09 -0700
Message-Id: <20200528122105.1.I31937dce728b441fd72cbe23447bc4710fd56ddb@changeid>
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122144_317480_69A43676 
X-CRM114-Status: UNSURE (   7.62  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, linux-wireless@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, ath10k@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, netdev@vger.kernel.org,
 Niklas Cassel <niklas.cassel@linaro.org>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The ath10k/qmi.h header file contains a declaration for the function
ath10k_qmi_register_service_notifier().  This function doesn't exist.
Remove the declaration.

This patch is a no-op and was just found by code inspection.

Fixes: ba94c753ccb4 ("ath10k: add QMI message handshake for wcn3990 client")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/net/wireless/ath/ath10k/qmi.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.h b/drivers/net/wireless/ath/ath10k/qmi.h
index dc257375f161..e03581182919 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.h
+++ b/drivers/net/wireless/ath/ath10k/qmi.h
@@ -112,7 +112,6 @@ int ath10k_qmi_wlan_enable(struct ath10k *ar,
 			   enum wlfw_driver_mode_enum_v01 mode,
 			   const char *version);
 int ath10k_qmi_wlan_disable(struct ath10k *ar);
-int ath10k_qmi_register_service_notifier(struct notifier_block *nb);
 int ath10k_qmi_init(struct ath10k *ar, u32 msa_size);
 int ath10k_qmi_deinit(struct ath10k *ar);
 int ath10k_qmi_set_fw_log_mode(struct ath10k *ar, u8 fw_log_mode);
-- 
2.27.0.rc0.183.gde8f92d652-goog


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
