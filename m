Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAA559D1C
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQprfi43ZZOSyR8HgOxH7r5fSrLqkB54atAXjbVRxw0=; b=hZQvlwYMTtuUV9
	P9clEAiShQkapsgpHZVf+EfLziDeFGQ9S8aiz2zpwL1cwiaSGNvn/FVkluaMtvWQ3XwzOV5KCqLF1
	Um5vF+mRwP5qt8t0gYwughRHo8Rdn9Z2AbjQxAcWFbQGNYwNcbDtqQ7C2mbf1AT9Ou6kQZnilzvpD
	gtiwFPs6fRk4U73sP/OEJC21Ohx2YWYueKDSFcKv7jskvtW2YNgtC534sbzC9yiNX8rjGDIDlrS/9
	drTGAhMfE81ZwCZO4w7LTkv2LAp6ukUmiDp+3fH00S9GixQUbxdeC1Elz0gEYXFwtSdyEloNB73sh
	abBtKKSvOiyxvgbkw3Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgr8p-0000Zj-5D; Fri, 28 Jun 2019 13:42:15 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgr8k-0000ZQ-FD
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:42:11 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 37EB3607CA; Fri, 28 Jun 2019 13:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729330;
 bh=1TYN7ZBfqfuXyqbwkTCS7a1R1uG/HGeHndxGZ3GIfCo=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Ch5GzGAZWJ07auuPMAhiuVHsNxNV2388W+krtRZB2rQEwyvbXsp/fFeaLBzplV+t/
 QjgBa/Ql05WSHQ9Z6PYVwWh85egMTxDybbeIVHTKiugnCgP3ac1B1UUb4LUzlqwzi5
 AmixzZ3YQjf1dCGwQgJL5kgTukHdxg3NzlUlpWyo=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 18F8E602F4;
 Fri, 28 Jun 2019 13:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729329;
 bh=1TYN7ZBfqfuXyqbwkTCS7a1R1uG/HGeHndxGZ3GIfCo=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=BTKLUplEI5mEfjllz9T5Jt6GM+dYJ33b79yGHr/EZbz8ANkrvHQqt55OFUUFyMzoB
 Clol/bwdAY17jj3Fv+8C3F56NUwqOr/mJZFpq9bb7Ly/6709gpt6TD1RJTxg93rw47
 GAWinjcCWMSI5O7FClSaFExCL1nqR0ZNl2aqY/TQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 18F8E602F4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Piotr Dymacz <pepe2k@gmail.com>
Subject: Re: ath10k-firmware: QCA4019 hw1.0: Add ALFA Network AP120C-AC
 specific BDF
References: <39b9616c-592c-1560-b3df-e39598e61db8@gmail.com>
Date: Fri, 28 Jun 2019 16:42:06 +0300
In-Reply-To: <39b9616c-592c-1560-b3df-e39598e61db8@gmail.com> (Piotr Dymacz's
 message of "Wed, 23 Jan 2019 01:38:03 +0100")
Message-ID: <87mui1ddxt.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_064210_543835_085819E3 
X-CRM114-Status: GOOD (  15.33  )
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

Piotr Dymacz <pepe2k@gmail.com> writes:

> This is a special BDF for 5 GHz radio inside ALFA Network AP120C-AC
> [0]. In case of 2.4 GHz radio, BDF used by the vendor firmware is the
> same as the one already embedded in the upstream board-2.bin file:
>
> root@AP120C-AC:/# dmesg | grep -i board
> [   32.198686] Board extended Data download address: 0x0
> [   32.223026]  Board data initialized
> [   32.337060] ol_ath_download_firmware:##Board Id 18 , CHIP Id 0
> [   32.343005] ol_ath_download_firmware: BOARDDATA DOWNLOAD TO address
> 0xc0000
> [   32.349831]  wifi0: Selecting board data file name
> boardData_1_0_IPQ4019_DK03_wifi0.bin
> [   32.359265] ol_transfer_bin_file: Board Data File download to
> address=0xc0000 file
> name=IPQ4019/hw.1/boardData_1_0_IPQ4019_DK03_wifi0.bin
> [...]
>
> root@AP120C-AC:/# md5sum
> /lib/firmware/IPQ4019/hw.1/boardData_1_0_IPQ4019_DK03_w
> ifi0.bin
> 11c70b64c714c30d040fcd7b0ef3f53f
> /lib/firmware/IPQ4019/hw.1/boardData_1_0_IPQ4019_DK03_wifi0.bin
>
>
> And the same (checksum and board/chip-id match) file inside upstream
> board-2.bin:
>
> ath10k-bdencoder -i board-2.bin
> [...]
> BoardNames[2]: 'bus=ahb,bmi-chip-id=0,bmi-board-id=18'
> BoardLength[2]: 12064
> BoardCRC32[2]: 628eba64
> BoardMD5[2]: 11c70b64c714c30d040fcd7b0ef3f53f
> [...]
>
>
> Thus, only one additional BDF has to be included in board-2.bin.
> As per the current "Submitting board files" guidelines [1]:
>
> * description for what hardware this is:
>
>   - this is an IPQ4018 based indoor ceiling AP
>   - one QCA40xx radio is used as 2.4GHz radio
>   - one QCA40xx radio is used as 5GHz radio
>
> * origin of the board file (did you create it yourself or where you
>   downloaded)
>
>   - file was extracted from a running vendor firmware the device was
>     delivered with
>
> * ids to be used with the board file (ATH10K_BD_IE_BOARD_NAME in ath10k)
>
>   - QCA4019 hw1.0:
>     bus=ahb,bmi-chip-id=0,bmi-board-id=25,variant=ALFA-Network-AP120C-AC
>     md5sum: e676f159de8afd74df3fecc8ecf94389
>
>
> * attach the actual board file (board.bin)
>
>   - the name of the file is equal to the id string in the board-2.bin
>     (minus the ".bin")

Thanks, added to QCA4019/hw1.0/board-2.bin:

New:
bus=ahb,bmi-chip-id=0,bmi-board-id=25,variant=ALFA-Network-AP120C-AC

Changed:


Deleted:

1 board image(s) added, 0 changed, 0 deleted, 42 in total

https://github.com/kvalo/ath10k-firmware/commit/36d375992210ffe5b6e44aab5910eeb83967072c

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
