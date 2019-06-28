Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8891559D20
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GtFqEhvfM1dCGollyMyb0Id4xaqpSt9hm/25qOiUCSc=; b=KXjdGIjUMNHhaR
	fRuItU8XY2DBA9+Wq3mAzQq1ylxLWpLdD7g38dnm2SMSXSrq9BBxchl625sdAjS1T5N/KvrPUowXC
	aiaULEdH3PzhafM4M6K/UluuvMdG+lRv7LRAYY0vVT5HzPvE1BFTy4Pg5ce/rXK4qmShUZbFAWqAI
	mJ0VLaO+W9ivXGoUrVgf0SlWSLS66lLBNhzYM86ydw22LghIGpblqwsgeJxb+NTVtekCfGPeUkSmG
	rLS/L1gdkv+mSS/X1AafFSQC/x7gvLojHF1Q601APzI+q7qZxbWGL+jIxLritFdQHZJDL3dK77C2O
	LbofFjsdVkw6VI0cupeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgr9o-0000h1-Qg; Fri, 28 Jun 2019 13:43:16 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgr9j-0000gM-Iy
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:43:13 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 4D27D60A43; Fri, 28 Jun 2019 13:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729391;
 bh=BG/RdBJo6mPMLz/JplK/PGq3vsc5835FS0ZQdMNwYN4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=DY4mqJD/BMAPN95VAvTNExCZSCwSRX0hCWVsVl0P2OD6JKgPqPrs9yjoH772UhVvt
 dYgDVEQgCIS/vIBLmDHMe4aCSCP0vtH9+wegBoxQlf4UyuyUkH0s/zYcIYauGqRvVl
 kXWgOx9GpKFZbd3l0HqrIQS5pMgLEz/nCDhiMQys=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2EA6B607CA;
 Fri, 28 Jun 2019 13:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729391;
 bh=BG/RdBJo6mPMLz/JplK/PGq3vsc5835FS0ZQdMNwYN4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=DY4mqJD/BMAPN95VAvTNExCZSCwSRX0hCWVsVl0P2OD6JKgPqPrs9yjoH772UhVvt
 dYgDVEQgCIS/vIBLmDHMe4aCSCP0vtH9+wegBoxQlf4UyuyUkH0s/zYcIYauGqRvVl
 kXWgOx9GpKFZbd3l0HqrIQS5pMgLEz/nCDhiMQys=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2EA6B607CA
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: David Bauer <mail@david-bauer.net>
Subject: Re: ath10k-firmware: QCA4019 hw1.0: Add AVM FRITZ!Box 7530 specific
 BDFs
References: <319459b8-abce-a2d7-c8d4-df9e253dccef@david-bauer.net>
Date: Fri, 28 Jun 2019 16:43:07 +0300
In-Reply-To: <319459b8-abce-a2d7-c8d4-df9e253dccef@david-bauer.net> (David
 Bauer's message of "Sat, 9 Feb 2019 23:06:53 +0100")
Message-ID: <87imspddw4.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_064311_661316_770F4483 
X-CRM114-Status: GOOD (  15.80  )
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

David Bauer <mail@david-bauer.net> writes:

> this is a set of board.bin files for the AVM FRITZ!Box 7530 Router [0],
> which I wish to be added to the ath10k-firmware repository.
>
> As per the current "Submitting board files" guidelines [1]:
>
> * description for what hardware this is:
>   - it is a IPQ4019 based board [0]
>     - one QCA40xx radio is used as 2.4 GHz radio
>     - one QCA40xx radio is used as 5 GHz radio
>
> * origin of the board file (did you create it yourself or where you
>   downloaded)
>   - all files were extracted from official vendor firmware which was on
> the device and can be downloaded from AVM [2]
>
> * ids to be used with the board file (ATH10K_BD_IE_BOARD_NAME in ath10k)
>   - qca4019 hw1.0
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=AVM-FRITZBox-7530
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=AVM-FRITZBox-7530
>
> * sha256sum of each new board file to add
>   - bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=AVM-FRITZBox-7530
>     - c7b6026635bd32fe0709600edb024e1752151a0d038a1a8830f847bb815ad32b
>   - bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=AVM-FRITZBox-7530
>     - 5191621ea04058dad1709c492c559de24454374c9d286582154ff94a1978d248
>
> * attach the actual board file (board.bin)
>   - the name of the files are equal to the id string in the board-2.bin
>     (minus the ".bin")

Thanks, added to QCA4019/hw1.0/board-2.bin:

New:
bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=AVM-FRITZBox-7530
bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=AVM-FRITZBox-7530

Changed:


Deleted:

2 board image(s) added, 0 changed, 0 deleted, 44 in total

https://github.com/kvalo/ath10k-firmware/commit/c0190272ee9ca94efbfa30b48bc2a8f29a91d7bd

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
