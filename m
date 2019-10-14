Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4497ED61AE
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 13:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p0cRXy9EqDfqANFy2MQcDoSyucSft4/w4giuAF9OBQo=; b=FAwSKdvAFyvm5p
	msJJHQ/rAv//+Mbw00BMxWi3qxkeiBnTomXwbO1x/bb9nd4hhLLPeqmMpSbeJgLKZQLWGn8+ymhQj
	brZ1jLCxOox9y//MdBIQiR/JbpAtlJE3GEOQzxVxRlEwjegiixoqOWl7kLe8mkLlZ/PTyUiCMW6xt
	A0kRC1ViW5ZY6LpoKedWmpAsPHrUK13/6bMDawPORQEWks/XQoRX6Sk0BJKSdHZZf6tWRQ0B+mPhF
	Ib0pThvY0l2H/BgemRFM9MAI0vVl+25fSlbZxM+SXoEV/r2VDTduwAsTPYnZuy8yVQikuaGH9Qd1w
	MHUkAY2I+t0hjnsEXf6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJyr8-00066a-Jw; Mon, 14 Oct 2019 11:49:42 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJyr4-00065s-QS
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 11:49:40 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8970960265; Mon, 14 Oct 2019 11:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571053778;
 bh=GcuYcE4UGTw6XEVMbUJIcwWSOx78nifgol30UCr50mw=;
 h=From:To:Cc:Subject:Date:From;
 b=Dlgcda88w+G5EQUh/3dwy788mW4KTO4uZBZXdMRCXP6ncFVRK9cyY5aqtd+WEdfsL
 uo1Li3qYV83TojMDVuFVB4pkJ02Ho9k8CqPFiMBqKRfcjWYdsK6g+KVXcjV/910THN
 2zKFo6PETQGp+NrmDpOguFZ8/Is5UTTi4FfYzT74=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 613E660588;
 Mon, 14 Oct 2019 11:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571053778;
 bh=GcuYcE4UGTw6XEVMbUJIcwWSOx78nifgol30UCr50mw=;
 h=From:To:Cc:Subject:Date:From;
 b=Dlgcda88w+G5EQUh/3dwy788mW4KTO4uZBZXdMRCXP6ncFVRK9cyY5aqtd+WEdfsL
 uo1Li3qYV83TojMDVuFVB4pkJ02Ho9k8CqPFiMBqKRfcjWYdsK6g+KVXcjV/910THN
 2zKFo6PETQGp+NrmDpOguFZ8/Is5UTTi4FfYzT74=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 613E660588
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v6 0/3] ath10k: improve throughout of TX of sdio
Date: Mon, 14 Oct 2019 19:49:13 +0800
Message-Id: <20191014114916.7519-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_044938_876241_2DE17295 
X-CRM114-Status: UNSURE (   7.28  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

v6: remove module parameters disable_tx_comp and alt_data
this is 3 patches of the 7 patches from ath10k: improve throughout of tcp/udp TX/RX of sdio

v5: change ath10k_htc_setup_tx_req to add check bundle_tx
to forbidden init 2 times

v4: add macro ATH10K_HTC_MSG_READY_EXT_ALT_DATA_MASK

v3: change some code style

v2: change some code style

The bottleneck of throughout on sdio chip is the bus bandwidth, to the
patches are all to increase the use ratio of sdio bus.

These patches only affect sdio bus chip, explanation is mentioned in each
patch's commit log.

Wen Gong (3):
  ath10k: disable TX complete indication of htt for sdio
  ath10k: add htt TX bundle for sdio
  ath10k: enable alt data of TX path for sdio

 drivers/net/wireless/ath/ath10k/core.c   |  27 +-
 drivers/net/wireless/ath/ath10k/core.h   |   4 +-
 drivers/net/wireless/ath/ath10k/hif.h    |   9 +
 drivers/net/wireless/ath/ath10k/htc.c    | 373 +++++++++++++++++++++--
 drivers/net/wireless/ath/ath10k/htc.h    |  38 ++-
 drivers/net/wireless/ath/ath10k/htt.c    |  13 +
 drivers/net/wireless/ath/ath10k/htt.h    |  17 +-
 drivers/net/wireless/ath/ath10k/htt_rx.c |  35 ++-
 drivers/net/wireless/ath/ath10k/htt_tx.c |  38 ++-
 drivers/net/wireless/ath/ath10k/hw.h     |   2 +-
 drivers/net/wireless/ath/ath10k/sdio.c   |  23 ++
 drivers/net/wireless/ath/ath10k/sdio.h   |   2 +-
 12 files changed, 528 insertions(+), 53 deletions(-)

-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
