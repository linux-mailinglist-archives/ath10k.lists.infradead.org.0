Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AD611C6A9
	for <lists+ath10k@lfdr.de>; Thu, 12 Dec 2019 08:51:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fCgzQs1uhYjuMEjRhPJ89Axi+qdiKiMbdwoa2Pw1EEo=; b=qRiWcJSTgMLa7SErPwYF9Xi4Be
	dcgZXPmc4qKfb+b0l1cvzn1X/T+Mo0yg8Nu87mnhUHwxiubljVOZQ7TgBQewL3kbgK7SvGxLsCN4Z
	Tgd1gRRHr9eBgIJtM+iT6vb7BZENzVN/AFL4i36uvRiL2mPRCX3rFYrEBtIeFNqYc3qaXFaZJlj9b
	vfmuXO7o2C4QFyD3OnT7u2QZHCW+trpiIOTJZwqRShdAHBxljmF7wwTnbalvtSZVjHD8tYdy2YC6j
	KFUtVBVHqIXToOU+aXzFck1sQsPO9AnyawDrfAp+8bboPvJxUNjP9Ef1ZE8VDfcdfE1951uVZhlfX
	gak6QoTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifJFd-0007jJ-Ml; Thu, 12 Dec 2019 07:51:09 +0000
Received: from a27-185.smtp-out.us-west-2.amazonses.com ([54.240.27.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifJFX-0007i8-UD
 for ath10k@lists.infradead.org; Thu, 12 Dec 2019 07:51:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1576137060;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:Message-ID;
 bh=30SbRHuyYH9I0+meSymRw/7OWb5sfw3MRD2S/c4vwDc=;
 b=Dznh0uzR3L2T5qGTUYB4vI4o9TqFftwGD1//B6ZfvWzEx2gUCdA3IxYNBbizvUin
 fiWRAxa5drm0HRcwfCZfzMzFdz4R7e3p2u2PagBYeWFuxy3e296tRSmBfKdTI0KhgSa
 rKAFj7BokPHJWeI/RzKmxYC4ad+yiZI6jW/ysB3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1576137059;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:Message-ID:Feedback-ID;
 bh=30SbRHuyYH9I0+meSymRw/7OWb5sfw3MRD2S/c4vwDc=;
 b=YTfdhCeyvtwPrVDmhdpe7osfaaoIsTqPJ/rZpXYFUc1wEGClRuLHXjQUsVPOQmyX
 Kvi2fIDJyrTEbcllAwzcA6kTV4WeXTMYWGhMhuj7M0GmvYn4S4M8oyJjv2hsHhmpQC4
 yCsxenaa7F8oP8Y2nSFRgQOz9u8adACLCTff7S4o=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
MIME-Version: 1.0
Date: Thu, 12 Dec 2019 07:50:59 +0000
From: Zhi Chen <zhichen@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH,v3] Revert "ath10k: fix DMA related firmware crashes on 
 multiple devices"
Message-ID: <0101016ef916ee0b-63ec3937-3f44-469d-bd01-b1555bbc6721-000000@us-west-2.amazonses.com>
X-Sender: zhichen@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-SES-Outgoing: 2019.12.12-54.240.27.185
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_235104_008394_2E741F83 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.185 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This reverts commit 76d164f582150fd0259ec0fcbc485470bcd8033e.
PCIe hung issue was observed on multiple platforms. The issue was 
reproduced
when DUT was configured as AP and associated with 50+ STAs.

For QCA9984/QCA9888, the DMA_BURST_SIZE register controls the AXI burst 
size
of the RD/WR access to the HOST MEM.
0 - No split , RAW read/write transfer size from MAC is put out on bus
     as burst length
1 - Split at 256 byte boundary
2,3 - Reserved

With PCIe protocol analyzer, we can see DMA Read crossing 4KB boundary 
when
issue happened. It broke PCIe spec and caused PCIe stuck. So revert
the default value from 0 to 1.

Tested:  IPQ8064 + QCA9984 with firmware 10.4-3.10-00047
          QCS404 + QCA9984 with firmware 10.4-3.9.0.2--00044
          Synaptics AS370 + QCA9888  with firmware 10.4-3.9.0.2--00040

Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
---
v2: restored 10.2 register configuration
v3: modified commit message
---
  drivers/net/wireless/ath/ath10k/hw.h | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/hw.h 
b/drivers/net/wireless/ath/ath10k/hw.h
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
