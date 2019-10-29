Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C736E8CE0
	for <lists+ath10k@lfdr.de>; Tue, 29 Oct 2019 17:40:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+7lUQTQ2K9xpOJe3xFVWhafJXASfPDIfF4Bu4k6+NmA=; b=PKr
	L2k2dfYgQn43VLpjIakjY/3SxZtNs4MwAenBCszGYGDykUpYd8a9vvKUkbhE9E1hTRxRmVztap6NH
	rWvi8NUi4HGfJP/OjzOnbOvIA353Abx/qC8v5ZgHsZBhiRBff/r4UgH0Qzzd9Fqa6PZYwUXXLColO
	6lm/iplHrBTqj/tHhPpwelPanxc4ECERvIOEPhlo4E27/RRefBLT28NAGyETl80KQAWGTuI61X7yw
	N0/bhHR0Jhu4BiZRVbey50wgCzHldQNFmyk+8L2wc8mm//+Elm+Cftlc6wNNS5A5i7HC37bYJDP6K
	4hfgz5T9IOTyNky4UkKzoTIiRzAMSxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUXj-0001tD-5L; Tue, 29 Oct 2019 16:40:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUXe-0001sM-Jv
 for ath10k@lists.infradead.org; Tue, 29 Oct 2019 16:40:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id q13so14368576wrs.12
 for <ath10k@lists.infradead.org>; Tue, 29 Oct 2019 09:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=K/kKWQXDac93fYqE6YqhD/XqTBYKQWmKKLcBayqVtVk=;
 b=iJwIcpWdlpZtjTqPosmsiiRh3o7svzJzxA5tXk0zMSx9S5TvPvukYvUY2Yy//nLt3s
 zw4TDO+ioNyC6d/pcVXEyZd9lfrl5PecdURb9FgtVb7OapvnQ1/CMCe41MJ7sLB8jEMa
 bQy1ZilVz64lUla8ZEadwMST33642LFe18Pi/V4ijg/DtNYrbTYzxgFyOqVTssaiAWpq
 hj2NY9zOG29whfXkixGff6mnK7MfrPEZwEqVfZ/IlCF9HyqojkdjvyYgoRqLjhePw7oA
 rAVjOXkpEyvi/wqYPVg+g8fsir8uvs0M5gzYa86EQBHKjdKkVpwFUtdqIZYBKat6nWeY
 yd4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=K/kKWQXDac93fYqE6YqhD/XqTBYKQWmKKLcBayqVtVk=;
 b=TTHCMA/E29hIEtQ5JohzEpGEX6ArCfUyCn4rs0Xf3i5qAtJg304zQ3uAQwzvBZZTAm
 ID/RtpoJBCqrGTtioy5yiv/BS6cdJ4WZ1XpX32vhr0vQtCUzpJQE1xagNrXuEv/wfHrT
 vEjZEe8JcQdpSzyAQB1s0l37pvTfQgdbhs3LmuCPgu4Dm4JvZJqIs3iLE1T0ALi2z5ab
 DOxOu6C09xDOyYjHJ+L6wWfOxHdEVjBYA1NVMfekh/5xS7O2iuDggh/6kLXptfCifPGC
 ythhtI/itiN+ao0WZ2w5SqtdBBxRHiyORXsz8lzSscZUvlEBCJdP4p7ctKFspD6biDtw
 7SaQ==
X-Gm-Message-State: APjAAAXa6oyjYDSFDLY1LWa0OGrGigt+5zO2mCOWBOSW7EqV+EFGQdFp
 sWSxTJGReFq7Y9lL3WcMUdainYrvhVUpCPEKqvxFGWGeWaU=
X-Google-Smtp-Source: APXvYqzf3G6kfjgK9iNAoYEFpDEPFsPOllKyxZTLP8Y/gexZWLalkEZYk8Uno8PboLW1GJbUcu18/+x5LuvtUTqKPZQ=
X-Received: by 2002:adf:fc41:: with SMTP id e1mr4681754wrs.263.1572367221078; 
 Tue, 29 Oct 2019 09:40:21 -0700 (PDT)
MIME-Version: 1.0
From: Will Frew <will.frew1@gmail.com>
Date: Tue, 29 Oct 2019 18:40:10 +0200
Message-ID: <CAKe+T4y7Am6eJKWRicTqMKsJT7F4sfNmJ7Lp4g3LWimML=D_aA@mail.gmail.com>
Subject: Raw-mode not available in latest QA6174 firmware
To: ath10k@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094022_656779_E4C5C412 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (will.frew1[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (will.frew1[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi all,

I noticed in the last few months that one of my scripts broke and
unfortunately it took me a little while to dig into it and report this
/ ask the question but here goes:

*Hardware/Environment*:
Laptop: Dell XPS 13 (9370)
OS: Arch Linux
# uname -a
Linux ... 5.3.7-arch1-1-ARCH #1 SMP PREEMPT Fri Oct 18 00:17:03 UTC
2019 x86_64 GNU/Linux

# lspci -knnv
...
02:00.0 Network controller [0280]: Qualcomm Atheros QCA6174 802.11ac
Wireless Network Adapter [168c:003e] (rev 32)
Subsystem: Bigfoot Networks, Inc. Killer 1435 Wireless-AC [1a56:143a]
Flags: bus master, fast devsel, latency 0, IRQ 126
Memory at dc000000 (64-bit, non-prefetchable) [size=2M]
Capabilities: [40] Power Management version 3
Capabilities: [50] MSI: Enable+ Count=1/8 Maskable+ 64bit-
Capabilities: [70] Express Endpoint, MSI 00
Capabilities: [100] Advanced Error Reporting
Capabilities: [148] Virtual Channel
Capabilities: [168] Device Serial Number 00-00-00-00-00-00-00-00
Capabilities: [178] Latency Tolerance Reporting
Capabilities: [180] L1 PM Substates
Kernel driver in use: ath10k_pci
Kernel modules: ath10k_pci
...

*Background*:
I install linux-firmware via the Arch Linux package manager and after
a recent update I noticed that I was no longer able to load the
ath10k* kernel modules with `rawmode=1 cryptmode=1` flags.
Or more precisely, I can load the modules, but I get the following
dmesg errors when I load ath10k_pci module and the wireless interface
doesn't come up:

# modprobe -r ath10k_pci && modprobe -r ath10k_core && modprobe
ath10k_core rawmode=1 cryptmode=1 && modprobe ath10k_pci
# dmesg
...
[48749.874386] ath10k_pci 0000:02:00.0: pci irq msi oper_irq_mode 2
irq_mode 0 reset_mode 0
[48750.136351] ath10k_pci 0000:02:00.0: qca6174 hw3.2 target
0x05030000 chip_id 0x00340aff sub 1a56:143a
[48750.136355] ath10k_pci 0000:02:00.0: kconfig debug 1 debugfs 1
tracing 1 dfs 0 testmode 0
[48750.137442] ath10k_pci 0000:02:00.0: firmware ver
WLAN.RM.4.4.1-00140-QCARMSWPZ-1 api 6 features wowlan,ignore-otp,mfp
crc32 29eb8ca1
[48750.203328] ath10k_pci 0000:02:00.0: board_file api 2 bmi_id N/A
crc32 4ed3569e
[48750.203332] ath10k_pci 0000:02:00.0: cryptmode > 0 requires raw
mode support from firmware
[48750.203334] ath10k_pci 0000:02:00.0: fatal problem with firmware
features: -22
[48750.203380] ath10k_pci 0000:02:00.0: could not probe fw (-22)
...

I pinned down the change to this specific commit:
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/?id=1bd3ef2e02ed1bada686f66451c2e2042dc48bd4

I also re-tested the firmware version before that commit and get the
following output from dmesg after reloading the modules exactly as in
the command above:
# dmesg
...
[49164.365084] ath10k_pci 0000:02:00.0: pci irq msi oper_irq_mode 2
irq_mode 0 reset_mode 0
[49164.620678] ath10k_pci 0000:02:00.0: qca6174 hw3.2 target
0x05030000 chip_id 0x00340aff sub 1a56:143a
[49164.620685] ath10k_pci 0000:02:00.0: kconfig debug 1 debugfs 1
tracing 1 dfs 0 testmode 0
[49164.622345] ath10k_pci 0000:02:00.0: firmware ver
RM.4.4.1.c2-00057-QCARMSWP-1 api 6 features
wowlan,ignore-otp,no-4addr-pad,raw-mode crc32 e061250a
[49164.687059] ath10k_pci 0000:02:00.0: board_file api 2 bmi_id N/A
crc32 4ed3569e
[49164.747627] ath10k_pci 0000:02:00.0: UART prints enabled
[49164.811498] ath10k_pci 0000:02:00.0: unsupported HTC service id: 1536
[49165.069429] ath10k_pci 0000:02:00.0: htt-ver 3.56 wmi-op 4 htt-op 3
cal otp max-sta 32 raw 1 hwcrypto 0
[49165.166155] ath: EEPROM regdomain: 0x6c
[49165.166157] ath: EEPROM indicates we should expect a direct regpair map
[49165.166159] ath: Country alpha2 being used: 00
[49165.166160] ath: Regpair used: 0x6c
[49165.169652] ath10k_pci 0000:02:00.0 wlp2s0: renamed from wlan0
...

I was using raw-mode for packet sniffing with airmon-ng / libpcap and
it was definitely working with this same hardware.

*Bug/Question*:
Therefore the bug, if it is one, is that raw-mode support support has
been dropped in the latest QA6174 firmware checked into the
linux-firmware repo.

The question is: was this change intentional and if so, why was it needed?

Thanks in advance for your help,
Will Frew

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
