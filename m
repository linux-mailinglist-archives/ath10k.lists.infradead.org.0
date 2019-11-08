Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F739F4297
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 09:54:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jel1hudezmDZj3CuZokeixNbjheNGrIllRqHgul4JKQ=; b=NJHivtAQhGdw7k
	JTV7kI1+Ogc0yiJUJY7qFl33FFZWOzEsvS74xftMo7NhL3aL5jUDjHNoRShJXQzYlMjBSoP9zLPRF
	aUd6SxAMPcJnbsh6LbQJf8aAtaodM6vAknFWwz1KdQD+50L/raA4BSYHnjaGmqCNh/k5YxTmKeyaS
	r+LJ44YQotkKjP5gUQwXMOw3rDmSQgc7kJzjFh546vaPLZqfFjDKEQVyFnHKPv5lfV03SKlv1n4aI
	hQFJGBsD0Q24MWjceCBGNIVBxb9OCpqsCjcj+g7HpOY5YaXzes1ghwkLOM0M/oJtOtXwUVprtqspn
	JltofEd/A3i58B5XLrOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT024-0001Kp-AT; Fri, 08 Nov 2019 08:54:16 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT020-0001KD-38
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 08:54:13 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B30B460DA6; Fri,  8 Nov 2019 08:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573203251;
 bh=oSYD5bTk0nZEI+qjwfBwMj09stT85t5HdQnYEDhLbUM=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=FIwBAcJ7N1Sb+Xa5ouehdrG/iAlq2MUgQXZM8V/dHVXNfeqWZtr38PhUZJVfJpdtf
 6fyh2y2N7eXl/CPsDi8ufGV6s3tK28DSgAYF4a63AellVrLz22ErbeYmXxXJFFQtN2
 D6Qs9FFEaMwoQqrg80snzTnBiy3Wa9NGu9tz7pTw=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D60AF60923;
 Fri,  8 Nov 2019 08:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573203249;
 bh=oSYD5bTk0nZEI+qjwfBwMj09stT85t5HdQnYEDhLbUM=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=Gkcw6NMqBqENXzsUyhmHaezZtGbb8/tUSbgY/knT31tygrd4Es5eS+dtr41uK9bHP
 bM8ND+PybQ6Pm3rs87FFKFD89rpEJDb4jFp2WszdsOn9xTsi/6ec8SslEvs0fZIL2o
 yUd61s6KyafFFlQUeG/9qiyY2AQRT7KqMtLKr2VA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D60AF60923
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: disable cpuidle during downloading firmware.
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191101054035.42101-1-ikjn@chromium.org>
References: <20191101054035.42101-1-ikjn@chromium.org>
To: Ikjoon Jang <ikjn@chromium.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191108085411.B30B460DA6@smtp.codeaurora.org>
Date: Fri,  8 Nov 2019 08:54:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_005412_152683_B792EFBB 
X-CRM114-Status: UNSURE (   6.99  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 "David S . Miller" <davem@davemloft.net>, Ikjoon Jang <ikjn@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Ikjoon Jang <ikjn@chromium.org> wrote:

> Downloading ath10k firmware needs a large number of IOs and
> cpuidle's miss predictions make it worse. In the worst case,
> resume time can be three times longer than the average on sdio.
> 
> This patch disables cpuidle during firmware downloading by
> applying PM_QOS_CPU_DMA_LATENCY in ath10k_download_fw().
> 
> Tested-on: QCA9880
> Tested-on: QCA6174 hw3.2 SDIO WLAN.RMH.4.4.1-00029
> 
> Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

3b58d6a599ba ath10k: disable cpuidle during downloading firmware

-- 
https://patchwork.kernel.org/patch/11222331/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
