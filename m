Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEC612D76F
	for <lists+ath10k@lfdr.de>; Tue, 31 Dec 2019 10:28:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIXzz5dJwTDXeIWt3I0MGyBkPHgmlQBuf27q56oNEEQ=; b=RD9NQGnuHSNKfo
	xSgsDhOxBB6Q5t5ckZFzzN3Fl2/R4bD2XtoH4tigMHm4QOZ0EdXaUBBkEyO7eX4viPqKmuZaZ536Y
	xBNpzLvaMi05XTMwyMY08fzulUQcKXn3IOoyhpOystPuC27m5X7DizuMdJEDCIlhPqMKM23cJExFG
	KM7IScsfDDXXOiAt179a8u7xhDuXZcp77iGabh7kM81tf9HDVWPauhIuQbZ1aYDywTITmSW5M4zNN
	D9p6l7JTzCP8HdsOhGZWLekQ3IfbUy2zvhACo0oy+y2KN0ngMAk7mtq5cZZTWPxUjVIKyyfzGWiWn
	wDwt5NQV2toKArmAvq0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDpJ-0006nK-1A; Tue, 31 Dec 2019 09:28:33 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imDp7-0006d2-1R
 for ath10k@lists.infradead.org; Tue, 31 Dec 2019 09:28:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577784501; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=V51ld3pgzq4QL60ZCOiPZgU/SMmYmpxBzwFtvKhoM9s=;
 b=PxTm89GXu9oFTrOaGdJRxmSyhELot0diQOVfKaOQNRpk2NsimpZa/RIu++mMz1JPqSb6Fmp9
 MOuGbl6B/hR6PsLvABOnum/9l8/EpYzXBmyeUsPhcKHobJ7Uuva1RYQ92XsU0ehGSSTnXldk
 A6nET2XiNLPXh1VQjyok8CQ8kUY=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0b14b1.7f70b2038730-smtp-out-n03;
 Tue, 31 Dec 2019 09:28:17 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8ABD0C43383; Tue, 31 Dec 2019 09:28:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8660DC433CB;
 Tue, 31 Dec 2019 09:28:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8660DC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v3 2/2] ath10k: start recovery process when payload length
 exceeds max htc length for sdio
Date: Tue, 31 Dec 2019 17:28:06 +0800
Message-Id: <20191231092806.6247-3-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191231092806.6247-1-wgong@codeaurora.org>
References: <20191231092806.6247-1-wgong@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_012821_723910_449D195D 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

When simulate random transfer fail for sdio write and read, it happened
"payload length exceeds max htc length" and recovery later sometimes.

Test steps:
1. Add config and update kernel:
CONFIG_FAIL_MMC_REQUEST=y
CONFIG_FAULT_INJECTION=y
CONFIG_FAULT_INJECTION_DEBUG_FS=y

2. Run simulate fail:
cd /sys/kernel/debug/mmc1/fail_mmc_request
echo 10 > probability
echo 10 > times # repeat until hitting issues

3. It happened payload length exceeds max htc length.
[  199.935506] ath10k_sdio mmc1:0001:1: payload length 57005 exceeds max htc length: 4088
....
[  264.990191] ath10k_sdio mmc1:0001:1: payload length 57005 exceeds max htc length: 4088

4. after some time, such as 60 seconds, it start recovery which triggered
by wmi command timeout for periodic scan.
[  269.229232] ieee80211 phy0: Hardware restart was requested
[  269.734693] ath10k_sdio mmc1:0001:1: device successfully recovered

The simulate fail of sdio is not a real sdio transter fail, it only
set an error status in mmc_should_fail_request after the transfer end,
actually the transfer is success, then sdio_io_rw_ext_helper will
return error status and stop transfer the left data. For example,
the really RX len is 286 bytes, then it will split to 2 blocks in
sdio_io_rw_ext_helper, one is 256 bytes, left is 30 bytes, if the
first 256 bytes get an error status by mmc_should_fail_request,then
the left 30 bytes will not read in this RX operation. Then when the
next RX arrive, the left 30 bytes will be considered as the header
of the read, the top 4 bytes of the 30 bytes will be considered as
lookaheads, but actually the 4 bytes is not the lookaheads, so the len
from this lookaheads is not correct, it exceeds max htc length 4088
sometimes. When happened exceeds, the buffer chain is not matched between
firmware and ath10k, then it need to start recovery ASAP. Recently then
recovery will be started by wmi command timeout, but it will be long time
later, for example, it is 60+ seconds later from the periodic scan, if
it does not have periodic scan, it will be longer.

Start recovery when it happened "payload length exceeds max htc length"
will be reasonable.

This patch only effect sdio chips.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 7b894dcaad2e..f48a56906f71 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -557,6 +557,10 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 				    le16_to_cpu(htc_hdr->len),
 				    ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH);
 			ret = -ENOMEM;
+
+			queue_work(ar->workqueue, &ar->restart_work);
+			ath10k_warn(ar, "exceeds length, start recovery\n");
+
 			goto err;
 		}
 
-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
