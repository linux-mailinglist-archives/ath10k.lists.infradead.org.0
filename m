Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A71741AC032
	for <lists+ath10k@lfdr.de>; Thu, 16 Apr 2020 13:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DERbOoDS3Y7INJlGhRKzulpuDNJE7Q8H6tvbk+8gOH0=; b=JTl
	suJwUmGazi4te+gOru6rJZ/LD5lc8NzgUZMahHAJVdF27AfPBG0ynqw7WFhhxRLEjN7wIpZ1fSEwS
	E0NrpsnA2JfXtwGZdNbqNfg7zKd2+9eD0NPBva+yBEE4sN3L7skXDnQzkycCw1Q7GyDNS9NaP3yW+
	SmF3ZFkvzK7QPoiLaza5QWz0wCLbRCm2QuIsMz85s8g34a/Mm5OT3mMOqFamwCAYzk2B/lD0Zh/tY
	Qj8JdiDOS7PAUx3XM0xnlu6Pr86p5Tn2IQoVGIxEZD1XS9yUnqVa2XeImwpC2Jh++v6HZKwZM5Im2
	iv7q7hCDe2FrqNy8mmNzw/ziaRHYdSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP33C-0004D9-5w; Thu, 16 Apr 2020 11:51:22 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP333-00045P-PF
 for ath10k@lists.infradead.org; Thu, 16 Apr 2020 11:51:17 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587037876; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=cwwmQHr1vil7VSpsie/zJOQ8eZHvJ3DcsUDqo13IaCA=;
 b=r75/7IWn6Exo970wjdaU6rxxeqk0Gl0TgBqLYvfaV1c0ov14iPXJg5K8ppkX6tUdT+k2hBfq
 eJ2yfCuNNWYZPEb1NBlt6Rz8DiDUT1CqM4RRKD1cqGWWYq0z7noO5/63eSxxZg3H/tzkS5Uw
 kwUi8EvOZW9JxCmdjcNRCiATJ00=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9846a8.7f9314063998-smtp-out-n03;
 Thu, 16 Apr 2020 11:51:04 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CA77DC432C2; Thu, 16 Apr 2020 11:51:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 25A3EC433CB;
 Thu, 16 Apr 2020 11:51:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 25A3EC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 0/4] ath10k: sdio: improve power consumption
Date: Thu, 16 Apr 2020 14:50:55 +0300
Message-Id: <1587037859-28873-1-git-send-email-kvalo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_045116_637204_E7DC3B8C 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi,

here's a patchset for improving power consumption on SDIO with some refactoring
and some small cleanups afterwards.

v2:

* rename ath10k_hif_swap_mailbox() to make it usable for this

* small cleanups found while doing the refactoring

* compile tested only

Kalle Valo (3):
  ath10k: rename ath10k_hif_swap_mailbox() to ath10k_hif_start_post()
  ath10k: sdio: remove _hif_ prefix from functions not part of hif
    interface
  ath10k: hif: make send_complete_check op optional

Wen Gong (1):
  ath10k: improve power save performance for sdio

 drivers/net/wireless/ath/ath10k/core.c |   2 +-
 drivers/net/wireless/ath/ath10k/hif.h  |  11 ++-
 drivers/net/wireless/ath/ath10k/sdio.c | 168 +++++++++++++++++++++++----------
 drivers/net/wireless/ath/ath10k/sdio.h |  16 ++++
 drivers/net/wireless/ath/ath10k/usb.c  |  12 ---
 5 files changed, 139 insertions(+), 70 deletions(-)

-- 
2.7.4

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
