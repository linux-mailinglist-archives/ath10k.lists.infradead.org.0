Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C1EE2DF7
	for <lists+ath10k@lfdr.de>; Thu, 24 Oct 2019 11:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mc002ardlEqvKrJMeV1vds/7a9mospU8f7Ai3dX5PL0=; b=owiCLyCpl1dyEyvPPN+dmWLlFq
	v1kW18c00UP4pR1vlIWB1G6TfJ/QrZHAWWOz6KGp/Nqyv8zNCGlgTPxnPKBk6hOifpZBNp15l8vvr
	R8onJMBlf+eixR61xZhwlUp2Nuq9Bc2zY+NgEQ03Sc95kKz6se1SgCfC556RxopCfI6rvnM6DMKX4
	tzOgss4Dm9pzgJcU3oa42bXC4waOIU4QbUY/avYhfN+CAR4C8EdBpxmeSfFXybJteqi2Wo82ran29
	D8lzkVwrghpts+3IkrKkRf9AoxfNJN8qh11dga5Ul40dZI1lnuD1dfP34CE2k36Yn9IOXBBc/SoRz
	clu1GmxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZp1-00046b-Nq; Thu, 24 Oct 2019 09:54:23 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZou-00043j-7n
 for ath10k@lists.infradead.org; Thu, 24 Oct 2019 09:54:17 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E808260FBB; Thu, 24 Oct 2019 09:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571910855;
 bh=olhz53eSWn8B+t4e5HJ9Ad44Ha9vyjbjoKXi42voITg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WhZQoLA8i0HpKEx1qRBVAPJPh2YR4fmSmTNe1J2OxpqCvsUAj1oQ8c4blEMNdqp1G
 Mz5/OZWBPhNqlP4uU+6Z608BIhGZVGak+iKjchffUBvQwmPVjSloyjC80ZdMSu2yfP
 h7Oxy2jaGZd+vi7gj6uxmWNXEAnZrcmRAY4rWyeY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (unknown [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DA49B61178;
 Thu, 24 Oct 2019 09:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571910854;
 bh=olhz53eSWn8B+t4e5HJ9Ad44Ha9vyjbjoKXi42voITg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JDfRl5BJj4KZNxrJnHiASCIFw/vDi/ubsXk/J4p4/xAnlvMSWjnnaArjlh5zSm4jU
 0xrnTH9DBW02+f7HzJVvR9yAkY8ReEY4BgApndjyKdZL6gS+Au1NVFV6N+g+eoaEng
 fcS4DV/XoFvxQtUQZ89jsEKNx9FYmzITTo7NR+dU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DA49B61178
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 2/2] ath10k: sdio: remove struct ath10k_sdio_rx_data::status
Date: Thu, 24 Oct 2019 12:54:09 +0300
Message-Id: <1571910849-11489-2-git-send-email-kvalo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571910849-11489-1-git-send-email-kvalo@codeaurora.org>
References: <1571910849-11489-1-git-send-email-kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_025416_321148_488BD633 
X-CRM114-Status: UNSURE (   9.31  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

It seems to be unused.

Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 2 --
 drivers/net/wireless/ath/ath10k/sdio.h | 1 -
 2 files changed, 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index ef16b45c18da..ceeee465a73a 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -649,7 +649,6 @@ static int ath10k_sdio_mbox_rx_fetch(struct ath10k *ar)
 
 	htc_hdr = (struct ath10k_htc_hdr *)skb->data;
 	pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
-	pkt->status = ret;
 	skb_put(skb, pkt->act_len);
 
 	return ret;
@@ -687,7 +686,6 @@ static int ath10k_sdio_mbox_rx_fetch_bundle(struct ath10k *ar)
 		pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
 
 		skb_put_data(pkt->skb, htc_hdr, pkt->act_len);
-		pkt->status = 0;
 		pkt_offset += pkt->alloc_len;
 	}
 
diff --git a/drivers/net/wireless/ath/ath10k/sdio.h b/drivers/net/wireless/ath/ath10k/sdio.h
index 9acaf0229cf2..33195f49acab 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.h
+++ b/drivers/net/wireless/ath/ath10k/sdio.h
@@ -126,7 +126,6 @@ struct ath10k_sdio_rx_data {
 	bool part_of_bundle;
 	bool last_in_bundle;
 	bool trailer_only;
-	int status;
 };
 
 struct ath10k_sdio_irq_proc_regs {
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
