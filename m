Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FD215A0A8
	for <lists+ath10k@lfdr.de>; Wed, 12 Feb 2020 06:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIolZOkXinZWTzYp+mh8T3YX/xSsbQqX6tvMjzTmiDs=; b=H7LPei5aPJbrBp
	mnfBRA7/ULDiDenz2Aq6xZzrRNxr285YOjT5RsNhV2O87tG2HP1nSGaYQSnaH4ZbBALEk+OZqsnKi
	Uz3tEHfhpoOu4z910DZ6XXjEG8kza4S64hLz9xi7dLFFKrx48s2SP3o+La/cFpZPgLP4eGu6xeHsl
	CFUmX1/fAsHEbU5y7Cn/Xlnp+XYDUdoRvS9NiSguYUpglcIo+KHcJyZhGnsijTPDibC7PEb4D7SWW
	numq1R4XPi6vZ/6tS+WTYs4M+cSnRftcqx71LpgI5uNmhVoVMcbfLx0J1oXs5fjKITUQgJyP+q4e8
	EJBBIdk0jfLCneNhPgrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1kd3-00056D-CO; Wed, 12 Feb 2020 05:32:05 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1kcz-00055f-Fk
 for ath10k@lists.infradead.org; Wed, 12 Feb 2020 05:32:03 +0000
Received: by mail-ed1-x541.google.com with SMTP id p3so974097edx.7
 for <ath10k@lists.infradead.org>; Tue, 11 Feb 2020 21:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VHIk5QlfY+1cDy+66SMODFEUKJI2nAadzqyofAi+ZMA=;
 b=Om3G/ylaaV9RbgjcyBdv5mmEC4gMXUOIlhyL2T07LWrIkM1rucE8hj3iFrivGexawg
 5w4YyjNZhOdbCxDiARWFrqMB87dg/70XCVkE+fBx/LJ9DOQdSpx+rM0CFJgu2uZBtMkq
 urzC2kAgP4wDhK50A6yh14tIQjbUl8b9y8T3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VHIk5QlfY+1cDy+66SMODFEUKJI2nAadzqyofAi+ZMA=;
 b=b3r5gSIcgwz/i4co02VDVxbVHYG/l45SNpeB9fiuWN+ttKmEK2EffwzSDA0hdlhSE1
 55v8JAbKmR9A1k9N2oEXcdcgCiXm4J8Lax0jHRK62+iFXrWnsRfPkH1I4e43EpyMCign
 9oy+oYYVLpDo0pRuUu0bFyLiaAew0qw9Iq9zn61oSchZbAAAbAfIkfAX1QftKhl3mtXH
 2ytAB5mHl9Atpsk4yFt4qsLtdU8iuFbGdl1Fw+O9PAJES2L5TqxGd1qwP7J+JjJXMVaV
 dymJvj2E9XXP+48UrzUU/C08UtYDQUxp4Guq1NxE9BPejJ6bdaXiJme2i5jjA0m2eu2F
 q/yg==
X-Gm-Message-State: APjAAAXo0zh6f8/HmVaPJz14TQDWvYTxAMu/zQCR8vdhaqOTC8NEt4iK
 wpmUvkbdc2KXXmIKzlYLWlx05dPPSbImSe7U/kDmEQ==
X-Google-Smtp-Source: APXvYqzZJzTsomrsOomvDaixC5+gKXAjM2+uL+L2lCk4qLIIWloTZmd3YiCm8yi8mvnLhP1nvU8L8COxIQ14gMv3XFM=
X-Received: by 2002:a17:907:215b:: with SMTP id
 rk27mr9014607ejb.322.1581485511271; 
 Tue, 11 Feb 2020 21:31:51 -0800 (PST)
MIME-Version: 1.0
References: <20191128103030.6429-1-wgong@codeaurora.org>
 <0101016eb1903db0-ef7063b4-0f42-4a01-8886-327541e6c1a4-000000@us-west-2.amazonses.com>
 <76bce8e3-e05b-ace6-3edd-54f522be3fe6@chromium.org>
 <25fd4f59b39c56b2fee208713c7cbc57@codeaurora.org>
 <CANdKZ0eWJtSuOdZp6Djne21maoBtmSsEm9Rmq9HbLfriY1goWw@mail.gmail.com>
 <47925cde59e1b94766720d20ddbb4191@codeaurora.org>
In-Reply-To: <47925cde59e1b94766720d20ddbb4191@codeaurora.org>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Wed, 12 Feb 2020 13:31:15 +0800
Message-ID: <CANdKZ0dtnvL66jps41UC+dkybuXA0NMEu=9p2N2T08YDLHb2UQ@mail.gmail.com>
Subject: Re: [PATCH v8 1/4] ath10k: disable TX complete indication of htt for
 sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_213201_530062_F52A2F73 
X-CRM114-Status: GOOD (  27.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 12:58 PM Wen Gong <wgong@codeaurora.org> wrote:
>
> On 2020-02-11 19:11, Pi-Hsun Shih wrote:
> > On Tue, Feb 11, 2020 at 5:46 PM Wen Gong <wgong@codeaurora.org> wrote:
> >>
> >> On 2020-02-11 15:03, Pi-Hsun Shih wrote:
> >> > Hi,
> >> >
> >> > On 11/28/19 6:30 PM, Wen Gong wrote:
> >> >> ...
> >> >> diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c
> >> >> b/drivers/net/wireless/ath/ath10k/htt_tx.c
> >> >> index a182c0944cc7..c6c4b2a4d20f 100644
> >> >> --- a/drivers/net/wireless/ath/ath10k/htt_tx.c
> >> >> +++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
> >> >> @@ -543,7 +543,35 @@ void ath10k_htt_tx_free(struct ath10k_htt *htt)
> >> >>     void ath10k_htt_htc_tx_complete(struct ath10k *ar, struct sk_buff
> >> >> *skb)
> >> >>   {
> >> >> +    struct ath10k_htt *htt = &ar->htt;
> >> >> +    struct htt_tx_done tx_done = {0};
> >> >> +    struct htt_cmd_hdr *htt_hdr;
> >> >> +    struct htt_data_tx_desc *desc_hdr;
> >> >> +    u16 flags1;
> >> >> +
> >> >>      dev_kfree_skb_any(skb);
> >> >> +
> >> >> +    if (!htt->disable_tx_comp)
> >> >> +            return;
> >> >> +
> >> >> +    htt_hdr = (struct htt_cmd_hdr *)skb->data;
> >> >
> >> > skb is already freed on the above line (dev_kfree_skb_any) but is
> >> > still used here, should the dev_kfree_skb_any be moved to the end of
> >> > this function?
> >> >
> >> skb will not freed on the above line, please see this patch
> >> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/drivers/net/wireless/ath/ath10k?h=ath-next&id=30382dd1cf3a141bfaa568ee183c1892090fa79a
> >
> > IIUC the commit only makes the skb not freed in ieee80211_tx_status,
> > but it's still freed in ath10k_htt_htc_tx_complete (by
> > dev_kfree_skb_any)?
> >
> > While booting with this patch (and the
> > 30382dd1cf3a141bfaa568ee183c1892090fa79a commit) with kernel bootargs
> > "slub_debug=FZPUA", I got a kernel panic in ath10k module:
> >
> > [   16.058676] Unable to handle kernel paging request at virtual
> > address 006b6b6b6b6b6b6b
> > [   16.066613] Mem abort info:
> > [   16.069419]   ESR = 0x96000004
> > [   16.072481]   Exception class = DABT (current EL), IL = 32 bits
> > [   16.078406]   SET = 0, FnV = 0
> > [   16.081476]   EA = 0, S1PTW = 0
> > [   16.084624] Data abort info:
> > [   16.087513]   ISV = 0, ISS = 0x00000004
> > [   16.091369]   CM = 0, WnR = 0
> > [   16.094354] [006b6b6b6b6b6b6b] address between user and kernel
> > address ranges
> > [   16.101503] Internal error: Oops: 96000004 [#1] PREEMPT SMP
> > [   16.107071] Modules linked in: ath10k_sdio ath10k_core ath mac80211
> > cfg80211 lzo_rle lzo_compress zram asix usbnet mii joydev
> > [   16.118380] Process kworker/u16:2 (pid: 142, stack limit =
> > 0x00000000082e3c57)
> > [   16.125597] CPU: 7 PID: 142 Comm: kworker/u16:2 Not tainted 4.19.102
> > #48
> > [   16.132287] Hardware name: MediaTek krane sku176 board (DT)
> > [   16.137862] Workqueue: ath10k_sdio_wq ath10k_sdio_write_async_work
> > [ath10k_sdio]
> > [   16.145251] pstate: 60000005 (nZCv daif -PAN -UAO)
> > [   16.150051] pc : ath10k_htt_htc_tx_complete+0xe0/0x1a4 [ath10k_core]
> > [   16.156411] lr : ath10k_htt_htc_tx_complete+0xdc/0x1a4 [ath10k_core]
> > [   16.162755] sp : ffffff800888bc80
> > [   16.166061] x29: ffffff800888bc90 x28: ffffffd892b08c20
> > [   16.171363] x27: ffffffd892b173f8 x26: ffffffd892b08c20
> > [   16.176666] x25: ffffffd897337240 x24: ffffffd892b16b48
> > [   16.181968] x23: 6b6b6b6b6b6b6b6b x22: ffffff970d2a1000
> > [   16.187270] x21: ffffff970d2a0000 x20: ffffffd897337240
> > [   16.192572] x19: ffffffd892b01960 x18: 0000000000000000
> > [   16.197873] x17: 000000000000003c x16: ffffff970edefba0
> > [   16.203174] x15: 0000000000000006 x14: ffff001000000600
> > [   16.208475] x13: 00000000000064e6 x12: 0000000000000000
> > [   16.213777] x11: 0000000000000000 x10: 0000000000000000
> > [   16.219079] x9 : b307f4e257a4e000 x8 : b307f4e257a4e000
> > [   16.224391] x7 : 0000000000000000 x6 : ffffff970f970e9c
> > [   16.229712] x5 : 0000000000000027 x4 : 0000000000000000
> > [   16.235030] x3 : 000000000002ed25 x2 : ffffffd8bff94fd8
> > [   16.240341] x1 : ffffffd8bff8c0c8 x0 : 0000000000000034
> > [   16.245644] Call trace:
> > [   16.248109]  ath10k_htt_htc_tx_complete+0xe0/0x1a4 [ath10k_core]
> > [   16.254123]  ath10k_htc_notify_tx_completion+0xe4/0x118
> > [ath10k_core]
> > [   16.260559]  ath10k_sdio_write_async_work+0x158/0x1f4 [ath10k_sdio]
> > [   16.266823]  process_one_work+0x208/0x408
> > [   16.270825]  worker_thread+0x23c/0x3e4
> > [   16.274566]  kthread+0x120/0x130
> > [   16.277788]  ret_from_fork+0x10/0x18
> > [   16.281357] Code: 528046a3 aa1303e0 97ffc028 f9406a97 (394002e8)
> > [   16.287442] ---[ end trace 3bae4173512bf484 ]---
> > [   16.298803] Kernel panic - not syncing: Fatal exception
> > [   16.304033] SMP: stopping secondary CPUs
> > [   16.308072] Kernel Offset: 0x1706400000 from 0xffffff8008000000
> > [   16.313983] CPU features: 0x0,2188200c
> > [   16.317721] Memory Limit: none
> >
> > So it seems that the skb is used-after-free in
> > ath10k_htt_htc_tx_complete here.
> I guess the panic is because of a tx mgmt frame.
> did you connect to an AP?
No, I disabled wifi on UI before adding the kernel bootargs, so it
should not be connected to any AP.
> is the panic easy to happen?
Yes, this happens on every boot (early in boot before entering UI)
with kernel bootargs "slub_debug=FZPUA" added.
>
> Could you apply this change and collect message if panic(
> also apply 30382dd1cf3a141bfaa568ee183c1892090fa79a and ath10k: disable
> TX complete indication of htt for sdio)?
> it will print some useful info with ath10k_warn.
>
> diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c
> b/drivers/net/wireless/ath/ath10k/htt_tx.c
> index 51f060a00b95..b1f768271331 100644
> --- a/drivers/net/wireless/ath/ath10k/htt_tx.c
> +++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
> @@ -555,6 +555,21 @@ void ath10k_htt_htc_tx_complete(struct ath10k *ar,
> struct sk_buff *skb)
>          struct htt_data_tx_desc *desc_hdr;
>          u16 flags1;
>
> +       htt_hdr = (struct htt_cmd_hdr *)skb->data;
> +
> +       ath10k_warn(ar, "msg_type: %d\n", htt_hdr->msg_type);
> +
> +       if (htt_hdr->msg_type == HTT_H2T_MSG_TYPE_TX_FRM) {
> +               desc_hdr = (struct htt_data_tx_desc *)
> +                       (skb->data + sizeof(*htt_hdr));
> +               flags1 = __le16_to_cpu(desc_hdr->flags1);
> +
> +               if (flags1 & HTT_DATA_TX_DESC_FLAGS1_TX_COMPLETE)
> +                       ath10k_warn(ar, "htt tx mgmt\n");
> +               else
> +                       ath10k_warn(ar, "htt tx data\n");
> +       }
> +
>          dev_kfree_skb_any(skb);
>
>          if (!htt->disable_tx_comp)
Output as follows:

[   10.747482] ath10k_sdio mmc1:0001:1: msg_type: 0
[   10.749295] ath10k_sdio mmc1:0001:1: htt-ver 3.73 wmi-op 4 htt-op 3
cal otp max-sta 32 raw 0 hwcrypto 1
[   10.752243] Unable to handle kernel paging request at virtual
address 006b6b6b6b6b6b6b
[   10.769674] Mem abort info:
[   10.772514]   ESR = 0x96000004
[   10.775625]   Exception class = DABT (current EL), IL = 32 bits
[   10.781609]   SET = 0, FnV = 0
[   10.784699]   EA = 0, S1PTW = 0
[   10.787889] Data abort info:
[   10.790839]   ISV = 0, ISS = 0x00000004
[   10.794711]   CM = 0, WnR = 0
[   10.797714] [006b6b6b6b6b6b6b] address between user and kernel address ranges
[   10.804911] Internal error: Oops: 96000004 [#1] PREEMPT SMP
[   10.810488] Modules linked in: asix usbnet mii ath10k_sdio
ath10k_core ath lzo_rle mac80211 lzo_compress zram cfg80211 joydev
[   10.821800] Process kworker/u16:1 (pid: 140, stack limit =
0x0000000008a1ed57)
[   10.829017] CPU: 4 PID: 140 Comm: kworker/u16:1 Tainted: G        W
        4.19.102 #49
[   10.837097] Hardware name: MediaTek krane sku176 board (DT)
[   10.842670] Workqueue: ath10k_sdio_wq ath10k_sdio_write_async_work
[ath10k_sdio]
[   10.850059] pstate: 60000005 (nZCv daif -PAN -UAO)
[   10.854860] pc : ath10k_htt_htc_tx_complete+0x9c/0x134 [ath10k_core]
[   10.861225] lr : ath10k_htt_htc_tx_complete+0x8c/0x134 [ath10k_core]
[   10.867568] sp : ffffff800888bc90
[   10.870874] x29: ffffff800888bca0 x28: fffffffd69548be8
[   10.876177] x27: fffffffd695573f8 x26: fffffffd69548be8
[   10.881480] x25: fffffffd742f1e40 x24: fffffffd69556b48
[   10.886782] x23: fffffffd69556b10 x22: fffffffd695c7e80
[   10.892084] x21: 6b6b6b6b6b6b6b6b x20: fffffffd742f1e40
[   10.897386] x19: fffffffd69541960 x18: 0000000000000000
[   10.902696] x17: 000000000000003c x16: ffffffa964a7d36c
[   10.908004] x15: fffffffd742f3e80 x14: 0000000000000280
[   10.913306] x13: 0000000000000001 x12: 0000000000000000
[   10.918607] x11: 0000000000000000 x10: 0000000000000000
[   10.923908] x9 : 2edc72d89d761200 x8 : 0000000000000001
[   10.929209] x7 : bbbbbbbbbbbbbbbb x6 : 0000000000000020
[   10.934511] x5 : 000000000000005a x4 : 0000000000000000
[   10.939812] x3 : 0000000000000010 x2 : 0000000000000008
[   10.945122] x1 : 0000000000000000 x0 : 0000000000000000
[   10.950439] Call trace:
[   10.952904]  ath10k_htt_htc_tx_complete+0x9c/0x134 [ath10k_core]
[   10.958918]  ath10k_htc_notify_tx_completion+0xe4/0x118 [ath10k_core]
[   10.965366]  ath10k_sdio_write_async_work+0x158/0x1f4 [ath10k_sdio]
[   10.971637]  process_one_work+0x208/0x408
[   10.975638]  worker_thread+0x23c/0x3e4
[   10.979379]  kthread+0x120/0x130
[   10.982602]  ret_from_fork+0x10/0x18
[   10.986178] Code: 52820f08 38686a68 340003a8 f9406a95 (394002a8)
[   10.992266] ---[ end trace 3ed9b11cd8f60113 ]---
[   11.004351] Kernel panic - not syncing: Fatal exception
[   11.009586] SMP: stopping secondary CPUs
[   11.013519] Kernel Offset: 0x295c200000 from 0xffffff8008000000
[   11.019433] CPU features: 0x0,2188200c
[   11.023172] Memory Limit: none

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
