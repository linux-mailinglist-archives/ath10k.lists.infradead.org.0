Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486D9D0975
	for <lists+ath10k@lfdr.de>; Wed,  9 Oct 2019 10:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iiNOnrFADmpP53RVSI4f+fmxCCCMZNFVC1XeZngg5P0=; b=DxxjeyK0o7yPQNG4PhyWJGvlmh
	AoomIYN/jBf8neWZu8eEHVosgNSQjjsokRWNgYsuifYoe6jy8ip4HvYVB4gjieLSXF1lFjWRlv3DZ
	UdzIbVGbHbqdnsSiI4w4PBTZ/10ZLG1l0bgsG7O1rgLCtTB8cukVxnE8Y4lrMKhaf8stqpoqeqed4
	TsjALDUjSd0uFBFD8TLzAK0DCdaHpVfHgfqxar0rPvPzSjVS2ZNQDUMmEvU5Bby4Z1WcSFNAzjMWk
	urgOJv6aBUiNPtIHFM4rKudsdO3F6c5ZqCLD6945uxIQSxbl4I89uF8m9Cz5J1aQd1ny0L9s8Okzc
	Gl7iCsqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7BE-0006la-NA; Wed, 09 Oct 2019 08:18:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7BA-0006l6-4O
 for ath10k@lists.infradead.org; Wed, 09 Oct 2019 08:18:41 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8127161AF7; Wed,  9 Oct 2019 08:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570609119;
 bh=fkegv0laAJ4hlSt28jWVa0qekMb+Sxt77qJ84+gMelE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e6TDtYnN2Je/vOlx0VcPVgZM9vGe9GwETbkpxDi0eylZZqRDxINm9fDyGb0gWK3Cy
 vSHV0azFet8t9AAGPt2D+hWWVK+wZqb1klKD+UYg3dXhYQ4vpUD0DH13GyPEW2mH2r
 CShOGaCrbb7Vw6VnWUZIZT2nl2zVOeoOetjxHGkU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from smtp.codeaurora.org (unknown [180.166.53.21])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: miaoqing@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 97BF161A1B;
 Wed,  9 Oct 2019 08:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570609118;
 bh=fkegv0laAJ4hlSt28jWVa0qekMb+Sxt77qJ84+gMelE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Aln+meziXaFPjbhKBqCILzpi+ZD34pOOzxhrv3tA4zSLMVwPtp5R54uVm6OghtV8h
 nCyYXGRhCzq+2uG3/lnawZxORkyVLymUN0xgZebjON6UEC2vbsYVWqwdWHv2I7exHM
 IIWwdAxl3hsNTghwhZyeT46fBmcj6o/bp/sgsxQc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 97BF161A1B
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=miaoqing@codeaurora.org
Received: by smtp.codeaurora.org (sSMTP sendmail emulation);
 Wed, 09 Oct 2019 16:18:31 +0800
From: Miaoqing Pan <miaoqing@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 2/2] ath10k: fix memory leak for tpc_stats_final
Date: Wed,  9 Oct 2019 16:18:09 +0800
Message-Id: <1570609089-22071-2-git-send-email-miaoqing@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1570609089-22071-1-git-send-email-miaoqing@codeaurora.org>
References: <1570609089-22071-1-git-send-email-miaoqing@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_011840_191984_F69DE7E1 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, Miaoqing Pan <miaoqing@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The memory of ar->debug.tpc_stats_final is reallocated every debugfs
reading, it should be freed in ath10k_debug_destroy() for the last
allocation.

Tested HW: QCA9984
Tested FW: 10.4-3.9.0.2-00035

Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/debug.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/ath10k/debug.c b/drivers/net/wireless/ath/ath10k/debug.c
index 40baf25..04c50a2 100644
--- a/drivers/net/wireless/ath/ath10k/debug.c
+++ b/drivers/net/wireless/ath/ath10k/debug.c
@@ -2532,6 +2532,7 @@ void ath10k_debug_destroy(struct ath10k *ar)
 	ath10k_debug_fw_stats_reset(ar);
 
 	kfree(ar->debug.tpc_stats);
+	kfree(ar->debug.tpc_stats_final);
 }
 
 int ath10k_debug_register(struct ath10k *ar)
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
