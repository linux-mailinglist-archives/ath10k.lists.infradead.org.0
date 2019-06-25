Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5806754F62
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 14:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yX+UPJt7G/kJ3Xu/yb1HG41QxsPM/IqmosVe8VEUotw=; b=nANHqcSznVaqEz
	mwN7fsopnZnCksvX3E38rQt5hup2eCAdBRrBSHl5fTIpV+p6fjpzaTfttg3Nt8xKSlCNUCtG//s/G
	SxJ/ErB/qhqnMZLxEhnSGnUeoGgEq6phoODx4jJCy8MGgDY/RA3dvcyESyLlWXoaS/VDGOUs0RYjk
	6xiS2w2oiwzKjB27qbrDcVPvPEXHDa4A8hRcwfhMuvBinLbsMagAjtfDZ+EqSoaxT+t0rzGxj8JXh
	zMPsIRuALKKpUpZnzFtN16//Wxelse+38Frg3dBFaACHj8x4il9D0RxeUw2tLl3l+Db6ZxEo5QtvB
	+06IV3EVyJzU3GMjdhyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfky8-0004aA-QL; Tue, 25 Jun 2019 12:54:40 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfky2-0004ZE-US
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 12:54:38 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A1769602F4; Tue, 25 Jun 2019 12:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467274;
 bh=dsJbZ4vezWjBrvQo8nbQEM9bBb+TA4WNjY2o/eWWC6E=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=d8G8dg+Hq6BVfdXEF+aznQpcS+QWjCeDBjZkiS42Mry/qIsuwNnSHH3v+zpW8lW30
 Duk4SomKhrnqWU6QfIDxkLaxcrDe6M71pHTzWcaKKcodxxCdolfw9gW8OJu0pdjBss
 FVhnlbitEefmprkL33kkE+fIQNPkZ6xbdEb4++z0=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1EA77601B4;
 Tue, 25 Jun 2019 12:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467273;
 bh=dsJbZ4vezWjBrvQo8nbQEM9bBb+TA4WNjY2o/eWWC6E=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=hrjatzPNWfi+A8gHtkLAO2J1lRvOuLnSnUitT9EQyvYIZ+muTyPPTUGz96rbmAiUq
 rP8utmMMdg2hvaSenHUMML/NU5gZMN9P6VVpcSXxHH1pGO/05qWoTb88iG/Uiv1RGE
 LwwgTddpPfBF+FHI8rS9hWvfdngLd8gbzT0k18as=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1EA77601B4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: change firmware file name for UTF mode of SDIO/USB
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1557891047-16606-1-git-send-email-wgong@codeaurora.org>
References: <1557891047-16606-1-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625125434.A1769602F4@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 12:54:34 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_055437_236947_EF84F00D 
X-CRM114-Status: UNSURE (   8.00  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> Firmware name for UTF mode of SDIO has changed from utf-2.bin to
> utf-sdio-2.bin, so it need to change in ath10k, otherwise it will
> fail for UTF mode.
> 
> After change the name in ath10k, it will success for UTF mode of
> SDIO/USB.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

54f6643bf19e ath10k: change firmware file name for UTF mode of SDIO/USB

-- 
https://patchwork.kernel.org/patch/10944213/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
