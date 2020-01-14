Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BF513A043
	for <lists+ath10k@lfdr.de>; Tue, 14 Jan 2020 05:35:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Qvp6K9FHvdwLixPMNd38AVKwktqCt0fKKuAFscyFwDU=; b=DCx
	7lZAs3buQNkM8s43Qx+JaktDBladT2aDxf/903RXtt7aNent7R4B9TfmryIaYhT+Q0UL4nd3HLgfy
	/qUbyCmWA4VhFo0Yo6nQ2dZWz7DSv1ApsftHRAqrpq4jelgufr/LJmawPDLNEMbmPZZmf88/IyGeP
	ldfLXvCdLzzgIgXKfpEy23rKks7QaaZiN91NDicrrnEAqnG35FqTIq8u1etfgXeE2SodLKLNeD5uF
	UPLM3Ba3PJaSbalXq35d4r1aQaJ9v8S8m4Im82per++X+tmp+n36ibqXFRlmKEwv6icLPVLWkTBhB
	i0296azAChGyr8Eyx9xLFgzJCowwM8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irDvV-0001CI-6J; Tue, 14 Jan 2020 04:35:37 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irDvR-0001BZ-TC
 for ath10k@lists.infradead.org; Tue, 14 Jan 2020 04:35:35 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578976532; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=d8TUjvh0g4x7lvEkerbJjZ1fOkrqCiugD+sHY08g074=;
 b=TI/eHZtH2qis3mK5+OsqVnHW6qhbzOvQhjEAnqu0p6SflQc+NjXXyHeshc7KI/7hUkIvOeLV
 XEJYWWiNbhSerlgQRJ3wbj3lbLsj8+beS2yi1yAAKOJlSMHdiCBzE+GySl33KidlskHOxqXt
 zKH5ca+kF/fpes7rcmJE0m1jL2Q=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e1d4512.7fcc61252308-smtp-out-n02;
 Tue, 14 Jan 2020 04:35:30 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 77DD9C433A2; Tue, 14 Jan 2020 04:35:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from zhichen.ap.qualcomm.com (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: zhichen)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B96B8C433CB;
 Tue, 14 Jan 2020 04:35:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B96B8C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=zhichen@codeaurora.org
From: Zhi Chen <zhichen@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH,
 v4] Revert "ath10k: fix DMA related firmware crashes on multiple
 devices"
Date: Tue, 14 Jan 2020 12:35:21 +0800
Message-Id: <1578976521-6104-1-git-send-email-zhichen@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_203534_005722_ADEF75AE 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

For QCA9984/QCA9888, the DMA_BURST_SIZE register controls the AXI burst size
of the RD/WR access to the HOST MEM.
0 - No split , RAW read/write transfer size from MAC is put out on bus
    as burst length
1 - Split at 256 byte boundary
2,3 - Reserved

With PCIe protocol analyzer, we can see DMA Read crossing 4KB boundary when
issue happened. It broke PCIe spec and caused PCIe stuck. So revert
the default value from 0 to 1.

Tested:  IPQ8064 + QCA9984 with firmware 10.4-3.10-00047
         QCS404 + QCA9984 with firmware 10.4-3.9.0.2--00044
         Synaptics AS370 + QCA9888  with firmware 10.4-3.9.0.2--00040

Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
---
v2: restored 10.2 register configuration
v3: modified commit message
v4: resolved conflicts 
---
 drivers/net/wireless/ath/ath10k/hw.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/hw.h b/drivers/net/wireless/ath/ath10k/hw.h
index 21b7a2a..775fd62 100644
--- a/drivers/net/wireless/ath/ath10k/hw.h
+++ b/drivers/net/wireless/ath/ath10k/hw.h
@@ -816,7 +816,7 @@ ath10k_is_rssi_enable(struct ath10k_hw_params *hw,
 
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
