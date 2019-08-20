Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2647995DFA
	for <lists+ath10k@lfdr.de>; Tue, 20 Aug 2019 13:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=shqWONTPST9C9mqBEKJzmgqzDQ88q3ijOX83UxeUsng=; b=PoZ
	N0+S20OD4vZWetcPGRjLi1eHk8g5QYaxS4Hk6zBuCotU/QqCuO3BED+36RMBzgMXKPQr+pXwmSxHD
	ZooEecUYn8Ly6PfJtkB18gRG2d5ITSpsYnTq8d0Zy20tI4kDVf3dIp2mnFJsrGG2JkZM8IWWe3b80
	ku6w1PuyYmH1j1eFN2bmZLF4oTgVBkx1gK9fP67eR4Fwv2IXgkLjgkuBPbzqJh5K4/6bsYa3YpCUs
	AYdN9vFEMs9CHPfByqzU9mSiyRbNcOOPZbOE4OtM26CgsoDmk7BhW56f4ctp6I3EnBsb7CXIEa/pk
	1b5jj2kfShYHGv0Il+ANOjy/KnBYHVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02kJ-00074c-Ih; Tue, 20 Aug 2019 11:56:15 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02jW-0006or-8N
 for ath10k@lists.infradead.org; Tue, 20 Aug 2019 11:55:30 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8C1A960A0A; Tue, 20 Aug 2019 11:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566302124;
 bh=Y2rU2d6q6MWwJstvhzKxo56Z5gKFJ7BHKuyQbjStoII=;
 h=From:To:Cc:Subject:Date:From;
 b=LmWLAMZIVj7Dl6FMi8IfPXgRyiE8H2PkkaOS9Knvzk+3R3B+FZvUl+Q+RrwPDqzHW
 aj5/+Cxh1Pg1aggT140lu9bhlDimRUKCzat5XfqBX0b0L8U1IN3bpJCrcFbVJsxlQS
 waylKDnKbolv4kxi455t2oj8Kc1O7/1YGn9yn0Yw=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2A227608CC;
 Tue, 20 Aug 2019 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566302124;
 bh=Y2rU2d6q6MWwJstvhzKxo56Z5gKFJ7BHKuyQbjStoII=;
 h=From:To:Cc:Subject:Date:From;
 b=LmWLAMZIVj7Dl6FMi8IfPXgRyiE8H2PkkaOS9Knvzk+3R3B+FZvUl+Q+RrwPDqzHW
 aj5/+Cxh1Pg1aggT140lu9bhlDimRUKCzat5XfqBX0b0L8U1IN3bpJCrcFbVJsxlQS
 waylKDnKbolv4kxi455t2oj8Kc1O7/1YGn9yn0Yw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2A227608CC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 0/7] ath10k: improve throughout of tcp/udp TX/RX of sdio
Date: Tue, 20 Aug 2019 19:55:01 +0800
Message-Id: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_045527_253550_8D4CE1C3 
X-CRM114-Status: UNSURE (   5.80  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Wen Gong (6):
  ath10k: change max RX bundle size from 8 to 32 for sdio
  ath10k: add workqueue for RX path of sdio
  ath10k: disable TX complete indication of htt for sdio
  ath10k: add htt TX bundle for sdio
  ath10k: enable alt data of TX path for sdio
  ath10k: enable napi on RX path for sdio

 drivers/net/wireless/ath/ath10k/core.c   |  36 ++-
 drivers/net/wireless/ath/ath10k/core.h   |   4 +-
 drivers/net/wireless/ath/ath10k/hif.h    |   9 +
 drivers/net/wireless/ath/ath10k/htc.c    | 375 ++++++++++++++++++++++++++++---
 drivers/net/wireless/ath/ath10k/htc.h    |  37 ++-
 drivers/net/wireless/ath/ath10k/htt.c    |  15 ++
 drivers/net/wireless/ath/ath10k/htt.h    |  21 +-
 drivers/net/wireless/ath/ath10k/htt_rx.c |  85 ++++++-
 drivers/net/wireless/ath/ath10k/htt_tx.c |  37 ++-
 drivers/net/wireless/ath/ath10k/hw.h     |   2 +-
 drivers/net/wireless/ath/ath10k/sdio.c   | 281 ++++++++++++++++++++---
 drivers/net/wireless/ath/ath10k/sdio.h   |  31 ++-
 12 files changed, 846 insertions(+), 87 deletions(-)

-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
