Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BFC68BCE
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 15:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HuQ4SQM7po+RvwF+So+9dAHzIgcbCHwGv3pdSh8GJUo=; b=W8nM+i6n/poFMe
	Xv0E///DM35Zor9RWheEA5RTYvlnj1p5OlQonxFjeKjkgH8am+LbrRqIjDvjTgcpMk7XbR/GOB01w
	LBHnjtYPzHXdVTyIMaBcfwue9uOKfbNZuLg3LjZ9DqJWRKXzw67/3h0xFAX3ELc+Fm+NYPWcuCzrF
	cr+1eKQvg2E7Awl7EwP7NHXwGzbQnXgv2PYI7SOuFbZvwUemeDIuG7V4gCm7NJmLi3WcIjqWVWBku
	5MtKnAvmsU5OgNBEI1Y+AHd7CxMjnZz2UkhBZag+S9q/SSJ4o3wD/+5PajHF2GjAu7YmYk662NwCv
	XS7AhgomzyPYA+W3AiKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1Jw-00018t-4L; Mon, 15 Jul 2019 13:47:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1Jq-00017N-JV
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 13:47:07 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E8E72080A;
 Mon, 15 Jul 2019 13:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563198426;
 bh=jtIGX7QQt3juwRiIEJhbVV6v+rMt/kTvO0hy90dvnaE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c6w0AgC71knJGZcFOZD/VXQtBYuOAECSjfw7SM7XFudazasMFTBqw18jycl2rrp+8
 HDuygwjMbq9sRwN5JhmXOHM/fOC62JoDsAek8+AfU1MHdNERk0Gp1hCayqig76EnWM
 sSTov3eAACHnF6/DOUKcIDPiwssjAHggTmxCnqms=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 002/249] ath10k: htt: don't use txdone_fifo with
 SDIO
Date: Mon, 15 Jul 2019 09:42:47 -0400
Message-Id: <20190715134655.4076-2-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_064706_658160_88A2DDF3 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Alagu Sankar <alagusankar@silex-india.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Wen Gong <wgong@codeaurora.org>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Alagu Sankar <alagusankar@silex-india.com>

[ Upstream commit e2a6b711282a371c5153239e0468a48254f17ca6 ]

HTT High Latency (ATH10K_DEV_TYPE_HL) does not use txdone_fifo at all, we don't
even initialise it by skipping ath10k_htt_tx_alloc_buf() in
ath10k_htt_tx_start(). Because of this using QCA6174 SDIO
ath10k_htt_rx_tx_compl_ind() will crash when it accesses unitialised
txdone_fifo. So skip txdone_fifo when using High Latency mode.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00007-QCARMSWP-1.

Co-developed-by: Wen Gong <wgong@codeaurora.org>
Signed-off-by: Alagu Sankar <alagusankar@silex-india.com>
Signed-off-by: Wen Gong <wgong@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/htt_rx.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index 1acc622d2183..f22840bbc389 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -2277,7 +2277,9 @@ static void ath10k_htt_rx_tx_compl_ind(struct ath10k *ar,
 		 *  Note that with only one concurrent reader and one concurrent
 		 *  writer, you don't need extra locking to use these macro.
 		 */
-		if (!kfifo_put(&htt->txdone_fifo, tx_done)) {
+		if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL) {
+			ath10k_txrx_tx_unref(htt, &tx_done);
+		} else if (!kfifo_put(&htt->txdone_fifo, tx_done)) {
 			ath10k_warn(ar, "txdone fifo overrun, msdu_id %d status %d\n",
 				    tx_done.msdu_id, tx_done.status);
 			ath10k_txrx_tx_unref(htt, &tx_done);
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
