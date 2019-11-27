Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E454810A912
	for <lists+ath10k@lfdr.de>; Wed, 27 Nov 2019 04:33:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5W6NrSZNZDhPozupdSURR3qcxsvea3qXGVssP2MPjaw=; b=YCYF8DTk+EMVwz
	YkNB0Q9k9VW7YZX8M5cMcBTCs5/dPwYuhGEHEfYRPsXsdpNT8TLcT42EK34gF8hharyHI/s/amZhk
	cFcWMeZKzOFbmF2Mwm47KdV00zDXLZaNZ2KLbXO5uKCHncrdYEtbiY/NzZG8bgemgpihLJOHwlXJr
	CoFj2zGsRrHpAmWA7PiMVWfWnnecczgMNQ2eQS6/Re9uB//l4PRm6Qiet79E9wXbzolpt9JGyVJWA
	maPI7fa7pmTJio7eHsampNVtzyxmbueRc0EPls7qSzzGkMbXBvMuwBTsxxDVwA8lL9/fC/Rp5Vyq+
	80hzmEvPuIvu48jRPnZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZo51-0005KY-4A; Wed, 27 Nov 2019 03:33:27 +0000
Received: from a27-10.smtp-out.us-west-2.amazonses.com ([54.240.27.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZo4v-0005Jy-Tf
 for ath10k@lists.infradead.org; Wed, 27 Nov 2019 03:33:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574825593;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
 bh=wruCPXhY6VQj0usJBvMxQ4PAP/jyoMAOrAQz3oD7BRY=;
 b=P1mmYZ/LwhEfpsyTfi3n3bg4bv0GUi/OboLMnUO96i+7ljbI/SH8UuMII6EA/4wt
 j5vEksdjqKMnwbaVLzgt5/10Pa1U+bur9LNzmoQm9CSj6LHBrFUS0F/ZZhMYp0kWIyW
 nBZawln8GNertnJCXozMTBL79GYf/Ba7H0JO6+fk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574825593;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
 bh=wruCPXhY6VQj0usJBvMxQ4PAP/jyoMAOrAQz3oD7BRY=;
 b=TfWvdnTzT4zo7bPyNapn8c8uyIYxpFOICA2NSelE6LS40mQGxKNBVWGj6goWBYst
 ImCQuxg13M26IzWFBFQD7gHPu5MaBvtfEVNyLLSFjYBguDvUWx7crcFJoL9xNkjRKWH
 q2CzPMHpSlyce7/GqQ0gTCLe+57LwKLPvEZ2F44U=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 09B05C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: change log level for mpdu status of sdio chip
Date: Wed, 27 Nov 2019 03:33:13 +0000
Message-ID: <0101016eaaeb8952-5f5470e8-6cf3-4017-b658-b9866b4985ef-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.27-54.240.27.10
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_193321_983078_F44EC646 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.10 listed in list.dnswl.org]
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

Change log level from warn to dbg level of mpdu status
of sdio chip.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/htt_rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index 4490ffb53d24..283ffac56b1a 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -2203,8 +2203,8 @@ static bool ath10k_htt_rx_proc_rx_ind_hl(struct ath10k_htt *htt,
 	    HTT_RX_IND_MPDU_STATUS_OK &&
 	    mpdu_ranges->mpdu_range_status !=
 	    HTT_RX_IND_MPDU_STATUS_TKIP_MIC_ERR) {
-		ath10k_warn(ar, "MPDU range status: %d\n",
-			    mpdu_ranges->mpdu_range_status);
+		ath10k_dbg(ar, ATH10K_DBG_HTT, "htt mpdu_range_status %d\n",
+			   mpdu_ranges->mpdu_range_status);
 		goto err;
 	}
 
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
