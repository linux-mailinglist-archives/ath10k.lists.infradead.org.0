Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3414415A165
	for <lists+ath10k@lfdr.de>; Wed, 12 Feb 2020 07:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=39ujWRfknSjymC/koP/Jbf4uP8reAkW8mjyHpLlY5UE=; b=YAtOEfEYbLx7DAkqO0/L2zJfT
	Lh16GJuTBXzH1AYPis4YbyCk98n/eOeal0LcdpbtLOJRirmT6XllplKEnaDhn1OfQWgvXg7yVNxs1
	Z9UM0okZscX41zhWJ2Hlbj4+EwGqDT4zrLiX1y6nw/A6Ez9WOjaSqkx4Gxv8pz2xRG4b/WsKpOoDo
	0iL01/wMxcpzBHoInk3pcu0c5H1t4cE9AUW1DBCCvV2rFT6Cs+X6OgR2vVmhtBziqK0mbh/B7e2XA
	DL6078EeBCAT0251j3ASiufgQaTbAPyHONY+oE++lUTqMdy9FWtqqc7wL4j3Jbj1UGs2sgMLsAkDO
	kENBF+oyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1lnh-0004su-67; Wed, 12 Feb 2020 06:47:09 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1lnc-0004sU-IN
 for ath10k@lists.infradead.org; Wed, 12 Feb 2020 06:47:06 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581490023; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=3LBhI8IlhSGFImP8TtSDODNPOSmv3sY4U30uYdePgxw=;
 b=T/SvWrCb62Uk557Qa2kF06EG/72MmiqGU1l7g1E/Rg79+8K3U2YB+yeuXcSg7noNPXzrz1Gu
 VhuRDKqGE12ftTuKHd/ad7cpv0sKPJ28g0sedZH75PiIcCcpRp1FqSmDS2q3Pab2kaJE9YUq
 oNjoAh7nThv5LaOIeERK32K+7Ts=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e439f67.7ff3e9bc0960-smtp-out-n01;
 Wed, 12 Feb 2020 06:47:03 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E762BC433A2; Wed, 12 Feb 2020 06:47:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 88A46C43383;
 Wed, 12 Feb 2020 06:47:01 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 12 Feb 2020 14:47:01 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Pi-Hsun Shih <pihsun@chromium.org>
Subject: Re: [PATCH v8 1/4] ath10k: disable TX complete indication of htt for
 sdio
In-Reply-To: <CANdKZ0dtnvL66jps41UC+dkybuXA0NMEu=9p2N2T08YDLHb2UQ@mail.gmail.com>
References: <20191128103030.6429-1-wgong@codeaurora.org>
 <0101016eb1903db0-ef7063b4-0f42-4a01-8886-327541e6c1a4-000000@us-west-2.amazonses.com>
 <76bce8e3-e05b-ace6-3edd-54f522be3fe6@chromium.org>
 <25fd4f59b39c56b2fee208713c7cbc57@codeaurora.org>
 <CANdKZ0eWJtSuOdZp6Djne21maoBtmSsEm9Rmq9HbLfriY1goWw@mail.gmail.com>
 <47925cde59e1b94766720d20ddbb4191@codeaurora.org>
 <CANdKZ0dtnvL66jps41UC+dkybuXA0NMEu=9p2N2T08YDLHb2UQ@mail.gmail.com>
Message-ID: <222dd9c33e2afa94cd1ee80c03c7b00d@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_224704_671691_FBA9B894 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-02-12 13:31, Pi-Hsun Shih wrote:

> Output as follows:
> 
> [   10.747482] ath10k_sdio mmc1:0001:1: msg_type: 0
> [   10.749295] ath10k_sdio mmc1:0001:1: htt-ver 3.73 wmi-op 4 htt-op 3
> cal otp max-sta 32 raw 0 hwcrypto 1
> [   10.752243] Unable to handle kernel paging request at virtual
> address 006b6b6b6b6b6b6b
> [   10.769674] Mem abort info:
> [   10.772514]   ESR = 0x96000004
> [   10.775625]   Exception class = DABT (current EL), IL = 32 bits
> [   10.781609]   SET = 0, FnV = 0
> [   10.784699]   EA = 0, S1PTW = 0
> [   10.787889] Data abort info:
> [   10.790839]   ISV = 0, ISS = 0x00000004
> [   10.794711]   CM = 0, WnR = 0
> [   10.797714] [006b6b6b6b6b6b6b] address between user and kernel 
> address ranges
> [   10.804911] Internal error: Oops: 96000004 [#1] PREEMPT SMP
> [   10.810488] Modules linked in: asix usbnet mii ath10k_sdio
> ath10k_core ath lzo_rle mac80211 lzo_compress zram cfg80211 joydev
> [   10.821800] Process kworker/u16:1 (pid: 140, stack limit =
> 0x0000000008a1ed57)
> [   10.829017] CPU: 4 PID: 140 Comm: kworker/u16:1 Tainted: G        W
>         4.19.102 #49
> [   10.837097] Hardware name: MediaTek krane sku176 board (DT)
> [   10.842670] Workqueue: ath10k_sdio_wq ath10k_sdio_write_async_work
> [ath10k_sdio]
> [   10.850059] pstate: 60000005 (nZCv daif -PAN -UAO)
> [   10.854860] pc : ath10k_htt_htc_tx_complete+0x9c/0x134 [ath10k_core]
> [   10.861225] lr : ath10k_htt_htc_tx_complete+0x8c/0x134 [ath10k_core]
> [   10.867568] sp : ffffff800888bc90
> [   10.870874] x29: ffffff800888bca0 x28: fffffffd69548be8
> [   10.876177] x27: fffffffd695573f8 x26: fffffffd69548be8
> [   10.881480] x25: fffffffd742f1e40 x24: fffffffd69556b48
> [   10.886782] x23: fffffffd69556b10 x22: fffffffd695c7e80
> [   10.892084] x21: 6b6b6b6b6b6b6b6b x20: fffffffd742f1e40
> [   10.897386] x19: fffffffd69541960 x18: 0000000000000000
> [   10.902696] x17: 000000000000003c x16: ffffffa964a7d36c
> [   10.908004] x15: fffffffd742f3e80 x14: 0000000000000280
> [   10.913306] x13: 0000000000000001 x12: 0000000000000000
> [   10.918607] x11: 0000000000000000 x10: 0000000000000000
> [   10.923908] x9 : 2edc72d89d761200 x8 : 0000000000000001
> [   10.929209] x7 : bbbbbbbbbbbbbbbb x6 : 0000000000000020
> [   10.934511] x5 : 000000000000005a x4 : 0000000000000000
> [   10.939812] x3 : 0000000000000010 x2 : 0000000000000008
> [   10.945122] x1 : 0000000000000000 x0 : 0000000000000000
> [   10.950439] Call trace:
> [   10.952904]  ath10k_htt_htc_tx_complete+0x9c/0x134 [ath10k_core]
> [   10.958918]  ath10k_htc_notify_tx_completion+0xe4/0x118 
> [ath10k_core]
> [   10.965366]  ath10k_sdio_write_async_work+0x158/0x1f4 [ath10k_sdio]
> [   10.971637]  process_one_work+0x208/0x408
> [   10.975638]  worker_thread+0x23c/0x3e4
> [   10.979379]  kthread+0x120/0x130
> [   10.982602]  ret_from_fork+0x10/0x18
> [   10.986178] Code: 52820f08 38686a68 340003a8 f9406a95 (394002a8)
> [   10.992266] ---[ end trace 3ed9b11cd8f60113 ]---
> [   11.004351] Kernel panic - not syncing: Fatal exception
> [   11.009586] SMP: stopping secondary CPUs
> [   11.013519] Kernel Offset: 0x295c200000 from 0xffffff8008000000
> [   11.019433] CPU features: 0x0,2188200c
> [   11.023172] Memory Limit: none
Thanks.
I have made change again to fix the panic.
could you try again with this change?
(also apply 30382dd1cf3a141bfaa568ee183c1892090fa79a and ath10k: disable 
TX complete indication of htt for sdio)

diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c 
b/drivers/net/wireless/ath/ath10k/htt_tx.c
index 51f060a00b95..7bfdeb1298a5 100644
--- a/drivers/net/wireless/ath/ath10k/htt_tx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
@@ -554,20 +554,30 @@ void ath10k_htt_htc_tx_complete(struct ath10k *ar, 
struct sk_buff *skb)
         struct htt_cmd_hdr *htt_hdr;
         struct htt_data_tx_desc *desc_hdr;
         u16 flags1;
+       u8 msg_type;
+
+       if (htt->disable_tx_comp) {
+               htt_hdr = (struct htt_cmd_hdr *)skb->data;
+               msg_type = htt_hdr->msg_type;
+               ath10k_warn(ar, "msg_type: %d\n", msg_type);
+
+               if (htt_hdr->msg_type == HTT_H2T_MSG_TYPE_TX_FRM) {
+                       desc_hdr = (struct htt_data_tx_desc *)
+                               (skb->data + sizeof(*htt_hdr));
+                       flags1 = __le16_to_cpu(desc_hdr->flags1);
+
+                       if (flags1 & 
HTT_DATA_TX_DESC_FLAGS1_TX_COMPLETE)
+                               ath10k_warn(ar, "htt tx mgmt\n");
+                       else
+                               ath10k_warn(ar, "htt tx data\n");
+               }
+       }

         dev_kfree_skb_any(skb);

-       if (!htt->disable_tx_comp)
+       if ((!htt->disable_tx_comp) || (msg_type != 
HTT_H2T_MSG_TYPE_TX_FRM))
                 return;

-       htt_hdr = (struct htt_cmd_hdr *)skb->data;
-       if (htt_hdr->msg_type != HTT_H2T_MSG_TYPE_TX_FRM)
-               return;
-
-       desc_hdr = (struct htt_data_tx_desc *)
-               (skb->data + sizeof(*htt_hdr));
-       flags1 = __le16_to_cpu(desc_hdr->flags1);
-
         ath10k_dbg(ar, ATH10K_DBG_HTT,
                    "htt tx complete msdu id:%u ,flags1:%x\n",
                    __le16_to_cpu(desc_hdr->id), flags1);

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
