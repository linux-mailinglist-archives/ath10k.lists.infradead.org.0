Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CD9128063
	for <lists+ath10k@lfdr.de>; Fri, 20 Dec 2019 17:11:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vh5bUhn44TA5EUA7Tto7rDIxnOqfSjyYHRSQbEh50x0=; b=eJaga4WrNBnBYb
	j9IxODCwmVv/+ta1wgFGDoXuMHUSr7YOYm5BzQYZXVlfesPQCXnY/Pbx2qWP+PxFAcct+0TeuzcU1
	bSzf/CWyGCLeNglIrGZfaqSnenBVxQoaQpm7UiL3vu2ZQQon8b1GxNfcpNCk/8UmcI/4nvKU0vGqt
	whGrUpUS+Rpf0PCsMpXT6x9qgJPmkNEDvpH9SBnqB4HtGJaSqiB7ksG7vGMHZOeZVjQgmj5rhc1k0
	rTL25mGVScE3vbXlCkWIvucWL8bEmu+cu7SSbET06bYet6EzMYAzNe6rGR9tYeakYLnVBHpPapNSe
	u3St0TCN5uOmKr1vV0Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKrt-0006sL-4l; Fri, 20 Dec 2019 16:11:09 +0000
Received: from mout-p-201.mailbox.org ([80.241.56.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKrn-0006ro-4K
 for ath10k@lists.infradead.org; Fri, 20 Dec 2019 16:11:06 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 47fYdD1P1WzQl8v;
 Fri, 20 Dec 2019 17:10:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
 content-language:content-transfer-encoding:content-type
 :content-type:mime-version:date:date:message-id:subject:subject
 :from:from:received; s=mail20150812; t=1576858252; bh=tX1JBqH6n/
 O/Ll7xficMYDybDRf62MJI9n61yQJfsso=; b=vfLfVP2p8JLfv3NeUk1m7zVBiN
 ZuEkixfYV5JMt9Ghd0puml/uNOkXRC6uHOM9zTecuKZLjCud247bSqKjtu8Q10qh
 EpvK7GeyO1e2o/LPUgEgClfryloytQ0ImKUVl0blbmSHP7cVkXYLtmh34eZkA5YF
 jsxKPp3Hk1yky0qkndudnWF7XFiFB/9DgXgjfSZ+tkF6huLLrLaPFnfoC16pRGIH
 YR4fGuQ8x2EU/4ZReAv9tVue0GkXZsWeRQ9t7eL+cUfLADAu9S71EDgNNHxYYUww
 VTtgytp3wvEcX77n05uNCOgzmMQn6SQTbNxCTZGhnABy7GkuKu09tdd2ESjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org;
 s=mail20150812; t=1576858253;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=V1W8tRiIfI/+JlyayIfL0inYG+avdHlwA3MAVUeG91k=;
 b=evG6DPtNk30ZdiH2dxaE1+gnU8kpM5qSkxsJpTlVqk/Cov7OYrajK352U93KEtiIzCuufF
 utkXn4X8Ep/2zWfAbBYgZnOjYGIWG3Ox+XGdkVYlv2RrL8zHP0DkkvG4tdL84T3lXI+wAZ
 HVG7OXwy4604sPO/YjcygOn6Pcs27zNtAFQksh0JRq+uYnIuwfEXdZfAJNYjNcBiDGNOzm
 pMSJIzmapyYfGK6YSgjurnj++dyED+AVVd0l8xmIXyDSr4BYYRBYGVxAMiEnyM49BhHkti
 /tcS+Gof/yamxzesgDeyWQJRz+DbvYzk1BmJFjckY2bF46Ys14KLtWzIJU6fsA==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id mkoOFs_nIMF3; Fri, 20 Dec 2019 17:10:52 +0100 (CET)
From: wurstsemmel@mailbox.org
Subject: WiFi unstable in 5 GHz band
To: will.frew1@gmail.com, ath10k@lists.infradead.org
Message-ID: <1e419f53-edcd-25f8-727c-c424abc67220@mailbox.org>
Date: Fri, 20 Dec 2019 17:10:51 +0100
MIME-Version: 1.0
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_081103_641023_A63F03A3 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Dear All, Dear Will,

(Will, I copy you as I learned from one of your E-Mails that you own a 
Dell XPS 13. Do you have issues with 5 GHz?)

Issue: WiFi freezes roughly every 5 to 30 min in Fedora 31. It is stable 
in Windows 10 (Dual-Boot). Clicking on the WiFi-Network in Gnome 
Settings restores the connection. After waiting for ~5 min the 
connection re-establishes itself. After disabling 5 GHz in the 
Connect-Box (my Cable Router) the connection is stable in Fedora 31.

How reproducible: Always, however the time until WiFi-freeze varies. 
Having other devices located close seem to make the connection less stable.

Actual Result: WiFi is stable on 2.4 GHz band and unstable on 5 GHz band

Expected Result: WiFi is stable on 2.4 GHz and 5 GHz bands

Steps to Reproduce: Surf the web using Firefox. When the connection 
freezes, the WiFi Icon in the top right corner remains the same and 
changes to a question mark after some time. After 5 min the connection 
re-establishes.

Workaround: Assign separate SSIDs for 2.4 GHz and 5 GHz bands and 
connect the laptop to the 2.4 GHz SSID. When connected to the 5 GHz SSID 
the connection drops again.

Hardware: Dell XPS 13 (9380) with Killer Wireless-AC 1435

OS: Fedora 31 Dual-Boot with Windows 10. The laptop came pre-installed 
with Windows 10.

Driver: firmware-6.bin_WLAN.RM.4.4.1-00140-QCARMSWPZ-1 (Fedora Offical 
Repo) or firmware-6.bin_WLAN.RM.4.4.1.c3-00059 (github.com/kvalo)

Regdomain: I live in Germany, country code "DE". The EEPROM is not 
adjusting to "DE" when connected to my Cable Router, but adjusts to "DE" 
if connected to my phone hotspot.

Cable Router: Compal Connect-Box (Liberty Global, UPC, Unitymedia, 
Software-Version: CH7465LG-NCIP-6.12.18.25-2p6-NOSH). Same SSID assigned 
to 2.4 GHz and 5 GHz band, WPA2, autochannel, channel optimization is on 
(and cannot be disabled). In thread [1] two users report similar issues 
with Virgin Media Hub 3.0, which seems to be same router as my 
Connect-Box [2], [3].

Is this a (known) bug in ath10k or is my Cable Router the culprit? Note 
that it works under Windows 10 with 5 GHz. Any help, e.g. how to get 
better logs to assign the cause to the cable router is appreciated as I 
can contact my ISP with this information and hopefully get a firmware 
update for the router one day (or a new router). I am aware of thread 
[4], but from my logs I cannot see anything hinting into the direction 
that NetworkManager or Power Saving is the cause.

Thank you and kind regards / happy holidays,

Claudio

References:
[1] - https://forums.linuxmint.com/viewtopic.php?f=53&t=303024
[2] - 
https://www.unitymedia.de/content/dam/unitymedia-de/assets-de/pdf/Connect-Box-Interaktives-Benutzerhandbuch.pdf 

[3] - 
https://www.virginmedia.com/help/virgin-media-configure-advanced-settings-on-your-hub#hub3 

[4] - 
https://forum.manjaro.org/t/qca6174-atheros-wifi-suspend-and-many-other-issues-lenovo-miix-520/79713/38 


Note to the logs: I noticed that WiFi did not work at 22:20 h. 
Connection re-established itself roughly at 22:25 h. All logs copied at 
22:27 h. Afterwards WiFi remained active until 22:48 h, then stopped again.

Logs:

$ uname -r
5.3.12-300.fc31.x86_64 ; also happens with 5.3.16 and all updates applied

$ lspci-k
[...]
02:00.0 Network controller: Qualcomm Atheros QCA6174 802.11ac Wireless 
Network Adapter (rev 32)
Subsystem: Bigfoot Networks, Inc. Killer 1435 Wireless-AC
Kernel driver in use: ath10k_pci
Kernel modules: ath10k_pci
[...]


Laptop connected to Cable Router (Compal Connect-Box):

$ journalctl -u NetworkManager -f
-- Logs begin at Fri 2019-09-20 22:00:06 CEST. --
Nov 28 22:10:24 localhost.localdomain NetworkManager[1314]: <info> 
[1574975424.8456] device (wlp2s0): state change: secondaries -> 
activated (reason 'none', sys-iface-state: 'managed')
Nov 28 22:10:24 localhost.localdomain NetworkManager[1314]: <info> 
[1574975424.8468] manager: NetworkManager state is now CONNECTED_LOCAL
Nov 28 22:10:24 localhost.localdomain NetworkManager[1314]: <info> 
[1574975424.8528] manager: NetworkManager state is now CONNECTED_SITE
Nov 28 22:10:24 localhost.localdomain NetworkManager[1314]: <info> 
[1574975424.8531] policy: set '[redacted]' (wlp2s0) as default for IPv4 
routing and DNS
Nov 28 22:10:24 localhost.localdomain NetworkManager[1314]: <info> 
[1574975424.8711] device (wlp2s0): Activation: successful, device 
activated.
Nov 28 22:10:24 localhost.localdomain NetworkManager[1314]: <info> 
[1574975424.8762] manager: startup complete
Nov 28 22:10:25 localhost.localdomain NetworkManager[1314]: <info> 
[1574975425.1769] manager: NetworkManager state is now CONNECTED_GLOBAL
Nov 28 22:10:26 localhost.localdomain NetworkManager[1314]: <info> 
[1574975426.4717] dhcp6 (wlp2s0): activation: beginning transaction 
(timeout in 45 seconds)
Nov 28 22:10:26 localhost.localdomain NetworkManager[1314]: <info> 
[1574975426.4737] policy: set '[redacted]' (wlp2s0) as default for IPv6 
routing and DNS
Nov 28 22:10:26 localhost.localdomain NetworkManager[1314]: <info> 
[1574975426.5053] dhcp6 (wlp2s0): state changed unknown -> bound
Nov 28 22:21:26 localhost.localdomain NetworkManager[1314]: <info> 
[1574976086.9333] manager: NetworkManager state is now CONNECTED_SITE
Nov 28 22:25:42 localhost.localdomain NetworkManager[1314]: <warn> 
[1574976342.9519] sup-iface[0x5564ee776900,wlp2s0]: connection 
disconnected (reason 4)
Nov 28 22:25:42 localhost.localdomain NetworkManager[1314]: <info> 
[1574976342.9674] device (wlp2s0): supplicant interface state: completed 
-> authenticating
Nov 28 22:25:42 localhost.localdomain NetworkManager[1314]: <info> 
[1574976342.9674] device (p2p-dev-wlp2s0): supplicant management 
interface state: completed -> authenticating
Nov 28 22:25:43 localhost.localdomain NetworkManager[1314]: <info> 
[1574976343.1790] device (wlp2s0): supplicant interface state: 
authenticating -> associating
Nov 28 22:25:43 localhost.localdomain NetworkManager[1314]: <info> 
[1574976343.1791] device (p2p-dev-wlp2s0): supplicant management 
interface state: authenticating -> associating
Nov 28 22:25:43 localhost.localdomain NetworkManager[1314]: <info> 
[1574976343.2328] device (wlp2s0): supplicant interface state: 
associating -> associated
Nov 28 22:25:43 localhost.localdomain NetworkManager[1314]: <info> 
[1574976343.2329] device (p2p-dev-wlp2s0): supplicant management 
interface state: associating -> associated
Nov 28 22:25:43 localhost.localdomain NetworkManager[1314]: <info> 
[1574976343.2537] device (wlp2s0): supplicant interface state: 
associated -> 4-way handshake
Nov 28 22:25:43 localhost.localdomain NetworkManager[1314]: <info> 
[1574976343.2538] device (p2p-dev-wlp2s0): supplicant management 
interface state: associated -> 4-way handshake
Nov 28 22:25:43 localhost.localdomain NetworkManager[1314]: <info> 
[1574976343.2618] device (wlp2s0): supplicant interface state: 4-way 
handshake -> completed
Nov 28 22:25:43 localhost.localdomain NetworkManager[1314]: <info> 
[1574976343.2628] device (p2p-dev-wlp2s0): supplicant management 
interface state: 4-way handshake -> completed
Nov 28 22:25:47 localhost.localdomain NetworkManager[1314]: <info> 
[1574976347.1176] manager: NetworkManager state is now CONNECTED_GLOBAL


$ journalctl -u wpa_supplicant -f
-- Logs begin at Fri 2019-09-20 22:00:06 CEST. --
Nov 28 22:10:15 localhost.localdomain systemd[1]: Started WPA supplicant.
Nov 28 22:10:16 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-REGDOM-CHANGE init=BEACON_HINT type=UNKNOWN
Nov 28 22:10:16 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-REGDOM-CHANGE init=BEACON_HINT type=UNKNOWN
Nov 28 22:10:24 localhost.localdomain wpa_supplicant[1404]: wlp2s0: SME: 
Trying to authenticate with 54:67:51:08:a2:e2 (SSID='[redacted]' 
freq=5200 MHz)
Nov 28 22:10:24 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
Trying to associate with 54:67:51:08:a2:e2 (SSID='[redacted]' freq=5200 
MHz)
Nov 28 22:10:24 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
Associated with 54:67:51:08:a2:e2
Nov 28 22:10:24 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-SUBNET-STATUS-UPDATE status=0
Nov 28 22:10:24 localhost.localdomain wpa_supplicant[1404]: wlp2s0: WPA: 
Key negotiation completed with 54:67:51:08:a2:e2 [PTK=CCMP GTK=CCMP]
Nov 28 22:10:24 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-CONNECTED - Connection to 54:67:51:08:a2:e2 completed [id=0 
id_str=]
Nov 28 22:10:24 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-SIGNAL-CHANGE above=1 signal=-34 noise=-96 txrate=6000
Nov 28 22:25:42 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-DISCONNECTED bssid=54:67:51:08:a2:e2 reason=4
Nov 28 22:25:42 localhost.localdomain wpa_supplicant[1404]: dbus: 
wpa_dbus_property_changed: no property SessionLength in object 
/fi/w1/wpa_supplicant1/Interfaces/0
Nov 28 22:25:42 localhost.localdomain wpa_supplicant[1404]: wlp2s0: SME: 
Trying to authenticate with 54:67:51:08:a2:e2 (SSID='[redacted]' 
freq=5200 MHz)
Nov 28 22:25:42 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-REGDOM-CHANGE init=CORE type=WORLD
Nov 28 22:25:42 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-REGDOM-CHANGE init=USER type=COUNTRY alpha2=DE
Nov 28 22:25:42 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-REGDOM-CHANGE init=BEACON_HINT type=UNKNOWN
Nov 28 22:25:43 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
Trying to associate with 54:67:51:08:a2:e2 (SSID='[redacted]' freq=5200 
MHz)
Nov 28 22:25:43 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
Associated with 54:67:51:08:a2:e2
Nov 28 22:25:43 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-SUBNET-STATUS-UPDATE status=0
Nov 28 22:25:43 localhost.localdomain wpa_supplicant[1404]: wlp2s0: WPA: 
Key negotiation completed with 54:67:51:08:a2:e2 [PTK=CCMP GTK=CCMP]
Nov 28 22:25:43 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-CONNECTED - Connection to 54:67:51:08:a2:e2 completed [id=0 
id_str=]
Nov 28 22:25:43 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-SIGNAL-CHANGE above=1 signal=-33 noise=-98 txrate=6000
Nov 28 22:25:48 localhost.localdomain wpa_supplicant[1404]: wlp2s0: 
CTRL-EVENT-REGDOM-CHANGE init=BEACON_HINT type=UNKNOWN


$ dmesg | grep ath
[...]
[ 12.594793] ath10k_pci 0000:02:00.0: DMAR: 32bit DMA uses non-identity 
mapping
[ 12.595137] ath10k_pci 0000:02:00.0: enabling device (0000 -> 0002)
[ 12.598586] ath10k_pci 0000:02:00.0: pci irq msi oper_irq_mode 2 
irq_mode 0 reset_mode 0
[ 12.806922] ath10k_pci 0000:02:00.0: qca6174 hw3.2 target 0x05030000 
chip_id 0x00340aff sub 1a56:143a
[ 12.806925] ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 1 tracing 
0 dfs 0 testmode 0
[ 12.807504] ath10k_pci 0000:02:00.0: firmware ver 
WLAN.RM.4.4.1-00140-QCARMSWPZ-1 api 6 features wowlan,ignore-otp,mfp 
crc32 29eb8ca1
[ 12.873154] ath10k_pci 0000:02:00.0: board_file api 2 bmi_id N/A crc32 
4ed3569e
[ 12.947282] ath10k_pci 0000:02:00.0: unsupported HTC service id: 1536
[ 12.966761] ath10k_pci 0000:02:00.0: htt-ver 3.60 wmi-op 4 htt-op 3 cal 
otp max-sta 32 raw 0 hwcrypto 1
[ 13.032481] ath: EEPROM regdomain: 0x6c
[ 13.032482] ath: EEPROM indicates we should expect a direct regpair map
[ 13.032483] ath: Country alpha2 being used: 00
[ 13.032483] ath: Regpair used: 0x6c
[ 13.041064] ath10k_pci 0000:02:00.0 wlp2s0: renamed from wlan0
[ 14.442031] ath10k_pci 0000:02:00.0: unsupported HTC service id: 1536
[ 14.744927] ath10k_pci 0000:02:00.0: unsupported HTC service id: 1536


$ dmesg | grep wlp2s0
[ 13.041064] ath10k_pci 0000:02:00.0 wlp2s0: renamed from wlan0
[ 24.343996] wlp2s0: authenticate with 54:67:51:08:a2:e2
[ 24.389059] wlp2s0: send auth to 54:67:51:08:a2:e2 (try 1/3)
[ 24.409669] wlp2s0: authenticated
[ 24.410289] wlp2s0: associate with 54:67:51:08:a2:e2 (try 1/3)
[ 24.455574] wlp2s0: RX AssocResp from 54:67:51:08:a2:e2 (capab=0x1511 
status=0 aid=2)
[ 24.458179] wlp2s0: associated
[ 24.525049] IPv6: ADDRCONF(NETDEV_CHANGE): wlp2s0: link becomes ready
[ 942.293435] wlp2s0: deauthenticated from 54:67:51:08:a2:e2 (Reason: 
4=DISASSOC_DUE_TO_INACTIVITY)
[ 942.509537] wlp2s0: authenticate with 54:67:51:08:a2:e2
[ 942.550226] wlp2s0: send auth to 54:67:51:08:a2:e2 (try 1/3)
[ 942.570888] wlp2s0: authenticated
[ 942.572160] wlp2s0: associate with 54:67:51:08:a2:e2 (try 1/3)
[ 942.617424] wlp2s0: RX AssocResp from 54:67:51:08:a2:e2 (capab=0x1511 
status=0 aid=2)
[ 942.619949] wlp2s0: associated


$ iwconfig
wlp2s0 IEEE 802.11 ESSID:"[redacted]"
Mode:Managed Frequency:5.2 GHz Access Point: 54:67:51:08:A2:E2
Bit Rate=6 Mb/s Tx-Power=23 dBm
Retry short limit:7 RTS thr:off Fragment thr:off
Power Management:on
Link Quality=70/70 Signal level=-34 dBm
Rx invalid nwid:0 Rx invalid crypt:0 Rx invalid frag:0
Tx excessive retries:0 Invalid misc:19 Missed beacon:0
[...]


Laptop connected to phone via WiFi tethering (2.4 GHz):

$ dmesg | grep ath
[...]
[ 22.227408] ath10k_pci 0000:02:00.0: DMAR: 32bit DMA uses non-identity 
mapping
[ 22.227614] ath10k_pci 0000:02:00.0: enabling device (0000 -> 0002)
[ 22.232055] ath10k_pci 0000:02:00.0: pci irq msi oper_irq_mode 2 
irq_mode 0 reset_mode 0
[ 22.444270] ath10k_pci 0000:02:00.0: qca6174 hw3.2 target 0x05030000 
chip_id 0x00340aff sub 1a56:143a
[ 22.444273] ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 1 tracing 
0 dfs 0 testmode 0
[ 22.444726] ath10k_pci 0000:02:00.0: firmware ver 
WLAN.RM.4.4.1-00140-QCARMSWPZ-1 api 6 features wowlan,ignore-otp,mfp 
crc32 29eb8ca1
[ 22.509405] ath10k_pci 0000:02:00.0: board_file api 2 bmi_id N/A crc32 
4ed3569e
[ 22.582079] ath10k_pci 0000:02:00.0: unsupported HTC service id: 1536
[ 22.601584] ath10k_pci 0000:02:00.0: htt-ver 3.60 wmi-op 4 htt-op 3 cal 
otp max-sta 32 raw 0 hwcrypto 1
[ 22.664970] ath: EEPROM regdomain: 0x6c
[ 22.664971] ath: EEPROM indicates we should expect a direct regpair map
[ 22.664972] ath: Country alpha2 being used: 00
[ 22.664972] ath: Regpair used: 0x6c
[ 22.710603] ath10k_pci 0000:02:00.0 wlp2s0: renamed from wlan0
[ 24.027614] ath10k_pci 0000:02:00.0: unsupported HTC service id: 1536
[ 24.344887] ath10k_pci 0000:02:00.0: unsupported HTC service id: 1536
[ 179.269359] ath: EEPROM regdomain: 0x8114
[ 179.269359] ath: EEPROM indicates we should expect a country code
[ 179.269360] ath: doing EEPROM country->regdmn map search
[ 179.269361] ath: country maps to regdmn code: 0x37
[ 179.269362] ath: Country alpha2 being used: DE
[ 179.269363] ath: Regpair used: 0x37
[ 179.269364] ath: regdomain 0x8114 dynamically updated by country element


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
