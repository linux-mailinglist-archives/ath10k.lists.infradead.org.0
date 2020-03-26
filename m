Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16484193B5D
	for <lists+ath10k@lfdr.de>; Thu, 26 Mar 2020 09:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nWnG+VBuP09/wqQtyRSV7XCK3EP2pSf+HI5CUMdM9Fs=; b=Zzg
	kyhSQgXoX3ZgmTpWcd0I6uFwKHnI11ophXDIHJKjwqImHqA3lx6u3gRo+zyi8Cc09fpEp2mhwJdSC
	JjzRSl0RLpH0M/g/zktshkxLEm1kaSfTqxG9Foijq0PxI4UdEQfngwBaw5XTwmW7e62s6yZEmOZpo
	cXOH7f1RNLVOBc+CeOv2fjaM321nHsQ+Ooxpe4Q7XrIQahgFShC2A58vYzStLcORcXSYxpFPMubeR
	9L75Tns8yzrhM0nxJ85hJZAkKK4uek07iRsULmkUCJrKEpbQEKWIPLp6Y7KpJRZe1s2NRuTmgnEcJ
	OHftM4WsHXSnbP6OB2ViuMPm0EfW1pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHOKB-00081j-6n; Thu, 26 Mar 2020 08:57:15 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHOK6-00081N-7u
 for ath10k@lists.infradead.org; Thu, 26 Mar 2020 08:57:13 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585213032; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=SVDzVvh7UWTaHEiYnvLX3CtoVduMFxWY8h2LqYdjdho=;
 b=QT3PduYMtS4/iwj5NdbeU2nzUaDbODqpM1hTM5kmgx09bfQTXIy/4RfFRbMk1Iuz8T89U2ds
 aeOdiRK5KzB5eisKm8SIBhQKxY1m/lYWeWLUF2/WK5U21ApKWc3/d4AaaZ0Abfsaun8dqmCW
 2zbHzMm4NlyJtHCvqaH57Pa7i0E=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7c6e55.7f3350c28dc0-smtp-out-n04;
 Thu, 26 Mar 2020 08:56:53 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 58947C433BA; Thu, 26 Mar 2020 08:56:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from che-swdbs-01.qca.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: mkenna)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4E092C433D2;
 Thu, 26 Mar 2020 08:56:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4E092C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=mkenna@codeaurora.org
From: Maharaja Kennadyrajan <mkenna@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: Fix the race condition in firmware dump work queue
Date: Thu, 26 Mar 2020 14:27:57 +0530
Message-Id: <1585213077-28439-1-git-send-email-mkenna@codeaurora.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_015712_140620_8CB8FC21 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 Govindaraj Saminathan <gsamin@codeaurora.org>, linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

There is a race condition, when the user writes 'hw-restart' and
'hard' in the simulate_fw_crash debugfs file without any delay.
In the above scenario, the firmware dump work queue(scheduled by
'hard') should be handled gracefully, while the target is in the
'hw-restart'.

Tested HW: QCA9984
Tested FW: 10.4-3.9.0.2-00044

Co-developed-by: Govindaraj Saminathan <gsamin@codeaurora.org>
Signed-off-by: Govindaraj Saminathan <gsamin@codeaurora.org>
Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
index ded7a22..cd1c5d6 100644
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -2074,6 +2074,7 @@ static void ath10k_pci_hif_stop(struct ath10k *ar)
 	ath10k_pci_irq_sync(ar);
 	napi_synchronize(&ar->napi);
 	napi_disable(&ar->napi);
+	cancel_work_sync(&ar_pci->dump_work);
 
 	/* Most likely the device has HTT Rx ring configured. The only way to
 	 * prevent the device from accessing (and possible corrupting) host
-- 
1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
