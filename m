Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FA39E669
	for <lists+ath10k@lfdr.de>; Tue, 27 Aug 2019 13:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EWOsGoSub0uzvW0rvJBFZBAgVTzFl0tYGU9KX3qbqgI=; b=Ft0
	1MZ27Trw16dlgumnkRjQKJe7PRFxZd1IMHfeAe09VvFbmqJwD1CXhIlSvg9GUtWXAVVRG+yd/p2E7
	dly+a5s7fzZdJQa0KTZl3Ktyp5OOUXNpQFo6u1GORJFiJF6i6NB+4pY1i6qjT89iHT9qOErcVHCLb
	Y6+Jr77NGPcutPU+G3P3rAD/RaS41g45tqVBh3Y0o8wVDub0lV0ixNLkA3SvGEQyLmAsNxRA3eFsE
	YkSFCJT52xktIBV9zd/4n0Yc+g2GCx5ZP5OtVacD6OZdeIpQhlxdVUtiCznj/ncJL5t290o0NPycY
	0Meej4WpCYqw3PV2YdOmxvqwhiYqrXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ZGJ-0003eu-BV; Tue, 27 Aug 2019 11:03:43 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ZFV-00034N-Ls
 for ath10k@lists.infradead.org; Tue, 27 Aug 2019 11:02:55 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 14E5061779; Tue, 27 Aug 2019 11:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566903773;
 bh=LpEBqMTTYl3m6DImrwzQAPL4eEOspM6cbI3I/sdfpkY=;
 h=From:To:Cc:Subject:Date:From;
 b=UfqicrSvFgrWN+DJtKiUgQBV776IMbc0lnC9U5z8OsFg2prBxQOBPz8Qv+V/VQ7Cy
 DHAU8cI5YWQhyXZV+V1KgP2fWYyMlyJmMq3/PH45mAd/wPIQ1NseW3TgrKY9DbAfgu
 T1TlwAyxHyjcylPW2S5mt4iv0GORpYyoVKhUy3hE=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9A2A561C22;
 Tue, 27 Aug 2019 11:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566903735;
 bh=LpEBqMTTYl3m6DImrwzQAPL4eEOspM6cbI3I/sdfpkY=;
 h=From:To:Cc:Subject:Date:From;
 b=nEmn1DpZg7CmPbTHzaIRC969T/sfajpxYlTtKQNL48bdDI8Xnxx4zPv2VPy9BWBzT
 Ix3DTdXx1GHJKhra6fQv4OwM6lgwn8I2flTAyYv5yI2jh/rBMpdeKCdAlU7Melajx1
 erdgVz7yheaRZuHKgnGX3+bY3so/Xf31ETOTw/i4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9A2A561C22
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 0/7] ath10k: improve throughout of tcp/udp TX/RX of sdio
Date: Tue, 27 Aug 2019 19:01:40 +0800
Message-Id: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_040253_832354_AC21C130 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Wen Gong (6):
  ath10k: change max RX bundle size from 8 to 32 for sdio
v2: change macro HTC_GET_BUNDLE_COUNT

  ath10k: add workqueue for RX path of sdio
  ath10k: disable TX complete indication of htt for sdio
v2: change some code style

  ath10k: add htt TX bundle for sdio
  ath10k: enable alt data of TX path for sdio
  ath10k: enable napi on RX path for sdio

 drivers/net/wireless/ath/ath10k/core.c   |  36 ++-
 drivers/net/wireless/ath/ath10k/core.h   |   4 +-
 drivers/net/wireless/ath/ath10k/hif.h    |   9 +
 drivers/net/wireless/ath/ath10k/htc.c    | 374 ++++++++++++++++++++++++++++---
 drivers/net/wireless/ath/ath10k/htc.h    |  41 +++-
 drivers/net/wireless/ath/ath10k/htt.c    |  15 ++
 drivers/net/wireless/ath/ath10k/htt.h    |  20 +-
 drivers/net/wireless/ath/ath10k/htt_rx.c |  82 ++++++-
 drivers/net/wireless/ath/ath10k/htt_tx.c |  37 ++-
 drivers/net/wireless/ath/ath10k/hw.h     |   2 +-
 drivers/net/wireless/ath/ath10k/sdio.c   | 292 +++++++++++++++++++++---
 drivers/net/wireless/ath/ath10k/sdio.h   |  31 ++-
 12 files changed, 850 insertions(+), 93 deletions(-)

-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
