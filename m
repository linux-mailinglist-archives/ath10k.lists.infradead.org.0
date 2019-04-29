Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC71E4E2
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 16:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBcdJ1bQjz0E4lNVft989HqvKcXIXYXSTAikf2IrCPs=; b=KnkEFzDHEnJ3W2
	J0xiH+087PZVL+4/U4Da5APf6ldYxA8lp5d/zVp2eizcgLDkCzuXZxAxuL4Gr0j10B8ekZMod8WZq
	ZQcWQZUIOBKlmm8mmv8YK6T47wBoWr511b0VOT6tL7oOxREKv+Uq8cJB6qT0WDNowix7Kp1vhD3JH
	6zoVxYHO8F/vYVYqG2Bk3aXSmslDeN3LV8h2+beTy04E7Qq1hUkxkdyYVR9rQvIQ60yFIFaVSWjCH
	2//RRjXz/RXQ7DcNaR3t48nqudtuZCnSI0hMNM84yN2sqhLGKgMgnmAwepjeY7xsbtx18Uyp3lpU8
	UzSRHlk7Dr9LMCwK88fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7RR-00041r-WB; Mon, 29 Apr 2019 14:39:38 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7RO-000414-8e
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 14:39:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id BAD2B60863; Mon, 29 Apr 2019 14:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556548773;
 bh=LWy9oGKusitzGP2I5h7oakHmHfuLqrC4+igzse3/mQw=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=YyZppnTt1yLg/MDKuy9v27+RZC0eiJN7hSh5+c6pDH9i7gK7DafQCK5Mo0lhCiSpd
 eFsCAryQ/ZiaMBqhj2Zv9b57tYWvmbV6eQqotN2YaqpTRMqez9aWfhhtZLWKQyxal9
 GF5QuLN9752i3L5BqLWPautHFT3ZkboN0Xtek5Xs=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 576E4605A2;
 Mon, 29 Apr 2019 14:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556548773;
 bh=LWy9oGKusitzGP2I5h7oakHmHfuLqrC4+igzse3/mQw=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=hoDBgk1wKfkLIKtCGOAIZID/DuNkbk5+6VsIbljPZUYTw+B6G3ME84F0nscwy+Fff
 D5rNLJBEdAleX2ZV/X8P+s0Cs6jAi6o2YEQQHUqW8MGTj7vJnEIAAdcNMq6vFOP1LN
 j2BWpf50LzM6j5Kd+nbmn6Mc4j0HD29F9WMJpDfY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 576E4605A2
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/5] ath10k: add struct for high latency PN replay
 protection
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1556260871-2919-2-git-send-email-kvalo@codeaurora.org>
References: <1556260871-2919-2-git-send-email-kvalo@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190429143933.BAD2B60863@smtp.codeaurora.org>
Date: Mon, 29 Apr 2019 14:39:33 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_073934_321495_659D781F 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> wrote:

> Add the struct for PN replay protection and fragment packet
> handler.
> 
> Also fix the bitmask of HTT_RX_DESC_HL_INFO_MCAST_BCAST to match what's currently
> used by SDIO firmware. The defines are not used yet so it's safe to modify
> them. Remove the conflicting HTT_RX_DESC_HL_INFO_FRAGMENT as
> it's not either used in ath10k.
> 
> Tested on QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

5 patches applied to ath-next branch of ath.git, thanks.

e1bddde9737a ath10k: add struct for high latency PN replay protection
28ce53b6cfda ath10k: add handler for HTT_T2H_MSG_TYPE_SEC_IND event
130c77495708 ath10k: add PN replay protection for high latency devices
33f9747291ff ath10k: add fragmentation handler for high latency devices
a8b10da05cbe ath10k: enable QCA6174 hw3.2 SDIO hardware

-- 
https://patchwork.kernel.org/patch/10918335/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
