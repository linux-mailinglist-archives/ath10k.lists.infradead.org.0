Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BA2A9FD7
	for <lists+ath10k@lfdr.de>; Thu,  5 Sep 2019 12:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NH4Fle4xs5CONaTiUcwG06BSZlMddslg/N8CSRlZFFk=; b=MQ+
	15CosXCbpg7m+hDN42h8YCHI+r7fG3UG3r77XQV233hhYUPKNEzDBS91O5pNSQP/YDLRdERPMNogQ
	AGR09A+ahaxqmBZ9tLsQV6miAONsK/rCdgzYNt32iO1/AFNLQUoIqC3oHVzwdnmZEiD0T8nzB0ZQG
	sOfMf9V9ddDZyTBeXUG28YC1yUBAik5+P9v3y+F6c1II5xLlwUvs1LAW3tCVpM5cubxUULuwTGygJ
	X5EZE5wS0O4cp0QhFZEgLWSe8sy1yy7oGC82b72xoWB8xLITlPuN611jDDfm82d2R2AgTz1pvMYcn
	X1k9/SQAJaieXBqMbp0wV/DYbHQ6IoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pAB-00064a-V5; Thu, 05 Sep 2019 10:38:52 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pA7-000640-Sn
 for ath10k@lists.infradead.org; Thu, 05 Sep 2019 10:38:49 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0B6DD6030B; Thu,  5 Sep 2019 10:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567679927;
 bh=ahDJR09kgY7mmeLd6I+Uh8j9JcbA9RHbYa6BrWd3Efw=;
 h=From:To:Cc:Subject:Date:From;
 b=o3YqS7Ep6Fjx9nhRhb6cga1FjDLaKIQQ0R2hFqFVfoWy3tvzuJaMQ+gtMPE62f6Qi
 cszXNp92bhci6ojONt9rs4BknaSMl39Gdy2vnXpIK/MEGfUuwECiWvwD0PZwt13i5d
 iPvfoSgHZyyPc5eWALVfIhH/oomg5eyCrMIfuD9g=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CECC36058E;
 Thu,  5 Sep 2019 10:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567679926;
 bh=ahDJR09kgY7mmeLd6I+Uh8j9JcbA9RHbYa6BrWd3Efw=;
 h=From:To:Cc:Subject:Date:From;
 b=lt1ZZi1QcatJlr/y3vpei0aJ1Q70vY5T1Mw5ErxBqCUhLzYaJJH8YA67Wpzo4gz9V
 onJpViM/t+02NiQpJLi2WdMzeL4VMg9hTh311TCNVhGTz7fO3tGj9rOkdNS5MTiWHg
 aSVeUce7yYipZhmAOIxatVOx/1i0UqxcCxPU362o=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CECC36058E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v5 0/8] ath10k: improve throughout of tcp/udp TX/RX of sdio
Date: Thu,  5 Sep 2019 18:38:05 +0800
Message-Id: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_033847_964849_029BEAE3 
X-CRM114-Status: UNSURE (   7.30  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
v5: no change

Nicolas Boichat (1):
  ath10k: adjust skb length in ath10k_sdio_mbox_rx_packet
v2: no this patch
v3: new added
v4: change commit log
v5: no change

Wen Gong (6):
  ath10k: change max RX bundle size from 8 to 32 for sdio
v2: change macro HTC_GET_BUNDLE_COUNT
v3: change some code style
v4: add macro ATH10K_HTC_FLAG_BUNDLE_MASK
v5: no change

  ath10k: add workqueue for RX path of sdio
v2: no change
v3: change some code style
v4: no change
v5: no change

  ath10k: disable TX complete indication of htt for sdio
v2: change some code style
v3: change some code style
v4: no change
v5: no change

  ath10k: add htt TX bundle for sdio
v2: no change
v3: change some code style
v4: no change
v5: change ath10k_htc_setup_tx_req to add check bundle_tx
to forbidden init 2 times

  ath10k: enable alt data of TX path for sdio
v2: no change
v3: change some code style
v4: add macro ATH10K_HTC_MSG_READY_EXT_ALT_DATA_MASK
v5: no change

  ath10k: enable napi on RX path for sdio
v2: no change
v3: change some code style
v4: change some code style
v5: move skb_queue_head_init(&ar->htt.rx_indication_head)
from ath10k_htt_connect to ath10k_core_create to forbidden 
init 2 times

 drivers/net/wireless/ath/ath10k/core.c   |  44 +++-
 drivers/net/wireless/ath/ath10k/core.h   |   4 +-
 drivers/net/wireless/ath/ath10k/hif.h    |   9 +
 drivers/net/wireless/ath/ath10k/htc.c    | 378 ++++++++++++++++++++++++++++---
 drivers/net/wireless/ath/ath10k/htc.h    |  49 +++-
 drivers/net/wireless/ath/ath10k/htt.c    |  13 ++
 drivers/net/wireless/ath/ath10k/htt.h    |  20 +-
 drivers/net/wireless/ath/ath10k/htt_rx.c |  80 ++++++-
 drivers/net/wireless/ath/ath10k/htt_tx.c |  38 +++-
 drivers/net/wireless/ath/ath10k/hw.h     |   2 +-
 drivers/net/wireless/ath/ath10k/sdio.c   | 281 ++++++++++++++++++++---
 drivers/net/wireless/ath/ath10k/sdio.h   |  31 ++-
 12 files changed, 852 insertions(+), 97 deletions(-)

-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
