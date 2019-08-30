Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99601A399F
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 16:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U3rgCWUXZoYevrCnj0l+9IF9E6Z8lhQIlrxxeqh/Dj8=; b=LoUY2AF/uO0cY17ZLv6Ay90Y7
	mE/zoaY6ywVV+RYos+muVez7dWqsggnS3fyoJdsYZzT4/1ROq2XkDdjOHLR3lD3Uuuw5cbBF4JV6W
	xYOfoG7VHhWD7OdRN0rDfigTV+mFeNx0C44lORVKCip9U3I34rwbJSsPiz3Mcf1bsthKO8hvI2PaJ
	PV+HhRMe/J8Fbdaz/UjC8fsi4ymmBERbQvxJmLq9q7cPZxENPP6mxAIG9VMPdQ7k1UNM93p1iSGbs
	BmzpDjON+DRVyJeVTOylgPW9gYfa4Q4T4QkFHiASUPH+d6k1j0mBPoHV6z6+6t8U3jouc8CMdE+Lx
	O8zBvSBUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3iHB-0000mT-5w; Fri, 30 Aug 2019 14:53:21 +0000
Received: from icp-osb-irony-out3.external.iinet.net.au ([203.59.1.153])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3iH3-0000m2-G0
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 14:53:15 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AuAADoN2ld/zXSMGcNWRkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEHAQEBAQEBgWeDBYEvhCGPWQEBAQEGgTZ+gm2BXYQnkSYJAQEBAQE?=
 =?us-ascii?q?BAQEBLQoBAYQ/AoMDOBMCCwEBAQQBAQEBAQYDAYVYQ4VWAQEBAQIBIxVBBQs?=
 =?us-ascii?q?LDQsCAiYCAlcTCAEBgx4BgXYFHqtCGzVzgTIahB8DEA9vg0CBQwaBDCiBY4o?=
 =?us-ascii?q?teIEHgREngjY1PoJIGQKEbIJYBIw/PIhHgS+VHoIphnCNYQYbjXEDim6VZZJ?=
 =?us-ascii?q?ggXkzGggoCIMngksag0+KZWABjnIBAQ?=
X-IPAS-Result: =?us-ascii?q?A2AuAADoN2ld/zXSMGcNWRkBAQEBAQEBAQEBAQEHAQEBA?=
 =?us-ascii?q?QEBgWeDBYEvhCGPWQEBAQEGgTZ+gm2BXYQnkSYJAQEBAQEBAQEBLQoBAYQ/A?=
 =?us-ascii?q?oMDOBMCCwEBAQQBAQEBAQYDAYVYQ4VWAQEBAQIBIxVBBQsLDQsCAiYCAlcTC?=
 =?us-ascii?q?AEBgx4BgXYFHqtCGzVzgTIahB8DEA9vg0CBQwaBDCiBY4oteIEHgREngjY1P?=
 =?us-ascii?q?oJIGQKEbIJYBIw/PIhHgS+VHoIphnCNYQYbjXEDim6VZZJggXkzGggoCIMng?=
 =?us-ascii?q?ksag0+KZWABjnIBAQ?=
X-IronPort-AV: E=Sophos;i="5.64,447,1559491200"; d="scan'208";a="207284241"
Received: from unknown (HELO [10.44.0.192]) ([103.48.210.53])
 by icp-osb-irony-out3.iinet.net.au with ESMTP; 30 Aug 2019 22:52:23 +0800
Subject: Re: problems with a 9377 based SDIO module
From: Greg Ungerer <gerg@kernel.org>
To: erik.stromdahl@gmail.com
References: <176a3a2d-ff81-3b72-86af-73c70df729f4@kernel.org>
Message-ID: <a97cd0d2-e53e-ef3c-63e3-0d4d352c7994@kernel.org>
Date: Sat, 31 Aug 2019 00:52:21 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <176a3a2d-ff81-3b72-86af-73c70df729f4@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_075313_774645_DE668997 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [203.59.1.153 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


On 29/8/19 4:33 pm, Greg Ungerer wrote:
> I have a Compex WSD377 WiFi module with SDIO interface on a new
> iMX6 based platform. I am trying to get the module going but am
> having problems with it at probe/init time.
> 
> Ultimately what I see at ath10k_sdio module load time is:
> 
> <4>ath10k_sdio mmc0:0001:1: WARNING: ath10k SDIO support is incomplete, don't expect anything to work!
> <6>ath10k_sdio mmc0:0001:1: qca9377 hw1.1 sdio target 0x05020001 chip_id 0x00000000 sub 0000:0000
> <6>ath10k_sdio mmc0:0001:1: kconfig debug 1 debugfs 0 tracing 0 dfs 0 testmode 0
> <6>ath10k_sdio mmc0:0001:1: firmware ver WLAN.TF.1.1.1-00061-QCATFSWPZ-1 api 5 features ignore-otp crc32 7746e551
> <3>ath10k_sdio mmc0:0001:1: failed to fetch board data for bus=sdio,vendor=0271,device=0701,subsystem-vendor=0000,subsystem-device=0000 from ath10k/QCA9377/hw1.0/board-2.bin
> <6>ath10k_sdio mmc0:0001:1: board_file api 1 bmi_id N/A crc32 78c48ff6
> <4>ath10k_sdio mmc0:0001:1: failed to write to address 0x828: -84
> <4>ath10k_sdio mmc0:0001:1: unable to disable sdio interrupts: -84
> <3>ath10k_sdio mmc0:0001:1: could not start HIF: -84
> <3>ath10k_sdio mmc0:0001:1: could not init core (-84)
> <4>mmc0: queuing unknown CIS tuple 0x01 (3 bytes)
> <4>mmc0: queuing unknown CIS tuple 0x1a (5 bytes)
> <4>mmc0: queuing unknown CIS tuple 0x1b (8 bytes)
> <4>mmc0: queuing unknown CIS tuple 0x14 (0 bytes)
> <3>ath10k_sdio mmc0:0001:1: could not probe fw (-84)
> 
> Tracing I can see that a fair bit of IO has gone on when it finally
> gets to the "failed to write to address 0x828: -84". I assume the
> bulk writes up to that point are the firmware download.
> 
> I am using a linux-5.2 kernel with your patches at
> https://github.com/erstrom/linux-ath.git, v5.2-ath10k-sdio branch.

Problem mostly solved by also patching with the changes at
https://kernel.googlesource.com/pub/scm/linux/kernel/git/kvalo/ath.
Applying the v5.2-ath10k-sdio changes on top of them.

Now it successfully probes the device. But after configuring wlan0
and sending/receiving a few packets I started to see:

ath10k_sdio mmc0:0001:1: msdu_id allocation failed -28^M
ath10k_sdio mmc0:0001:1: failed to transmit packet, dropping: -28^M
ath10k_sdio mmc0:0001:1: failed to submit frame: -28^M
ath10k_sdio mmc0:0001:1: failed to push frame: -28^M

Regards
Greg



> My primary concern is if I am using the write firmware.
> 
> I have a firmware-sdio-5.bin which is the QCA9377/hw1.0/untested/firmware-sdio-5.bin_WLAN.TF.1.1.1-00061-QCATFSWPZ-1
> file from the ath10k-firmware tree at https://github.com/kvalo/ath10k-firmware.git.
> And the board-sdio.bin which is the bdwlan30.bin from https://github.com/boundarydevices/qca-firmware.git.
> 
> I ended up with those from comments made in
> https://ath10k.infradead.narkive.com/lgpFutCZ/patch-00-11-sdio-support-for-ath10k
> But maybe I am off-track here?
> 
> Does the kernel trace give any clues as what the problem may be?
> Any other ideas?
> 
> Regards
> Greg
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
