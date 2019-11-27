Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB89010A8EF
	for <lists+ath10k@lfdr.de>; Wed, 27 Nov 2019 03:59:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u+5CxQL0RdmtoniCNxagfp5Xg/BYgmGGhkvtG27F8YI=; b=g3FlkDFPzasePs
	4Aq2hIH9FifpiyGBFXnhsPoj03DLzp4tTmRGuhM2pgFoiD8qKIotODifEDDHRsyUk3WgMWmADGtQb
	yqkij0o008k44tIQdKgJzkNgvOAiqWQWtitC5MooCRG44+uTqZOk6OcePcqHZOt/FkT/xg0A5YkPq
	UDJmkABaAzuAjMz7MUyKzzRvDhwdLkR+f6kVuo5LbgbeHAVs4e6hKoVoI0DvPrAmZWRr+qsAssxxg
	r5ZlGoQvgBV1lvNq14rcJLN00AEEuOd1VJBMvo3Fciuell6CDe4azjpnxfW+KR+pAz9a9GFDovvBI
	+2kFhCXhd3F1nGh3MS9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZnYM-0003NY-FC; Wed, 27 Nov 2019 02:59:42 +0000
Received: from a27-185.smtp-out.us-west-2.amazonses.com ([54.240.27.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZnYE-0003N2-RU
 for ath10k@lists.infradead.org; Wed, 27 Nov 2019 02:59:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574823569;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
 bh=v95gBZ3VAsv1yFIp+edO6sWwlF1JTcZQtDQw10B41Xg=;
 b=cJHFPd9dqPOvjpD6Lxp2bOFm84dxwnFw/4ndxBTszpAdHNJG4qeWTwMMIWVJInCZ
 tMXAUow8q88ZourDQ/W3yOBJttlLd9MZzX1+Pi24qYgWPJUQZTgITdV2mIxADwUhZ8z
 WHie96wuxS5NkbiB0hBvuOh5lQ+unNBBpiQjTxPk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574823569;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
 bh=v95gBZ3VAsv1yFIp+edO6sWwlF1JTcZQtDQw10B41Xg=;
 b=dh1/CWuw2cvrZh3iDNHZNJSX7DxE2q/rRqZ/adxbhg4P3VHWpFLSAhcAbkk6pasH
 gOhlNHouw7uZHZwgsZvLnYCBJRrMjuaXIVmQck29XDO/4gxMRrN0XiXlV00Avhq0r70
 ugGqIxG0SBQ+/x7uEYkV6JujeF5vE6eIH8Cic9NU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0B302C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: set max mtu to 1500 for sdio chip
Date: Wed, 27 Nov 2019 02:59:29 +0000
Message-ID: <0101016eaacca93c-357e80e9-f3e0-44e6-b441-ceaf9183880f-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.27-54.240.27.185
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_185934_921787_1C0F5F81 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.185 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

For sdio chip, the max credit size in firmware is 1556, the 1556
include payload, ieee80211 header, htt header, htc header. So it
need to set the max mtu to 1500 to forbidden TX packet which exceed
1500 form application.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00017-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 60849ab8088f..8aa8ebc1d8e9 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -2185,6 +2185,8 @@ static int ath10k_sdio_probe(struct sdio_func *func,
 	bus_params.chip_id = 0;
 	bus_params.hl_msdu_ids = true;
 
+	ar->hw->max_mtu = ETH_DATA_LEN;
+
 	ret = ath10k_core_register(ar, &bus_params);
 	if (ret) {
 		ath10k_err(ar, "failed to register driver core: %d\n", ret);
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
