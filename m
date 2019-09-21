Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD9FB9DBF
	for <lists+ath10k@lfdr.de>; Sat, 21 Sep 2019 14:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DaOwV4kqmmSXIO1fhdqUwuMauLgXXyelwk/1+WWyNRw=; b=p5gvsO33uXYKNk
	t4KHudyTD+svpL/X4Y6dHRh761j0/iqScshfklTOyE57DS8AsJUGFjkQ1KwyLRs+2nBv2Ni7dXBKR
	f0/mMM0uD4u2DYthl7lcGGkCihAJv9atjDY920QE000uveWyN7VVtHBcKf1ty8q0dCaCLBUl7GP+E
	sMMIPpbdWvkMMlBVww61XiN2mX9i4IqV8mfOQGBphNA+UbP7YL6Cw+RD5n3Q//XN3uw8fBc3fM/xV
	kqIV/Lcg3JcJK+z1usPn7n69z0pPC4ck22I3GTIwMydA/zyvBpmSRXnl7LZDG9u2jEVtgs8Axb+rh
	dgCCl3LdqjCg68dOOWdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBe60-0004Uj-74; Sat, 21 Sep 2019 12:02:36 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBe5w-0004U2-Gh
 for ath10k@lists.infradead.org; Sat, 21 Sep 2019 12:02:33 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 2715C613A3; Sat, 21 Sep 2019 12:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569067352;
 bh=y3WyIXKp78T7Z0+PNgpl1qyjz/opNgPzXwSHd3PHFrs=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=BxBJq7pwqdfuHexW3CH4LaV/0WvCjZqCAqCkUC/GBsFWYPL+wavu9aqbq/KgEldMx
 rej1RISx5gw5EJn/qapylYyebeXkFbGtvltbMqgEnlNvtH6e1yrqEn3ZJT+dQ62Zl7
 kjMEMd0Df2RsZEbt1iMgopNnf2ooN6Y9mP4ubhL0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9EF6660C72;
 Sat, 21 Sep 2019 12:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569067351;
 bh=y3WyIXKp78T7Z0+PNgpl1qyjz/opNgPzXwSHd3PHFrs=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=QsmJu8cBnhE7DY+qQns6aJm2JTD6cJqyM4p+bc/65Zexaf5hH8Yd/M1f2le8yAgFx
 2KMgq2c6D7QrnDytxuCkvSlsbItAClbvg6dusMsJ9Laj9db2fkq6NnFmejsYqy/Ne1
 qkixwF3cxlQjKsXokSHVYn5xtvUot3tw3AVpasSU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9EF6660C72
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v5 5/8] ath10k: disable TX complete indication of htt for
 sdio
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
 <1567679893-14029-6-git-send-email-wgong@codeaurora.org>
Date: Sat, 21 Sep 2019 15:02:28 +0300
In-Reply-To: <1567679893-14029-6-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Thu, 5 Sep 2019 18:38:10 +0800")
Message-ID: <87v9tlamcr.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_050232_581317_0A681F28 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> Tx complete message from firmware cost bus bandwidth of sdio, and bus
> bandwidth is the bollteneck of throughput, it will effect the bandwidth
> occupancy of data packet of TX and RX.

TBH I'm not enthuastic about this, this feels an ugly hack. And it adds
yet another module parameter which I detest.

> This patch disable TX complete indication from firmware for htt data
> packet, it results in significant performance improvement on TX path.

So how much does this feature improve through exactly? Do you have any
numbers?

> The downside of this patch is ath10k will not know the TX status of
> the data packet for poor signal situation. Although upper network stack
> or application layer have retry mechanism, the retry will be later than
> ath10k get the TX fail status if not disable TX complete.

I don't understand this description. What's the difference in practise
from user's point of view?

But I think this patch should dropped from the patchset and revisited
after rest of the patches are applied.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
