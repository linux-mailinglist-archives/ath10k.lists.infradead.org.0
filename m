Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0E615DCB0
	for <lists+ath10k@lfdr.de>; Fri, 14 Feb 2020 16:56:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWcfu6Syh0LtSPUa3+1l3cGw1h+huQ/gDmS3j04jaas=; b=liMH5OiOkUY8/k
	Z4s2KJJuCsIwX4FnoOpuSgQQShvMdqNrntfrrR7Ddc52JGThkL5+2ALM4q7eTpnV7h7zAop5omkzj
	oGvzX2BJ7rPV4C+QSrZU0b75d8bSmzYuQAUQnQrbZJEeJBj8DqH1p6uCL0HYVZJJyaLFzqCjuEgpx
	vOBcbzdoYwrdYqIre553IStIsg7vvAqT2QLuk2HihTDfLcJ2bUWEIQblRLeOfzPjG2YuG+y0AUBTK
	CTaY9vg9wIM+5OR2cvuMSqiLFTjl5lHjqe8HasL2VHCsBa0fdYktmlsG1rwVo9YPD3y8EQ31c2vCf
	lTFK8a/+Ic+pzqvGDbsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dK3-0001Ma-KH; Fri, 14 Feb 2020 15:56:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dGa-0005fx-M6
 for ath10k@lists.infradead.org; Fri, 14 Feb 2020 15:52:35 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47C5224676;
 Fri, 14 Feb 2020 15:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695552;
 bh=e4oL/fv1Mjg3Df8wDT7b9emOle+kZOEDSt6D7uVpoVc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vy3zgyES/5oPF9ovTZPiIeDujSxh7U/BhBafYdmqrxPl+8S+XULMmZQl/EAhIzSDu
 oKUYTrmQ1ACE7pLNgzag+VzdSusQ73R8bfML3PE6rrAA95B2mRgdcqHMMqdaa/X+T9
 bXbS8DLBc4bJETq/g1gRBVxa7cJsqiNcqEcZXY3A=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 167/542] ath10k: correct the tlv len of
 ath10k_wmi_tlv_op_gen_config_pno_start
Date: Fri, 14 Feb 2020 10:42:39 -0500
Message-Id: <20200214154854.6746-167-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075232_791830_5B3E2892 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Wen Gong <wgong@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Wen Gong <wgong@codeaurora.org>

[ Upstream commit e01cc82c4d1ec3bddcbb7cd991cf5dc0131ed9a1 ]

the tlv len is set to the total len of the wmi cmd, it will trigger
firmware crash, correct the tlv len.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00017-QCARMSWP-1 and QCA6174
PCIE with firmware WLAN.RM.4.4.1-00110-QCARMSWPZ-1.

Fixes: ce834e280f2f875 ("ath10k: support NET_DETECT WoWLAN feature")
Signed-off-by: Wen Gong <wgong@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/wmi-tlv.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.c b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
index 69a1ec53df294..7b358484940ec 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.c
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
@@ -3707,6 +3707,7 @@ ath10k_wmi_tlv_op_gen_config_pno_start(struct ath10k *ar,
 	struct wmi_tlv *tlv;
 	struct sk_buff *skb;
 	__le32 *channel_list;
+	u16 tlv_len;
 	size_t len;
 	void *ptr;
 	u32 i;
@@ -3764,10 +3765,12 @@ ath10k_wmi_tlv_op_gen_config_pno_start(struct ath10k *ar,
 	/* nlo_configured_parameters(nlo_list) */
 	cmd->no_of_ssids = __cpu_to_le32(min_t(u8, pno->uc_networks_count,
 					       WMI_NLO_MAX_SSIDS));
+	tlv_len = __le32_to_cpu(cmd->no_of_ssids) *
+		sizeof(struct nlo_configured_parameters);
 
 	tlv = ptr;
 	tlv->tag = __cpu_to_le16(WMI_TLV_TAG_ARRAY_STRUCT);
-	tlv->len = __cpu_to_le16(len);
+	tlv->len = __cpu_to_le16(tlv_len);
 
 	ptr += sizeof(*tlv);
 	nlo_list = ptr;
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
