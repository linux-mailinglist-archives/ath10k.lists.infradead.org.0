Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7792459D37
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:50:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHH+3VlXgbaG2gIhUX0S9EuLIYvIbIivMiLduRr/t3c=; b=e1VC1s9mRPsHzp
	uQaCbjPIY4tBBNDINvro4tQxuaPNzSBptPr6TdQNvEARJiW/rGSD09CezjpJPUK6aGyYSPd/J4lIu
	2iiGaduboe/idWhwtHG22lQKxhPnIqaIlyex1Uj6TPLPOBxV+2Gytj33o3Axrx8eXwzIa7/446Ybf
	+P9bLji87Di4d95dv0xsg5SLdWbQg7ljaqX0O/rlIdvrpRK9wQAavrm6b63Yl3Ls+FY/xPYqahpRM
	cO8TymmhwgNQGYU8Z9GHnCpBMhlZjPcM5Z7aZsLiUp433MheXaunWjECZL0hQMML0ANJOYIWoTjmB
	U/hAwgK3z2lkhb6C+M0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgrGM-0003EU-Bo; Fri, 28 Jun 2019 13:50:02 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgrGG-0003E8-9y
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:49:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 139E4607B9; Fri, 28 Jun 2019 13:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729796;
 bh=xTrysWDliXhoqOvMsPVdzToNBXpuJ2qvsZzFBg1HE/o=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Co0oAb8/wyhZSqkZx07OK/cjs/JQByVUMkX0RLTyvjgHXo6kzyKSKeVeCfYuHYLkf
 aGIRyoZWqMqjF6H7x2xEpL5D72/RwjUka36+rNRs9Fe6OoXkhnZcKa0XFkZ2odnxnE
 qTvvy3gA3iWOr1Iqypk3scKvlIpxdPxQ28Q6qs8c=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A07FF602F4;
 Fri, 28 Jun 2019 13:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729795;
 bh=xTrysWDliXhoqOvMsPVdzToNBXpuJ2qvsZzFBg1HE/o=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=FudEDp0II7sVNuhVyLjvxW3NoQnv0bCEZtvFtdZ44/m0XEVufkas+gQep4hfI+087
 R5AVYVKLYDnvVhHR8HwB9N7oY9anwRhaoES/mq59egNwI1j1hXyVPTfM0iVhHmVdQX
 w3nwoius2QpqRdwU9lSxm6FT+UcnDUrv54FCSgs0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A07FF602F4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jeff Kletsky <lede@allycomm.com>
Subject: Re: ath10k-firmware: QCA9888 hw2.0: Add BDF for Linksys EA8300 [2/2]
References: <ac097652-455f-cd1f-0f48-f19fad61933c@allycomm.com>
Date: Fri, 28 Jun 2019 16:49:52 +0300
In-Reply-To: <ac097652-455f-cd1f-0f48-f19fad61933c@allycomm.com> (Jeff
 Kletsky's message of "Fri, 17 May 2019 09:39:05 -0700")
Message-ID: <87pnmxbz0f.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_064956_375956_6F5E90D5 
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
> For the QCA9888:
>
>     ath10k_pci 0000:01:00.0: qca9888 hw2.0 target 0x01000000 chip_id 0x00000000 sub 0000:0000
>
>     ath10k_pci 0000:01:00.0: board_file api 2 bmi_id 0:23 crc32 b050e9d6
>
>
> bus=pci,bmi-chip-id=0,bmi-board-id=23,variant=linksys-ea8300-eu
> 7f2f0de6c0fb2df1d642895d8233d3ef
>
> bus=pci,bmi-chip-id=0,bmi-board-id=23,variant=linksys-ea8300-ic
> 27d9dfe1e86c3befe808f89dd3cd105b
>
> bus=pci,bmi-chip-id=0,bmi-board-id=23,variant=linksys-ea8300-ah
> 27d71485fc4987bc1c11b7744c373b59
>
> bus=pci,bmi-chip-id=0,bmi-board-id=23,variant=linksys-ea8300-fcc
> 62049f88a498e51870973143e376e7af

My script expects that the attachments end with '.bin' suffix. Could you
please fix that and resend everything?

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
