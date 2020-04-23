Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C054D1B57F5
	for <lists+ath10k@lfdr.de>; Thu, 23 Apr 2020 11:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4lpuaC1roWzt8z6lcVottB0z06O1LagaZFDUZjIVqv4=; b=Ha35i1x+cmT3kM
	1dsB8oIVjxon3sKdkkZkQRau74B+Tbw3L+G39u3fkJsZAb1HFUmZgB/1g0N3DsR9wCmuP4m4XnQWC
	GCeo0Ycxi+3XYzVXEBJL7a9dK7wGVutiT/WCmP/CQv9ZEeGR90k2AQGu5ocUqrHAuOZ+Y0LDbrcON
	yJc7Ak+GjnWYxIH+Bdg4X33DHkumTdZowUEw2K7lSB6SYGB4gL5DM8sFe2ubae3w8KI+OQOKvYAUH
	U3s/yIPBe3YUZBNP8VtEsCQMBXDYS+zjjQWfzPUjZX7tYDVdzifFtGQl8JPEyn2So6ua67mtmYMmM
	GLlDyEe7Apd+vQLmrV/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRY1K-0003fu-1f; Thu, 23 Apr 2020 09:19:46 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRY1G-0003ey-FR
 for ath10k@lists.infradead.org; Thu, 23 Apr 2020 09:19:43 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587633582; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=okzeHzsPlBvB+6nY8N1o+e8CEjRSPerRcY0Q6/pgWXg=;
 b=OfeC/k8Jagh/QLe3HfolLnUC+dgKwNR3DSH/elox47dMvskzBVHz++E44cZXfSWnKw+GGw4I
 c5FgQIn0vaPoVt18QjWD+W6rlplBmtVlWNcwmYsZ89IN7Udp0HdIhix8j3MNKa/AO9ukWMwI
 bgAI+eIEHhVXXLDfByieN5zfWQs=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea15dad.7fe199d04420-smtp-out-n01;
 Thu, 23 Apr 2020 09:19:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AC95BC433D2; Thu, 23 Apr 2020 09:19:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 24F5BC433CB;
 Thu, 23 Apr 2020 09:19:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 24F5BC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 0/4] ath10k: sdio: add support for rx/tx bitrate reporting
Date: Thu, 23 Apr 2020 17:18:52 +0800
Message-Id: <20200423091856.24297-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_021942_573312_720E29FB 
X-CRM114-Status: UNSURE (   7.73  )
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
Cc: linux-wireless@vger.kernel.org, wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

iw wlan0 link/iw wlan0 station dump show the wrong bitrate for rx/tx.
wrong example:
rx bitrate: 6.0 MBit/s
tx bitrate: 2.8 MBit/s

These patches correct them.
rx bitrate: 234.0 MBit/s VHT-MCS 3 80MHz VHT-NSS 2
rx bitrate: 40.5 MBit/s MCS 2 40MHz
rx bitrate: 72.2 MBit/s MCS 7 short GI
rx bitrate: 54.0 MBit/s
rx bitrate: 48.0 MBit/s

tx bitrate: 54.0 MBit/s

Wen Gong (4):
  ath10k: enable firmware peer stats info for wmi tlv
  ath10k: add rx bitrate report for SDIO
  ath10k: add bitrate parse for peer stats info
  ath10k: correct tx bitrate of iw for SDIO

 drivers/net/wireless/ath/ath10k/core.c    |   2 +
 drivers/net/wireless/ath/ath10k/core.h    |  25 +++
 drivers/net/wireless/ath/ath10k/hw.h      |   3 +
 drivers/net/wireless/ath/ath10k/mac.c     | 216 ++++++++++++++++++++++
 drivers/net/wireless/ath/ath10k/wmi-ops.h |  30 +++
 drivers/net/wireless/ath/ath10k/wmi-tlv.c | 121 ++++++++++++
 drivers/net/wireless/ath/ath10k/wmi-tlv.h | 110 +++++++++++
 drivers/net/wireless/ath/ath10k/wmi.h     |   9 +
 8 files changed, 516 insertions(+)

-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
