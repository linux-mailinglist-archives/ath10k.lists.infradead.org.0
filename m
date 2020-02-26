Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E6F170A45
	for <lists+ath10k@lfdr.de>; Wed, 26 Feb 2020 22:16:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Pw4lky30dYMqsulwLFTfHu0erDuvqizzRGIXX76diM=; b=lD3O73urjhKViR
	vTzoH/l71l7ftIlXUEqnyhuC+270lzKU6lYUReHL1w9GGs/uU9wJ0wDbeWQyY/SRW1It+hOWxLLwq
	4FjhK+AwzLwbKsk3Twm4aMbixIoYl+iFcDokXwEKbc2p91l19QbLSWSUJtJFQRC+krqKZ/U2nuyMB
	vyNeFC5lp8gGY0bckY6WokMFzKkcVnM3eauMg7CwLu3YaF0u/GlvYjjyoyk6c2B1SCU0fYujU+SFe
	wci7wPM7RGBec20rnTcC5TrQqdQzbgxS9l7otelHp2XkDBIodSBom7UlkKrkGcYHQ4iZIUkWua0PX
	5FHIdPf9xqdqlzv6Nldw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j742d-0002uc-J7; Wed, 26 Feb 2020 21:16:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j742a-0002uJ-2i
 for ath10k@lists.infradead.org; Wed, 26 Feb 2020 21:16:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so914773wma.1
 for <ath10k@lists.infradead.org>; Wed, 26 Feb 2020 13:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OsPN+EUhFjvfM3Fz8Pxleu7AuuoJA3diSFFXprWVSmI=;
 b=mkyAJJ4cO3Miu4+Ded7gX3tFJpnQojj4f7HiloUot3p58j4Xb0Tp5TMB2Ox6vEtTtA
 y6e8ao1TM2hXB241sHyi05KVJ84K/SOjBEMjB+N48DPF5wfjl35BISxJo566bUNsm+Df
 jv5tPzNbfU2gH2gdLw5P5AaL5O9ANh1oD5i3I9ObPytb8wj+vVpQlExPJHZtuUOPYDwL
 D4VULg0WZIVoi1Fwwp4WUwSFnXTh01kzlj+D+lgH+6bzXDfg3bVHXmz3Dbj74hUV/KJD
 3lttkWp5x/KEUHZyCCXW1vRmMVgF8btLZAq7i3IIVzOFUnWiHoVF8XLmepVLEMHkIMla
 fY1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OsPN+EUhFjvfM3Fz8Pxleu7AuuoJA3diSFFXprWVSmI=;
 b=Kugnr7K05rEtjjhRLVrzNOynG1/SsktagSpfSLAcxZU/auleUWoCNJT5eQiOA8oWwP
 xnzozR29ffDBvMQgpD1LbYU8Echa4N70J/xy5TajLDucs1CW6UBysQfmM0PvxyeFWp0b
 Y+YggFHfm7/rRhu2v1xxGaTp9jgGjqRImU0wi3kNRY8AIWagKt8jYTwoBCHaE76bP/Bj
 MZkgXuByDE+1EkDhNJV89aBccnOLSXaIgbf+AYT7t/PX+QPSAvWOhZc4cvna84wPiKew
 NHKfTgcDv3uY4GzGHnd+kP9C7zpaCdHwPkPfI3jFLb5AnivB0EGRpcTg/dafzOhhnc1Z
 M/TA==
X-Gm-Message-State: APjAAAX5DtQBokgoRoqXeuzBCX5/epas1pwZICyDMO8oEtRDGMTiqbBu
 DY9nBjutg7p54UlY2zrjkWC/WZDlM9xwhmEcl+Gy
X-Google-Smtp-Source: APXvYqw2JmVN76fchqJSHdpJ068j+1WGUtHiW1KHSzgR+9ud1BPPhheERdKpk1rF+Wjz+eJny36sqNwtJoiiag64ZYY=
X-Received: by 2002:a05:600c:145:: with SMTP id
 w5mr747868wmm.157.1582751781943; 
 Wed, 26 Feb 2020 13:16:21 -0800 (PST)
MIME-Version: 1.0
References: <CAG2Q2vUH95JyMqOELtU4=uU3nO5jr2+806KiO+T1-tNdBZ=DYw@mail.gmail.com>
 <CAG2Q2vU3spU6VOdGAF5beWmgG1eaWuVm3pc+gzcnhaTUHvX+yw@mail.gmail.com>
 <CAMrEMU8DtaKMFqZexurzWZD8iB4YX3CmF7vq2XsaDoD=OC-eoA@mail.gmail.com>
In-Reply-To: <CAMrEMU8DtaKMFqZexurzWZD8iB4YX3CmF7vq2XsaDoD=OC-eoA@mail.gmail.com>
From: Cale Collins <ccollins@gateworks.com>
Date: Wed, 26 Feb 2020 13:15:45 -0800
Message-ID: <CAG2Q2vWzOEEoJHJsBH_Pxg=Gab4ehmW9cuH4zYCadxnS=BUCgA@mail.gmail.com>
Subject: Re: ath10k_pci rawmode = 1 requires support from firmware
To: Justin Capella <justincapella@gmail.com>,
 Rick Winscot <Rwinscot@kcftech.com>, Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_131624_263390_E44C7F35 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hello Justin and Kalle,

Justin thank you very much for the reply, sorry it took me so long to
get back to you but I wanted to do more testing based on your
recommendations before I wrote.

I tried numerous versions of the firmware-6.bin file from the
linux-firmware git, and the repo you linked.  I have been hitting the
same issue with nearly every version of firmware I try.  I included
the output from WLAN.RM.4.4.1-00140-QCARMSWPZ-1, but the exact same
applies to WLAN.RMH.4.4.1-00042.  Under normal circumstances I would
try to bisect this, but I can't because I don't have a "good"
(working) version of the firmware.

I'm doing this on behalf of one of our clients Rick Winscot, I added
him to this thread so he can offer his insight.

Here's the output from my testing with WLAN.RM.4.4.1-00140-QCARMSWPZ-1:

root@bionic-newport:~# ls /sys/class/net/
can0  eth0  eth1  lo
root@bionic-newport:~# dmesg |grep ath10k
[    0.000000] Kernel command line: cma=64M coherent_pool=16M
net.ifnames=0 ath10k_core.rawmode=1 root=/dev/mmcblk0p2 rw rootwait
console=ttyAMA0,115200n8 earlycon=pl011,0x87e028000000
[   12.356854] ath10k_pci 0001:58:00.0: pci irq msi oper_irq_mode 2
irq_mode 0 reset_mode 0
[   12.762070] ath10k_pci 0001:58:00.0: Direct firmware load for
ath10k/pre-cal-pci-0001:58:00.0.bin failed with error -2
[   12.762132] ath10k_pci 0001:58:00.0: Direct firmware load for
ath10k/cal-pci-0001:58:00.0.bin failed with error -2
[   12.779272] ath10k_pci 0001:58:00.0: qca6174 hw3.2 target
0x05030000 chip_id 0x00340aff sub 168c:3363
[   12.779280] ath10k_pci 0001:58:00.0: kconfig debug 0 debugfs 1
tracing 0 dfs 0 testmode 0
[   12.780635] ath10k_pci 0001:58:00.0: firmware ver
WLAN.RM.4.4.1-00140-QCARMSWPZ-1 api 6 features wowlan,ignore-otp,mfp
crc32 29eb8ca1
[   12.858884] ath10k_pci 0001:58:00.0: board_file api 2 bmi_id N/A
crc32 4ac0889b
[   12.858894] ath10k_pci 0001:58:00.0: rawmode = 1 requires support
from firmware
[   12.866282] ath10k_pci 0001:58:00.0: fatal problem with firmware
features: -22
[   12.873670] ath10k_pci 0001:58:00.0: could not probe fw (-22)

root@bionic-newport:~# ls /sys/class/net/
can0  eth0  eth1  lo  wlan0
root@bionic-newport:~# dmesg |grep ath10k
[   11.981606] ath10k_pci 0001:58:00.0: pci irq msi oper_irq_mode 2
irq_mode 0 reset_mode 0
[   12.310158] ath10k_pci 0001:58:00.0: Direct firmware load for
ath10k/pre-cal-pci-0001:58:00.0.bin failed with error -2
[   12.310206] ath10k_pci 0001:58:00.0: Direct firmware load for
ath10k/cal-pci-0001:58:00.0.bin failed with error -2
[   12.349306] ath10k_pci 0001:58:00.0: qca6174 hw3.2 target
0x05030000 chip_id 0x00340aff sub 168c:3363
[   12.349314] ath10k_pci 0001:58:00.0: kconfig debug 0 debugfs 1
tracing 0 dfs 0 testmode 0
[   12.350682] ath10k_pci 0001:58:00.0: firmware ver
WLAN.RM.4.4.1-00140-QCARMSWPZ-1 api 6 features wowlan,ignore-otp,mfp
crc32 29eb8ca1
[   12.432281] ath10k_pci 0001:58:00.0: board_file api 2 bmi_id N/A
crc32 4ac0889b
[   12.978328] ath10k_pci 0001:58:00.0: Unknown eventid: 3
[   12.994313] ath10k_pci 0001:58:00.0: Unknown eventid: 118809
[   12.997236] ath10k_pci 0001:58:00.0: Unknown eventid: 90118
[   12.997886] ath10k_pci 0001:58:00.0: htt-ver 3.60 wmi-op 4 htt-op 3
cal otp max-sta 32 raw 0 hwcrypto 1


root@bionic-newport:~# iw phy phy0 interface add mesh0 type mp
root@bionic-newport:~# iw mesh0 info
Interface mesh0
    ifindex 6
    wdev 0x2
    addr 94:92:d2:00:04:04
    type mesh point
    wiphy 0
    txpower 0.00 dBm
root@bionic-newport:~# iw dev mesh0 set freq 5745 80 5775
root@bionic-newport:~# ifconfig mesh0 192.168.1.10
SIOCSIFFLAGS: Invalid argument
root@bionic-newport:~# dmesg |grep ath10k
[   11.981606] ath10k_pci 0001:58:00.0: pci irq msi oper_irq_mode 2
irq_mode 0 reset_mode 0
[   12.310158] ath10k_pci 0001:58:00.0: Direct firmware load for
ath10k/pre-cal-pci-0001:58:00.0.bin failed with error -2
[   12.310206] ath10k_pci 0001:58:00.0: Direct firmware load for
ath10k/cal-pci-0001:58:00.0.bin failed with error -2
[   12.349306] ath10k_pci 0001:58:00.0: qca6174 hw3.2 target
0x05030000 chip_id 0x00340aff sub 168c:3363
[   12.349314] ath10k_pci 0001:58:00.0: kconfig debug 0 debugfs 1
tracing 0 dfs 0 testmode 0
[   12.350682] ath10k_pci 0001:58:00.0: firmware ver
WLAN.RM.4.4.1-00140-QCARMSWPZ-1 api 6 features wowlan,ignore-otp,mfp
crc32 29eb8ca1
[   12.432281] ath10k_pci 0001:58:00.0: board_file api 2 bmi_id N/A
crc32 4ac0889b
[   12.978328] ath10k_pci 0001:58:00.0: Unknown eventid: 3
[   12.994313] ath10k_pci 0001:58:00.0: Unknown eventid: 118809
[   12.997236] ath10k_pci 0001:58:00.0: Unknown eventid: 90118
[   12.997886] ath10k_pci 0001:58:00.0: htt-ver 3.60 wmi-op 4 htt-op 3
cal otp max-sta 32 raw 0 hwcrypto 1
[  256.819171] ath10k_pci 0001:58:00.0: Unknown eventid: 3
[  256.834413] ath10k_pci 0001:58:00.0: Unknown eventid: 118809
[  256.837352] ath10k_pci 0001:58:00.0: Unknown eventid: 90118
[  256.884876] ath10k_pci 0001:58:00.0: must load driver with
rawmode=1 to add mesh interfaces

Mahalo,

Cale Collins

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
