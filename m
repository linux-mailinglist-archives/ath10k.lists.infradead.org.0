Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC35215A18A
	for <lists+ath10k@lfdr.de>; Wed, 12 Feb 2020 08:09:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwH0reH/0lG1UlvJH+4ZwP7DHYk8+V87LlQs3jkrXRw=; b=JhEW5XawTTH2d9
	DUkrUCbvMmW78+TwYliXyNeF62JScaVM4RVIDykzyAa5A2CkHbdP+rMjq1cjdTPGWzSm2MnNq1nkI
	Sf3BJRobwNvFiQt1Ym/8pnxCGdAerB4KgBllG1sxk2HMeUl+tzddsV3BFtD5e6PLbwQVsasy2OiOU
	26Lz2tFo0qWkE6YUIpleAc57gt21Zj++cdXnZ+2iOhkHtLjwGb1OAcg9Rls58HGO1LY62Fc9KIHZc
	J44LBm5eGLmeRx1llGk8dQPczqBVHDM4YmST23KgCKcuyyq3/KBEZav92bwS2qp8R4PwMPnfji4en
	kKjUEJ3UDoZAzJNcsKRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1m9S-0003JG-HS; Wed, 12 Feb 2020 07:09:38 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1m9O-0003HD-Az
 for ath10k@lists.infradead.org; Wed, 12 Feb 2020 07:09:35 +0000
Received: by mail-ed1-x543.google.com with SMTP id p3so1218584edx.7
 for <ath10k@lists.infradead.org>; Tue, 11 Feb 2020 23:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ek9LtWqMZhyW7Zgh9LSGhOKpxjG0U2AgTmCu525AP2k=;
 b=KvGbPezZj1plrEG6nfNYMWMx959hmWLR2atbgdhgJQBFYTeAQsF+/Aj86FL/9cz0GI
 WUzprNJDaFO9TuP87ITvqMvUHfpi3ZMTgadsJ8imrQMom9JVs2vzvv4CDYZtZ/pWB7Rw
 Errji/GdcVcfJeSODWHOdrR8jlHK6ieVrVm2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ek9LtWqMZhyW7Zgh9LSGhOKpxjG0U2AgTmCu525AP2k=;
 b=PmvAp2G26lg6G81Pua6TxzmnKEmwKTxCFgQ/8+5Koc7hBcnwX+80FRCW+uTqieIRZR
 CocME4j4NVYJwN/dP88d0JiVr0ZjWykQeXVGTvcWeX0OX6ehr3K6iSmTgJgWwdinVywI
 foc7RMDlEFcqwRasA1cFGZTROX+Hbrom59ZDW4beXvAMQgE1QIuzwBPnY5zonymz0ova
 Btef4qPeSz94/Jl1OO+2MBS8v0OIfBeWcV2PjueNEjWaUQwPBFp6dnWZCMbEdzkVpPB0
 0PHBw2F8drHygQtH7ga1aesl0ewQOLxK0rIC/Yr1FnDRbAxRoJdRcTH99kXy3OpV40Ri
 JV3Q==
X-Gm-Message-State: APjAAAVSBSj/pRoH3auUttsgCZtJKQUzU6JO+VZJi15hPsDFT/z7i386
 m/lGwEqKtdgrFDqw5Mmo2eueNIMolEsYto3WfYpAVQNnhlX56A==
X-Google-Smtp-Source: APXvYqwlqrI5ikK7tnwjWjrgdIOsHbg/qXlW5AK9VENZqpYYcTDI8bk91NEH1c2moM3zs3sCN+EbJEqpGxlM3j/oFV4=
X-Received: by 2002:aa7:c616:: with SMTP id h22mr8714054edq.352.1581491371359; 
 Tue, 11 Feb 2020 23:09:31 -0800 (PST)
MIME-Version: 1.0
References: <20191128103030.6429-1-wgong@codeaurora.org>
 <0101016eb1903db0-ef7063b4-0f42-4a01-8886-327541e6c1a4-000000@us-west-2.amazonses.com>
 <76bce8e3-e05b-ace6-3edd-54f522be3fe6@chromium.org>
 <25fd4f59b39c56b2fee208713c7cbc57@codeaurora.org>
 <CANdKZ0eWJtSuOdZp6Djne21maoBtmSsEm9Rmq9HbLfriY1goWw@mail.gmail.com>
 <47925cde59e1b94766720d20ddbb4191@codeaurora.org>
 <CANdKZ0dtnvL66jps41UC+dkybuXA0NMEu=9p2N2T08YDLHb2UQ@mail.gmail.com>
 <222dd9c33e2afa94cd1ee80c03c7b00d@codeaurora.org>
In-Reply-To: <222dd9c33e2afa94cd1ee80c03c7b00d@codeaurora.org>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Wed, 12 Feb 2020 15:08:55 +0800
Message-ID: <CANdKZ0fOEZ-Ng1p4FUy6WDC2DKGUMmTQE+JhcTwrf9TjACborA@mail.gmail.com>
Subject: Re: [PATCH v8 1/4] ath10k: disable TX complete indication of htt for
 sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_230934_384613_8722809A 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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

Tested that the patch fix the kernel panic, thanks.

For the fixed version:
Tested-by: Pi-Hsun Shih <pihsun@chromium.org>




On Wed, Feb 12, 2020 at 2:47 PM Wen Gong <wgong@codeaurora.org> wrote:
>
> On 2020-02-12 13:31, Pi-Hsun Shih wrote:
>
> > Output as follows:
> >
> > [   10.747482] ath10k_sdio mmc1:0001:1: msg_type: 0
> > [   10.749295] ath10k_sdio mmc1:0001:1: htt-ver 3.73 wmi-op 4 htt-op 3
> > cal otp max-sta 32 raw 0 hwcrypto 1
> > [   10.752243] Unable to handle kernel paging request at virtual
> > address 006b6b6b6b6b6b6b
> > [   10.769674] Mem abort info:
> > [   10.772514]   ESR = 0x96000004
> > [   10.775625]   Exception class = DABT (current EL), IL = 32 bits
> > [   10.781609]   SET = 0, FnV = 0
> > [   10.784699]   EA = 0, S1PTW = 0
> > [   10.787889] Data abort info:
> > [   10.790839]   ISV = 0, ISS = 0x00000004
> > [   10.794711]   CM = 0, WnR = 0
> > [   10.797714] [006b6b6b6b6b6b6b] address between user and kernel
> > address ranges
> > [   10.804911] Internal error: Oops: 96000004 [#1] PREEMPT SMP
> > [   10.810488] Modules linked in: asix usbnet mii ath10k_sdio
> > ath10k_core ath lzo_rle mac80211 lzo_compress zram cfg80211 joydev
> > [   10.821800] Process kworker/u16:1 (pid: 140, stack limit =
> > 0x0000000008a1ed57)
> > [   10.829017] CPU: 4 PID: 140 Comm: kworker/u16:1 Tainted: G        W
> >         4.19.102 #49
> > [   10.837097] Hardware name: MediaTek krane sku176 board (DT)
> > [   10.842670] Workqueue: ath10k_sdio_wq ath10k_sdio_write_async_work
> > [ath10k_sdio]
> > [   10.850059] pstate: 60000005 (nZCv daif -PAN -UAO)
> > [   10.854860] pc : ath10k_htt_htc_tx_complete+0x9c/0x134 [ath10k_core]
> > [   10.861225] lr : ath10k_htt_htc_tx_complete+0x8c/0x134 [ath10k_core]
> > [   10.867568] sp : ffffff800888bc90
> > [   10.870874] x29: ffffff800888bca0 x28: fffffffd69548be8
> > [   10.876177] x27: fffffffd695573f8 x26: fffffffd69548be8
> > [   10.881480] x25: fffffffd742f1e40 x24: fffffffd69556b48
> > [   10.886782] x23: fffffffd69556b10 x22: fffffffd695c7e80
> > [   10.892084] x21: 6b6b6b6b6b6b6b6b x20: fffffffd742f1e40
> > [   10.897386] x19: fffffffd69541960 x18: 0000000000000000
> > [   10.902696] x17: 000000000000003c x16: ffffffa964a7d36c
> > [   10.908004] x15: fffffffd742f3e80 x14: 0000000000000280
> > [   10.913306] x13: 0000000000000001 x12: 0000000000000000
> > [   10.918607] x11: 0000000000000000 x10: 0000000000000000
> > [   10.923908] x9 : 2edc72d89d761200 x8 : 0000000000000001
> > [   10.929209] x7 : bbbbbbbbbbbbbbbb x6 : 0000000000000020
> > [   10.934511] x5 : 000000000000005a x4 : 0000000000000000
> > [   10.939812] x3 : 0000000000000010 x2 : 0000000000000008
> > [   10.945122] x1 : 0000000000000000 x0 : 0000000000000000
> > [   10.950439] Call trace:
> > [   10.952904]  ath10k_htt_htc_tx_complete+0x9c/0x134 [ath10k_core]
> > [   10.958918]  ath10k_htc_notify_tx_completion+0xe4/0x118
> > [ath10k_core]
> > [   10.965366]  ath10k_sdio_write_async_work+0x158/0x1f4 [ath10k_sdio]
> > [   10.971637]  process_one_work+0x208/0x408
> > [   10.975638]  worker_thread+0x23c/0x3e4
> > [   10.979379]  kthread+0x120/0x130
> > [   10.982602]  ret_from_fork+0x10/0x18
> > [   10.986178] Code: 52820f08 38686a68 340003a8 f9406a95 (394002a8)
> > [   10.992266] ---[ end trace 3ed9b11cd8f60113 ]---
> > [   11.004351] Kernel panic - not syncing: Fatal exception
> > [   11.009586] SMP: stopping secondary CPUs
> > [   11.013519] Kernel Offset: 0x295c200000 from 0xffffff8008000000
> > [   11.019433] CPU features: 0x0,2188200c
> > [   11.023172] Memory Limit: none
> Thanks.
> I have made change again to fix the panic.
> could you try again with this change?
> (also apply 30382dd1cf3a141bfaa568ee183c1892090fa79a and ath10k: disable
> TX complete indication of htt for sdio)
>
> diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c
> b/drivers/net/wireless/ath/ath10k/htt_tx.c
> index 51f060a00b95..7bfdeb1298a5 100644
> --- a/drivers/net/wireless/ath/ath10k/htt_tx.c
> +++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
> @@ -554,20 +554,30 @@ void ath10k_htt_htc_tx_complete(struct ath10k *ar,
> struct sk_buff *skb)
>          struct htt_cmd_hdr *htt_hdr;
>          struct htt_data_tx_desc *desc_hdr;
>          u16 flags1;
> +       u8 msg_type;
> +
> +       if (htt->disable_tx_comp) {
> +               htt_hdr = (struct htt_cmd_hdr *)skb->data;
> +               msg_type = htt_hdr->msg_type;
> +               ath10k_warn(ar, "msg_type: %d\n", msg_type);
> +
> +               if (htt_hdr->msg_type == HTT_H2T_MSG_TYPE_TX_FRM) {
> +                       desc_hdr = (struct htt_data_tx_desc *)
> +                               (skb->data + sizeof(*htt_hdr));
> +                       flags1 = __le16_to_cpu(desc_hdr->flags1);
> +
> +                       if (flags1 &
> HTT_DATA_TX_DESC_FLAGS1_TX_COMPLETE)
> +                               ath10k_warn(ar, "htt tx mgmt\n");
> +                       else
> +                               ath10k_warn(ar, "htt tx data\n");
> +               }
> +       }
>
>          dev_kfree_skb_any(skb);
>
> -       if (!htt->disable_tx_comp)
> +       if ((!htt->disable_tx_comp) || (msg_type !=
> HTT_H2T_MSG_TYPE_TX_FRM))
>                  return;
>
> -       htt_hdr = (struct htt_cmd_hdr *)skb->data;
> -       if (htt_hdr->msg_type != HTT_H2T_MSG_TYPE_TX_FRM)
> -               return;
> -
> -       desc_hdr = (struct htt_data_tx_desc *)
> -               (skb->data + sizeof(*htt_hdr));
> -       flags1 = __le16_to_cpu(desc_hdr->flags1);
> -
>          ath10k_dbg(ar, ATH10K_DBG_HTT,
>                     "htt tx complete msdu id:%u ,flags1:%x\n",
>                     __le16_to_cpu(desc_hdr->id), flags1);

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
