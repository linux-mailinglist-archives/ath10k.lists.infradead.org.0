Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A317A11D0
	for <lists+ath10k@lfdr.de>; Thu, 29 Aug 2019 08:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3S9RT0w5YiS63kOTbCONJkJUQpLRAWcfPtcBwv4w5Rw=; b=D0W+s7Y9KRBevWQKTdQt+m3ghG
	bQLmq3Rf23sXssc9peyrWoF+NE1iSqhgQC7sx4TDoWd9x97eoaJvYvQBLoyrwnFADjvOfNt1FGPkh
	d8aqWEVEP7dSUHP0qj4fMOVxFFO1hJzbvz1EEE45U2qo87jf08UHIdCW6xpWIxHNZmhp2e0Yo/iAU
	HGLN/ZNS0SWCEYNt154GGwmpmt4x7roR6pEgXtr8PXFTZIIg9iOeIBqBp7pOyUKNL5vKCuv2aLyn0
	c1UEYIfyQKXBHRYgO3Nt4/R/rKMwXgaSr2b354gSgq46IBn+YXtHId+ZI6w8ulzo3vZY5X1a6lyhL
	p2DaZcKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3E0d-0005xS-VY; Thu, 29 Aug 2019 06:34:15 +0000
Received: from icp-osb-irony-out4.external.iinet.net.au ([203.59.1.220])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3E0Z-0005x0-Qx
 for ath10k@lists.infradead.org; Thu, 29 Aug 2019 06:34:13 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BEAABLcWdd/zXSMGcNWBoBAQEBAQI?=
 =?us-ascii?q?BAQEBBwIBAQEBgWeDBYEvhCGPVQEBAQEBAQaCNIJsgV2EJ5ElCQEBAQEBAQE?=
 =?us-ascii?q?BAS0KAQGEP4J9OBMCCwEBAQQBAQEBAQYDAYVYQ4VZJxVBKA0CJgJsCAEBgx4?=
 =?us-ascii?q?BgXYjqFsbNXOBMhqEHwMQD2+DLoFDBoEMKIFjiix4gQeBESeCNoNUAoIugj6?=
 =?us-ascii?q?CWASMOTyIQoEvlRkJgiCGbo1dBhuNbgOKa5VbklOBeTMaCCgIgyeCSxqDT4p?=
 =?us-ascii?q?lYAGOdAEB?=
X-IPAS-Result: =?us-ascii?q?A2BEAABLcWdd/zXSMGcNWBoBAQEBAQIBAQEBBwIBAQEBg?=
 =?us-ascii?q?WeDBYEvhCGPVQEBAQEBAQaCNIJsgV2EJ5ElCQEBAQEBAQEBAS0KAQGEP4J9O?=
 =?us-ascii?q?BMCCwEBAQQBAQEBAQYDAYVYQ4VZJxVBKA0CJgJsCAEBgx4BgXYjqFsbNXOBM?=
 =?us-ascii?q?hqEHwMQD2+DLoFDBoEMKIFjiix4gQeBESeCNoNUAoIugj6CWASMOTyIQoEvl?=
 =?us-ascii?q?RkJgiCGbo1dBhuNbgOKa5VbklOBeTMaCCgIgyeCSxqDT4plYAGOdAEB?=
X-IronPort-AV: E=Sophos;i="5.64,442,1559491200"; d="scan'208";a="189837454"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out4.iinet.net.au with ESMTP; 29 Aug 2019 14:34:00 +0800
To: ath10k@lists.infradead.org
From: Greg Ungerer <gerg@kernel.org>
Subject: problems with a 9377 based SDIO module
Message-ID: <176a3a2d-ff81-3b72-86af-73c70df729f4@kernel.org>
Date: Thu, 29 Aug 2019 16:33:58 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_233412_125936_AE4B806B 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [203.59.1.220 listed in list.dnswl.org]
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
Cc: erik.stromdahl@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


Hi Erik,

I have a Compex WSD377 WiFi module with SDIO interface on a new
iMX6 based platform. I am trying to get the module going but am
having problems with it at probe/init time.

Ultimately what I see at ath10k_sdio module load time is:

<4>ath10k_sdio mmc0:0001:1: WARNING: ath10k SDIO support is incomplete, don't expect anything to work!
<6>ath10k_sdio mmc0:0001:1: qca9377 hw1.1 sdio target 0x05020001 chip_id 0x00000000 sub 0000:0000
<6>ath10k_sdio mmc0:0001:1: kconfig debug 1 debugfs 0 tracing 0 dfs 0 testmode 0
<6>ath10k_sdio mmc0:0001:1: firmware ver WLAN.TF.1.1.1-00061-QCATFSWPZ-1 api 5 features ignore-otp crc32 7746e551
<3>ath10k_sdio mmc0:0001:1: failed to fetch board data for bus=sdio,vendor=0271,device=0701,subsystem-vendor=0000,subsystem-device=0000 from ath10k/QCA9377/hw1.0/board-2.bin
<6>ath10k_sdio mmc0:0001:1: board_file api 1 bmi_id N/A crc32 78c48ff6
<4>ath10k_sdio mmc0:0001:1: failed to write to address 0x828: -84
<4>ath10k_sdio mmc0:0001:1: unable to disable sdio interrupts: -84
<3>ath10k_sdio mmc0:0001:1: could not start HIF: -84
<3>ath10k_sdio mmc0:0001:1: could not init core (-84)
<4>mmc0: queuing unknown CIS tuple 0x01 (3 bytes)
<4>mmc0: queuing unknown CIS tuple 0x1a (5 bytes)
<4>mmc0: queuing unknown CIS tuple 0x1b (8 bytes)
<4>mmc0: queuing unknown CIS tuple 0x14 (0 bytes)
<3>ath10k_sdio mmc0:0001:1: could not probe fw (-84)

Tracing I can see that a fair bit of IO has gone on when it finally
gets to the "failed to write to address 0x828: -84". I assume the
bulk writes up to that point are the firmware download.

I am using a linux-5.2 kernel with your patches at
https://github.com/erstrom/linux-ath.git, v5.2-ath10k-sdio branch.

My primary concern is if I am using the write firmware.

I have a firmware-sdio-5.bin which is the QCA9377/hw1.0/untested/firmware-sdio-5.bin_WLAN.TF.1.1.1-00061-QCATFSWPZ-1
file from the ath10k-firmware tree at https://github.com/kvalo/ath10k-firmware.git.
And the board-sdio.bin which is the bdwlan30.bin from https://github.com/boundarydevices/qca-firmware.git.

I ended up with those from comments made in
https://ath10k.infradead.narkive.com/lgpFutCZ/patch-00-11-sdio-support-for-ath10k
But maybe I am off-track here?

Does the kernel trace give any clues as what the problem may be?
Any other ideas?

Regards
Greg


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
