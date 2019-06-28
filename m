Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB7B59504
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 09:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KiJYLcfouiSrJtFWh0P/jWJkINQ0bPKoCdeG3nJEaEg=; b=lNw
	+9Na0PQKt02GsNPDNLZNM6bIs3kCb+Nd3SE8sh+3dFTUeTbOoCXNGO0EivZwm9sbcuCLoV529kqgz
	bOTwTg2cwKpy6TEPnpGyviZuxSs57ypy6MO4PpRvko9cVlPHgpC7qUkzdmgjRjgGy1DuH6NW9nEc1
	jLYAjYElh73PQA1De9w3TxHy2VoXPmFMsuql/lODxCoFV3+9mhqerIlyUFnkv31r56c7ObtlJ3Btf
	dvrIksF1P3ugRSj+sxMPql4rNhHofMNRVP2ctOxqgKl1hoE1x9eYP7SOrOY7zQhbiklo9KBdEeU8q
	Yf/nHF4MZcF5A/2g7HicnGuP3kS7W7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglMQ-0003oZ-2d; Fri, 28 Jun 2019 07:31:54 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglMK-0003o9-Ho
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 07:31:49 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6024260A43; Fri, 28 Jun 2019 07:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561707106;
 bh=+9xyXiRYLpw9BcxZ6J8Eald2gfGG5pwOx3yOKjDlG2c=;
 h=From:To:Cc:Subject:Date:From;
 b=l0Ue87SaEui7QLMfCTfLA5CNBX0mNTbAPq3sR3rfS0bjTZ8xXehZcN80WyQUEmt1H
 eE1/HQeYdz9qAvoKkELGeqUoZ0S3cr7lazezr1Vs9RCn2ypwnJQ1XDPyD4uehwYzWF
 IfLScK690AwQxsbwraGjtVZONVQ/LHiE9E9T/FBs=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from bpothuno-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: bpothuno@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8D64160A97;
 Fri, 28 Jun 2019 07:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561707106;
 bh=+9xyXiRYLpw9BcxZ6J8Eald2gfGG5pwOx3yOKjDlG2c=;
 h=From:To:Cc:Subject:Date:From;
 b=l0Ue87SaEui7QLMfCTfLA5CNBX0mNTbAPq3sR3rfS0bjTZ8xXehZcN80WyQUEmt1H
 eE1/HQeYdz9qAvoKkELGeqUoZ0S3cr7lazezr1Vs9RCn2ypwnJQ1XDPyD4uehwYzWF
 IfLScK690AwQxsbwraGjtVZONVQ/LHiE9E9T/FBs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8D64160A97
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=bpothuno@codeaurora.org
From: Balaji Pothunoori <bpothuno@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: check data ack rssi enabled/disabled in htt rx event
Date: Fri, 28 Jun 2019 13:01:24 +0530
Message-Id: <1561707084-10021-1-git-send-email-bpothuno@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_003148_609385_D3149299 
X-CRM114-Status: UNSURE (   8.78  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abhishek Ambure <aambure@codeaurora.org>, linux-wireless@vger.kernel.org,
 Balaji Pothunoori <bpothuno@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Abhishek Ambure <aambure@codeaurora.org>

For all data packets trasmmited, host gets htt tx completion event.

QCA9984 firmware gives data ack rssi values to host through
htt event of data tx completion. Data ack rssi values are valid
if A0 bit is set in HTT rx message.

Tested HW: QCA9984
Tested FW: 10.4-3.9.0.2-00044

Signed-off-by: Abhishek Ambure <aambure@codeaurora.org>
Signed-off-by: Balaji Pothunoori <bpothuno@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/hw.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/ath10k/hw.c b/drivers/net/wireless/ath/ath10k/hw.c
index ad082b7..303f17d 100644
--- a/drivers/net/wireless/ath/ath10k/hw.c
+++ b/drivers/net/wireless/ath/ath10k/hw.c
@@ -1145,6 +1145,7 @@ static bool ath10k_qca99x0_rx_desc_msdu_limit_error(struct htt_rx_desc *rxd)
 const struct ath10k_hw_ops qca99x0_ops = {
 	.rx_desc_get_l3_pad_bytes = ath10k_qca99x0_rx_desc_get_l3_pad_bytes,
 	.rx_desc_get_msdu_limit_error = ath10k_qca99x0_rx_desc_msdu_limit_error,
+	.is_rssi_enable = ath10k_htt_tx_rssi_enable,
 };
 
 const struct ath10k_hw_ops qca6174_ops = {
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
