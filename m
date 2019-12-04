Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4872D1135BA
	for <lists+ath10k@lfdr.de>; Wed,  4 Dec 2019 20:30:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yzwGQKG7gdx07NqRjvaqP3o40UIfwV7r0FA8SbZmGjE=; b=CTu
	tCVwQ0M+rNI53cnMmKMMfb54m1jmmWeyC1w4AmPCrlS+RhYHH4G4iIwe71FI8oNuoALef679313wB
	a6l8wmxna40Tm1Vfm9oNbFN2bKli1h0ZIm34UH/Zrh3u6Lz4ZkvI1exLzD5VbVXI+r8924ZotXuzj
	UG3/k7X5mIM+YlZ0AGpOsaG+l5Dx9i/UQ1ql/eNWR4XjKX4gkiGpyqSz2FLC2wbrZlP2IpCyFINal
	tLBfPHr6q7ac2J3Gxylh8EWHBopb+T76USkSr2g/jhWqUW7Om88efhzabGXhiiEnM5jTBOfk30E8j
	P4Go9ivDwY02fPvOJnAGHRjp28SqV4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icaLx-0007Bq-9P; Wed, 04 Dec 2019 19:30:25 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icaLs-0007BY-23
 for ath10k@lists.infradead.org; Wed, 04 Dec 2019 19:30:22 +0000
Received: by mail-qv1-xf44.google.com with SMTP id o18so330562qvf.1
 for <ath10k@lists.infradead.org>; Wed, 04 Dec 2019 11:30:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=trimble-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=SXND+syQnyPzROm/2TY2aU2JpkxQlxtHxQa0+7KvQ0U=;
 b=wdGZuvo1X3EDn0atX6pHIfeBsM95RygSFSpwtG01Y7dZIwwfSgeVob5RVowHFs0n9Y
 ecghInC2TaElHqpPMTgwk4vEKcVMNwSIhrp9nUckJ9GLAKUn2SUdX0OGULNjGod1JP4d
 uZRmFy81FltYv2m9nlAX5c7poysNnA+kNUeaCyU3BMYk6p4Y9crA2vu4W8s+XUoFHd5J
 +I3et17lAzyb4kCfmLK+HX2dC0vPKE8HV0iaM3+B/6kzSkePg5dBS2iNqyHyw0hmocHP
 q6U840YnDV0a4Yugw/8IC9dLSZxwLzFaYyCQftOpOw37G8ta+6jigybkyzIpHeYa2zn/
 zktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=SXND+syQnyPzROm/2TY2aU2JpkxQlxtHxQa0+7KvQ0U=;
 b=kkhVJsP+Gq/cNoi87n8WWAi8mSTjl4qzzXw7ZBqVw3uUxOrCDXYgj9ihUcsD+ZZR/K
 f70dgM8PMsQEPDNqEGLSuxky2uqpBjiUlQteDjwpFOQ+j2jiP3kbWerVJTVYyDWA/Q95
 cig+LqXRUNhvs0FBathHQqiZ9ovAQP/DHglxuhVoY2sDD4TtpSqi8g/jnpq6OiIMRyUG
 16D8S3CJ/yf8ZLjFETMUpl9HeM6gjP2vQ0L4GMX8/fLG4AfMRDbw+J60dPjNJPl7FzCb
 AGHhmE3EeSpyRnYWvyBpSZuyHTZszz6nYPQ0b0+yzhMi8NeDHrBXVKMDgt1ITk69eKct
 6JdQ==
X-Gm-Message-State: APjAAAX115Z05xX2sQZOnLocZhfrLFSt/x2daMi9GT0EqWfoBcQ8ML1a
 cDw9b8KcGstSi/tqcXUVsz9+hi3HBwEk1QPa8ZZsnWB1tU8=
X-Google-Smtp-Source: APXvYqyMRy6CCDmRmjdhYqbrDDMANgKqBuLNuD8HkAAewtM/JYit1RuZlo+a9bSQIJehzuorpoKDx8HCURcz3+mto3c=
X-Received: by 2002:a0c:eed2:: with SMTP id h18mr4268615qvs.184.1575487815169; 
 Wed, 04 Dec 2019 11:30:15 -0800 (PST)
MIME-Version: 1.0
From: Girish Mahadevan <girish_mahadevan@trimble.com>
Date: Wed, 4 Dec 2019 12:30:04 -0700
Message-ID: <CADe2dM7GWv2mGak-XyvKz6sWj5Tb7i-P_oRvQtEo5B9N_mEnyg@mail.gmail.com>
Subject: Cannot bring up SDIO based 9377 (dma_alloc_coherent() fails)
To: ath10k@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_113020_174507_50FC4F16 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi

We're trying to bring up a Silex SDMAC WiFi module (it is an SDIO
module based on QCA9377) on a
beaglebone-x15(https://beagleboard.org/x15) board.
Our kernel version:
root@beagle-x15:~# uname -a
Linux beagle-x15 4.19.79-gfbf2b6dfdb #1 SMP PREEMPT Wed Dec 4 18:28:14
UTC 2019 armv7l armv7l armv7l GNU/Linux

We enabled the QCA driver by enabling these config items.

CONFIG_ATH_COMMON=m
CONFIG_ATH10K=m
CONFIG_ATH10K_CE=y
CONFIG_ATH10K_SDIO=m
CONFIG_ATH10K_DEBUG=y
CONFIG_ATH10K_DEBUGFS=y
CONFIG_ATH10K_SPECTRAL=y

and we enabled the firmware by adding this to our image install
+       linux-firmware-ath10k \

The probe of the module fails initially due to missing firmware image
(even though the firmware is present in /lib/firmware)

[   40.390154] ath10k_sdio mmc2:0001:1: WARNING: ath10k SDIO support
is incomplete, don't expect anything to work!
[   40.463406] ath10k_sdio mmc2:0001:1: Failed to find firmware-N.bin
(N between 2 and 6) from ath10k/QCA9377/hw1.0: -2
[   40.474042] ath10k_sdio mmc2:0001:1: could not fetch firmware files (-2)
[   40.481136] ath10k_sdio mmc2:0001:1: could not probe fw (-2)

Looking at the driver code , looks like it expects to find the
bus-type as part of the firmware image, I renamed the firmware image
as:
root@beagle-x15:~# cp
/lib/firmware/ath10k/QCA9377/hw1.0/firmware-6.bin
/lib/firmware/ath10k/QCA9377/hw1.0/firmware-sdio-6.bin

After this the probe seems to go further but fails on a dma_alloc_coherent().
Looks like the dma_mask for the device isn't set so
dma_alloc_coherent() fails. (I think)
Has anyone come across this and has it been addressed ?
[I looked at git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git
, I couldn't tell (cursory look at the commit log)]


root@beagle-x15:~# [  203.621784] mmc2: queuing unknown CIS tuple 0x01 (3 bytes)
[  203.637659] mmc2: queuing unknown CIS tuple 0x1a (5 bytes)
[  203.647718] mmc2: queuing unknown CIS tuple 0x1b (8 bytes)
[  203.654471] mmc2: queuing unknown CIS tuple 0x14 (0 bytes)
[  203.669842] mmc2: queuing unknown CIS tuple 0x80 (1 bytes)
[  203.675761] mmc2: queuing unknown CIS tuple 0x81 (1 bytes)
[  203.681657] mmc2: queuing unknown CIS tuple 0x82 (1 bytes)
[  203.687672] mmc2: new high speed SDIO card at address 0001
[  203.708712] ath10k_sdio mmc2:0001:1: WARNING: ath10k SDIO support
is incomplete, don't expect anything to work!
[  203.784129] ath10k_sdio mmc2:0001:1: qca9377 hw1.1 target
0x05020001 chip_id 0x00000000 sub 0000:0000
[  203.793498] ath10k_sdio mmc2:0001:1: kconfig debug 1 debugfs 1
tracing 0 dfs 0 testmode 1
[  203.803778] ath10k_sdio mmc2:0001:1: firmware ver
WLAN.TF.2.1-00021-QCARMSWP-1 api 6 features wowlan,ignore-otp crc32
42e41877
[  203.977731] ath10k_sdio mmc2:0001:1: failed to fetch board data for
bus=sdio,vendor=0271,device=0701,subsystem-vendor=0000,subsystem-device=0000
from ath10k/QCA9377/hw1.0/board-2.bin
[  203.995110] ath10k_sdio mmc2:0001:1: board_file api 1 bmi_id N/A
crc32 544289f7
[  205.611906] ------------[ cut here ]------------
[  205.616633] WARNING: CPU: 1 PID: 71 at
include/linux/dma-mapping.h:517
ath10k_htt_tx_alloc_cont_txbuf_32+0x150/0x170 [ath10k_core]
[  205.628811] Modules linked in: bnep xhci_plat_hcd xhci_hcd usbcore
pru_rproc irq_pruss_intc pruss dwc3 udc_core usb_common
snd_soc_simple_card snd_soc_simple_card_utils ath10k_sdio ath10k_core
ath ahci_platform libahci_platform libahci snd_soc_omap_hdmi
omap_aes_driver pruss_soc_bus omap_sham omap_wdt libata phy_omap_usb2
mac80211 ti_vpe ti_sc ti_csc ti_vpdma dwc3_omap rtc_omap omap_des
c_can_platform c_can cfg80211 omap_hdq des_generic crypto_engine
can_dev wire extcon_palmas omap_crypto rtc_palmas snd_soc_tlv320aic3x
rtc_ds1307 at24 omap_remoteproc remoteproc bridge stp llc sch_fq_codel
[  205.681691] CPU: 1 PID: 71 Comm: kworker/u4:1 Not tainted
4.19.79-gfbf2b6dfdb #1
[  205.689120] Hardware name: Generic DRA74X (Flattened Device Tree)
[  205.695324] Workqueue: ath10k_wq ath10k_core_register_work [ath10k_core]
[  205.702057] Backtrace:
[  205.704526] [<c020cc6c>] (dump_backtrace) from [<c020cfa8>]
(show_stack+0x18/0x1c)
[  205.712131]  r7:bf3513cc r6:60000013 r5:00000000 r4:c1251180
[  205.717821] [<c020cf90>] (show_stack) from [<c0a59234>]
(dump_stack+0x90/0xa4)
[  205.725078] [<c0a591a4>] (dump_stack) from [<c022e4dc>] (__warn+0xdc/0xf8)
[  205.731983]  r7:bf3513cc r6:00000009 r5:00000000 r4:00000000
[  205.737670] [<c022e400>] (__warn) from [<c022e540>]
(warn_slowpath_null+0x48/0x50)
[  205.745273]  r9:00001234 r8:ec591520 r7:ec5916a0 r6:bf324d88
r5:00000205 r4:bf3513cc
[  205.753111] [<c022e4f8>] (warn_slowpath_null) from [<bf324d88>]
(ath10k_htt_tx_alloc_cont_txbuf_32+0x150/0x170 [ath10k_core])
[  205.764462]  r6:ecdf0208 r5:c0c0147c r4:0000a500
[  205.769217] [<bf324c38>] (ath10k_htt_tx_alloc_cont_txbuf_32
[ath10k_core]) from [<bf326438>] (ath10k_htt_tx_start+0x88/0x358
[ath10k_core])
[  205.781791]  r8:000b1855 r7:ec591520 r6:00000000 r5:ec590e00 r4:ec591520
[  205.788636] [<bf3263b0>] (ath10k_htt_tx_start [ath10k_core]) from
[<bf31c054>] (ath10k_core_start+0x350/0xc68 [ath10k_core])
[  205.799901]  r10:ec5901a0 r9:00001234 r8:000b1855 r7:ec591520
r6:00000000 r5:00000000
[  205.807762]  r4:ec590e00
[  205.810420] [<bf31bd04>] (ath10k_core_start [ath10k_core]) from
[<bf31db88>] (ath10k_core_register_work+0x518/0x964 [ath10k_core])
[  205.822209]  r9:ec590e08 r8:ec5919bc r7:ec591984 r6:00000000
r5:ec591a88 r4:ec590e00
[  205.830044] [<bf31d670>] (ath10k_core_register_work [ath10k_core])
from [<c02468bc>] (process_one_work+0x1f4/0x404)
[  205.840526]  r10:00000000 r9:ec593a8c r8:00000000 r7:ec667600
r6:ee806200 r5:ee370e00
[  205.848388]  r4:ec593a88
[  205.850935] [<c02466c8>] (process_one_work) from [<c02476b0>]
(worker_thread+0x58/0x568)
[  205.859063]  r10:ee806200 r9:c1203d00 r8:ee806218 r7:00000088
r6:ee806200 r5:ee370e14
[  205.866924]  r4:ee370e00
[  205.869472] [<c0247658>] (worker_thread) from [<c024cc14>]
(kthread+0x160/0x168)
[  205.876901]  r10:ee8b1e74 r9:c0247658 r8:ee370e00 r7:edee4000
r6:00000000 r5:ee383780
[  205.884761]  r4:ee3837c0
[  205.887310] [<c024cab4>] (kthread) from [<c02010d8>]
(ret_from_fork+0x14/0x3c)
[  205.894563] Exception stack(0xedee5fb0 to 0xedee5ff8)
[  205.899635] 5fa0:                                     00000000
00000000 00000000 00000000
[  205.907849] 5fc0: 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000
[  205.916061] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[  205.922707]  r10:00000000 r9:00000000 r8:00000000 r7:00000000
r6:00000000 r5:c024cab4
[  205.930570]  r4:ee383780
[  205.937490] ---[ end trace 13ec8832fc653004 ]---
[  205.942169] ath10k_sdio mmc2:0001:1: coherent DMA mask is unset
[  205.948114] ath10k_sdio mmc2:0001:1: coherent allocation too big
(requested 0xa500 mask 0x0)
[  205.956896] ath10k_sdio mmc2:0001:1: failed to alloc cont tx buffer: -12
[  205.963666] ath10k_sdio mmc2:0001:1: failed to alloc htt tx: -12
[  205.969805] ath10k_sdio mmc2:0001:1: could not init core (-12)
[  205.975983] ath10k_sdio mmc2:0001:1: unable to disable sdio function: -5
[  205.982754] ath10k_sdio mmc2:0001:1: could not probe fw (-12)

Any help would be most appreciated.Thanks in advance.

Best Regards
Girish

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
