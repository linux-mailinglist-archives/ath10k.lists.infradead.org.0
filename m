Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A89DB1259
	for <lists+ath10k@lfdr.de>; Thu, 12 Sep 2019 17:39:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtemKvWW9kF8UDWoR3gbj7/q6vHf3ssINbL+pOiUwuA=; b=gFHY2QqFdaGHTZ
	ZTqu0mAKLOlILuz3lKTc4HgpLwS7DvZfdIY0y8bpLr9OW5cVHivJuJ/dfx66PDI04ESBmWzMAvWim
	dDZj/0PhWXszZv/Q8ZGuG4viPeuknZ9fby2Vxng6fFPD5Eh4L0hVWA7BNuuO8QhiLxR2k3joAE16W
	vEWBZaLbMp7BgrUxvotCDiFseUQN5U846WxqmqWqEE8L66x/x/tvIGVAkUPq6yQdlXP5SEzFSps3g
	FMxs17OOJY8WUDTi5R5pmj831jrDB484FhvuO0faYHv3DpvsjFuCTIXgJbKiM1jOKwNxBTSFc9pUS
	3l0XXA/YRfVM5B1oQ6Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8RC7-0003gn-Lc; Thu, 12 Sep 2019 15:39:39 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8RC1-0003gR-Um
 for ath10k@lists.infradead.org; Thu, 12 Sep 2019 15:39:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3F76560A00; Thu, 12 Sep 2019 15:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568302773;
 bh=hHHBTfNtzMKKd0mSltPpqrfqv6HJp7GitBCPceSZ6mc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=hWmU42krLoUvkLK313LJ7Kr63UCkwnN8A4BRMCk1xse4rwVH9jHE/4rRAafH9+ZQy
 xG5eTvVRFwE4S+ZTUoB49yG8samH64/WWj+Ahw7UmhQruGIAblv0MoKxnS9QYpxmH4
 nlcV+3LUlCuk4eCL9PRTj1VgEcsNJpWgwqbEYGrw=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 848B16055A;
 Thu, 12 Sep 2019 15:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568302772;
 bh=hHHBTfNtzMKKd0mSltPpqrfqv6HJp7GitBCPceSZ6mc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=cLPuYJokIj+wsdj6tpwXTxDf/adYZnXXIlKzHid088HzjM0do1p0Q/gkP7ASE36+r
 sYNihBu63AYsrrbr03+ro30377Ej6BvouZrAbcJ+IStiMAxVKRlKhNlOGU6oloVbK8
 +qUpdlIOLHrdkxyZfO5EyvZPbdHvwJogZr8AiP/U=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 848B16055A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v5 0/8] ath10k: improve throughout of tcp/udp TX/RX of sdio
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
Date: Thu, 12 Sep 2019 18:39:29 +0300
In-Reply-To: <1567679893-14029-1-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Thu, 5 Sep 2019 18:38:05 +0800")
Message-ID: <87tv9hikwe.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_083934_036925_69243F48 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> The bottleneck of throughout on sdio chip is the bus bandwidth, to the
> patches are all to increase the use ratio of sdio bus.
>
>                       udp-rx    udp-tx    tcp-rx    tcp-tx
> without patches(Mbps)  320        180       170       151
> with patches(Mbps)     450        410       400       320
>
> These patches only affect sdio bus chip, explanation is mentioned in each
> patch's commit log.

I tried to apply patches 2-8, patch 2 had a conflict due to my changes
and patch 8 didn't apply at all. Also I saw few warnings with the
patches I was able to test:

$ ath10k-check
drivers/net/wireless/ath/ath10k/htc.c: In function 'ath10k_htc_bundle_tx_work':
drivers/net/wireless/ath/ath10k/htc.c:796:24: warning: variable 'eid' set but not used [-Wunused-but-set-variable]
drivers/net/wireless/ath/ath10k/sdio.c:2169:6: warning: no previous prototype for 'ath10k_sdio_check_fw_reg' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath10k/sdio.c: In function 'ath10k_sdio_check_fw_reg':
drivers/net/wireless/ath/ath10k/sdio.c:2171:6: warning: variable 'ret' set but not used [-Wunused-but-set-variable]
drivers/net/wireless/ath/ath10k/sdio.c: In function 'ath10k_sdio_fw_crashed_dump':
drivers/net/wireless/ath/ath10k/sdio.c:2434:17: warning: too many arguments for format [-Wformat-extra-args]
drivers/net/wireless/ath/ath10k/sdio.c:2169:6: warning: symbol 'ath10k_sdio_check_fw_reg' was not declared. Should it be static?
drivers/net/wireless/ath/ath10k/sdio.c: In function 'ath10k_sdio_fw_crashed_dump':
drivers/net/wireless/ath/ath10k/sdio.c:2434:17: warning: too many arguments for format [-Wformat-extra-args]
drivers/net/wireless/ath/ath10k/sdio.c:734: braces {} are not necessary for single statement blocks
drivers/net/wireless/ath/ath10k/sdio.c:969: braces {} are not necessary for single statement blocks

But please don't send a new version until I have provided review
comments.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
