Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D905AE494
	for <lists+ath10k@lfdr.de>; Tue, 10 Sep 2019 09:22:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rXAdMj7NebXaahR7ZoNnZyriJLHtpNcCQBjMK32ZrPo=; b=naLz7nJSNu/LwL
	WKUu/o3Sjes54XBrD8PvSVJFKciIUv+mvfMxUHV0/BUb+9Yjw0KMKUAqfiBsj4R6DM+VK9+DM/KdA
	fJ8FBJb5yBD4phBOIHh5xykGtODVczy3TJCqQpbgMBGrTGJRyl0iegeKqdxTLBBLnNwEpEwxDH8w3
	oHivtzLQc2JM+sF1uzjaMcDx+1lUu+WaUz5KYvr7nIlpnxW0iDXWR8dyHW3JkD+4PFnMzxUPpyM95
	207Yh+hZherEq5XAuo1GtI5Ga2/+vXG9w3NsU9Cj4EQo2P5+Fh/6E9v9G+vEB0lHaxFBdrr7f8ZsN
	Cpc6y5WllGINylgU6W3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7aTR-0001JO-Dy; Tue, 10 Sep 2019 07:22:01 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7aTL-0001J2-Td
 for ath10k@lists.infradead.org; Tue, 10 Sep 2019 07:21:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id CBA4C6050D; Tue, 10 Sep 2019 07:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568100114;
 bh=//GgADCv5P/N4lGj7YcRUNjlPgDm/wqbIpGducZmKn0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=a6+cMm1LIRKcKNTrhjCzqxmsRb1ejW7gN+CYN+pQ+vtkuaOTXhjjD05XtcGJAU8pu
 jdn/Pj4aHZdXeMwqRRq1YLzqAxCzMx3pw9nVrW35qw23AroyJkFo4eD+EDbWVc3XXZ
 2o47cLI4p9WJvOyGXU3rnSNuRXB0LEgIUVdqJUnI=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BAC2B602FC;
 Tue, 10 Sep 2019 07:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568100114;
 bh=//GgADCv5P/N4lGj7YcRUNjlPgDm/wqbIpGducZmKn0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=a6+cMm1LIRKcKNTrhjCzqxmsRb1ejW7gN+CYN+pQ+vtkuaOTXhjjD05XtcGJAU8pu
 jdn/Pj4aHZdXeMwqRRq1YLzqAxCzMx3pw9nVrW35qw23AroyJkFo4eD+EDbWVc3XXZ
 2o47cLI4p9WJvOyGXU3rnSNuRXB0LEgIUVdqJUnI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BAC2B602FC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Tom Psyborg <pozega.tomislav@gmail.com>
Subject: Re: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
References: <20190906215423.23589-1-chunkeey@gmail.com>
 <20190907214359.1C52A21835@mail.kernel.org>
 <CAKR_QVKv8kgXSSCwd8esw28hARA61Pah3usRi+ZZG6ss2CcS=g@mail.gmail.com>
Date: Tue, 10 Sep 2019 10:21:48 +0300
In-Reply-To: <CAKR_QVKv8kgXSSCwd8esw28hARA61Pah3usRi+ZZG6ss2CcS=g@mail.gmail.com>
 (Tom Psyborg's message of "Tue, 10 Sep 2019 03:27:28 +0200")
Message-ID: <87h85kfwfn.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_002155_984689_63C999AC 
X-CRM114-Status: GOOD (  11.33  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

(dropping stable list)

Tom Psyborg <pozega.tomislav@gmail.com> writes:

> According to this very old post
> http://lists.infradead.org/pipermail/ath10k/2013-July/000021.html
> seems like you've been misinformed on amount of these cards that were
> put out in the market.
>
> At least digipart only have >40000 units in stocks
> https://www.digipart.com/part/QCA9880-AR1A and other retailers
> probably few thousands more.
>
> With that large amount of cards I think it is justified to request
> firmware support for the chip. And probably a lot easier to make few
> firmware modifications than go hacking a bunch of API calls so it
> works with v2 firmware.

I'm very surprised that QCA9880 hw1.0 boards are still available, after
six years. Did you confirm that it really is hw1.0 and not just some
mixup with hardware ids or something like that? For example, you could
try the old ath10k and old hw1.0 firmware to see if it works.

But if it's really is hw1.0 I doubt there will be any support for that.
I recommend to avoid hw1.0 altogether.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
