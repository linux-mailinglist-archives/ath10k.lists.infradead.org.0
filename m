Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 367FEBF41F
	for <lists+ath10k@lfdr.de>; Thu, 26 Sep 2019 15:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Djj043Dcmwzm0Mrcv3WESFuA++lwG5XFlSrEOzGk4Js=; b=hBk
	CWrQCmXAL/gXedvbCIdnh4Ewi6DGpA0hxXfTdAZdkMbSaLEkK/cMPA7gGNSAdTgMlacwQUK+yaIP9
	CYpfUydf2gy5AWS6Dc+l/wSn7BvzwaaiD6CFZKWOYs48AR0QJxpv13zV0NKdrSq004Y02ZBbE2S23
	pheCE8N0JvWGJ8P7TblUVh6dw/oVzKlZlBr7WCbqwo788XvUqM7VgXhsS6rK+a4yKfNefEQSW+KUV
	RITX3G40HkUyINoaDQz/tECkAeBFPnooyyCBICVua24KeE+bgb0gQwv7aWuG3+tdFq3CSPEPP4zNw
	1NvsImkFq4VQcLIEUJeGPWBz0tS9ZCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDTwU-0006Ra-Rw; Thu, 26 Sep 2019 13:36:22 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTwQ-0006RD-Av
 for ath10k@lists.infradead.org; Thu, 26 Sep 2019 13:36:19 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3830260BE8; Thu, 26 Sep 2019 13:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569504976;
 bh=YuHVzHnU2iBdI6dRQ86mrnB17MCHWfndjfloXSheE/8=;
 h=From:To:Cc:Subject:Date:From;
 b=kJY8LxxqkDD7JZL9rXWrIfvEY43MUCYIEQ+tuA1VheOZHfcXUNlb8jPbaM8NYCBu6
 6AMgvwtlUTjgjUi06JeMjha9Kor+O13FuTGHpQeNZgdzF8yzBLnEqZ2g0UoejNKuK8
 uLdxBHnb/JMqwQ3mC0Jo5iMPTFEn7Fvwt/pK7Irs=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from localhost
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: akolli@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D60A460128;
 Thu, 26 Sep 2019 13:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569504975;
 bh=YuHVzHnU2iBdI6dRQ86mrnB17MCHWfndjfloXSheE/8=;
 h=From:To:Cc:Subject:Date:From;
 b=YmGO4WAIubHXOn2jueGRQGy4wZ3tRlJz5LCox+Jty7GFYkNTvwLVm3y1eN8WfNXMh
 k+D7exeoNLnZgnUMFMf+0RMppO41tursHb4RvdFu4lmc7X+n6vKNT3T4PS4IHBKI9N
 HWi7tYP7NZZz+QzAppzHD6Erpt7OTXoZH4WYtskg=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D60A460128
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=akolli@codeaurora.org
From: Anilkumar Kolli <akolli@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 1/2] ath10k: fix IRAM addr in coredump
Date: Thu, 26 Sep 2019 19:07:00 +0530
Message-Id: <1569505021-20515-1-git-send-email-akolli@codeaurora.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_063618_401207_01BEBB74 
X-CRM114-Status: UNSURE (   9.22  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anilkumar Kolli <akolli@codeaurora.org>, linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Fix IRAM start address in coredump.
Tested on: QCA9984, QCA4019
FW version: 10.4-3.9.0.2-00044

Signed-off-by: Anilkumar Kolli <akolli@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/coredump.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/coredump.c b/drivers/net/wireless/ath/ath10k/coredump.c
index b6d2932383cf..ecd3dd5d8356 100644
--- a/drivers/net/wireless/ath/ath10k/coredump.c
+++ b/drivers/net/wireless/ath/ath10k/coredump.c
@@ -703,7 +703,7 @@
 	},
 	{
 		.type = ATH10K_MEM_REGION_TYPE_REG,
-		.start = 0x98000,
+		.start = 0x980000,
 		.len = 0x50000,
 		.name = "IRAM",
 		.section_table = {
@@ -786,7 +786,7 @@
 	},
 	{
 		.type = ATH10K_MEM_REGION_TYPE_REG,
-		.start = 0x98000,
+		.start = 0x980000,
 		.len = 0x50000,
 		.name = "IRAM",
 		.section_table = {
@@ -891,7 +891,7 @@
 	},
 	{
 		.type = ATH10K_MEM_REGION_TYPE_REG,
-		.start = 0x98000,
+		.start = 0x980000,
 		.len = 0x50000,
 		.name = "IRAM",
 		.section_table = {
-- 
1.7.9.5


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
