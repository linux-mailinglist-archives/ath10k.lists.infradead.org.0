Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCF2BAF46
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 10:22:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfEZM56ObGLsB9r5ToyZ7nK13+2xrjEeUrFra79ZaJc=; b=aZoiUtU5JQ0Imo
	Xp4I0DolGJZtdoBdqhRoZMzdS0ljtbpV/WVBq7FrcXb2TOR7/LngjPM55RKOZhrMcM+tj1R8kqNB0
	rQt+YwT4a1vrjRGkBV4QdLBPpnKCEczjSYGHXVaaClUiURkKQ7N0lWwQJ3q3Ll0sEIUD1NM2wl/ih
	EXIuqKdT+r9RutQTLNL4G/eaU4s5KvCeKwHz0HuPIBd/g/Iy6rsjJ7EF7ygzw4uakRcn/yoFccSdL
	+1XTCW7BTUW4SYpYBe+h+QBWQx0W92Zq5W1K8MRUXwvhPKdjKahHfkH2F5wxaBWVlHlrGHAHjEovc
	gr53QyL/ePq4OwGP3tpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJc6-0002Tb-43; Mon, 23 Sep 2019 08:22:30 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJc0-0002TH-Vu
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 08:22:26 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A3404614C3; Mon, 23 Sep 2019 08:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569226944;
 bh=0ClyKPJlGM5Zhl2YlUVTmZ73pKnaiY9/tMco5ldP1Dc=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=EtoAY7raojCv+XBX24ytesnQlYpmtkMomioAs/FAkfNHPs21r2vkpuFWeL9XRLbkE
 QKaDtm33682IG6ZDL/FwrG5NBN0E77PQ5G2cvlSaJM8yyoh5HzrHF74KRRFQCOf1QF
 zpsDBq0YeRqPbUCA/FUB1DngahB9iarZuVZxsLBY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1CCD460850;
 Mon, 23 Sep 2019 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569226944;
 bh=0ClyKPJlGM5Zhl2YlUVTmZ73pKnaiY9/tMco5ldP1Dc=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=A4a6eJTzPZ43IXx2JhZCIVoQRf59O/d6TtYlAMevqzYWFQWovDClqjIadsgWHJ22q
 pb9n3Rnux41Ylrz9Kjts1tIIi4Vn/rgciZX8lqGeJ13Vpg2MSRI3J+TcdUySZ+hf/y
 bpGtjzYySkFSt21tbqDXcNRodI8H1GFzL4cRf25c=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1CCD460850
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
Message-Id: <20190923082224.A3404614C3@smtp.codeaurora.org>
Date: Mon, 23 Sep 2019 08:22:24 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_012225_045133_B0D6AB7E 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

I requested Surabhi to include these patches into his patchset, due to the dependency.

https://patchwork.kernel.org/project/linux-wireless/list/?series=85455&state=*&order=date

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
