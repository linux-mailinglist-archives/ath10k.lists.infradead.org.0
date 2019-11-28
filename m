Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0D410C6B7
	for <lists+ath10k@lfdr.de>; Thu, 28 Nov 2019 11:31:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OmEgTCKjisTOLMaARfmvmOSUzQzZrN1GZna8CJQ1YXo=; b=bwz8CSnpsQ4QiS
	Tq4JIZKLPKZdrNOHkF8QTAz1bWxD7wVPYULPKFknO/T8MzsSqI3jZwkiW1KZjxIRqBkWXV1OSjeaM
	QjVpHUrJbnyfXnYzxnNDwBdX0Yy+y5nYaPtXRgZ7TJBvdrSUreROmjWcNyMJTUX8+GlNcGPsML7Ac
	z+vzheKdafWq+1HpP8jqsegmL1k4c3mQ1bG8MNph/RMKMdiMAyOoJeddKMR2UudVnh4nmiQFVXeM+
	aLXRtK/A6qc29h6MEZmaKl2drjABb0hAgdY+ckCAOdlgWPWWh40UnlVb0H0Dx0OVhF6PADjF5LiKU
	onQZCTR9cAjhD6ziK+Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaH4Z-0007SY-L0; Thu, 28 Nov 2019 10:30:55 +0000
Received: from a27-56.smtp-out.us-west-2.amazonses.com ([54.240.27.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaH4V-0007Rn-AM
 for ath10k@lists.infradead.org; Thu, 28 Nov 2019 10:30:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574937048;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
 bh=zPQL6W7HS4R9INeU08vlsMhIR4uiBRPnbzaQb5rFoSY=;
 b=b0P16JLtu2XZajVGwA1P9UawzT4K08s/Nc/XxcN+9c6+aKaOJ9tRgg2XHEc+EOY6
 sQut8w1VYqHPCrUNreC6OxZ394XG0lpPXo6ruL43RE4L5Kqj0CkoBFQ/8fgC0GkKo0K
 NKZASkXlArz/0+Opu9jV1a+PUc5aKWjLxtfkGu3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574937048;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
 bh=zPQL6W7HS4R9INeU08vlsMhIR4uiBRPnbzaQb5rFoSY=;
 b=gMAjyb1XZjohVFKikGkqndekS1FyieU19VEdNxiL1Fg5jo580/k4L5b7Ix6un6l6
 wATYLUsPSPocoetr/cNG6PRsrs9h4IHSVC1rmNDYz4mHX7Ep6va9Nlf4AWImxnHe8my
 R98owZ+9waXuCHpBz0Qh2lanu4FtZJdy1xwCO4KM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 31BF3C4479C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v8 0/4] ath10k: improve throughout of TX of sdio
Date: Thu, 28 Nov 2019 10:30:48 +0000
Message-ID: <0101016eb19035ea-74bf2162-2007-43fb-a070-ff9e30de6cf9-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.28-54.240.27.56
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_023051_454781_F4B13980 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.56 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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

Wen Gong (4):
  ath10k: disable TX complete indication of htt for sdio
  ath10k: change ATH10K_SDIO_BUS_REQUEST_MAX_NUM from 64 to 1024
  ath10k: add htt TX bundle for sdio
  ath10k: enable alt data of TX path for sdio

 drivers/net/wireless/ath/ath10k/core.c   |  27 +-
 drivers/net/wireless/ath/ath10k/core.h   |   4 +-
 drivers/net/wireless/ath/ath10k/hif.h    |   9 +
 drivers/net/wireless/ath/ath10k/htc.c    | 394 +++++++++++++++++++++--
 drivers/net/wireless/ath/ath10k/htc.h    |  40 ++-
 drivers/net/wireless/ath/ath10k/htt.c    |  13 +
 drivers/net/wireless/ath/ath10k/htt.h    |  17 +-
 drivers/net/wireless/ath/ath10k/htt_rx.c |  35 +-
 drivers/net/wireless/ath/ath10k/htt_tx.c |  39 ++-
 drivers/net/wireless/ath/ath10k/hw.h     |   2 +-
 drivers/net/wireless/ath/ath10k/sdio.c   |  23 ++
 drivers/net/wireless/ath/ath10k/sdio.h   |   3 +-
 12 files changed, 553 insertions(+), 53 deletions(-)

-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
