Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DED59D35
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDsnAtFkenhxuyoo83uww8EdKvKNCzl4Z5flcGicI1g=; b=BD+e6qgVlQr5pD
	TcSHX7jtH8GQqUpvq4gtiWoonL5WSOzvUQX970WKxgYNCbaXgn1o2uMHgzASEbR61c0yxRoSU3+D1
	JaPOhBPyfyaG1YGUMNnwcr4vvOVMODKcGUWy8otKbZrGxL5y1PtOqICbr/bpinS/0ufrxw3E0qwo+
	yXEOVt5yy48WerDcKepu3X5h+rj8NLaNUO/mdUdzjH/xMdbA+LRauMP6gy0KxaXxpocaPO5W4jDLY
	A9Gv/BzAHsNQG0ejgeMz/nzzW9K77/ZZ7VkYZ0nA4Uth9jqEsrU0BQ33Al+jvRyzcwdLgLQFBqY0Q
	3ijziphnFq+P44f1+hjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgrFy-00038s-OL; Fri, 28 Jun 2019 13:49:38 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgrFt-00038Y-Kg
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:49:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 4BDDF6087F; Fri, 28 Jun 2019 13:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729773;
 bh=g/Z+bzugPhwoF+fd2p4l8D4g9G/UHIfhP12PoFrfFjc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=jyRFqcfqd/hWl2qyvutt7ouey12AfqY86+YgIeaj7Ws1kXCXOCYqUavINB6bQHbMP
 8alLVXNF5pdI/mGafOyVu4oZ2kmEzEJNM/aH4D1Kcpk+cmC/rztv8y17mcd9Xa7IP2
 Txd6q8NfwK2nvo6QNmrkEL853J8yv/0Wj7RHlOP0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C79656087F;
 Fri, 28 Jun 2019 13:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729772;
 bh=g/Z+bzugPhwoF+fd2p4l8D4g9G/UHIfhP12PoFrfFjc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=mxo8V7iUs5vsTvSapEn8z4rmQSCnSiPmhmZkB0fmsMhhwdZ3nxWgJ4wUhDuANoQ+J
 Z39fE/i3081B5rmhuoA/jjUDqNAgYUgZRserll7aMospjb8wisIqeQCDRtAmyMHkPI
 dj8Cjbrv2AvJ5JDvJx4HRR/HRRt3CGOyVKsa83yE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C79656087F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jeff Kletsky <lede@allycomm.com>
Subject: Re: ath10k-firmware: IPQ4019 hw1.0: Add BDF for Linksys EA8300 [1/2]
References: <d84cb3b1-6708-6a87-9181-9c2319742111@allycomm.com>
Date: Fri, 28 Jun 2019 16:49:29 +0300
In-Reply-To: <d84cb3b1-6708-6a87-9181-9c2319742111@allycomm.com> (Jeff
 Kletsky's message of "Fri, 17 May 2019 09:38:40 -0700")
Message-ID: <87tvc9bz12.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_064933_722572_64A17D2F 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Jeff Kletsky <lede@allycomm.com> writes:

> Support for the Linksys EA8300 under OpenWrt is undergoing final
> review. This is a QCA4019-based device with a PCI-attached QCA9888
> supplying a third radio on 5 GHz. The OEM's firmware and source
> suggest that this device is "based on Qualcomm AP DK07.1-c1"
>
> Linksys ships four market-specific variants of this device, notated as
> -AH, -EU, (no suffix), and -CA. They supply four sets of pre-cal board
> files in their firmware, AH, EU, FCC, and IC. The corresponding files
> differ from each other, and appear to provide different parameters in
> the different regions. The OEM firmware copies the appropriate set of
> files into place based on examining the SKU of the device at boot.
>
> These board files may be obtained from extraction of the OEM firmware
> Ver. 1.1.4.191539, Latest Date: 11/8/2018, 49.0 MB
> http://downloads.linksys.com/downloads/firmware/FW_EA8300_1.1.4.191539_prod.img
> Ver. 1.1.3.184925, Latest Date: 11/15/2017, 47.4 MB
> http://downloads.linksys.com/downloads/firmware/FW_EA8300_1.1.3.184925_prod.img
> and/or from a running device. There does not appear to be a difference
> in the board files between the two firmware versions.
>
> DTS for the EA8300 under OpenWrt expects that the variant be encoded
> as, for example, linksys-ea8300-fcc, with the lower-cased suffix
> indicating the OEM's regional code, or -fcc.
>
> Two similar messages will be sent, one for each chipset, as per the directions.
>
>
> The files selected and their original names and organization include:
>
>     27d9dfe1e86c3befe808f89dd3cd105b  OEM/QCA9888/IC/boardData_2_0_QCA9888_5G_Y9690_SBS_HB.bin
>     7f2f0de6c0fb2df1d642895d8233d3ef  OEM/QCA9888/EU/boardData_2_0_QCA9888_5G_Y9690_SBS_HB.bin
>     62049f88a498e51870973143e376e7af  OEM/QCA9888/FCC/boardData_2_0_QCA9888_5G_Y9690_SBS_HB.bin
>     27d71485fc4987bc1c11b7744c373b59  OEM/QCA9888/AH/boardData_2_0_QCA9888_5G_Y9690_SBS_HB.bin
>     435d236890521515feffc834218ca594  OEM/IPQ4019/IC/boardData_1_0_IPQ4019_DK04_5G.bin
>     e8858ab9259f7d4372040da1c592d1cc  OEM/IPQ4019/IC/boardData_1_0_IPQ4019_DK04_2G.bin
>     d6d7ed00db985b4d8c48ccc3fe10fa87  OEM/IPQ4019/EU/boardData_1_0_IPQ4019_DK04_5G.bin
>     5cef8208a0345c1469494e44e1f370f1  OEM/IPQ4019/EU/boardData_1_0_IPQ4019_DK04_2G.bin
>     0e820f5946b5773ad9f4a74809c05b79  OEM/IPQ4019/FCC/boardData_1_0_IPQ4019_DK04_5G.bin
>     057ed5528e360197c2239796710cb61c  OEM/IPQ4019/FCC/boardData_1_0_IPQ4019_DK04_2G.bin
>     0171919a4576199ae88e8831f72c03fe  OEM/IPQ4019/AH/boardData_1_0_IPQ4019_DK04_5G.bin
>     a8e23769dc98da97b6c70a4f601ffca8  OEM/IPQ4019/AH/boardData_1_0_IPQ4019_DK04_2G.bin
>
>
> The files were renamed as follows:
>
>     for JD in AH EU FCC IC ; do
>         jd=$(echo "$JD" | tr 'A-Z' 'a-z')
>         cp -vp OEM/IPQ4019/${JD}/boardData_1_0_IPQ4019_DK04_2G.bin \
> 	    ${dest}/bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=linksys-ea8300-${jd}
>         cp -vp OEM/IPQ4019/${JD}/boardData_1_0_IPQ4019_DK04_5G.bin \
> 	    ${dest}/bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=linksys-ea8300-${jd}
>         cp -vp OEM/QCA9888/${JD}/boardData_2_0_QCA9888_5G_Y9690_SBS_HB.bin \
> 	    ${dest}/bus=pci,bmi-chip-id=0,bmi-board-id=23,variant=linksys-ea8300-${jd}
>     done
>
>
> Renamed board files are individually attached to the IPQ4019 and QCA9888
> messages. dmesg excerpts are from the device running OpenWrt with
> locally crafted, aggregate board files.
>
>
>
> For the IPQ4019:
>
>     ath10k_ahb a000000.wifi: qca4019 hw1.0 target 0x01000000 chip_id 0x003b00ff sub 0000:0000
>
>     ath10k_ahb a000000.wifi: board_file api 2 bmi_id 0:20 crc32 8fda7e22
>     ath10k_ahb a800000.wifi: board_file api 2 bmi_id 0:21 crc32 8fda7e22
>
>
> bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=linksys-ea8300-ah
> a8e23769dc98da97b6c70a4f601ffca8
>
> bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=linksys-ea8300-fcc
> 057ed5528e360197c2239796710cb61c
>
> bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=linksys-ea8300-eu
> 5cef8208a0345c1469494e44e1f370f1
>
> bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=linksys-ea8300-ic
> e8858ab9259f7d4372040da1c592d1cc
>
>
> bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=linksys-ea8300-eu
> d6d7ed00db985b4d8c48ccc3fe10fa87
>
> bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=linksys-ea8300-ic
> 435d236890521515feffc834218ca594
>
> bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=linksys-ea8300-fcc
> 0e820f5946b5773ad9f4a74809c05b79
>
> bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=linksys-ea8300-ah
> 0171919a4576199ae88e8831f72c03fe

My script expects that the attachments end with '.bin' suffix. Could you
please fix that and resend everything?

[2. application/octet-stream; bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=linksys-ea8300-ah]...

[3. application/octet-stream; bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=linksys-ea8300-eu]...

[4. application/octet-stream; bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=linksys-ea8300-fcc]...

[5. application/octet-stream; bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=linksys-ea8300-ic]...

[6. application/octet-stream; bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=linksys-ea8300-ah]...

[7. application/octet-stream; bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=linksys-ea8300-eu]...

[8. application/octet-stream; bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=linksys-ea8300-fcc]...

[9. application/octet-stream; bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=linksys-ea8300-ic]...


-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
