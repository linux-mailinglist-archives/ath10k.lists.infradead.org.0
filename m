Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5741A06AA
	for <lists+ath10k@lfdr.de>; Tue,  7 Apr 2020 07:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ExNWGgsYh/IGUQI0Aa2BTO0H7tGTFofzlT+XKOFu/c=; b=BM6ljowJBOK5Vu
	/sajsmmDy+CDFSMDOrahmtlDGVedL5q0aEPS83kZCdrDxACO6oplZa2YCGcRwKZZ+A7h3dkxZmXmZ
	Wa6bMqs6vNBKeG5BAi4EmWaFzOipGj+KWBcZcss5bEEHpBwYmwdR3R1fm3Y6mFyZzARDX6stflQNt
	mQgPVbQu+IdFBAb9rbdJGINi9yvZAhxMnlXqDY9f8r5Bl033lWesNhKau4TelCG4aANSQ6t29WeNp
	Gda5qeXoIRYfeqBDWfr8qb4A8brkuML63QdJRGPqFg+sw7wvdOJRF71gGcVbgkVpj+Gj4+2clnCn0
	AGFa/KBVqjJY6tVFBqXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLh2Q-000210-Bq; Tue, 07 Apr 2020 05:44:42 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLh2K-00020h-Fj
 for ath10k@lists.infradead.org; Tue, 07 Apr 2020 05:44:39 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586238277; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=W5IAa9bk+3+cH4DC9hzxTpxvIZtx5Bp/SPl+u2EzUnk=;
 b=AYf2l5w8bTkA8AUyC/qAojhvAE0u1m8aDLPsMo35u2h204+QmpbtHoCKElp7UobvqxC0koKY
 cb//J5omMI4TYCScCzLsa3aqtcKAl8Uok9T5rYaQbEfEg3Wv2fYhKz+wny2HbZhjtxH31Juh
 I92UyeU6kaSgjvBT57mihoHJXFk=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8c133f.7f6fb0c035e0-smtp-out-n05;
 Tue, 07 Apr 2020 05:44:31 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 65C14C433D2; Tue,  7 Apr 2020 05:44:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 076F7C433F2;
 Tue,  7 Apr 2020 05:44:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 076F7C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v9 1/4] ath10k: disable TX complete indication of htt for
 sdio
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200212080415.31265-2-wgong@codeaurora.org>
References: <20200212080415.31265-2-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200407054431.65C14C433D2@smtp.codeaurora.org>
Date: Tue,  7 Apr 2020 05:44:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_224437_850548_89347F3F 
X-CRM114-Status: GOOD (  16.45  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> For sdio chip, it is high latency bus, all the TX packet's content will
> be tranferred from HOST memory to firmware memory via sdio bus, then it
> need much more memory in firmware than low latency bus chip, for low
> latency chip, such as PCI-E, it only need to transfer the TX descriptor
> via PCI-E bus to firmware memory. For sdio chip, reduce the complexity of
> TX logic will help TX efficiency since its memory is limited, and it will
> reduce the TX circle's time of each packet and then firmware will have more
> memory for TX since TX complete also need memeory.
> 
> This patch disable TX complete indication from firmware for htt data
> packet, it will not have TX complete indication from firmware to ath10k.
> It will cut the cost of bus bandwidth of TX complete and make the TX
> logic of firmware simpler, it results in significant performance
> improvement on TX path.
> 
> Udp TX throughout is 130Mbps without this patch, and it arrives
> 400Mbps with this patch.
> 
> The downside of this patch is the command "iw wlan0 station dump" will
> show 0 for "tx retries" and "tx failed" since all tx packet's status
> is success.
> 
> This patch only effect sdio chip, it will not effect PCI, SNOC etc.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWPZ-1
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

This has new warnings:

drivers/net/wireless/ath/ath10k/htt_tx.c: In function 'ath10k_htt_htc_tx_complete':
drivers/net/wireless/ath/ath10k/htt_tx.c:566:30: warning: 'msg_type' may be used uninitialized in this function [-Wmaybe-uninitialized]
drivers/net/wireless/ath/ath10k/htt_tx.c:573:6: warning: 'flags1' may be used uninitialized in this function [-Wmaybe-uninitialized]
drivers/net/wireless/ath/ath10k/htt_tx.c:577:42: warning: 'desc_hdr' may be used uninitialized in this function [-Wmaybe-uninitialized]

>From what I can see these are false positives, but please do double check that. In
the pending branch I solved it like this:

--- a/drivers/net/wireless/ath/ath10k/htt_tx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
@@ -546,9 +546,9 @@ void ath10k_htt_htc_tx_complete(struct ath10k *ar, struct sk_buff *skb)
        struct ath10k_htt *htt = &ar->htt;
        struct htt_tx_done tx_done = {0};
        struct htt_cmd_hdr *htt_hdr;
-       struct htt_data_tx_desc *desc_hdr;
-       u16 flags1;
-       u8 msg_type;
+       struct htt_data_tx_desc *desc_hdr = NULL;
+       u16 flags1 = 0;
+       u8 msg_type = 0;
 
        if (htt->disable_tx_comp) {
                htt_hdr = (struct htt_cmd_hdr *)skb->data;

-- 
https://patchwork.kernel.org/patch/11377827/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
