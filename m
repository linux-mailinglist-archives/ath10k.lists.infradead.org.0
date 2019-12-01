Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5321610E29A
	for <lists+ath10k@lfdr.de>; Sun,  1 Dec 2019 17:30:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bAuC6vbtX7UBy+p2LQB2JUneU2hB0B5Jcc/2JC50y+k=; b=nUi
	CCHoj5O1Hi3jl1Ws94UtpdLJJ+hyvd8npEeOr1HBXdqiOPscGB0R41fVaICVuLxZXQjZkXBCyS3MT
	GPYiuO+Gcm/j/Plq8fIgXfww4xlj7oFD2hRGvMHcNXHKviYIc/01nYMzoXRLLvc06EFcje/Wkbym2
	y7OlIDfpw8/twvFrXVN7GG8Zn5RxhzrJrciYNbux60WAou2BoH48d2oznHwbUFDxTvXOFdo2oKQ/D
	HynZ9Ytu6+zvuKJIN196yn9ubF3PsEYABJMSLmoQypI3ejDeAPZ58V6TOz1s/JysqPyOyoNTDekcY
	/R9GWnGFWbKgH8tTLY3AjQwl8bgfZdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibS7Y-000580-Ok; Sun, 01 Dec 2019 16:30:52 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibS7T-00057a-Nk
 for ath10k@lists.infradead.org; Sun, 01 Dec 2019 16:30:50 +0000
Received: by mail-oi1-x22c.google.com with SMTP id l20so30202708oie.10
 for <ath10k@lists.infradead.org>; Sun, 01 Dec 2019 08:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=p//s5ha6JDshH+ZR73MywKp/mnb4gDHcmGHV6Yb8UuI=;
 b=cx/XlKEeP/iKpbD1ox1Niyd4/fsxrbzHQ6w2zIRuQ/CihN/iin6Fw4k1Vw8yoPdgJp
 gq1lcVR6MxQl8XElhYgh6b22h8u1I0uK4hBCXxphmQBVobsELUa5wffpET9MmYSFUbGd
 iKuctJJXQ63fKhsHgPX03568M1vHAU2c7z4LzluVEySlgneHjkhXFIer9oZWiatzS9fl
 YNE89O9N8qcLBSKuFDu+YXklK2ETAGSagttK+zY9PaYJx/Ts0l7Txwmi6SG/2IcvAgbm
 6v3rAXf/M3yCZ1Oakg7DG0Y+M6dVj6XXBi+y2TcO3AeOKT15zRpD5Coupg5OjMhQckjK
 El0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=p//s5ha6JDshH+ZR73MywKp/mnb4gDHcmGHV6Yb8UuI=;
 b=UT11pp/xR8xzH/su7Xz9VorAxUjtH1fB7M00Qi5cWQxvNxWoGrLeZE6jgbBZ33aU6y
 Snv40m3VjD3Q1VEvCw1i/nfkz0QeJfKV77Of0S+bGK3R5FsbICm8UzjDpNaoGJ9d4MPc
 CTVzahjeFhXspcuStkNaARiswxQfmYYl2TsPmY8fKZgZjx5TyaRjQJT96ojDqxcRXPXH
 LEc/J15fpmVSvd269xQfwAaPszEf8fot7enSb2mRU6RTWLoo/d2JH7zgwLUcTctQ1Qm8
 4owmObIFuN8+my3hOWMa4KN9af6f+lACfLUKl2i0oBSHKKIwQfWrjfGWMaeknvz9b33u
 wlHg==
X-Gm-Message-State: APjAAAWKwpxMFCE5pR0KR/XeWXeTF6K8q4ClZ7bIZw3KscbTDMAT5oDa
 cnUcobEkasaXiq3JxOv43RI74CDTmquFCroJemtmQr9Qick=
X-Google-Smtp-Source: APXvYqzg1fk/F2kY9EUNu3ybmY/E9Rn3mgBk+VSznopSGnEj71iJxKAP5sO5sr7FSiywsxuoYAKnaYlERFtwMm2E+ew=
X-Received: by 2002:aca:b702:: with SMTP id h2mr13676926oif.145.1575217845426; 
 Sun, 01 Dec 2019 08:30:45 -0800 (PST)
MIME-Version: 1.0
From: Justin Capella <justincapella@gmail.com>
Date: Sun, 1 Dec 2019 08:30:32 -0800
Message-ID: <CAMrEMU8A49OwSPKN+YP7z5LYjiopNpEq-MdACBvkZi6W=vJO9Q@mail.gmail.com>
Subject: duplicate authentications / excessive missing ACKs / deauth due to
 inactivity timer
To: ath10k@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_083047_803535_5F7C7311 
X-CRM114-Status: UNSURE (   2.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Frequent deauth/disconnections of clients more recently,

My interpretation of the logs makes me think perhaps the clients are
authenticating multiple times, and there may be some inactive/unused
sessions that cause a timeout because of this.

I can enable more verbose/debug output and provide packet captures,
debugfs tracepoints... anything that might help.

Highlights:
Dec 01 05:50:41 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 05:50:41 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 05:50:41 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 05:50:41 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 04:57:57 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: deauthenticated due to inactivity (timer DEAUTH/REMOVE)
Dec 01 04:57:57 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: deauthenticated due to inactivity (timer DEAUTH/REMOVE)
Dec 01 04:57:27 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: disconnected due to excessive missing ACKs

[user@ap ~]$ pacman -Q linux-lts linux-firmware
linux-lts 4.19.84-1
linux-firmware 20190923.417a9c6-1

[user@ap ~]$ dmesg | grep ath10
[ 7.214732] ath10k_pci 0000:01:00.0: pci irq msi oper_irq_mode 2
irq_mode 0 reset_mode 0
[ 7.485097] ath10k_pci 0000:01:00.0: qca988x hw2.0 target 0x4100016c
chip_id 0x043202ff sub 0000:0000
[ 7.485103] ath10k_pci 0000:01:00.0: kconfig debug 1 debugfs 1 tracing
1 dfs 0 testmode 0
[ 7.485461] ath10k_pci 0000:01:00.0: firmware ver 10.2.4-1.0-00045 api
5 features no-p2p,raw-mode,mfp,allows-mesh-bcast crc32 ccbd5104
[ 7.528393] ath10k_pci 0000:01:00.0: board_file api 1 bmi_id N/A crc32 bebc7c08
[ 8.948544] ath10k_pci 0000:01:00.0: htt-ver 2.1 wmi-op 5 htt-op 2 cal
otp max-sta 128 raw 0 hwcrypto 1
[ 9.101248] ath10k_pci 0000:01:00.0 wlp1s0: renamed from wlan0
[ 12.610504] ath10k_pci 0000:01:00.0: pdev param 0 not supported by firmware
[ 17.516191] ath10k_pci 0000:01:00.0: pdev param 0 not supported by firmware

[user@ap ~]$ modinfo ath10k_pci
filename: /lib/modules/4.19.84-1-lts/kernel/drivers/net/wireless/ath/ath10k/ath10k_pci.ko.xz
firmware: ath10k/QCA9377/hw1.0/board.bin
firmware: ath10k/QCA9377/hw1.0/firmware-5.bin
firmware: ath10k/QCA9377/hw1.0/firmware-6.bin
firmware: ath10k/QCA6174/hw3.0/board-2.bin
firmware: ath10k/QCA6174/hw3.0/board.bin
firmware: ath10k/QCA6174/hw3.0/firmware-6.bin
firmware: ath10k/QCA6174/hw3.0/firmware-5.bin
firmware: ath10k/QCA6174/hw3.0/firmware-4.bin
firmware: ath10k/QCA6174/hw2.1/board-2.bin
firmware: ath10k/QCA6174/hw2.1/board.bin
firmware: ath10k/QCA6174/hw2.1/firmware-5.bin
firmware: ath10k/QCA6174/hw2.1/firmware-4.bin
firmware: ath10k/QCA9887/hw1.0/board-2.bin
firmware: ath10k/QCA9887/hw1.0/board.bin
firmware: ath10k/QCA9887/hw1.0/firmware-5.bin
firmware: ath10k/QCA988X/hw2.0/board-2.bin
firmware: ath10k/QCA988X/hw2.0/board.bin
firmware: ath10k/QCA988X/hw2.0/firmware-5.bin
firmware: ath10k/QCA988X/hw2.0/firmware-4.bin
firmware: ath10k/QCA988X/hw2.0/firmware-3.bin
firmware: ath10k/QCA988X/hw2.0/firmware-2.bin
license: Dual BSD/GPL
description: Driver support for Qualcomm Atheros 802.11ac WLAN PCIe/AHB devices
author: Qualcomm Atheros
srcversion: 9FE0E3C9ABD99335286A872
alias: pci:v0000168Cd00000050sv*sd*bc*sc*i*
alias: pci:v0000168Cd00000042sv*sd*bc*sc*i*
alias: pci:v0000168Cd00000046sv*sd*bc*sc*i*
alias: pci:v0000168Cd00000056sv*sd*bc*sc*i*
alias: pci:v0000168Cd00000040sv*sd*bc*sc*i*
alias: pci:v0000168Cd0000003Esv*sd*bc*sc*i*
alias: pci:v0000168Cd00000041sv*sd*bc*sc*i*
alias: pci:v0000168Cd0000003Csv*sd*bc*sc*i*
alias: pci:v00000777d000011ACsv*sd*bc*sc*i*
alias: of:N*T*Cqcom,ipq4019-wifiC*
alias: of:N*T*Cqcom,ipq4019-wifi
depends: ath10k_core
retpoline: Y
intree: Y
name: ath10k_pci
vermagic: 4.19.84-1-lts SMP mod_unload
sig_id: PKCS#7
signer: Build time autogenerated kernel key
sig_key: 51:6C:FF:48:E2:26:98:CC:24:DB:B4:41:9B:12:81:B3:7C:BC:86:FD
sig_hashalgo: sha512
signature: 21:22:D0:AC:13:AD:5E:65:0D:5D:3F:A3:16:5B:7E:D8:90:D3:AF:A9:
6F:A4:AE:B1:32:EF:9D:0F:FF:F8:76:43:B4:63:01:E9:DE:76:B8:CF:
B2:7B:AE:B4:A4:E9:EF:5F:72:6B:B6:96:B1:CC:45:E0:76:A0:AB:80:
A2:A6:0B:82:3D:CE:E2:7F:3B:BA:A9:61:3A:F1:1C:A5:66:A9:5E:1F:
AF:5C:BD:09:3F:27:5B:C8:82:53:3B:63:BB:80:92:A0:D8:85:D1:3A:
D2:CA:1D:C6:B0:E6:05:7E:05:5F:1E:32:0A:53:9E:2C:1B:84:CC:D9:
41:DD:98:D4:72:ED:9D:2D:A1:D3:5C:B8:C5:20:95:25:E6:39:FD:7A:
66:51:C4:FF:5D:A6:34:6B:F8:7A:12:25:0E:00:06:C4:9A:9D:7E:06:
28:D2:04:5C:4D:1B:D5:62:CA:F4:6A:24:82:22:C2:F3:76:8F:D9:FE:
73:16:0D:07:85:C0:7D:02:14:E7:8B:88:E3:CF:05:49:33:70:2E:9E:
62:93:9B:86:EE:56:73:B5:CB:D1:55:62:D5:3E:2C:72:0B:48:24:F8:
14:0B:EA:3A:37:FF:B1:9F:5E:5F:86:47:7F:6A:55:08:15:39:6C:FF:
4F:04:DB:7B:D7:0B:C6:BF:ED:CD:E4:29:8A:D5:AB:8A:E2:8B:10:78:
C7:F4:CF:1B:E8:1F:A1:20:B2:45:54:3D:17:BD:2F:BB:82:70:F8:EA:
B9:51:10:87:5C:AA:4D:FD:88:30:A7:76:72:8A:AC:3C:1E:96:6D:F5:
09:13:8D:8E:CE:F9:05:15:61:CB:95:6D:69:5E:F5:AF:56:CA:E9:AD:
99:B4:85:76:D1:1B:93:2F:A9:EC:B6:36:84:C8:59:3D:D7:A3:1D:73:
AF:E1:F0:04:60:1D:15:65:DA:62:6E:8C:3A:87:45:1D:B2:9E:F1:6E:
E1:0A:53:93:E7:96:41:D2:B8:3F:74:06:A6:8A:A2:B8:8E:6B:CC:04:
E9:17:75:D5:63:D2:3B:BA:19:87:BF:0D:5B:87:A5:67:42:BA:30:0E:
0A:00:F8:DF:C2:78:A7:52:8E:01:FD:01:3B:0E:43:70:7E:21:38:8D:
0D:E5:4E:1C:F5:8E:D9:C9:5D:3A:F3:C2:D3:FC:07:98:7C:EF:FE:94:
C9:F3:FA:AB:5F:6D:C1:24:7E:17:98:0F:A6:96:41:8D:C4:15:EA:D8:
66:C7:CC:41:62:4C:64:3A:BB:98:B5:31:54:57:92:6A:03:32:E5:B6:
25:8B:BD:E7:01:E4:5A:08:58:E1:F6:2B:B6:A3:8B:66:AF:0E:7A:5F:
14:90:AF:7F:F7:9C:8C:47:5F:5F:DB:E6
parm: irq_mode:0: auto, 1: legacy, 2: msi (default: 0) (uint)
parm: reset_mode:0: auto, 1: warm only (default: 0) (uint)

[user@ap ~]$ journalctl -b -0 -u hostapd@wlp1s0 -r | sed -r -e
's/([a-f0-9]{2}):([a-f0-9]{2}:){4,}/\1:XX:XX:XX:XX:/gi' -e
's/internet/ssid/g' -e 's/([A-F0-9]{2})[A-F0-9]{14}/\1XXXXXXXXXXX/g'
-e 's/ ap hostapd/ hostname hostapd/g' -e 's/wlp1s0/wlan0/g' | grep
"Dec 01"
Dec 01 11:51:59 hostname hostapd[322]: wlan0: STA 48:XX:XX:XX:XX:23
WPA: pairwise key handshake completed (RSN)
Dec 01 11:51:59 hostname hostapd[322]: wlan0: STA 48:XX:XX:XX:XX:23
RADIUS: starting accounting session 39XXXXXXXXXXX
Dec 01 11:51:59 hostname hostapd[322]: wlan0: STA 48:XX:XX:XX:XX:23
WPA: pairwise key handshake completed (RSN)
Dec 01 11:51:59 hostname hostapd[322]: wlan0: STA 48:XX:XX:XX:XX:23
RADIUS: starting accounting session 39XXXXXXXXXXX
Dec 01 11:51:59 hostname hostapd[322]: wlan0: AP-STA-CONNECTED 48:XX:XX:XX:XX:23
Dec 01 11:51:58 hostname hostapd[322]: wlan0: STA 48:XX:XX:XX:XX:23
IEEE 802.11: associated (aid 5)
Dec 01 11:51:58 hostname hostapd[322]: wlan0: STA 48:XX:XX:XX:XX:23
IEEE 802.11: authenticated
Dec 01 11:51:58 hostname hostapd[322]: wlan0: STA 48:XX:XX:XX:XX:23
IEEE 802.11: associated (aid 5)
Dec 01 11:51:58 hostname hostapd[322]: wlan0: STA 48:XX:XX:XX:XX:23
IEEE 802.11: authenticated
Dec 01 11:51:37 hostname hostapd[322]: wlan0: AP-STA-DISCONNECTED
48:XX:XX:XX:XX:23
Dec 01 05:50:41 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 05:50:41 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session 8AXXXXXXXXXXX
Dec 01 05:50:41 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 05:50:41 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session 8AXXXXXXXXXXX
Dec 01 05:50:41 hostname hostapd[322]: wlan0: AP-STA-CONNECTED 10:XX:XX:XX:XX:30
Dec 01 05:50:41 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 05:50:41 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 05:50:41 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 05:50:41 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 04:57:57 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: deauthenticated due to inactivity (timer DEAUTH/REMOVE)
Dec 01 04:57:57 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: deauthenticated due to inactivity (timer DEAUTH/REMOVE)
Dec 01 04:57:27 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: disconnected due to excessive missing ACKs
Dec 01 04:57:27 hostname hostapd[322]: wlan0: AP-STA-DISCONNECTED
10:XX:XX:XX:XX:30
Dec 01 04:57:27 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: disconnected due to excessive missing ACKs
Dec 01 04:34:50 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 04:34:50 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session 1CXXXXXXXXXXX
Dec 01 04:34:50 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 04:34:50 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session 1CXXXXXXXXXXX
Dec 01 04:34:50 hostname hostapd[322]: wlan0: AP-STA-CONNECTED 10:XX:XX:XX:XX:30
Dec 01 04:34:50 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 04:34:50 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 04:34:50 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 04:34:50 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 04:21:01 hostname hostapd[322]: wlan0: AP-STA-DISCONNECTED
10:XX:XX:XX:XX:30
Dec 01 04:19:55 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 04:19:55 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session F8XXXXXXXXXXX
Dec 01 04:19:55 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 04:19:55 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session F8XXXXXXXXXXX
Dec 01 04:19:55 hostname hostapd[322]: wlan0: AP-STA-CONNECTED 10:XX:XX:XX:XX:30
Dec 01 04:19:55 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 04:19:55 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 04:19:55 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 04:19:55 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 04:19:52 hostname hostapd[322]: wlan0: AP-STA-DISCONNECTED
10:XX:XX:XX:XX:30
Dec 01 03:30:20 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 03:30:20 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session 8EXXXXXXXXXXX
Dec 01 03:30:20 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 03:30:20 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session 8EXXXXXXXXXXX
Dec 01 03:30:20 hostname hostapd[322]: wlan0: AP-STA-CONNECTED 10:XX:XX:XX:XX:30
Dec 01 03:30:20 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 03:30:20 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 03:30:20 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 03:30:20 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 03:29:57 hostname hostapd[322]: wlan0: AP-STA-DISCONNECTED
10:XX:XX:XX:XX:30
Dec 01 02:53:18 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 02:53:18 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session 88XXXXXXXXXXX
Dec 01 02:53:18 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 02:53:18 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session 88XXXXXXXXXXX
Dec 01 02:53:18 hostname hostapd[322]: wlan0: AP-STA-CONNECTED 10:XX:XX:XX:XX:30
Dec 01 02:53:17 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 02:53:17 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 02:53:17 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 02:53:17 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 02:52:55 hostname hostapd[322]: wlan0: AP-STA-DISCONNECTED
10:XX:XX:XX:XX:30
Dec 01 01:15:22 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 01:15:22 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session 93XXXXXXXXXXX
Dec 01 01:15:22 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 01:15:22 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session 93XXXXXXXXXXX
Dec 01 01:15:22 hostname hostapd[322]: wlan0: AP-STA-CONNECTED 10:XX:XX:XX:XX:30
Dec 01 01:15:22 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 01:15:22 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 01:15:22 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 01:15:22 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 00:14:34 hostname hostapd[322]: wlan0: AP-STA-DISCONNECTED
10:XX:XX:XX:XX:30
Dec 01 00:04:59 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 00:04:59 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session 25XXXXXXXXXXX
Dec 01 00:04:59 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
WPA: pairwise key handshake completed (RSN)
Dec 01 00:04:59 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
RADIUS: starting accounting session 25XXXXXXXXXXX
Dec 01 00:04:59 hostname hostapd[322]: wlan0: AP-STA-CONNECTED 10:XX:XX:XX:XX:30
Dec 01 00:04:59 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 00:04:59 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: associated (aid 6)
Dec 01 00:04:59 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 00:04:59 hostname hostapd[322]: wlan0: STA 10:XX:XX:XX:XX:30
IEEE 802.11: authenticated
Dec 01 00:04:58 hostname hostapd[322]: wlan0: AP-STA-DISCONNECTED
10:XX:XX:XX:XX:30


A particularly noise event:

Nov 27 22:22:36 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
WPA: pairwise key handshake completed (RSN)
Nov 27 22:22:36 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
RADIUS: starting accounting session 0BXXXXXXXXXXX
Nov 27 22:22:36 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
WPA: pairwise key handshake completed (RSN)
Nov 27 22:22:36 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
RADIUS: starting accounting session 0BXXXXXXXXXXX
Nov 27 22:22:36 hostname hostapd[322]: wlan0: AP-STA-CONNECTED 18:XX:XX:XX:XX:be
Nov 27 22:22:35 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: associated (aid 2)
Nov 27 22:22:35 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: associated (aid 2)
Nov 27 22:22:35 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: authenticated
Nov 27 22:22:35 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: authenticated
Nov 27 22:22:35 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:35 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:35 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:35 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:35 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:35 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:25 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:25 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:25 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:25 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:25 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: deauthenticated due to inactivity (timer DEAUTH/REMOVE)
Nov 27 22:22:25 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: deauthenticated due to inactivity (timer DEAUTH/REMOVE)
Nov 27 22:22:24 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:24 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:24 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:24 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:24 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:24 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:24 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:24 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:24 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:24 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:24 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:24 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:20 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:20 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:20 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: authenticated
Nov 27 22:22:20 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: authenticated
Nov 27 22:22:20 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: authenticated
Nov 27 22:22:20 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: authenticated
Nov 27 22:22:20 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:20 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:20 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:20 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:19 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:19 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:19 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:19 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:19 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:19 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:15 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:15 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:15 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:15 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:15 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:15 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:15 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:15 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:15 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:15 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:15 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: authenticated
Nov 27 22:22:15 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: authenticated
Nov 27 22:22:14 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:14 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: did not acknowledge authentication response
Nov 27 22:22:14 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: authenticated
Nov 27 22:22:14 hostname hostapd[322]: wlan0: STA 18:XX:XX:XX:XX:be
IEEE 802.11: authenticated
Nov 27 22:22:14 hostname hostapd[322]: wlan0: AP-STA-DISCONNECTED
18:XX:XX:XX:XX:be

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
