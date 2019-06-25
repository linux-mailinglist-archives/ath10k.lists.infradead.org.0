Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EBF54F48
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 14:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuqqYGaDkbbNZFS3DTZFgCTZ7LGCD4PZyYM+T2okCC0=; b=FlDHtk5agLGT+p
	o5xMdbF90fLjTLJ8OG0R7mdvAtPx9QmA1HueWbkISyP5x7QIMuZoYjlYv6+RwlTLDush5NbiLeUm4
	DMIn3bmkuwwjYZl78KSheV7BXx2SRF36OnIYZTuq4TtL8QHfWwDqODbcsnVUdeJm5hMkl3ipSQmSC
	z3NuQm1xVyUdca3Va+xxSZHgnHnfwiYUpa1tiBbdj0fozF11dO7sYHXnqjRCLuL/IWammifZEx5fR
	P7wg1nYYtjJoDPF/e6w2ZphvdnU4HmfUfREzU6sRbOq3CzdGT0dgB2/WjdYxIDa2tiJgCtDGtrhTk
	XAtem38mlHOphr+MWY0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkrj-0002GN-G3; Tue, 25 Jun 2019 12:48:03 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkrf-0002FN-31
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 12:48:00 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 22A1960909; Tue, 25 Jun 2019 12:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561466878;
 bh=ZEqNswo8HmpKPjsJHs4+PSCICnHDAxC7vF20TMdW/io=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=OyB4jX88lPfX23E3xy39w9mcdu1WvcCtUxu6vWp7XRwCHbHPAMt/ph2Clla4Ulql2
 dYRELBNwouWxi/SuIitRziq7AsDeJeeDR1vGSHknmw+WvB5UaTAPRR79QcxYCYjxEh
 vkx9NtsJMnLkomKy2AZIdke3Wmw/1wCCGs8dW6BA=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F1D09607DE;
 Tue, 25 Jun 2019 12:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561466877;
 bh=ZEqNswo8HmpKPjsJHs4+PSCICnHDAxC7vF20TMdW/io=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=Y0X5/vkLkAUmFkM6BVnVcHxKqhdbdL6Kg2I31657NIvtjaG7Zua8DRpiB+opgCJMn
 UtDK8PuzLj9g7UEfGqSfUpbC4z7XCkLFlT3YJmvzKiEXPeI+uzHUr/KQM8o9jGPfed
 /1+CNqwzlWCV4vuUsM5gJ8NZl47vMuaEnv9zWByY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org F1D09607DE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] ath10k: add inline wrapper for htt_h2t_aggr_cfg_msg
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190326162904.6737-1-erik.stromdahl@gmail.com>
References: <20190326162904.6737-1-erik.stromdahl@gmail.com>
To: Erik Stromdahl <erik.stromdahl@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625124758.22A1960909@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 12:47:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_054759_173672_F53718ED 
X-CRM114-Status: GOOD (  10.04  )
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
Cc: Erik Stromdahl <erik.stromdahl@gmail.com>, kvalo@qca.qualcomm.com,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Erik Stromdahl <erik.stromdahl@gmail.com> wrote:

> This is done in order to make the *htt_h2t_aggr_cfg_msg* op align better
> with the rest of the htt ops (whom all have inline wrappers).
> 
> It also adds support for the case when the op is missing (function
> pointer is NULL).
> 
> As a result of this, the name of the 32 bit implementation in htt_tx.c
> was changed and the function was made static.
> 
> Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

2 patches applied to ath-next branch of ath.git, thanks.

74ee5715991f ath10k: add inline wrapper for htt_h2t_aggr_cfg_msg
bc31c2cfecc7 ath10k: add htt_h2t_aggr_cfg_msg op for high latency devices

-- 
https://patchwork.kernel.org/patch/10871563/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
