Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6C25A4F5
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 21:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DxnONELmJ+0HmTk84q2zIWg0819JIQ+rpZraT4FIRw=; b=bbjtI9e10H/ONJ
	Qo6T+akwg+Ze4TxRYFGYaM0Dh0omQg11vbuWfgzqYBRspDex+dik6ZKkE5V7CzeeL8Gp+EV0hvU0W
	HbQV2O0c4jSVjZRq2xudCUlFsh6xpF5gxfHN9/i9d7vmZGKyoPRXM2lYmiNnUUKVWJSg15UQscnjK
	NV8cl8zMYyqCngs6acbtIdh5Vpris3zlVM4Ah8YKSdzGrFo9eXFYh5M84Lggl2VJpa+K0V5e9Z6QD
	cjYBzsvrQKkz3KywlE3Zj9UUGGTB0OqN42KELW0P7V2M0enRfXcoNt+9TvIsG13BJhxr2kvAHJyJo
	9NmlX2rH6LasyPdRftbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgwKd-00037k-CK; Fri, 28 Jun 2019 19:14:47 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgwKX-00036c-N2
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 19:14:44 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6972760909; Fri, 28 Jun 2019 19:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561749281;
 bh=p0/lF8gZG07owNuUq+c9UbyIWgsYbZiHIKEkkannqs0=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=ccJdc5hEDFUDSvV8vx4/OOS4VAYiMCcry4H8Y6NyqjO7CPq0p5fOXY58kWoxotbF4
 XO4ZRy+rw74KJSbb0cb8YaC2hhgW8gaB1BQg+D2hpwbIHAASNJKnAfCkgTdEgsaC15
 oIB8ODQzh14Q5ayxKRW+MGpBOkbXgjwbSz9+Cqbc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3B664608BA;
 Fri, 28 Jun 2019 19:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561749281;
 bh=p0/lF8gZG07owNuUq+c9UbyIWgsYbZiHIKEkkannqs0=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=PuuaiXC0SVvkJbCzMywmDVUW9A1DL5jfIMWAV5eTb3Ovgt1FakNAooyaz4GjZdYAY
 FxegwTwQ4u5xAtHPQ+Igochw7As0PJJRVW5wduGlQSCOY+AcsaaE5us9B+ufyhB9jB
 f9edaBWR7ha4bypH2kWagyWZPQ4g4oJ6aNwXwa5w=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3B664608BA
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] ath10k: remove unnecessary 'out of memory' message
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1561661250-30528-1-git-send-email-kvalo@codeaurora.org>
References: <1561661250-30528-1-git-send-email-kvalo@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190628191441.6972760909@smtp.codeaurora.org>
Date: Fri, 28 Jun 2019 19:14:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_121441_771745_949E785E 
X-CRM114-Status: UNSURE (   6.04  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> wrote:

> Fixes checkpatch warning:
> 
> drivers/net/wireless/ath/ath10k/swap.c:110: Possible unnecessary 'out of memory' message
> 
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

2 patches applied to ath-next branch of ath.git, thanks.

2189135437d0 ath10k: remove unnecessary 'out of memory' message
d44c732cffe5 ath10k: pci: remove unnecessary casts

-- 
https://patchwork.kernel.org/patch/11020277/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
