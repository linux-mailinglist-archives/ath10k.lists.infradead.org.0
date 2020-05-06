Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03141C6952
	for <lists+ath10k@lfdr.de>; Wed,  6 May 2020 08:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OsovZelVDCYyx58txG1Gx2bHsvbbohufSKOulH6KGt8=; b=hXz
	pIyTxEjkZ+nETQuqGqtf7f73HMetu0eNDaYZTkqv0jtgBHa5wzxoQNPqerGafITlWw6hF+qv1HYFx
	sFMCHzoosCT7TQlOGDCWJfKUv4a0sWrhPLa+F1i4+9iz4QiVMjB/MqewZD129bgsczj551Ghx6mBQ
	SpjWWxXdA2Ull2njo0Uh7AJ/ecbiKxrQjvmgANwqjq65JiMoBotb00Pr8CzLPqjS4mSFiYYq1Lqd9
	Cd1IwmX0r3lhaH9dwhFqUQlCzNhOjmh2DxZzPHdWf4KvgC9nOCZcb2RAaS28hnpcpklYyuUqI9iqh
	2UUgbnm443WcCZtuQaW6tmXkR9d+ONg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDqG-0000Ra-2p; Wed, 06 May 2020 06:47:40 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDqC-0000Qs-DR
 for ath10k@lists.infradead.org; Wed, 06 May 2020 06:47:37 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588747656; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=70rgL4NE39jGfHV4AS4spCNTNUk5rYBuSykdVkZ8HhA=;
 b=ZeR5TrjxMINTcsaFvck1ptC2hh2pFf5gVJq20wD6yGGaankbJa7URk6PFZpjR8r8vA5soY0g
 eWJ34t+zd/Ganem0c358w+mmd9bPBl+C7snMw05CgUE+DsWpCid2UIer6dq7t700FcWm/ML5
 Q9a4Epf/JF883Ezdki4imR3KdZY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb25d87.7f19ae5716f8-smtp-out-n02;
 Wed, 06 May 2020 06:47:35 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 12FEEC44788; Wed,  6 May 2020 06:47:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 46DAEC43637;
 Wed,  6 May 2020 06:47:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 46DAEC43637
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: fix __le32 warning in
 ath10k_wmi_tlv_op_gen_request_peer_stats_info()
Date: Wed,  6 May 2020 09:47:29 +0300
Message-Id: <1588747649-18051-1-git-send-email-kvalo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_234736_513373_BACF9E77 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

From: Wen Gong <wgong@codeaurora.org>

Sparse warned:

drivers/net/wireless/ath/ath10k/wmi-tlv.c:3013:34: warning: incorrect
type in assignment (different base types)
drivers/net/wireless/ath/ath10k/wmi-tlv.c:3013:34:    expected
restricted __le32 [usertype] reset_after_request
drivers/net/wireless/ath/ath10k/wmi-tlv.c:3013:34:    got unsigned int
[usertype] reset

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.

Fixes: 0f7cb26830a6 ("ath10k: add rx bitrate report for SDIO")
Signed-off-by: Wen Gong <wgong@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/wmi-tlv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/wmi-tlv.c b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
index afa03cb3aaf5..932266d1111b 100644
--- a/drivers/net/wireless/ath/ath10k/wmi-tlv.c
+++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
@@ -3010,7 +3010,7 @@ ath10k_wmi_tlv_op_gen_request_peer_stats_info(struct ath10k *ar,
 	if (type == WMI_REQUEST_ONE_PEER_STATS_INFO)
 		ether_addr_copy(cmd->peer_macaddr.addr, addr);
 
-	cmd->reset_after_request = reset;
+	cmd->reset_after_request = __cpu_to_le32(reset);
 	ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv request peer stats info\n");
 	return skb;
 }
-- 
2.7.4

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
