Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6751A426C
	for <lists+ath10k@lfdr.de>; Fri, 10 Apr 2020 08:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4JT46XiweRTruOMa6JlARambinoSQHlWV6nb9DrjyXA=; b=YU3w0TpOfKUfyR
	FB2XdysmtK4Lgce6xCPDm4blsTW1pBmpMEiIFlLHFcZPp+WZO1ZnS7tNO3LkVLQrHt81mpEvOIgzY
	MxGpLGaam3Q95O/J6Xt8jUe0P//Fpq6VMOqN4Qm2FKzg48EW81+XAdmpXEph2noWNxRof0lqEMQjf
	fmNALeCha7MSlS6Dxeg1Pvfvf0l1gYbdBwYPv2s/3f1GNzDMpb7LwwLmR7iKXmi27QrRHyquCUEsh
	1wIlrd07yfLXTnKmRbfoxTu0CA5VtpB7FUf6OSlWtRK50Y0P3FGnmcYZrKwy8Bprg1XEqDWLH6mH2
	vBpd6gVAf0fXy5+FSXYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMmw8-0003Ln-95; Fri, 10 Apr 2020 06:14:44 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMmw3-0003LW-N2
 for ath10k@lists.infradead.org; Fri, 10 Apr 2020 06:14:42 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586499280; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=oTFWAQR2IPGC3nW12/06HhfWuA/TM23tAop2dUm7Q20=;
 b=au2tV23LJwDCmIxZRRTis0C5TIjTjLseB7j81/QFZZQDQcqzYk048BWabux3OatQJ8iiR0Lm
 KwiihVA10CwNTEtU8IU9c+rKD0Oyd9gmwgBOEeSfuK+l2Qcg3k5uPxv8ErRC6QM1YZQB/Q3E
 f4IQJfsIXfIHzlXQzqQXcuxda7Q=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e900ecd.7fc81a2353b0-smtp-out-n01;
 Fri, 10 Apr 2020 06:14:37 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 898AFC433BA; Fri, 10 Apr 2020 06:14:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D94D2C433D2;
 Fri, 10 Apr 2020 06:14:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D94D2C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v10 0/2] ath10k: improve throughout of TX of sdio 
Date: Fri, 10 Apr 2020 14:13:58 +0800
Message-Id: <20200410061400.14231-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_231440_747303_49CE9E5D 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org, wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

v10: change ath10k_dbg log format

v9: change ath10k_htt_htc_tx_complete to fix the use-after-free panic

v8: split out patch "change ATH10K_SDIO_BUS_REQUEST_MAX_NUM from 64 to 1024"
from "disable TX complete indication of htt for sdio". merge patch
"ath10k: clean bundle tx queue of htt tx stop for sdio" into
"add htt TX bundle for sdio"

v7: change a few code style to meet ath10k-check script

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

Wen Gong (2):
  ath10k: add htt TX bundle for sdio
  ath10k: enable alt data of TX path for sdio

 drivers/net/wireless/ath/ath10k/core.c   |  22 +-
 drivers/net/wireless/ath/ath10k/core.h   |   4 +-
 drivers/net/wireless/ath/ath10k/htc.c    | 384 +++++++++++++++++++++--
 drivers/net/wireless/ath/ath10k/htc.h    |  37 ++-
 drivers/net/wireless/ath/ath10k/htt.c    |   8 +
 drivers/net/wireless/ath/ath10k/htt.h    |   4 +
 drivers/net/wireless/ath/ath10k/htt_rx.c |   1 +
 drivers/net/wireless/ath/ath10k/htt_tx.c |   8 +-
 8 files changed, 423 insertions(+), 45 deletions(-)

-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
