Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3241D2BC9C
	for <lists+ath10k@lfdr.de>; Tue, 28 May 2019 02:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5kA2rOXFk5RPvg/ItL7lGz3aLOIYdH6LMST6djuXCg0=; b=lmM
	Lp3VJJekDc/tMDinAMgrUh/Kb8semArthTB5U12VKnrUo3E6l6Zv+xvQC8DK2TetpVlPYtYy2DKGj
	ber3LZniUBg+GoR4yvvIj81OEYaZSfkTguB2l3zGHzbTl3Kv7JXsRa70eKcd6i59TRU7+MYoNtR8B
	XD+qdBN+Luwg6tIQw+tN245YKNgKfkn5Pcf4MF0RPogqDyADINCAl3/GoGzgTuk/KyZAEbUHK70Fo
	JvlC/KFBdRGPzUI+DMwbHoO+hc4LOHExbqRYzAk9iP6lXVevJq7KLgvkANPM4VQL980aeIYlXebYs
	J3Fc6FcqO1sjBiouOudHUJDePzGeflw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVQOQ-0006US-9w; Tue, 28 May 2019 00:55:06 +0000
Received: from mail-ua1-x932.google.com ([2607:f8b0:4864:20::932])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVQOJ-0005sm-Rt
 for ath10k@lists.infradead.org; Tue, 28 May 2019 00:55:02 +0000
Received: by mail-ua1-x932.google.com with SMTP id n7so7165543uap.12
 for <ath10k@lists.infradead.org>; Mon, 27 May 2019 17:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=8mT5xZ19Oj9QkOex61gxzw/u6d18CzLfSm7g/KYiapI=;
 b=gBA2x70ilhS+NzbF78v0PdkW+br0CLJTRLvIWGeWXapX/e20vIPQpy3gXGLUHHobcA
 4ZOMG5ozawNX5XoLIgu2Y+zEeWrRujwfw5Ux6VQeybe+XO6Xq7QhWYXex5vbvdrFde9o
 BAb+hao2xTIo8h+YrvMIdLKILYEra+jImtpDI43R+AQrspOQhSHNiCh89/fZbUNxAyrd
 3RHO9LXwuuxIQ7R3IueMWGu8n9jJaI9gFoBhuJ592AEkXoFxyK8I8QWuq1uVgmo++YN0
 iSf3AZUJntPB5dmKMDTGr/PzwLgvBKBumZkqmulNTltcXldPwhAP4/MQSA7cJfCbd/M7
 k4KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8mT5xZ19Oj9QkOex61gxzw/u6d18CzLfSm7g/KYiapI=;
 b=GlQths+Mn/ZMsWy8F/w/2hLv6Z0jBzngJvdfd57sfrCfLQXr/dlHaA7EFVr1NZvDU3
 Aue2k5NrNCV2DeX5nekLhaM7xhInk+hmVlRUFakOzX1mrO4c0uU3O5sqHfiPdbGaMu8M
 rOWkE2Ttod1ZvRBsPrCV3vxitrFmLogR9bzq3l8m1FGej2o1mBYLagT6VX3HS83SVH0G
 HKF7gC5XO3GqTmbV3uiKA2vKvN0GrW/hvwOSsF2gzz91aF5i6C/DvXsb7TQkpwg6tlH7
 LuNEOv1Ef5/l3Xp+4xRNEtz05MtFpKaGQM9Qa3xioMKKRUa4WUbf4QjVBD+IbCsBuBpX
 zuQg==
X-Gm-Message-State: APjAAAWYONJuV+s4Tm2VauhZeRYeYMv+XakDPXdmCncgs6yPVIo27CWA
 519US7XdDQmoBwdZAIhkH7ZA824seLa6t/Wictzfy0Rb
X-Google-Smtp-Source: APXvYqy4N7bbaAVXsRHtgfEtMWrsVGGZ5BMWtELqkKC91MOuhWUoWlPy2bjliIu8h4wtWlYCV/AmlWnrXd41CgvWWSg=
X-Received: by 2002:ab0:6613:: with SMTP id r19mr1531529uam.131.1559004898212; 
 Mon, 27 May 2019 17:54:58 -0700 (PDT)
MIME-Version: 1.0
From: Vjaceslavs Klimovs <vklimovs@gmail.com>
Date: Mon, 27 May 2019 17:54:47 -0700
Message-ID: <CAC_j7i3ZAcfaQ-on5mXTKxd--erzCChKhEEU_6Yk+j2w57PeVg@mail.gmail.com>
Subject: ath10k panic with 5.1 kernel and qca9984 on association
To: ath10k@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_175459_898957_00E2E16C 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:932 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vklimovs[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Hi,
With 5.1 and head kernel, machine running as AP with qca9984 locks up
without being able to complete stack trace to console after a client
tries to associate with it. Following are (OCR transcribed) error
messages:

[ 177.161539] BUG: unable to handle kernel paging request at fffffffffffff7bo
[ 177.161553] #PF error: (normal kernel read fault)
[ 177.161561] PGD 703812067 P4D 703812067 PUD 20381406 PMD 0
[ 177.161571] Oops: 0000 (#1) SMP PTI
[ 177.161577] CPU: 6 PID: 0 Comm: swapper/6 Tainted: G OE 5.1.3-gentoo #1

[Garbage on screen after that point]

and

[67.805490] RBP: ffff9c4c57983d 18 R08: 0000000000000000 R09:
0000000000000000 [67.805501] R10: 0000000000000002 R11:
0000000000000000 R12: 0000000000000001 [67.805512] R13:
0000000000000000 R14: 0000000000060002 R15: 0000000000000000
[67.805523] FS: 000000000000000000000) GS:ffff9c4c57980000 (0000)
knIGS:000000000 [67.805535] CS: 0010 DS: 0000 ES: 0000 CRO:
0000000080050033
[67.805544] CR2: fffffffffffff7b0 CR3: 00000005f7e0e006 CR4: 00000000003606e0
[67.805555] DRO: 0000000000000000 DR1: 0000000000000000 DR2:
0000000000000000 [67.805566] DR3: 0000000000000000 DR6:
00000000fffeoffO DR7: 0000000000000400 [67.805577] Call Trace:
[67.805582] <IRQ>
[67.805592] ath10k_htt_t2h_msg_handler+0xbda/0xf80 [ath10k_core]
[67.805603] ? _raw_spin_unlock_bh+0xie/0x20
[67.805614] ? ath1ok_ce_per_engine_service+0xf1/0x100 [ath10k_corel
[67.805626] ath10k_pci_htt_rx_cb+0x172/0x260 [ath10k_pci]
[67.8056391] ath10k_ce_per_engine_service+0x9e/0x100 [ath10k_core)

[Garbage on screen after that point]

The issue does not reproduce on 5.0.17 but is reliably reproducible in
5.1+ by just trying to associate to that AP. So I thought I'd run git
bisect. After bisecting,

6ddc3860a5668808bacbfcb1f1bf50d5d7ad1956, ath10k: add support for ack
rssi value of data tx packets

is the first commit that triggers the problem. Reverting that commit
from head or from 5.1.5 reliably makes everything work as expected.

Device parameters and FW are as follows:

[    4.502988] ath10k_pci 0000:0a:00.0: enabling device (0000 -> 0002)
[    4.503324] ath10k_pci 0000:0a:00.0: pci irq msi oper_irq_mode 2
irq_mode 0 reset_mode 0
[    4.615989] ath10k_pci 0000:0a:00.0: qca9984/qca9994 hw1.0 target
0x01000000 chip_id 0x00000000 sub 168c:cafe
[    4.615990] ath10k_pci 0000:0a:00.0: kconfig debug 0 debugfs 1
tracing 1 dfs 1 testmode 0
[    4.616269] ath10k_pci 0000:0a:00.0: firmware ver
10.4-3.9.0.2-00021 api 5 features
no-p2p,mfp,peer-flow-ctrl,btcoex-param,allows-mesh-bcast,no-ps crc32
9626782c
[    5.845294] ath10k_pci 0000:0a:00.0: board_file api 2 bmi_id 0:1
crc32 cf58c3bc
[    8.390524] ath10k_pci 0000:0a:00.0: unsupported HTC service id: 1536
[    8.503161] ath10k_pci 0000:0a:00.0: htt-ver 2.2 wmi-op 6 htt-op 4
cal otp max-sta 512 raw 0 hwcrypto 1

I also tried with firmware-5.bin_10.4-3.9.0.2-00044, same results.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
