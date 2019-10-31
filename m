Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB92EA8E8
	for <lists+ath10k@lfdr.de>; Thu, 31 Oct 2019 02:42:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=efEkc+7BS3Yyv8LkzSoy0aMtZ/x+WTC7minFfCdMme4=; b=sSW
	sWM588CCuSOWGsUtCpyHOhAi4+AOqmVy7Bn//gNzVD6ACjixULcnL8Jo/eFrR+UKFsKl1g6OSI5IT
	zrmrJa6WOFhoSEXrEFjnRq8fewHT6DAuO4vzDIxb3DVvAyYKiC9Jdd7nHKVfkIjsaDY0cyBry957b
	g26AVLJB2D8B75A7CLS6NWkB2Y1u+KG+yiqtgsmVFQ7hoyNYEHl92SpQ6w9uUXEPdr4OLOQpWxww/
	kxK/AjwRrTKq/9NqDsPPgQek/DgeqWlGjDfYQqiH/jvgJeXEAZObiXoqjo6EDooRUiArdbQMBMzdQ
	V9UgdtCpu9r4AyqULWCgHVRqx3X3UQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPzTu-0006C6-3X; Thu, 31 Oct 2019 01:42:34 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPzTq-0006BZ-IA
 for ath10k@lists.infradead.org; Thu, 31 Oct 2019 01:42:31 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0D5B760A19; Thu, 31 Oct 2019 01:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572486148;
 bh=LLgVPWAvJ0j/e4W6FJaFc0K1XmCnlrNL8yNz7PYkoH0=;
 h=From:To:Cc:Subject:Date:From;
 b=m1r8iGB//ZbDYdDiqene8EhixiRn55a2NgFPXb7SZ8WFj2tlm8CnzY8zdCOxaT7M7
 tfQpGoARheuZJE/Re+06i5N2l67zm7Le5NmxNk05rVlQakiCG8XB108sXe9/9leelG
 xirw7CvWTMiUIA3i2E9sOsIJatpOB9zlYoJSYQwQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from zhichen.ap.qualcomm.com (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: zhichen@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CE95F6081E;
 Thu, 31 Oct 2019 01:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572486147;
 bh=LLgVPWAvJ0j/e4W6FJaFc0K1XmCnlrNL8yNz7PYkoH0=;
 h=From:To:Cc:Subject:Date:From;
 b=Dsxgcx9CB7jbKow3axzb1xYKwUUIim4cB5+AJA5/cdeQyyv0zVZ38wK1WLeKgQ+HX
 cTXI1qPkYIUWeSTQca59gBUTuF7lSkk/4txM66DBN7rammfKS5TcF7bcGMsvo/JYAm
 ZWLfaV15sB3F4hNXVxUdw6Ko871TZBbKjLzQ7ZKE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CE95F6081E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=zhichen@codeaurora.org
From: Zhi Chen <zhichen@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: fix potential issue of peer stats allocation
Date: Thu, 31 Oct 2019 09:42:13 +0800
Message-Id: <1572486133-23516-1-git-send-email-zhichen@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_184230_620868_1DA3D66C 
X-CRM114-Status: UNSURE (   8.42  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Zhi Chen <zhichen@codeaurora.org>, linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

STA number was not restored if OOM happened.

Tested: QCA9984 with firmware ver 10.4-3.9.0.1-00018
Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/mac.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index b73c23d..61efc00 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -6419,6 +6419,7 @@ static int ath10k_sta_state(struct ieee80211_hw *hw,
 			arsta->tx_stats = kzalloc(sizeof(*arsta->tx_stats),
 						  GFP_KERNEL);
 			if (!arsta->tx_stats) {
+				ath10k_mac_dec_num_stations(arvif, sta);
 				ret = -ENOMEM;
 				goto exit;
 			}
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
