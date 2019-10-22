Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0633E001F
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 10:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hJWc1c3zxrwPJlaawAl4Yy0vvePOCL0Xw3HlMC9zgxQ=; b=GAv
	FuZqp9gpI+sUycwX9uWcvxBh1F5z0nX0Jvn5HnuqPWjkB8+n7JwJviYUX4EN+9Ozc1/wybkSKjaQP
	9cdHrEeRV2TrJK8AbVrHU7VOYvj9QtxjneixDY1CtTpFTCgInUv+Bb2X3pxLngIOF2EkEBXAqY4dM
	NCF3hJuS0AHpjtQmFGWCnvQAEynvdLfltep+UV4FOJCg0tJ8eQi8W8/7MpNOhDXNj+/cIbmUp6AsJ
	CuvV7dZNzQsYFYThfRLAGxDSQ6h9Wul1Yt+BGaHLmvIkBuwW/ZZR4jUrFwyOtOa+8VRqKRtxCeSoR
	zY1Rm7LMPLlrJtQKXJh1brSgKtcAwMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpzA-00020m-G2; Tue, 22 Oct 2019 08:57:48 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpz6-0001yR-O9
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 08:57:46 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7AC9660159; Tue, 22 Oct 2019 08:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571734663;
 bh=P1gtfMzQ64P1I8hkPS69QXlX/oj3QD3ocmBAXcTD/gw=;
 h=From:To:Cc:Subject:Date:From;
 b=U4wDhOa2jowfb4Gyg7jq5c+VsZLcbdamql8N6rT/gTEFxbtQzO7ni0cnQrx1z35eP
 yiNbAEgMJpBXhomIwGD9Xrcxs1Hn0nqyzVcbna8BVyRAPvmAVc2ROgjLO09Kq9AOoH
 Wve195Bseh3x7GCe04zbdny3xHDVndhNUtS22PQY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from zhichen.ap.qualcomm.com (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: zhichen@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F0ACA60159;
 Tue, 22 Oct 2019 08:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571734662;
 bh=P1gtfMzQ64P1I8hkPS69QXlX/oj3QD3ocmBAXcTD/gw=;
 h=From:To:Cc:Subject:Date:From;
 b=hvWS21AhsOHa0S0NnNO8mHlDU1gISUSMra4JdrrOJq+hWXMyTAPIgWmtLOGIEbBIO
 TyuMqiB4k5JndsiS/O+izJ/XmdbzFW7eIUlGef4swAqPz2tAqQ+ZYAc9/wfu5jo8Y0
 2kQtzjOq7Sn6Y6Ou+oE/6d1oImxnLYsu3scH9LKs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org F0ACA60159
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=zhichen@codeaurora.org
From: Zhi Chen <zhichen@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
Date: Tue, 22 Oct 2019 16:57:09 +0800
Message-Id: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_015744_808593_F940410F 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Zhi Chen <zhichen@codeaurora.org>, linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This reverts commit 76d164f582150fd0259ec0fcbc485470bcd8033e.
PCIe hung issue was observed on multiple platforms. The issue was reproduced
when DUT was configured as AP and associated with 50+ STAs.

With PCIe protocol analyzer, we can see DMA Read crossing 4KB boundary when
issue happened. It broke PCIe spec and caused PCIe stuck.

Tested:  IPQ8064 + QCA9984 with firmware 10.4-3.10-00047
         QCS404 + QCA9984 with firmware 10.4-3.9.0.2--00044
         Synaptics AS370 + QCA9888  with firmware 10.4-3.9.0.2--00040

Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/hw.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/hw.h b/drivers/net/wireless/ath/ath10k/hw.h
index 35a3623..17f620b 100644
--- a/drivers/net/wireless/ath/ath10k/hw.h
+++ b/drivers/net/wireless/ath/ath10k/hw.h
@@ -753,7 +753,7 @@ ath10k_is_rssi_enable(struct ath10k_hw_params *hw,
 #define TARGET_10X_MAX_FRAG_ENTRIES		0
 
 /* 10.2 parameters */
-#define TARGET_10_2_DMA_BURST_SIZE		0
+#define TARGET_10_2_DMA_BURST_SIZE		1
 
 /* Target specific defines for WMI-TLV firmware */
 #define TARGET_TLV_NUM_VDEVS			4
@@ -813,7 +813,7 @@ ath10k_is_rssi_enable(struct ath10k_hw_params *hw,
 
 #define TARGET_10_4_TX_DBG_LOG_SIZE		1024
 #define TARGET_10_4_NUM_WDS_ENTRIES		32
-#define TARGET_10_4_DMA_BURST_SIZE		0
+#define TARGET_10_4_DMA_BURST_SIZE		1
 #define TARGET_10_4_MAC_AGGR_DELIM		0
 #define TARGET_10_4_RX_SKIP_DEFRAG_TIMEOUT_DUP_DETECTION_CHECK 1
 #define TARGET_10_4_VOW_CONFIG			0
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
