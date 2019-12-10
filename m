Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3481119348
	for <lists+ath10k@lfdr.de>; Tue, 10 Dec 2019 22:09:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkWYMb7cMrs5sdXIbTIpSnEBiFBviISK0nXOR2Az+4g=; b=XUIJlV8j/4qHOI
	hnlNrzH0a7fBT4T68AepUgz6wmrTpFbu/xbSrMmrIi3Z5F7Sto+FVfI/xbcppxDPZqWco4v5rHTNg
	V1u8pzWpRRBGc+M5wUmLVixtR0nyd/9O70u7U1V8bEDDXIxcaq80vXF7H+jm6+drKpKetQb/V1u4n
	WyFPjSyUMIyFIfr2Ni3LQ1v1YkHff3cw9mTi+YtRhy/nEoxt/SV6Ux+gMBoo0gXPxq+dY4EoDqLZB
	zi7CCvstGq8NIo1m4o3PGUDaBb4OZTH3DXxW8zlfF7wiWtn3zpixPcV8TIpFVkgcpdW/r1QNIIvBQ
	gda+iM1a0cnWYM0+aGSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemkj-00024g-8C; Tue, 10 Dec 2019 21:09:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemkf-000242-Ef
 for ath10k@lists.infradead.org; Tue, 10 Dec 2019 21:09:02 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3FCD0246A0;
 Tue, 10 Dec 2019 21:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012141;
 bh=n8jM/pM/933dPhgHxARs3z0hJiHmUnRkMko2CIIqKa0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pZztRpgRNHJyx6AJqFdRafcyMWrQZzL5k1TJ6G71HTU0d6Ek9EkI10TlcxYMVPoLI
 XMwrTIlpiLgn2g4znViceRu2YlgFGBGVdafkjvfFXwV+m0Meunu71D2AOjN3TUEbom
 oO7G9MYk8j4Z1E9JMIq2ETQ+q9b/7dg6225YpE5U=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 106/350] ath10k: Correct error handling of
 dma_map_single()
Date: Tue, 10 Dec 2019 16:03:31 -0500
Message-Id: <20191210210735.9077-67-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_130901_510645_D541089C 
X-CRM114-Status: UNSURE (   9.29  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Bjorn Andersson <bjorn.andersson@linaro.org>

[ Upstream commit d43810b2c1808ac865aa1a2a2c291644bf95345c ]

The return value of dma_map_single() should be checked for errors using
dma_mapping_error() and the skb has been dequeued so it needs to be
freed.

This was found when enabling CONFIG_DMA_API_DEBUG and it warned about the
missing dma_mapping_error() call.

Fixes: 1807da49733e ("ath10k: wmi: add management tx by reference support over wmi")
Reported-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/mac.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index a40e1a998f4cd..2b53ea6ca2057 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -3903,8 +3903,10 @@ void ath10k_mgmt_over_wmi_tx_work(struct work_struct *work)
 			     ar->running_fw->fw_file.fw_features)) {
 			paddr = dma_map_single(ar->dev, skb->data,
 					       skb->len, DMA_TO_DEVICE);
-			if (!paddr)
+			if (dma_mapping_error(ar->dev, paddr)) {
+				ieee80211_free_txskb(ar->hw, skb);
 				continue;
+			}
 			ret = ath10k_wmi_mgmt_tx_send(ar, skb, paddr);
 			if (ret) {
 				ath10k_warn(ar, "failed to transmit management frame by ref via WMI: %d\n",
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
