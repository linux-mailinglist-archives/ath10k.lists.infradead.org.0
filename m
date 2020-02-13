Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1488615B992
	for <lists+ath10k@lfdr.de>; Thu, 13 Feb 2020 07:28:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vA0ZaHYkhgYLSvjNApb6Vs5lCJ+BpjvRFlVs7AFDyDE=; b=Rgp
	Wf+yPY7yILm0Pb6O5+tcN5kt8LuJrquWbd9zqHLeRVfALodWTyyxjhTII7UyZkoCGX+0mGNPn3x7N
	jhw8OI1S5f5hxc6vg+3AGwiYncDmlKH/o96qb4MVaRkYypZ+ddQQI3wee6v/0L5q/DkFDnPp30EWQ
	BcJqMGWJotCLZY62EHjes2iEVZlHlMAjqnUp8yrh8RqPGhv5UvK/of9+qwG0/d0ElBmVTVWew07yD
	W49cyZFtwT5OnfHgXC4yxKvlWpySFlHVEpUhJRKK9ETKiTH6+QojjoiELLuscupdLdlDzDRFphQn8
	CkXWwH5r0mZYcg1FMEQCePeNsdXTPMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j27yd-0003Ws-VG; Thu, 13 Feb 2020 06:27:55 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j27yb-0003WZ-Ah
 for ath10k@lists.infradead.org; Thu, 13 Feb 2020 06:27:54 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581575273; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=WOciJxsbOtP7DrKFkMKDj7TwpDa2ZDD5O2ypu1OCZlQ=;
 b=BCAJ/COBZ7S5YDftcWdDaAjfimqID4W3mT5ohoHra+NT1rmSoaHTM+9zXKTi4grCVBiOa9Vb
 anu6eMfjcg83RVp4+giZo3EjpsjujSmKsjjTV8+B168f+ndWZHFPSvSC1eBfHcbf+tb9yQ78
 hYtOTnDgpZtX6ZNWGIUOc9Qbe6U=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e44ec61.7f03ac269fb8-smtp-out-n03;
 Thu, 13 Feb 2020 06:27:45 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 412E9C43383; Thu, 13 Feb 2020 06:27:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from ybzhao-HP-Z230-SFF-Workstation.ap.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: yiboz)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D3CE4C433A2;
 Thu, 13 Feb 2020 06:27:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D3CE4C433A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] Allow qca988x family to support ack rssi of tx data packets.
Date: Thu, 13 Feb 2020 14:30:51 +0800
Message-Id: <1581575451-948-1-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_222753_432195_B7D8AE73 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hardwares tested : QCA9887
Firmwares tested : 10.4-3.9.0.1-00036

Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/hw.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/ath10k/hw.c b/drivers/net/wireless/ath/ath10k/hw.c
index 2451e0f..57c58af 100644
--- a/drivers/net/wireless/ath/ath10k/hw.c
+++ b/drivers/net/wireless/ath/ath10k/hw.c
@@ -1131,6 +1131,7 @@ static int ath10k_get_htt_tx_data_rssi_pad(struct htt_resp *resp)
 
 const struct ath10k_hw_ops qca988x_ops = {
 	.set_coverage_class = ath10k_hw_qca988x_set_coverage_class,
+	.is_rssi_enable = ath10k_htt_tx_rssi_enable,
 };
 
 static int ath10k_qca99x0_rx_desc_get_l3_pad_bytes(struct htt_rx_desc *rxd)
-- 
1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
