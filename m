Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DF259CEE
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6FM/G12VrWKImhcZEteqT9shAb5QNqgNHZmMXN4wIw=; b=rzcsOnDQkndYS6
	M7/Ucb6W9llKxU+4g0q9Vl79LBwV7Lmu6LYBgX3j9CtNHPhFgPoQ++x1PNvhhsSkhzqt88C8300jN
	KZPCX15N+sdJffJkMl7f6ltvcF0iR82BLt+EVmy/TqbESZ0BMDoZfbUwcYOZtSZdOrrwPakuk8p6s
	Qf5IY0fyZdE6PbgCJr84eUlZ7tQoKf0l7BPYg8x9pcbgVGizVIce9plm1jT2Dv1rG1dFxgz3/sUUi
	GHujfhgT/KfEYf/tFqBUqQtafCynw8T1HMp8xs4D4E3UyCyUINxd3WM+F66oq2ftxXzqdjpLYDyVh
	oNwHREG9YQ/ETb260Vjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgqw2-0003tD-Gh; Fri, 28 Jun 2019 13:29:02 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgqvy-0003sY-Fp
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:28:59 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3640C60ACA; Fri, 28 Jun 2019 13:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728538;
 bh=86cug1IPJWW9kBpFHWSFxGZyEo6634+PaazR2S4fpSw=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=FzHA+dElQR+AZVU9nXaOrQzGhRjcFna5qXSWZzVcBfT0vM8UUaQtfmwSZ/4wDq2fq
 nBUKJXjoHhvN89F2tFoCfIhjnPigRgOlyHn2EVWBzVWEaUugw32FMiGSbhUtgr2Nbk
 S+fP6CcE2mOHlb/kcMXE716T34V9IDi2+k11c2ww=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 10A3E607B9;
 Fri, 28 Jun 2019 13:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728537;
 bh=86cug1IPJWW9kBpFHWSFxGZyEo6634+PaazR2S4fpSw=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=A5YXbsTQGLNKM8Krihf1rpIowZkiK4eKKx3oAmoZc+1fU+kS1iN8XAXC+xA06q95w
 lZwEM0e3oJlS7aFQTMSMTEql7D1qbofdyqm06bmfBLduie+A9PkSqFEihdzLQUcDPQ
 JDmS44wu3ZAfyYTbSMqK36ihgPZSN3qO7xKCKU/s=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 10A3E607B9
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: mail@f0wl.cc
Subject: Re: ath10k-firmware: QCA4019 hw1.0: Add ASUS Lyra specific BDFs
References: <20181217205951.652B2740057@dd16018.kasserver.com>
Date: Fri, 28 Jun 2019 16:28:54 +0300
In-Reply-To: <20181217205951.652B2740057@dd16018.kasserver.com>
 (mail@f0wl.cc's message of "Mon, 17 Dec 2018 21:59:51 +0100 (CET)")
Message-ID: <87pnmxet49.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_062858_542607_BD18DC5F 
X-CRM114-Status: GOOD (  15.47  )
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

mail@f0wl.cc writes:

> This is a set of board.bin files for the ASUS Lyra MAP-AC2200 Router [0],
> which I wish to be added to the ath10k-firmware repository.
> As per the current "Submitting board files" guidelines [1]:
>
> * description for what hardware this is:
>
>   - it is a IPQ4019 based board [0]
>   - one QCA40xx radio is used as 2.4GHz radio
>   - one QCA40xx radio is used as 5GHz radio
>
> * origin of the board file (did you create it yourself or where you
>   downloaded)
>
> - All files were extracted from official vendor firmware which was on the
> device from the factory
>
> * ids to be used with the board file (ATH10K_BD_IE_BOARD_NAME in ath10k)
>   - qca4019 hw1.0
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=ASUS-MAP-AC2200
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=ASUS-MAP-AC2200
>
> * sha256sum of each new board file to add
>     - 87f35885afcb94baa30440f257e5854e5475e7516ca1fdea192f945f914b0395  bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=ASUS-MAP-AC2200.bin
>     - 15a3b3afbdf24b560618f10ff58f0c78cdff757cb4a61c59b2e1ff771499d51f  bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=ASUS-MAP-AC2200.bin
>
> * attach the actual board file (board.bin)
>
>   - The name of the files are equal to the id string in the board-2.bin
>     (minus the ".bin")

Thanks, added to QCA4019/hw1.0/board-2.bin:

New:
bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=ASUS-MAP-AC2200
bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=ASUS-MAP-AC2200

Changed:


Deleted:

2 board image(s) added, 0 changed, 0 deleted, 41 in total

https://github.com/kvalo/ath10k-firmware/commit/437cbd27a0f65a66bc2a93dc39f9ceb983338bbc

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
