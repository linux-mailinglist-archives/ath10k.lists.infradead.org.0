Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C42BDA9F
	for <lists+ath10k@lfdr.de>; Wed, 25 Sep 2019 11:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fAUM2/4vqCal78L081YKiR0Voxdf9w0EUoDjsJRrJzw=; b=oao
	Q7uuTiwbJbXBiZPvFWP5Z+GDDgXBxUrTTjJTkiIj61FCqMhVX8nF1WGLFzyzK5hvVwMNofAdqi/xo
	9Qb5Ic4KjDKsdOLhpgFBcwoFPfUiyxc1AL4hH24YRhg5lVX+H0kmzy6PKW/6z288K62PELrMHrfJc
	gRlGLtbn9pzo/VobEswV9ffnMorDCtyWmUMUN9kIJqGfozta2e0oHrs4InVAO9S8g+OLCy3PJlU1h
	oQIrQBVcCwhCvs15woLiAISIR8G9zd72V2gkBTwQKZOLONKml+0S0Z7qEjzMoGr4uQ+htF+DH3IFG
	JtXW/Z/1lT1y2wE9vXsvsqddxpoL2qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3K5-0001j8-Sv; Wed, 25 Sep 2019 09:10:58 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3Jw-0001iH-Ol
 for ath10k@lists.infradead.org; Wed, 25 Sep 2019 09:10:50 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E1E9760E73; Wed, 25 Sep 2019 09:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569402647;
 bh=5PJK+SEQ8N7jhb0SG9vi+nd3Gvu/oOJKz/borfItxDc=;
 h=From:To:Cc:Subject:Date:From;
 b=Mgr4SvT+R3yHsS8BEepSaYWfLLpSowRJkN58Osz5lhIbbfKfbr0dnAC8sweoPqz8p
 KyHZ9kBqvGVMqZLjq7ewZkmgU0LaDeIAOvoKUA8txVrtKKhhPjM7LbDFzN+AXi7P2D
 jCePmHumHrgj0Ln6QBN28IWWeQZXsghGPHhq7Y0o=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D61336115A;
 Wed, 25 Sep 2019 09:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569402647;
 bh=5PJK+SEQ8N7jhb0SG9vi+nd3Gvu/oOJKz/borfItxDc=;
 h=From:To:Cc:Subject:Date:From;
 b=Mgr4SvT+R3yHsS8BEepSaYWfLLpSowRJkN58Osz5lhIbbfKfbr0dnAC8sweoPqz8p
 KyHZ9kBqvGVMqZLjq7ewZkmgU0LaDeIAOvoKUA8txVrtKKhhPjM7LbDFzN+AXi7P2D
 jCePmHumHrgj0Ln6QBN28IWWeQZXsghGPHhq7Y0o=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D61336115A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v6 0/3] ath10k: improve throughout of RX of sdio
Date: Wed, 25 Sep 2019 17:10:36 +0800
Message-Id: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_021049_019836_E213DC4A 
X-CRM114-Status: UNSURE (   7.44  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

v6: change code style, change commit log to add test value of RX, use sk_buff_head to replace the rx queue
this is 3 patches of the 7 patches from ath10k: improve throughout of tcp/udp TX/RX of sdio

v5: no change

v4: add err handle in ath10k_sdio_mbox_rx_fetch_bundle, change commit log

v3: change some code style
split fix incorrect skb tail of rx bundle to patch "adjust skb length in ath10k_sdio_mbox_rx_packet"

v2: fix incorrect skb tail of rx bundle in ath10k_sdio_mbox_rx_process_packet, change macro HTC_GET_BUNDLE_COUNT

The bottleneck of throughout on sdio chip is the bus bandwidth, to the
patches are all to increase the use ratio of sdio bus.

These patches only affect sdio bus chip, explanation is mentioned in each
patch's commit log.

Alagu Sankar (1):
  ath10k: enable RX bundle receive for sdio

Wen Gong (2):
  ath10k: change max RX bundle size from 8 to 32 for sdio
  ath10k: add workqueue for RX path of sdio

 drivers/net/wireless/ath/ath10k/htc.h  |  12 ++-
 drivers/net/wireless/ath/ath10k/sdio.c | 147 +++++++++++++++++++++++----------
 drivers/net/wireless/ath/ath10k/sdio.h |  26 +++++-
 3 files changed, 134 insertions(+), 51 deletions(-)

-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
