Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5449269A2F
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 19:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9Fqnsu+p+7smCZZo5RfwVQEbWdEHYH3W+FJc7UUiH8=; b=GbQTGrcsAE1rJI
	FTxa8gnnI2Om0g9j2bEXp4uhEXAvLXhrlU86AZ8arCgIJUaoKBDECTGN2Qwdl6rb3FUe2QppRpu8l
	EMB4LjXE7H3/oS28Hqnnq/oVW2ayRqO4bfW+5P4qA0V+KwdXxhKn6Xzkxju1DeorQ0sUaBRTfrITt
	C+c/ijmNn6hDWI8jR9CX3bsDKaLGvvbRgfQJaoZbZPNxonua8WKh3dUzg0Ye7VDJYZJmouNKMiaFI
	YuuN3eJmmhQWLjlDohgj9VArxWttmvLl7/7p4Nn4J0EhCcj9lQIkkPI8ni0iFvIvCT3CKlOqNhKJz
	Xwin3RdDgsEOSGRdDNpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn57S-0004Yw-JK; Mon, 15 Jul 2019 17:50:34 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn57K-0004YO-T4
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 17:50:28 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 92B72608A5; Mon, 15 Jul 2019 17:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563213026;
 bh=/lSgWV0qhJBU7teaaZADnvZgryqOT8WpHGuFgc/JXVQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=jXDMok2K0t9j+FlF3jnOeaP1fESmlr0cBRbMfnXnsU8WoMRWxB0VCRfQwGRZ/TFVw
 KVUmvyfz4Og86dYOdWaibruYtL8PH2cg2tUkzKvcTLbLcLGkYu6fesXLRHowZlmiBR
 b7CbYfm0uhPvyrTwdV3BunAd2D0Sz6DgLYuOmbsI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B26A5608A5;
 Mon, 15 Jul 2019 17:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563213025;
 bh=/lSgWV0qhJBU7teaaZADnvZgryqOT8WpHGuFgc/JXVQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=lQDeg8i8+7KaebBVO5vlolqOWC/e6DJZQJeQ2VK6nIvHJS241jAtPcofIAPAoNxHM
 k+8JDMZO1AWKJ9PC1a4ZkPR/eyxcacglwnti9ekAOEbE4y3OLHtI9jrTJtoZvXMFnt
 m8umusvEmFMemKsA1gdIh0bOeNI1OaFXU8rTrn1I=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B26A5608A5
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: work around uninitialized vht_pfr variable
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190708125050.3689133-1-arnd@arndb.de>
References: <20190708125050.3689133-1-arnd@arndb.de>
To: Arnd Bergmann <arnd@arndb.de>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190715175026.92B72608A5@smtp.codeaurora.org>
Date: Mon, 15 Jul 2019 17:50:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_105026_976074_039D73BC 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sriram R <srirrama@codeaurora.org>, Arnd Bergmann <arnd@arndb.de>,
 Miaoqing Pan <miaoqing@codeaurora.org>,
 Pradeep kumar Chitrapu <pradeepc@codeaurora.org>,
 Balaji Pothunoori <bpothuno@codeaurora.org>,
 Brian Norris <briannorris@chromium.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 Rakesh Pillai <pillair@codeaurora.org>, Wen Gong <wgong@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> wrote:

> As clang points out, the vht_pfr is assigned to a struct member
> without being initialized in one case:
> 
> drivers/net/wireless/ath/ath10k/mac.c:7528:7: error: variable 'vht_pfr' is used uninitialized whenever 'if' condition
>       is false [-Werror,-Wsometimes-uninitialized]
>                 if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7551:20: note: uninitialized use occurs here
>                 arvif->vht_pfr = vht_pfr;
>                                  ^~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7528:3: note: remove the 'if' if its condition is always true
>                 if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7483:12: note: initialize the variable 'vht_pfr' to silence this warning
>         u8 vht_pfr;
> 
> Add an explicit but probably incorrect initialization here.
> I suspect we want a better fix here, but chose this approach to
> illustrate the issue.
> 
> Fixes: 8b97b055dc9d ("ath10k: fix failure to set multiple fixed rate")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Patch applied to wireless-drivers.git, thanks.

ff414f31ce37 ath10k: work around uninitialized vht_pfr variable

-- 
https://patchwork.kernel.org/patch/11034993/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
