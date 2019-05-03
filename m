Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5186612768
	for <lists+ath10k@lfdr.de>; Fri,  3 May 2019 08:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMILLbTepWnARoHSA7yuXn0ESeqvEveOFb3+Ry1Fyvo=; b=jU8jfS/IjoKCWK
	EDSxE7KiVbNlVGBRHV07mH4MPqLQMyJksywCMJARQ6y1Ty+bHWQyDInwo+sSaL+PSPTEEKhCdJFMV
	EjUv5HZpIqzpiVewbcbWWC4M5rkAc4v76wKFWOdXDbOfu6n6ImJKPIuns+pmrbBf7LSX3wYZcC/PI
	aQXnCKktJh+nE7hsOZPBX5I/1up1dQ0ZydyM9AHjSIlFuY9v+ZZY5CYJbU2YgjjrhsqkW5NCthXU5
	m1gr3eFXIkk6+V9iMYagwxZixYBt1+UxUavVqofpiC18Y7mvWScOwzyo03dEeJZLL/4e3NLKp+rM4
	d/wosgdWOxcC3DK30vqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMRFM-0003LI-Ky; Fri, 03 May 2019 06:00:36 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMRFI-0003Kl-L8
 for ath10k@lists.infradead.org; Fri, 03 May 2019 06:00:34 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 381736118C; Fri,  3 May 2019 06:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556863232;
 bh=5VofvhO3q6xFvNAjHarBuvHnfU1B5Z8su4odSZgCzQk=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=j+5jnP6tA7OEiNGWO5O+crlBaoPJLAlEwqv7KLEg081lfTXSMg9J8Uhosm04VO4kh
 I/JYaiHm5HF5rpAOKPOMlUK3oRqS6gEKR5Qzx5AWcUmIVZahgNOmqspy09d+TnUDI6
 oYGEbVEoxKFUmZvEaZCIp1s7ilYkUJ04fkrgvHF4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D7F7C6115B;
 Fri,  3 May 2019 06:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556863231;
 bh=5VofvhO3q6xFvNAjHarBuvHnfU1B5Z8su4odSZgCzQk=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=dZdvsSx8q8Z9xvd7BD7ViC48wvdYq2pcEEjZ/EyJ/FfJI+hQltx7mWOHn/NwK/Itz
 GakUy4s2sgt4ZdmxXqZdzwkb6linUz4mVjRj8KItesI3uskh3LGBRVnxxerT3vc0Sn
 R+qO8B44wI4BevELN19El+SYZRWEgCLHk6uqJa8c=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D7F7C6115B
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] ath10k: Fix rate table updation in tx stats
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1552319602-17795-2-git-send-email-pillair@codeaurora.org>
References: <1552319602-17795-2-git-send-email-pillair@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190503060032.381736118C@smtp.codeaurora.org>
Date: Fri,  3 May 2019 06:00:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_230032_740779_A453D525 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Rakesh Pillai <pillair@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Rakesh Pillai <pillair@codeaurora.org> wrote:

> The index for updating rate table, which is displayed
> in the tx stats via debugfs, is calculated using the
> bandwidth value. The bandwidth values do not map
> correctly with the bandwidth values shown in the rate table.
> 
> Correct the bandwidth value calculation which is used
> to calculate the index for rate table updation for tx stats.
> 
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
> 
> Fixes: e88975ca37d1 ("ath10k: dump tx stats in rate table format")
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>

Fails to compile:

drivers/net/wireless/ath/ath10k/htt_rx.c: In function 'ath10k_accumulate_per_peer_tx_stats':
drivers/net/wireless/ath/ath10k/htt_rx.c:3252:14: error: implicit declaration of function 'ath10k_get_bw'; did you mean 'ath10k_get_tid'? [-Werror=implicit-function-declaration]
  rtable_bw = ath10k_get_bw(&ar->hw_params, pstats->flags);
              ^~~~~~~~~~~~~
              ath10k_get_tid
cc1: some warnings being treated as errors
make[5]: *** [drivers/net/wireless/ath/ath10k/htt_rx.o] Error 1
make[4]: *** [drivers/net/wireless/ath/ath10k] Error 2
make[3]: *** [drivers/net/wireless/ath] Error 2
make[2]: *** [drivers/net/wireless] Error 2
make[1]: *** [drivers/net] Error 2
make[1]: *** Waiting for unfinished jobs....
make: *** [drivers] Error 2

2 patches set to Changes Requested.

10847733 [1/2] ath10k: Fix rate table updation in tx stats
10847737 [2/2] ath10k: Fix NSS tx stats for legacy rates

-- 
https://patchwork.kernel.org/patch/10847733/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
