Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58DF15A04D
	for <lists+ath10k@lfdr.de>; Wed, 12 Feb 2020 05:58:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2DQa0WS5U4GoUk6nSeIXH6kIQfdP0j+0ffFSmYjesAM=; b=Jl9O4VLQ8CuRAnaPYb1LxL8ss
	r5u6iYu6YQli8L0YAAv2fxWsEx8rvkNgIYrGLdzBFVpybAXGK8iaOJ7q9x00Lol/y1OnY/wWYOFr4
	Eb0Vnc2fJDC2Eq+yp2UsUfqt+ToCAInQILWn7CTJTWX/cAWzrnlyBCyPKUTYIl2t4kUriEhK7Hh40
	7m2V0OtJFFwQKZ2kvBaoYAeP0vEo4V/WqdiddbVoj+TwiDq137XDz553MgaFBi5ne29ykCN5EE0Ae
	AH7UfL4qfOwTb22dPDn3OWrwUzMwVh4lIbZeTD6C84ML77kZs1OGppFtXaGzhRfDABoBTFX3rZg64
	icEbWK92Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1k6u-0002VZ-KY; Wed, 12 Feb 2020 04:58:52 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1k6q-0002VF-QN
 for ath10k@lists.infradead.org; Wed, 12 Feb 2020 04:58:50 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581483528; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=PTX5SrEnkdLC8ct8wpqV308As5nx0DDCj2AtnFsqiB0=;
 b=NUgb2Ja14CMzmDg5BvEI8vdFpnLSFuvdItlJzv9l5qNCHsEW4CxZs2J1EwR9hQM7811gMnuf
 yzk9Jhd9vm18T73IEHQ20V7wP75gZu4RbnRLRsxJyaVlN8HHZXSEZya6VNOXgZfFyf+toqGg
 5o55SCItf4tZ3s73xQiLnEK/KRY=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e438607.7fbef48752d0-smtp-out-n01;
 Wed, 12 Feb 2020 04:58:47 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3AF4DC433A2; Wed, 12 Feb 2020 04:58:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B5B81C43383;
 Wed, 12 Feb 2020 04:58:45 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 12 Feb 2020 12:58:45 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Pi-Hsun Shih <pihsun@chromium.org>
Subject: Re: [PATCH v8 1/4] ath10k: disable TX complete indication of htt for
 sdio
In-Reply-To: <CANdKZ0eWJtSuOdZp6Djne21maoBtmSsEm9Rmq9HbLfriY1goWw@mail.gmail.com>
References: <20191128103030.6429-1-wgong@codeaurora.org>
 <0101016eb1903db0-ef7063b4-0f42-4a01-8886-327541e6c1a4-000000@us-west-2.amazonses.com>
 <76bce8e3-e05b-ace6-3edd-54f522be3fe6@chromium.org>
 <25fd4f59b39c56b2fee208713c7cbc57@codeaurora.org>
 <CANdKZ0eWJtSuOdZp6Djne21maoBtmSsEm9Rmq9HbLfriY1goWw@mail.gmail.com>
Message-ID: <47925cde59e1b94766720d20ddbb4191@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_205848_921941_E8DA1B5E 
X-CRM114-Status: GOOD (  22.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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

On 2020-02-11 19:11, Pi-Hsun Shih wrote:
> On Tue, Feb 11, 2020 at 5:46 PM Wen Gong <wgong@codeaurora.org> wrote:
>> 
>> On 2020-02-11 15:03, Pi-Hsun Shih wrote:
>> > Hi,
>> >
>> > On 11/28/19 6:30 PM, Wen Gong wrote:
>> >> ...
>> >> diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c
>> >> b/drivers/net/wireless/ath/ath10k/htt_tx.c
>> >> index a182c0944cc7..c6c4b2a4d20f 100644
>> >> --- a/drivers/net/wireless/ath/ath10k/htt_tx.c
>> >> +++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
>> >> @@ -543,7 +543,35 @@ void ath10k_htt_tx_free(struct ath10k_htt *htt)
>> >>     void ath10k_htt_htc_tx_complete(struct ath10k *ar, struct sk_buff
>> >> *skb)
>> >>   {
>> >> +    struct ath10k_htt *htt = &ar->htt;
>> >> +    struct htt_tx_done tx_done = {0};
>> >> +    struct htt_cmd_hdr *htt_hdr;
>> >> +    struct htt_data_tx_desc *desc_hdr;
>> >> +    u16 flags1;
>> >> +
>> >>      dev_kfree_skb_any(skb);
>> >> +
>> >> +    if (!htt->disable_tx_comp)
>> >> +            return;
>> >> +
>> >> +    htt_hdr = (struct htt_cmd_hdr *)skb->data;
>> >
>> > skb is already freed on the above line (dev_kfree_skb_any) but is
>> > still used here, should the dev_kfree_skb_any be moved to the end of
>> > this function?
>> >
>> skb will not freed on the above line, please see this patch
>> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/drivers/net/wireless/ath/ath10k?h=ath-next&id=30382dd1cf3a141bfaa568ee183c1892090fa79a
> 
> IIUC the commit only makes the skb not freed in ieee80211_tx_status,
> but it's still freed in ath10k_htt_htc_tx_complete (by
> dev_kfree_skb_any)?
> 
> While booting with this patch (and the
> 30382dd1cf3a141bfaa568ee183c1892090fa79a commit) with kernel bootargs
> "slub_debug=FZPUA", I got a kernel panic in ath10k module:
> 
> [   16.058676] Unable to handle kernel paging request at virtual
> address 006b6b6b6b6b6b6b
> [   16.066613] Mem abort info:
> [   16.069419]   ESR = 0x96000004
> [   16.072481]   Exception class = DABT (current EL), IL = 32 bits
> [   16.078406]   SET = 0, FnV = 0
> [   16.081476]   EA = 0, S1PTW = 0
> [   16.084624] Data abort info:
> [   16.087513]   ISV = 0, ISS = 0x00000004
> [   16.091369]   CM = 0, WnR = 0
> [   16.094354] [006b6b6b6b6b6b6b] address between user and kernel 
> address ranges
> [   16.101503] Internal error: Oops: 96000004 [#1] PREEMPT SMP
> [   16.107071] Modules linked in: ath10k_sdio ath10k_core ath mac80211
> cfg80211 lzo_rle lzo_compress zram asix usbnet mii joydev
> [   16.118380] Process kworker/u16:2 (pid: 142, stack limit =
> 0x00000000082e3c57)
> [   16.125597] CPU: 7 PID: 142 Comm: kworker/u16:2 Not tainted 4.19.102 
> #48
> [   16.132287] Hardware name: MediaTek krane sku176 board (DT)
> [   16.137862] Workqueue: ath10k_sdio_wq ath10k_sdio_write_async_work
> [ath10k_sdio]
> [   16.145251] pstate: 60000005 (nZCv daif -PAN -UAO)
> [   16.150051] pc : ath10k_htt_htc_tx_complete+0xe0/0x1a4 [ath10k_core]
> [   16.156411] lr : ath10k_htt_htc_tx_complete+0xdc/0x1a4 [ath10k_core]
> [   16.162755] sp : ffffff800888bc80
> [   16.166061] x29: ffffff800888bc90 x28: ffffffd892b08c20
> [   16.171363] x27: ffffffd892b173f8 x26: ffffffd892b08c20
> [   16.176666] x25: ffffffd897337240 x24: ffffffd892b16b48
> [   16.181968] x23: 6b6b6b6b6b6b6b6b x22: ffffff970d2a1000
> [   16.187270] x21: ffffff970d2a0000 x20: ffffffd897337240
> [   16.192572] x19: ffffffd892b01960 x18: 0000000000000000
> [   16.197873] x17: 000000000000003c x16: ffffff970edefba0
> [   16.203174] x15: 0000000000000006 x14: ffff001000000600
> [   16.208475] x13: 00000000000064e6 x12: 0000000000000000
> [   16.213777] x11: 0000000000000000 x10: 0000000000000000
> [   16.219079] x9 : b307f4e257a4e000 x8 : b307f4e257a4e000
> [   16.224391] x7 : 0000000000000000 x6 : ffffff970f970e9c
> [   16.229712] x5 : 0000000000000027 x4 : 0000000000000000
> [   16.235030] x3 : 000000000002ed25 x2 : ffffffd8bff94fd8
> [   16.240341] x1 : ffffffd8bff8c0c8 x0 : 0000000000000034
> [   16.245644] Call trace:
> [   16.248109]  ath10k_htt_htc_tx_complete+0xe0/0x1a4 [ath10k_core]
> [   16.254123]  ath10k_htc_notify_tx_completion+0xe4/0x118 
> [ath10k_core]
> [   16.260559]  ath10k_sdio_write_async_work+0x158/0x1f4 [ath10k_sdio]
> [   16.266823]  process_one_work+0x208/0x408
> [   16.270825]  worker_thread+0x23c/0x3e4
> [   16.274566]  kthread+0x120/0x130
> [   16.277788]  ret_from_fork+0x10/0x18
> [   16.281357] Code: 528046a3 aa1303e0 97ffc028 f9406a97 (394002e8)
> [   16.287442] ---[ end trace 3bae4173512bf484 ]---
> [   16.298803] Kernel panic - not syncing: Fatal exception
> [   16.304033] SMP: stopping secondary CPUs
> [   16.308072] Kernel Offset: 0x1706400000 from 0xffffff8008000000
> [   16.313983] CPU features: 0x0,2188200c
> [   16.317721] Memory Limit: none
> 
> So it seems that the skb is used-after-free in 
> ath10k_htt_htc_tx_complete here.
I guess the panic is because of a tx mgmt frame.
did you connect to an AP?
is the panic easy to happen?

Could you apply this change and collect message if panic(
also apply 30382dd1cf3a141bfaa568ee183c1892090fa79a and ath10k: disable 
TX complete indication of htt for sdio)?
it will print some useful info with ath10k_warn.

diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c 
b/drivers/net/wireless/ath/ath10k/htt_tx.c
index 51f060a00b95..b1f768271331 100644
--- a/drivers/net/wireless/ath/ath10k/htt_tx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
@@ -555,6 +555,21 @@ void ath10k_htt_htc_tx_complete(struct ath10k *ar, 
struct sk_buff *skb)
         struct htt_data_tx_desc *desc_hdr;
         u16 flags1;

+       htt_hdr = (struct htt_cmd_hdr *)skb->data;
+
+       ath10k_warn(ar, "msg_type: %d\n", htt_hdr->msg_type);
+
+       if (htt_hdr->msg_type == HTT_H2T_MSG_TYPE_TX_FRM) {
+               desc_hdr = (struct htt_data_tx_desc *)
+                       (skb->data + sizeof(*htt_hdr));
+               flags1 = __le16_to_cpu(desc_hdr->flags1);
+
+               if (flags1 & HTT_DATA_TX_DESC_FLAGS1_TX_COMPLETE)
+                       ath10k_warn(ar, "htt tx mgmt\n");
+               else
+                       ath10k_warn(ar, "htt tx data\n");
+       }
+
         dev_kfree_skb_any(skb);

         if (!htt->disable_tx_comp)

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
