Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4040BFD854
	for <lists+ath10k@lfdr.de>; Fri, 15 Nov 2019 10:03:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Z08JkHxnWgnZHCQ+x665r3l1tBlA2Ec51jTRjCxUBbQ=; b=Ea+
	+I/4X0bmlWR2iOuPoSofl7VQRYL+N0bMi7lgNinUTVh32LLj1RrJieadzh38KuUozkvXT/WDQl4zp
	2ffZS5fvXavzW9AeRMzyD1MF2+gU33MTP/bHCJZuxgA1vMsdyb5ryzuKZG5Th4Fw38r/95d7QNSM3
	PYI/7FT7Rnasv4HZK1n1gicemm52mf8gJkpeuNPeJnfrT6a6IRFVScMNmk1eISzLm6SmWDElNetwQ
	yyP9yja6JbsDzZm2zXolYDX867PMtTWO0HO9AcyZeJqtkBszyU79HP7OXUUQzOi6YnJjGrIGwl/Ur
	CgwE1ji3oWNv8JRE/a+k3S6S95DQwxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVXVU-0000Am-JY; Fri, 15 Nov 2019 09:03:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVXVQ-00009x-7B
 for ath10k@lists.infradead.org; Fri, 15 Nov 2019 09:03:05 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id EAD9961196; Fri, 15 Nov 2019 09:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573808582;
 bh=Z4gPf030YPBEPaOKFiD6fmUGZ+QzaliCYIEtwsTmnzc=;
 h=From:To:Cc:Subject:Date:From;
 b=gdABsYvKvpmQGgZy4Arkdy10T8QomNmjGYl4WcxeHzkG1XeRopdwFVrF7S6SemFgv
 r1IgYLkfjaj5/t99oat7lb7SpuOnuU3GHAHBGZwTeNcrlT1YRPUpLJ/+L49BozZkyc
 OCprlGjKb7HU5IF6zBbSB9HxTgAufGZ3JyO7OySg=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 669B560F39;
 Fri, 15 Nov 2019 09:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573808582;
 bh=Z4gPf030YPBEPaOKFiD6fmUGZ+QzaliCYIEtwsTmnzc=;
 h=From:To:Cc:Subject:Date:From;
 b=gdABsYvKvpmQGgZy4Arkdy10T8QomNmjGYl4WcxeHzkG1XeRopdwFVrF7S6SemFgv
 r1IgYLkfjaj5/t99oat7lb7SpuOnuU3GHAHBGZwTeNcrlT1YRPUpLJ/+L49BozZkyc
 OCprlGjKb7HU5IF6zBbSB9HxTgAufGZ3JyO7OySg=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 669B560F39
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=zhichen@codeaurora.org
From: Zhi Chen <zhichen@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH RFC,
 v2] Revert "ath10k: fix DMA related firmware crashes on multiple
 devices"
Date: Fri, 15 Nov 2019 17:02:53 +0800
Message-Id: <1573808573-12159-1-git-send-email-zhichen@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_010304_282823_DD696D1A 
X-CRM114-Status: UNSURE (   9.62  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
v2: revert 10.4 only because old chips have different AXI RD/WR CFG
---
 drivers/net/wireless/ath/ath10k/hw.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/hw.h b/drivers/net/wireless/ath/ath10k/hw.h
index 35a3623..59a9a58 100644
--- a/drivers/net/wireless/ath/ath10k/hw.h
+++ b/drivers/net/wireless/ath/ath10k/hw.h
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
