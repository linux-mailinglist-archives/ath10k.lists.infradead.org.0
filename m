Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 376AC11D5BB
	for <lists+ath10k@lfdr.de>; Thu, 12 Dec 2019 19:36:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7DjVFNa5dLqeF/uAm5knHVW+sur0d9NZ02oKvVMJrM=; b=WW3RswxksphDu4
	8SHlRUhe6BfkZIF42crMjAHC4qLTd6oHrS62SYNSbBxpYm0RUvu+FjvzencKIPk3ntlwJluNJ7ByF
	5qs/hzStrQulrFnKqwxPQYVpvGysXFZTqTb+Pkwnpy9HC4wHXg/Ujz/zLL2OYstEDNuh4DPGCxMkI
	Otkx7um8CIq3S0wOYFEgqyMOCmBw6UAwBq3KD6Tem/VzbnVQ8q6Symr1Qa6E4FG1195K5VmIiNk0z
	c3yWMnurYcnbe6Sd7Ax3drPREGLGuK2uebjzZvAi9r8zMsXvIpADn1keykQ2gCMeai5yQz9QUgQNI
	8o1eZQf3OSsrhD9pIvRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifTKD-0006eh-00; Thu, 12 Dec 2019 18:36:33 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifTK5-0006Wq-OI
 for ath10k@lists.infradead.org; Thu, 12 Dec 2019 18:36:27 +0000
Received: by mail-ot1-x344.google.com with SMTP id h20so3006423otn.5
 for <ath10k@lists.infradead.org>; Thu, 12 Dec 2019 10:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=7kqlpOM7YY+RXwt9njLk/5C/YAC2fuKPJeZsrNyJEhc=;
 b=Fqt22t6htRlI1KULKpgaTGRG6+jbGIU4OBBtxXI3zsqClfoVNc52zkcPxoeXtqWNvw
 XBz3U96Oj7who1Z1bssD79eDRYSE9T8JaeRvsL/CmWgxr6jPotRY1g+JhNqR5YJSV1oU
 u6Elk2KZpO4zWBUiHPm80zuJxn2z8K8gNjbzx5LXA/Rz6dOJacGhnYFBlUDFTTWERhO3
 ryl8GIfdBzYMsy+a3AHHnxYvY8AV2eoJ+HEav32s6ohrf1xY/GAG8kR1NEuifT79PmmF
 UOkm73F1B/7ipeNDbdSPx6PthrbtfDzWAPD2cx8olTvtt1dEJeA4XIPkodq0WeagZg/7
 nZyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=7kqlpOM7YY+RXwt9njLk/5C/YAC2fuKPJeZsrNyJEhc=;
 b=EOGug658LSuB9B/IqAW9wQEA1/+q0T/fHJO10rUCCO7X+e6esbnDe3TrOkVXjNj1EV
 +g6gxaAzcyHeZeL546VXKVavaVnjITwiei9UzJMo6b/cv22NBA6IBMArO8P+NjvxT0gW
 64dIMrAG02AyURBwBMD9AqvV9qwbYO0lkQ0C6RwxAx+JdjKhBOEVtmLGMb5uxb0FHZFU
 uZkwmx5dwIxZ+V3p2SL8d1Q7AU9oFVxoSR+TLRJ4PDvJ7r8li3/4pAIYZiUzbsUcX7tK
 PaoY17g29UxCLywFBv/T4gd02HvppxPFHQ066xAGp/T0QzGTYU8mIXtuqA+rt4d0zbS5
 vOUQ==
X-Gm-Message-State: APjAAAUm6Xo/F3j5YXMsOhpoNt3uDo4Cgu29qJMe5z3hTWrD7cJ52HiT
 l22WIHuRRMT2SylYehZUZSXDxPP0xik/JjiboLM=
X-Google-Smtp-Source: APXvYqw3TYm6/nnZNYABwzW+b8hhmkYoUYUxCHkDcys0yjSsGll9/2JCjPwdrXaHr0tH9ge35BcPclul+NvRUdWKj4Q=
X-Received: by 2002:a05:6830:22ee:: with SMTP id
 t14mr9387106otc.236.1576175784229; 
 Thu, 12 Dec 2019 10:36:24 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:350:0:0:0:0:0 with HTTP;
 Thu, 12 Dec 2019 10:36:23 -0800 (PST)
In-Reply-To: <CADe2dM6cv_+x18OLRZeDfpxqebwV5R67q+bXXrMvaob9odic0A@mail.gmail.com>
References: <CADe2dM7GWv2mGak-XyvKz6sWj5Tb7i-P_oRvQtEo5B9N_mEnyg@mail.gmail.com>
 <CAKR_QVK9_7oUyFYR_FbmJLwEYPpGjc+tPu2SEL4-WO6M-oJzfA@mail.gmail.com>
 <CADe2dM6cv_+x18OLRZeDfpxqebwV5R67q+bXXrMvaob9odic0A@mail.gmail.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Thu, 12 Dec 2019 19:36:23 +0100
Message-ID: <CAKR_QVL=yGm27pc7xY2J9F4OTRMxSNrK5w7j8R1uuHL1EtVSww@mail.gmail.com>
Subject: Re: Cannot bring up SDIO based 9377 (dma_alloc_coherent() fails)
To: Girish Mahadevan <girish_mahadevan@trimble.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_103625_819726_C108D42C 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 12/12/2019, Girish Mahadevan <girish_mahadevan@trimble.com> wrote:
> Thanks !
> Sadly I am still not able to bring up the WiFi module  (Silex part
> (SDMAC),QCA9377 using SDIO).
>
> I can't find the right firmware for it (I tried the firmware from
> https://github.com/kvalo/ath10k-firmware/tree/master/QCA9377/hw1.0/untested
> , but keep getting "Invalid Firmware magic").
> I am working with the vendor (Silex) to get a valid firmware blob for the
> part.
>
> Best Regards
> Girish
>
> On Wed, Dec 11, 2019 at 4:32 PM Tom Psyborg <pozega.tomislav@gmail.com>
> wrote:
>>
>> On 04/12/2019, Girish Mahadevan <girish_mahadevan@trimble.com> wrote:
>> > Hi
>> >
>> > We're trying to bring up a Silex SDMAC WiFi module (it is an SDIO
>> > module based on QCA9377) on a
>> > beaglebone-x15(https://beagleboard.org/x15) board.
>> > Our kernel version:
>> > root@beagle-x15:~# uname -a
>> > Linux beagle-x15 4.19.79-gfbf2b6dfdb #1 SMP PREEMPT Wed Dec 4 18:28:14
>> > UTC 2019 armv7l armv7l armv7l GNU/Linux
>> >
>> > We enabled the QCA driver by enabling these config items.
>> >
>> > CONFIG_ATH_COMMON=m
>> > CONFIG_ATH10K=m
>> > CONFIG_ATH10K_CE=y
>> > CONFIG_ATH10K_SDIO=m
>> > CONFIG_ATH10K_DEBUG=y
>> > CONFIG_ATH10K_DEBUGFS=y
>> > CONFIG_ATH10K_SPECTRAL=y
>> >
>> > and we enabled the firmware by adding this to our image install
>> > +       linux-firmware-ath10k \
>> >
>> > The probe of the module fails initially due to missing firmware image
>> > (even though the firmware is present in /lib/firmware)
>> >
>> > [   40.390154] ath10k_sdio mmc2:0001:1: WARNING: ath10k SDIO support
>> > is incomplete, don't expect anything to work!
>> > [   40.463406] ath10k_sdio mmc2:0001:1: Failed to find firmware-N.bin
>> > (N between 2 and 6) from ath10k/QCA9377/hw1.0: -2
>> > [   40.474042] ath10k_sdio mmc2:0001:1: could not fetch firmware files
>> > (-2)
>> > [   40.481136] ath10k_sdio mmc2:0001:1: could not probe fw (-2)
>> >
>> > Looking at the driver code , looks like it expects to find the
>> > bus-type as part of the firmware image, I renamed the firmware image
>> > as:
>> > root@beagle-x15:~# cp
>> > /lib/firmware/ath10k/QCA9377/hw1.0/firmware-6.bin
>> > /lib/firmware/ath10k/QCA9377/hw1.0/firmware-sdio-6.bin
>> >
>> > After this the probe seems to go further but fails on a
>> > dma_alloc_coherent().
>> > Looks like the dma_mask for the device isn't set so
>> > dma_alloc_coherent() fails. (I think)
>> > Has anyone come across this and has it been addressed ?
>> > [I looked at
>> > git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git
>> > , I couldn't tell (cursory look at the commit log)]
>> >
>> >
>> > root@beagle-x15:~# [  203.621784] mmc2: queuing unknown CIS tuple 0x01
>> > (3
>> > bytes)
>> > [  203.637659] mmc2: queuing unknown CIS tuple 0x1a (5 bytes)
>> > [  203.647718] mmc2: queuing unknown CIS tuple 0x1b (8 bytes)
>> > [  203.654471] mmc2: queuing unknown CIS tuple 0x14 (0 bytes)
>> > [  203.669842] mmc2: queuing unknown CIS tuple 0x80 (1 bytes)
>> > [  203.675761] mmc2: queuing unknown CIS tuple 0x81 (1 bytes)
>> > [  203.681657] mmc2: queuing unknown CIS tuple 0x82 (1 bytes)
>> > [  203.687672] mmc2: new high speed SDIO card at address 0001
>> > [  203.708712] ath10k_sdio mmc2:0001:1: WARNING: ath10k SDIO support
>> > is incomplete, don't expect anything to work!
>> > [  203.784129] ath10k_sdio mmc2:0001:1: qca9377 hw1.1 target
>> > 0x05020001 chip_id 0x00000000 sub 0000:0000
>> > [  203.793498] ath10k_sdio mmc2:0001:1: kconfig debug 1 debugfs 1
>> > tracing 0 dfs 0 testmode 1
>> > [  203.803778] ath10k_sdio mmc2:0001:1: firmware ver
>> > WLAN.TF.2.1-00021-QCARMSWP-1 api 6 features wowlan,ignore-otp crc32
>> > 42e41877
>> > [  203.977731] ath10k_sdio mmc2:0001:1: failed to fetch board data for
>> > bus=sdio,vendor=0271,device=0701,subsystem-vendor=0000,subsystem-device=0000
>> > from ath10k/QCA9377/hw1.0/board-2.bin
>> > [  203.995110] ath10k_sdio mmc2:0001:1: board_file api 1 bmi_id N/A
>> > crc32 544289f7
>> > [  205.611906] ------------[ cut here ]------------
>> > [  205.616633] WARNING: CPU: 1 PID: 71 at
>> > include/linux/dma-mapping.h:517
>> > ath10k_htt_tx_alloc_cont_txbuf_32+0x150/0x170 [ath10k_core]
>> > [  205.628811] Modules linked in: bnep xhci_plat_hcd xhci_hcd usbcore
>> > pru_rproc irq_pruss_intc pruss dwc3 udc_core usb_common
>> > snd_soc_simple_card snd_soc_simple_card_utils ath10k_sdio ath10k_core
>> > ath ahci_platform libahci_platform libahci snd_soc_omap_hdmi
>> > omap_aes_driver pruss_soc_bus omap_sham omap_wdt libata phy_omap_usb2
>> > mac80211 ti_vpe ti_sc ti_csc ti_vpdma dwc3_omap rtc_omap omap_des
>> > c_can_platform c_can cfg80211 omap_hdq des_generic crypto_engine
>> > can_dev wire extcon_palmas omap_crypto rtc_palmas snd_soc_tlv320aic3x
>> > rtc_ds1307 at24 omap_remoteproc remoteproc bridge stp llc sch_fq_codel
>> > [  205.681691] CPU: 1 PID: 71 Comm: kworker/u4:1 Not tainted
>> > 4.19.79-gfbf2b6dfdb #1
>> > [  205.689120] Hardware name: Generic DRA74X (Flattened Device Tree)
>> > [  205.695324] Workqueue: ath10k_wq ath10k_core_register_work
>> > [ath10k_core]
>> > [  205.702057] Backtrace:
>> > [  205.704526] [<c020cc6c>] (dump_backtrace) from [<c020cfa8>]
>> > (show_stack+0x18/0x1c)
>> > [  205.712131]  r7:bf3513cc r6:60000013 r5:00000000 r4:c1251180
>> > [  205.717821] [<c020cf90>] (show_stack) from [<c0a59234>]
>> > (dump_stack+0x90/0xa4)
>> > [  205.725078] [<c0a591a4>] (dump_stack) from [<c022e4dc>]
>> > (__warn+0xdc/0xf8)
>> > [  205.731983]  r7:bf3513cc r6:00000009 r5:00000000 r4:00000000
>> > [  205.737670] [<c022e400>] (__warn) from [<c022e540>]
>> > (warn_slowpath_null+0x48/0x50)
>> > [  205.745273]  r9:00001234 r8:ec591520 r7:ec5916a0 r6:bf324d88
>> > r5:00000205 r4:bf3513cc
>> > [  205.753111] [<c022e4f8>] (warn_slowpath_null) from [<bf324d88>]
>> > (ath10k_htt_tx_alloc_cont_txbuf_32+0x150/0x170 [ath10k_core])
>> > [  205.764462]  r6:ecdf0208 r5:c0c0147c r4:0000a500
>> > [  205.769217] [<bf324c38>] (ath10k_htt_tx_alloc_cont_txbuf_32
>> > [ath10k_core]) from [<bf326438>] (ath10k_htt_tx_start+0x88/0x358
>> > [ath10k_core])
>> > [  205.781791]  r8:000b1855 r7:ec591520 r6:00000000 r5:ec590e00
>> > r4:ec591520
>> > [  205.788636] [<bf3263b0>] (ath10k_htt_tx_start [ath10k_core]) from
>> > [<bf31c054>] (ath10k_core_start+0x350/0xc68 [ath10k_core])
>> > [  205.799901]  r10:ec5901a0 r9:00001234 r8:000b1855 r7:ec591520
>> > r6:00000000 r5:00000000
>> > [  205.807762]  r4:ec590e00
>> > [  205.810420] [<bf31bd04>] (ath10k_core_start [ath10k_core]) from
>> > [<bf31db88>] (ath10k_core_register_work+0x518/0x964 [ath10k_core])
>> > [  205.822209]  r9:ec590e08 r8:ec5919bc r7:ec591984 r6:00000000
>> > r5:ec591a88 r4:ec590e00
>> > [  205.830044] [<bf31d670>] (ath10k_core_register_work [ath10k_core])
>> > from [<c02468bc>] (process_one_work+0x1f4/0x404)
>> > [  205.840526]  r10:00000000 r9:ec593a8c r8:00000000 r7:ec667600
>> > r6:ee806200 r5:ee370e00
>> > [  205.848388]  r4:ec593a88
>> > [  205.850935] [<c02466c8>] (process_one_work) from [<c02476b0>]
>> > (worker_thread+0x58/0x568)
>> > [  205.859063]  r10:ee806200 r9:c1203d00 r8:ee806218 r7:00000088
>> > r6:ee806200 r5:ee370e14
>> > [  205.866924]  r4:ee370e00
>> > [  205.869472] [<c0247658>] (worker_thread) from [<c024cc14>]
>> > (kthread+0x160/0x168)
>> > [  205.876901]  r10:ee8b1e74 r9:c0247658 r8:ee370e00 r7:edee4000
>> > r6:00000000 r5:ee383780
>> > [  205.884761]  r4:ee3837c0
>> > [  205.887310] [<c024cab4>] (kthread) from [<c02010d8>]
>> > (ret_from_fork+0x14/0x3c)
>> > [  205.894563] Exception stack(0xedee5fb0 to 0xedee5ff8)
>> > [  205.899635] 5fa0:                                     00000000
>> > 00000000 00000000 00000000
>> > [  205.907849] 5fc0: 00000000 00000000 00000000 00000000 00000000
>> > 00000000 00000000 00000000
>> > [  205.916061] 5fe0: 00000000 00000000 00000000 00000000 00000013
>> > 00000000
>> > [  205.922707]  r10:00000000 r9:00000000 r8:00000000 r7:00000000
>> > r6:00000000 r5:c024cab4
>> > [  205.930570]  r4:ee383780
>> > [  205.937490] ---[ end trace 13ec8832fc653004 ]---
>> > [  205.942169] ath10k_sdio mmc2:0001:1: coherent DMA mask is unset
>> > [  205.948114] ath10k_sdio mmc2:0001:1: coherent allocation too big
>> > (requested 0xa500 mask 0x0)
>> > [  205.956896] ath10k_sdio mmc2:0001:1: failed to alloc cont tx buffer:
>> > -12
>> > [  205.963666] ath10k_sdio mmc2:0001:1: failed to alloc htt tx: -12
>> > [  205.969805] ath10k_sdio mmc2:0001:1: could not init core (-12)
>> > [  205.975983] ath10k_sdio mmc2:0001:1: unable to disable sdio function:
>> > -5
>> > [  205.982754] ath10k_sdio mmc2:0001:1: could not probe fw (-12)
>> >
>> > Any help would be most appreciated.Thanks in advance.
>> >
>> > Best Regards
>> > Girish
>> >
>> > _______________________________________________
>> > ath10k mailing list
>> > ath10k@lists.infradead.org
>> > http://lists.infradead.org/mailman/listinfo/ath10k
>> >
>>
>> Hi
>>
>> seems like there were some disagreements on how to allocate memory;
>> you can try this patch: https://patchwork.kernel.org/patch/7681571/
>> or revert the one that "fixed" it
>
>
>
> --
> --
> Girish Mahadevan
> Firmware Engineer
> 10368 Westmoor Drive | Westminster, CO 80021
>

that looks like your fw file is not in expected format (don't know if
you need fw only or combined fw+otp) but these scripts helped me
recently with QCA9880 fw:
https://gist.github.com/kazikcz/c970cbf3a863ebbc4495
https://gist.github.com/kazikcz/64313b9e2470660faae1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
