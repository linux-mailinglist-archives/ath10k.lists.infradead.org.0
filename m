Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1129101A42
	for <lists+ath10k@lfdr.de>; Tue, 19 Nov 2019 08:20:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nKO5xhf+O4PE2HljHK/50EBdRT4VAbSXM02NRDjckb4=; b=lKA
	gzXGSnjFcPpadBXU/ujDNRUvP5QyCFyPEAQFu5xo1nVFA+Lvs4HdbUhfXzhdnCDCKOABK2vGouc2e
	xocL5PWMuH0gv4NEKm3G4SnTtH2YmsY9XiunMWPXbPyS8N+4IwLnCO2585LNio2KmTtdPR8eZu8ED
	QoB4cnYBQ9CX6IfIsO7H4OZetZaW+dEJr+7clq+Odl6pLHewIcWg/mYDYeZbXkSAwDkey6RUmedBt
	SHWoFdqFc7ElA/Plhp8o0ddAKl9Zv5xOTPxJAwFFHl4nvbZlzL1XzdRJ3IIIY76O8l1gZC2wI2kBP
	UkxV0dC8J+iBGF8zNIk+CwgLOvfmTaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWxo4-0003RJ-Vw; Tue, 19 Nov 2019 07:20:13 +0000
Received: from a27-56.smtp-out.us-west-2.amazonses.com ([54.240.27.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWxnq-0002uj-RB
 for ath10k@lists.infradead.org; Tue, 19 Nov 2019 07:20:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574147987;
 h=From:To:Cc:Subject:Date:Message-Id;
 bh=b6tZszgWPMp4h4WZCQENZl91ooWFo3rBa4JdJzv2Jc4=;
 b=T3Zi6L51cYcFPGd/M2fz5M4A3jrVS6UozYPE3eoxzPP0cyTUBG74vG9xPrsCiTk0
 rsm9Lz2f9DMXSJKUwR2z55OaEMfFEF2QO6wCUclck4l1+5wQk+wu8GsE5aAbWtW1GfS
 C5S7fGoUi1seMCzVl1Ijl7tJNyxI4Bd359tFjhng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574147987;
 h=From:To:Cc:Subject:Date:Message-Id:Feedback-ID;
 bh=b6tZszgWPMp4h4WZCQENZl91ooWFo3rBa4JdJzv2Jc4=;
 b=d6VF/O7NqaSqTxpZdULYjYD1lTH0hd5ehooGom2Icxs58gnQCPulQR0xamZxj+E5
 KX0hVM92rdHjSccOeZhSw+VPLK/OL3D/xe66WFp1cFOE+ZIgAsANjmHcpbBP5bnKL2E
 TyVB862o0IMJ0r32WSdJmow3ZHPli3N0VIsQR0ms=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 040D7C4479F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=yyuwang@codeaurora.org
From: Yu Wang <yyuwang@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 0/2] ath10k: correct tx bitrate for QCA6174/QCA9377/QCA9888
Date: Tue, 19 Nov 2019 07:19:47 +0000
Message-ID: <0101016e8288180f-fd980e4c-c1a8-442a-a9b8-2c81ad7147f1-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.7.4
X-SES-Outgoing: 2019.11.19-54.240.27.56
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_231958_901346_EAAD88DF 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.56 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Tx bitrate got by command 'iw wlan0 link' is incorrect.
These 2 patches will fix the issue.

Changes from v1:
[PATCH v2] ath10k: correct legacy rate in tx stats
Remove wmi ops for getting legacy rate, instead, update the ratecode got from
PPDU stats, to align with the existing tx rate processing.

Yu Wang (2):
  ath10k: add ppdu stats support for QCA6174/QCA9377
  ath10k: correct legacy rate in tx stats

 drivers/net/wireless/ath/ath10k/htt.c     |   2 +
 drivers/net/wireless/ath/ath10k/htt.h     |  30 ++++++
 drivers/net/wireless/ath/ath10k/htt_rx.c  | 146 +++++++++++++++++++++++++++++-
 drivers/net/wireless/ath/ath10k/mac.c     |   2 +-
 drivers/net/wireless/ath/ath10k/mac.h     |   1 +
 drivers/net/wireless/ath/ath10k/wmi-tlv.c |   4 +
 drivers/net/wireless/ath/ath10k/wmi-tlv.h |   3 +
 7 files changed, 186 insertions(+), 2 deletions(-)

-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
