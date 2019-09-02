Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064FAA52AC
	for <lists+ath10k@lfdr.de>; Mon,  2 Sep 2019 11:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JRbkuKg2fBKVaz0Q2Dmt275aDhN+28GAxzMatVRodz4=; b=f5v
	mKh9X1tCJrGRKYSNg0FrmZqlVfoQt8awd0F6HTy47wC4t9/0kuT1OfD8V6oM4jhWiEYPII2/wCD1U
	tU5ZBC4K+nmrixmmczLA4TYthJsQV9zudUrxsrHS4P1ZuFqhi9X7Nb80mf1YSZzzOsoCV5DCHLKnP
	fTyq5F07vtJU0JyTn3uefwvsTOXI0BKPmaJAy3vabPXlONev3RpcNnK3aOSHD6xBLCVHNaW5YhgYW
	vv4xRQqPBhquine+isXcIu+FeLNk3P5CB1WXovAsjsRJhFQjCr6QKYJk29ezrCaXKqJK78JZ8e8u0
	EE57b3JY6Pk4G0UTekSR2tE3ft7MNLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4iXy-0005kn-Um; Mon, 02 Sep 2019 09:22:51 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4iXo-0005js-Mf
 for ath10k@lists.infradead.org; Mon, 02 Sep 2019 09:22:42 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 735BA6085C; Mon,  2 Sep 2019 09:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567416159;
 bh=Iv4eOvYHtTloypDJ7hVQSISV8i4783SmON8jpHeGegs=;
 h=From:To:Cc:Subject:Date:From;
 b=W94qtX/Z31mGv4JJFW6SNoZXQTloh45QXUEMFc9BR54yzD7u5paS62WNJxAacO+TN
 IWnXRau/6/Lchhc2IoYxCc4YBQLpE3NhxskbHiGhf1iQ+e2CxMMYJ6yWS13TFpNV+u
 eukKpb1wWElDCYwDTZyobS0xDlrR9cZHoLhilUVA=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 38EF6602EF;
 Mon,  2 Sep 2019 09:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567416159;
 bh=Iv4eOvYHtTloypDJ7hVQSISV8i4783SmON8jpHeGegs=;
 h=From:To:Cc:Subject:Date:From;
 b=W94qtX/Z31mGv4JJFW6SNoZXQTloh45QXUEMFc9BR54yzD7u5paS62WNJxAacO+TN
 IWnXRau/6/Lchhc2IoYxCc4YBQLpE3NhxskbHiGhf1iQ+e2CxMMYJ6yWS13TFpNV+u
 eukKpb1wWElDCYwDTZyobS0xDlrR9cZHoLhilUVA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 38EF6602EF
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v4 0/8] ath10k: improve throughout of tcp/udp TX/RX of sdio
Date: Mon,  2 Sep 2019 17:22:18 +0800
Message-Id: <1567416146-14403-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_022240_786038_3A527E39 
X-CRM114-Status: UNSURE (   6.84  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
v4: add err handle in ath10k_sdio_mbox_rx_fetch_bundle

Nicolas Boichat (1):
  ath10k: adjust skb length in ath10k_sdio_mbox_rx_packet
v2: no this patch
v3: new added
v4: change commit log

Wen Gong (6):
  ath10k: change max RX bundle size from 8 to 32 for sdio
v2: change macro HTC_GET_BUNDLE_COUNT
v3: change some code style
v4: add macro ATH10K_HTC_FLAG_BUNDLE_MASK

  ath10k: add workqueue for RX path of sdio
v2: no change
v3: change some code style
v4: no change

  ath10k: disable TX complete indication of htt for sdio
v2: change some code style
v3: change some code style
v4: no change

  ath10k: add htt TX bundle for sdio
v2: no change
v3: change some code style
v4: no change

  ath10k: enable alt data of TX path for sdio
v2: no change
v3: change some code style
v4: add macro ATH10K_HTC_MSG_READY_EXT_ALT_DATA_MASK

  ath10k: enable napi on RX path for sdio
v2: no change
v3: change some code style
v4: change some code style

 drivers/net/wireless/ath/ath10k/core.c   |  42 +++-
 drivers/net/wireless/ath/ath10k/core.h   |   4 +-
 drivers/net/wireless/ath/ath10k/hif.h    |   9 +
 drivers/net/wireless/ath/ath10k/htc.c    | 377 ++++++++++++++++++++++++++++---
 drivers/net/wireless/ath/ath10k/htc.h    |  49 +++-
 drivers/net/wireless/ath/ath10k/htt.c    |  15 ++
 drivers/net/wireless/ath/ath10k/htt.h    |  20 +-
 drivers/net/wireless/ath/ath10k/htt_rx.c |  80 ++++++-
 drivers/net/wireless/ath/ath10k/htt_tx.c |  38 +++-
 drivers/net/wireless/ath/ath10k/hw.h     |   2 +-
 drivers/net/wireless/ath/ath10k/sdio.c   | 281 ++++++++++++++++++++---
 drivers/net/wireless/ath/ath10k/sdio.h   |  31 ++-
 12 files changed, 851 insertions(+), 97 deletions(-)

-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
