Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 490A8A15AB
	for <lists+ath10k@lfdr.de>; Thu, 29 Aug 2019 12:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4PV5PBiRnfTT7aTrRhnhAosDZ7HJR/K1B3zH+Vqsn8U=; b=Z7t
	N20MX2RDc8prm8xVdQ8FDlGizLafVMr4KhNi9EI8znkloM9drE9RVpo+hzT18vpHrLExiu22lEev+
	7HCEOb0Kn8+IJq/fxg8YzVRinbbQqjikcM4V3ANyiLPbbcMq3m5COvWrGiUQgDghcaPCAbnFQ6sSl
	a5iHI2S0xMOy9OoiC0xviyaSXi8Ng4+KqmM929c2FTvHfEZeXeSAIrCE+ILJJKQyNHnPRxKAQMRE8
	3YbESYZyIdsIRM3IHMD2Hmopkx154asUazPsLiWjL4uzQozRzSlccsw8DzQ1PVxjn53KtuPUYUAbc
	df6hgzm+lU90BV91lt7Qc4D+YwbGpiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3HWo-00054A-CR; Thu, 29 Aug 2019 10:19:42 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3HWi-00053J-QQ
 for ath10k@lists.infradead.org; Thu, 29 Aug 2019 10:19:38 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8C4A4899F5; Wed, 28 Aug 2019 14:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567002676;
 bh=eIFTXnN44WQlprMoS4na5h5ialFdvgw0zGNk/aZgyd8=;
 h=From:To:Cc:Subject:Date:From;
 b=FovUFaAgwvsnMHikBlYFgbFQAx3nS3FaUhSZpXjpGlQnR3IVSLeR7QsxzE/iMzkn0
 /apSIVTDgJN8kiTIjs0TdbirvT8kw4j10yHpBtyc1q7+2xlzmXebZyD72u9/+FVFyE
 VRMXUloAhh9F7lR9P1+m5NaIMvXIRJqF5QqAYIzI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DC92D648D6;
 Wed, 28 Aug 2019 13:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566998190;
 bh=eIFTXnN44WQlprMoS4na5h5ialFdvgw0zGNk/aZgyd8=;
 h=From:To:Cc:Subject:Date:From;
 b=TGPUC1agNyoMwY5phusLKU9eJpJafFQmxqmZWqrPfZsFUUxCZDLKknmR4GbrY2898
 LHNl+HxgnQi9UQovD6uvr2q7KqGYmMG6ONhIj0J3XlewvFHl5Vxx073396rBKMets7
 euTvks6CErAIp0xa/XYJLT/8q5ySNIRqno4pHHHU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DC92D648D6
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v3 0/8] ath10k: improve throughout of tcp/udp TX/RX of sdio
Date: Wed, 28 Aug 2019 21:16:09 +0800
Message-Id: <1566998177-2658-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_031936_905397_388E7520 
X-CRM114-Status: UNSURE (   6.82  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The bottleneck of throughout on sdio chip is the bus bandwidth, to the
patches are all to increase the use ratio of sdio bus.

                      udp-rx    udp-tx    tcp-rx    tcp-tx
without patches(Mbps)  320        180       170       151
with patches(Mbps)     450        410       400       320

These patches only affect sdio bus chip, explanation is mentioned in each
patch's commit log.

Alagu Sankar (1):
  ath10k: enable RX bundle receive for sdio
v2: fix incorrect skb tail of rx bundle in ath10k_sdio_mbox_rx_process_packet
v3: change some code style
split fix incorrect skb tail of rx bundle to patch "adjust skb length in ath10k_sdio_mbox_rx_packet"

Wen Gong (7):
  ath10k: adjust skb length in ath10k_sdio_mbox_rx_packet
v2:no this patch
v2:new added

  ath10k: change max RX bundle size from 8 to 32 for sdio
v2:change macro HTC_GET_BUNDLE_COUNT
v3:change some code style

  ath10k: add workqueue for RX path of sdio
v2:no change
v3:change some code style

  ath10k: disable TX complete indication of htt for sdio
v2:change some code style
v3:change some code style

  ath10k: add htt TX bundle for sdio
v2:no change
v3:change some code style

  ath10k: enable alt data of TX path for sdio
v2:no change
v3:change some code style

  ath10k: enable napi on RX path for sdio
v2:no change
v3:change some code style

 drivers/net/wireless/ath/ath10k/core.c   |  42 +++-
 drivers/net/wireless/ath/ath10k/core.h   |   4 +-
 drivers/net/wireless/ath/ath10k/hif.h    |   9 +
 drivers/net/wireless/ath/ath10k/htc.c    | 376 ++++++++++++++++++++++++++++---
 drivers/net/wireless/ath/ath10k/htc.h    |  43 +++-
 drivers/net/wireless/ath/ath10k/htt.c    |  15 ++
 drivers/net/wireless/ath/ath10k/htt.h    |  20 +-
 drivers/net/wireless/ath/ath10k/htt_rx.c |  80 ++++++-
 drivers/net/wireless/ath/ath10k/htt_tx.c |  38 +++-
 drivers/net/wireless/ath/ath10k/hw.h     |   2 +-
 drivers/net/wireless/ath/ath10k/sdio.c   | 279 ++++++++++++++++++++---
 drivers/net/wireless/ath/ath10k/sdio.h   |  31 ++-
 12 files changed, 844 insertions(+), 95 deletions(-)

-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
