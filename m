Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CD76CF59
	for <lists+ath10k@lfdr.de>; Thu, 18 Jul 2019 16:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PeecC7CLiMRV5cJvOpJq3Kilyz+oT/lzrFrbc9NVrZo=; b=Jl/niOlDx/Y++y
	/gSx424iOd0tk6KcHoX39OutdJ1Uui9LTqWs0b3as+qPiGLhntvSRUfb+NCNtT0DvntQF5E0ijvZi
	3jc4PhCskRZfN9nd5gEL6vxfDKleKNNjRafsK5yXBlWOszSFhOo1G//WRFK2024NWcNSRYcvBPu3U
	9ke8XIVxQRmRFc/78xewG4tDomiPWbvWnzcsTZj+Ih+CWTTdjY5M5HcbVDgYa70UwQeWfYeOeCO6+
	1P/L80FS0MuGdAA/ShcQaWP4JLwKjQPISwAzVJQ5AKnjFKgtm8QA8Jxin9jIBrSAz8c7YbBrgE4R3
	M71ve9h2Kluuxuu8n8yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6yy-0001LM-Op; Thu, 18 Jul 2019 14:02:04 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6yi-0001Jx-3A
 for ath10k@lists.infradead.org; Thu, 18 Jul 2019 14:01:55 +0000
Received: by mail-wr1-x433.google.com with SMTP id y4so28855377wrm.2
 for <ath10k@lists.infradead.org>; Thu, 18 Jul 2019 07:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=R30F5QPClSUjZzpIF81qMZ736jvYTxiFxjo7fszZdMA=;
 b=BOD2dvgv2ypoPyGejRJAxxlf1dlMpKyOZYDbT8/Y2g7PJ/DeF3HirDGUhvs3TZddp/
 ZDOkr1SkfkP+mgek4dCOt20lE4OHZOLu1j8J6aj3e0nFrct6hkephciVPYc5Hu5Ar6d1
 FNgjwGxB+JKkOj+bss1dEwupEi8Eal7ktiSmfQTN5RPbkT7CHdl5Ev7xPCP+tU0XwJDI
 7G+qxMR35R5+8FFyWWxLKsbTAjKfDywFzCF28ETIFz3SXlbt59sL/A/U1OGnuS3/yHjK
 glfMOQcyxWLa4OK1k5tNOslWb1FVGP8PRNi5R8eTzzguCI0wdADnZaMF613llyxcC0iZ
 scKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=R30F5QPClSUjZzpIF81qMZ736jvYTxiFxjo7fszZdMA=;
 b=Va3rGuLsr6wLey50knpHpnBxbW4blFyIAmfZ0snV44OmX0PvSZ5fBnDJdvL3D0kAQ9
 GlClpTnAkAJ2gfo+77mfeGVm3AFZxTOBeyRE5qZthBS800EECgbsKrSM5ymoovlRNA8K
 mk9qt6AUo1ZOWEwXWhlR1XWJUJ49sLjcXyx8Xziu/WXwMZPZOVol8WPSg+OrPYA5+Qc8
 0shgXZLUUtyvOyxqpPNh6AmiZc5vK7CFM7dMgEU/U5pTouLlzRSRVgGShUjboSrqPHL7
 TLTGZOsQxgdO1QloKSXPCO0fC0PwmruJK1KLFXT0ga5fBq+tYFq/6S9hjE6+mJaxgDBi
 RxJQ==
X-Gm-Message-State: APjAAAWuPqu6d0dIP3mz4I602pphLgYyenF84qtKDULQsX0v0+rtUcCJ
 Wk5pQq/tJ1Sb4jXxENqOz4mZdNDEYtE=
X-Google-Smtp-Source: APXvYqyssAfz89yIsyleKFZ1DjmmQtdsLGyVkadCbnbis98/R1G+kSAWMe0JVZXjhwbVBDhmN63EkQ==
X-Received: by 2002:adf:b64b:: with SMTP id i11mr49746230wre.205.1563458505800; 
 Thu, 18 Jul 2019 07:01:45 -0700 (PDT)
Received: from critterling.garfield.home
 (cpe-67-240-188-233.rochester.res.rr.com. [67.240.188.233])
 by smtp.gmail.com with ESMTPSA id z7sm24930738wrh.67.2019.07.18.07.01.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 07:01:45 -0700 (PDT)
Received: from localhost (b1300gl.garfield.home [192.168.8.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by critterling.garfield.home (Postfix) with ESMTPSA id 2D81E2A019C;
 Thu, 18 Jul 2019 10:01:42 -0400 (EDT)
From: "Victor J. Orlikowski" <vjorlikowski@gmail.com>
To: ath10k@lists.infradead.org
Subject: ath10k spat a "WARNING" message...
Date: Thu, 18 Jul 2019 10:01:40 -0400
Message-ID: <068E46DD-8965-4693-AA4D-797B8119E000.notmuch@neverland>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_070150_964733_02D3281E 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vjorlikowski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

To whom it may engage,

I have a GL.iNet B1300 AP, which uses ath10k hardware (QCA4019).
It's running OpenWRT 18.06.04.

It had been running stably, until about 48 hours ago; I have it
mostly stable again now, by updating to the latest firmware Kalle
makes available at Github.

With this latest firmware, I *did* get a "WARNING" message, that
might be of interest to folks; here it is:

[20528.715145] ------------[ cut here ]------------
[20528.715192] WARNING: CPU: 0 PID: 0 at backports-2017-11-01/drivers/net/wireless/ath/ath10k/htt_rx.c:1015 0xbf3925ac [ath10k_core@bf37e000+0x3a000]
[20528.718851] Modules linked in: pppoe ppp_async ath10k_pci ath10k_core ath pppox ppp_generic nf_nat_pptp nf_conntrack_pptp nf_conntrack_ipv6 mac80211 iptable_nat ipt_REJECT ipt_MASQUERADE cfg80211 xt_time xt_tcpudp xt_tcpmss xt_statistic xt_state xt_recent xt_nat xt_multiport xt_mark xt_mac xt_limit xt_length xt_hl xt_helper xt_ecn xt_dscp xt_conntrack xt_connmark xt_connlimit xt_connbytes xt_comment xt_TCPMSS xt_REDIRECT xt_LOG xt_HL xt_FLOWOFFLOAD xt_DSCP xt_CT xt_CLASSIFY ts_fsm ts_bm slhc nf_reject_ipv4 nf_nat_tftp nf_nat_snmp_basic nf_nat_sip nf_nat_redirect nf_nat_proto_gre nf_nat_masquerade_ipv4 nf_nat_irc nf_conntrack_ipv4 nf_nat_ipv4 nf_nat_h323 nf_nat_amanda nf_nat nf_log_ipv4 nf_flow_table_hw nf_flow_table nf_defrag_ipv6 nf_defrag_ipv4 nf_conntrack_tftp nf_conntrack_snmp nf_conntrack_sip
[20528.780346]  nf_conntrack_rtcache nf_conntrack_proto_gre nf_conntrack_irc nf_conntrack_h323 nf_conntrack_broadcast ts_kmp nf_conntrack_amanda iptable_mangle iptable_filter ipt_ECN ip_tables crc_ccitt compat sch_cake nf_conntrack act_skbedit act_mirred em_u32 cls_u32 cls_tcindex cls_flow cls_route cls_fw sch_tbf sch_htb sch_hfsc sch_ingress ip6t_REJECT nf_reject_ipv6 nf_log_ipv6 nf_log_common ip6table_mangle ip6table_filter ip6_tables x_tables ip6_gre ip_gre gre ifb ip6_tunnel tunnel6 ip_tunnel leds_gpio xhci_plat_hcd xhci_pci xhci_hcd dwc3 dwc3_of_simple gpio_button_hotplug
[20528.831103] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.14.131 #0
[20528.853295] Hardware name: Generic DT based system
[20528.859293] Function entered at [<c030e35c>] from [<c030a870>]
[20528.863973] Function entered at [<c030a870>] from [<c07328c8>]
[20528.869789] Function entered at [<c07328c8>] from [<c0316f74>]
[20528.875605] Function entered at [<c0316f74>] from [<c0317040>]
[20528.881420] Function entered at [<c0317040>] from [<bf3925ac>]
[20528.887295] Function entered at [<bf3925ac>] from [<bf3939f4>]
[20528.893054] Function entered at [<bf3939f4>] from [<bf3bb720>]
[20528.898880] Function entered at [<bf3bb720>] from [<c0634694>]
[20528.904686] Function entered at [<c0634694>] from [<c0301520>]
[20528.910501] Function entered at [<c0301520>] from [<c031af5c>]
[20528.916318] Function entered at [<c031af5c>] from [<c0352a20>]
[20528.922133] Function entered at [<c0352a20>] from [<c030140c>]
[20528.927948] Function entered at [<c030140c>] from [<c030b3cc>]
[20528.933765] Exception stack(0xc0a01f40 to 0xc0a01f88)
[20528.939587] 1f40: 00000001 00000000 00000000 c0313840 ffffe000 c0a03c74 c0a03c28 00000000
[20528.944711] 1f60: 00000000 00000001 cfffce00 c092da28 c0a01f88 c0a01f90 c0307f88 c0307f8c
[20528.952864] 1f80: 60000013 ffffffff
[20528.961018] Function entered at [<c030b3cc>] from [<c0307f8c>]
[20528.964321] Function entered at [<c0307f8c>] from [<c0349708>]
[20528.970223] Function entered at [<c0349708>] from [<c0349a28>]
[20528.976038] Function entered at [<c0349a28>] from [<c0900c04>]
[20528.981927] ---[ end trace be8769e792e356eb ]---

The card is still working, despite the above being issued.
For additional information - here's what dmesg has to say, from the
boot that led up to this message, about device detection:

[   12.463353] ath10k_ahb a000000.wifi: Direct firmware load for ath10k/QCA4019/hw1.0/firmware-6.bin failed with error -2
[   12.463399] ath10k_ahb a000000.wifi: Falling back to user helper
[   13.399673] firmware ath10k!QCA4019!hw1.0!firmware-6.bin: firmware_loading_store: map pages failed
[   14.179555] ath10k_ahb a000000.wifi: qca4019 hw1.0 target 0x01000000 chip_id 0x003900ff sub 0000:0000
[   14.179611] ath10k_ahb a000000.wifi: kconfig debug 0 debugfs 1 tracing 0 dfs 1 testmode 1
[   14.198549] ath10k_ahb a000000.wifi: firmware ver 10.4-3.2.1.1-00025 api 5 features no-p2p,raw-mode,mfp,peer-flow-ctrl,btcoex-param,allows-mesh-bcast,no-ps crc32 1a4815a4
[   14.451946] ath10k_ahb a000000.wifi: board_file api 2 bmi_id 0:16 crc32 e2dfaa91
[   15.780119] ath10k_ahb a000000.wifi: htt-ver 2.2 wmi-op 6 htt-op 4 cal pre-cal-file max-sta 512 raw 0 hwcrypto 1
[   15.791204] ath: EEPROM regdomain: 0x0
[   15.791224] ath: EEPROM indicates default country code should be used
[   15.791237] ath: doing EEPROM country->regdmn map search
[   15.791259] ath: country maps to regdmn code: 0x3a
[   15.791275] ath: Country alpha2 being used: US
[   15.791287] ath: Regpair used: 0x3a
[   15.986278] ath10k_ahb a800000.wifi: Direct firmware load for ath10k/QCA4019/hw1.0/firmware-6.bin failed with error -2
[   15.986322] ath10k_ahb a800000.wifi: Falling back to user helper
[   16.310239] firmware ath10k!QCA4019!hw1.0!firmware-6.bin: firmware_loading_store: map pages failed
[   16.310609] ath10k_ahb a800000.wifi: qca4019 hw1.0 target 0x01000000 chip_id 0x003900ff sub 0000:0000
[   16.318137] ath10k_ahb a800000.wifi: kconfig debug 0 debugfs 1 tracing 0 dfs 1 testmode 1
[   16.332395] ath10k_ahb a800000.wifi: firmware ver 10.4-3.2.1.1-00025 api 5 features no-p2p,raw-mode,mfp,peer-flow-ctrl,btcoex-param,allows-mesh-bcast,no-ps crc32 1a4815a4
[   16.380001] ath10k_ahb a800000.wifi: board_file api 2 bmi_id 0:17 crc32 e2dfaa91
[   17.710957] ath10k_ahb a800000.wifi: htt-ver 2.2 wmi-op 6 htt-op 4 cal pre-cal-file max-sta 512 raw 0 hwcrypto 1
[   17.719427] ath: EEPROM regdomain: 0x0
[   17.719436] ath: EEPROM indicates default country code should be used
[   17.719441] ath: doing EEPROM country->regdmn map search
[   17.719451] ath: country maps to regdmn code: 0x3a
[   17.719458] ath: Country alpha2 being used: US
[   17.719463] ath: Regpair used: 0x3a

If there's any additional information that might be of use, please
let me know, and I'll be glad to provide it.

Hope this helps in resolving any open bugs,
Victor
-- 
Victor J. Orlikowski <> vjorlikowski@gmail.com

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
