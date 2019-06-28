Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2917459D2B
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikYu459rvnHlXjs8ND+4dXFQWw2NspDCiY+KVp4AAGA=; b=LmIg09lQn9orxz
	TnXWr/wg0WIm3g8XN/T+BEqN8qHEKJANwSha5QYGaJEJIMlJZInewkMXbXpFgzUxruwh9HtKHWT5f
	T9HxClMByCh4Spbs1ef+So3wTGkYBrL+O11RwNy3Kr0s0hYIUhprZU+h/4Y7y2ASbmwvYu79jHY3c
	QfmHGL1gmDQpAyl8PyKiNCStoyaxDcTda1wy0CflSCGUEPzwLUylzKVP3/ZAOBqgL43ot59tLRv6x
	rkINOivsyLx5LBZV2Sf5SFmF3C2yZc0khOWYv1SAy5r0mYetlqC9bWZUQU059M4tQ7p0p0u0+Y8yw
	skdHgZBbbZIEGmAXwrFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgrC8-0002c0-DU; Fri, 28 Jun 2019 13:45:40 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgrC4-0002bg-10
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:45:37 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id BF7C860A43; Fri, 28 Jun 2019 13:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729535;
 bh=ePLqaTx/EBmtLP1CMSCT+kaOPZwE5Gr8FuDgaI8JQYA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=JLBtGYprUa0WGdfKdrs7uZoQA6Zl2voCcoTAYbAkl5fTGRNsZjFG4tM2UASQXWdyN
 +Y9qv4f3RITzxjPD384EsLZkgw1TcggESigEEnBzbJ+ZvrDJL6xiExS3YxLQVIVd8o
 FAYF79kyZaPqloINZJ6DceAKpi5BjRK+edRtU52I=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 02B67602F4;
 Fri, 28 Jun 2019 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729534;
 bh=ePLqaTx/EBmtLP1CMSCT+kaOPZwE5Gr8FuDgaI8JQYA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=bCvGdVjMuQ5YBWWoX2XoQWsuWKbgsf2flcrLGSdkk4iVol44gjamQCxXGesUyrhll
 Z1ggpSAY1YK4sjI1rXYlqjKYM4A1MU4/HP8urF+N0NGwiNWNUmBFFncvTmPifXmf8o
 Ym07FpuH1g07ZIcSViNP+pAdzLndZ4jNtJal7XsA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 02B67602F4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Steve Glennon <S.Glennon@cablelabs.com>
Subject: Re: ath10k-firmware: IPQ4018 hw1.0: Add EnGenius ENS620EXT specific
 BDFs
References: <7C60B6E9-D2E1-44C6-8818-5E22D435C4BD@cablelabs.com>
Date: Fri, 28 Jun 2019 16:45:31 +0300
In-Reply-To: <7C60B6E9-D2E1-44C6-8818-5E22D435C4BD@cablelabs.com> (Steve
 Glennon's message of "Mon, 11 Mar 2019 18:41:53 +0000")
Message-ID: <875zopdds4.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_064536_096509_949E49CB 
X-CRM114-Status: GOOD (  15.62  )
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
Cc: "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Steve Glennon <S.Glennon@cablelabs.com> writes:

> I am adding support for this device to OpenWrt. This AP requires 
> two special BDFs to get the Wi-Fi PHYs working (correctly). The  bmi-board-
> id='s would clash with one of the the IPQ401X AP-DK boards because QCA doesn't 
> provide special IDs for customers and seems to use the AP-DK board-ids in the 
> wifi firmware to change its behavior.
>
> Now to the questions from the wiki page [1]:
>
> * description for what hardware this is:
>
>   - it is a IPQ4018 based board
>   - one QCA40xx radio is used as 2.4GHz radio
>   - one QCA40xx radio is used as 5GHz radio
>
> * origin of the board file (did you create it yourself or where you
>   downloaded)
>
>   - from stock firmware image
>
> * ids to be used with the board file (ATH10K_BD_IE_BOARD_NAME in ath10k)
>
>   - QCA4019 hw1.0
>
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=16,variant=EnGenius-ENS620EXT
>       md5sum:
>       06b06ff901de575a57b054af238c1335
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=17,variant=EnGenius-ENS620EXT.bin
>       md5sum:
>       7cb23e1ff21179de5c4e726552864285
>
> * attach the actual board file (board.bin)
>
>   - The name of the files are equal to the id string in the board-2.bin
>     (minus the ".bin")

Thanks, added to QCA4019/hw1.0/board-2.bin:

New:
bus=ahb,bmi-chip-id=0,bmi-board-id=16,variant=EnGenius-ENS620EXT
bus=ahb,bmi-chip-id=0,bmi-board-id=17,variant=EnGenius-ENS620EXT

Changed:


Deleted:

2 board image(s) added, 0 changed, 0 deleted, 50 in total

https://github.com/kvalo/ath10k-firmware/commit/30a36dcd3c77668891cf12971f80b5cdb4fa851d

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
