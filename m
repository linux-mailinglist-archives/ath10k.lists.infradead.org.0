Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28021E4F2
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 16:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+LHM1XkZtwsrdbr4iou0nxH/srO9F8ba3NEc3qEy34=; b=g9F22X7vMnWeKs
	7Xxb7q5oaQ1UJ0ASLzNRdocWuptCuqUfwTKCUn1gUqYfOjVD19UHSAYqY2T5hTqLidFs/nIZZZNf9
	Xke7vZLKW0TpqR/5vmzBgzs8Ytr9Op6Qj3t5C+QS2NNQ40coPSCy5XRZDty2WzL1bnytoVLe7/V2m
	/UmJiBu7lmp2wHr5MBgnQBpYZuQQMV7JTU7xksEvUGVh38u7BsqtDEfEUqhd1Xn56aku6q96lqb+x
	I8GJvIuTTQyqy6Fp3MyGsteEUMNeohBedgZJlb+Z/CvIk+h3PuemzBtsZK1+QqHLowHqgRCawm0kt
	I1Q56kORZsm0z0i9jcxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7V1-0005wo-EX; Mon, 29 Apr 2019 14:43:19 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7Uw-0005vl-VT
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 14:43:17 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 857BD608CC; Mon, 29 Apr 2019 14:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556548994;
 bh=F642DkWqeIrIzNHMOaGjMTfPAClqqEoYZGOY6jnPPaI=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=o+THj89LJ83zgzFwYbkZtHzSwLcb9HYBiYw26kEx34+FK5UxLnIN7bItU60DsXPpF
 H5QgKnvUFuNZ8vYGXYXyBZ1g0wfMH3CIvtN+e5xQeN/jfqo5SUzodfbaioHudTMCG+
 j/Kzy/aBZgYbiHnJV0k4gJlNaSW8K3GqFaKFR77w=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9A1CC6028C;
 Mon, 29 Apr 2019 14:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556548993;
 bh=F642DkWqeIrIzNHMOaGjMTfPAClqqEoYZGOY6jnPPaI=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=B2S6041exZrq+2C/ojOhtGHbd/tHHS6Aq0jFP2LUrFul2uwY+40+T9JptgZkOv8z6
 NhU12JcZ4oadk6ElUELnUoIz/ZuX2iUE7p7CNTvcii1CTsCB5D+m8/c92iFmqLvMsX
 x4l0+UesHKRbDWVcUf3OrXV45oPEPICn0ktir3+E=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9A1CC6028C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: fix incorrect multicast/broadcast rate setting
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1544504171-19810-1-git-send-email-pradeepc@codeaurora.org>
References: <1544504171-19810-1-git-send-email-pradeepc@codeaurora.org>
To: Pradeep Kumar Chitrapu <pradeepc@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190429144314.857BD608CC@smtp.codeaurora.org>
Date: Mon, 29 Apr 2019 14:43:14 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_074315_026572_FFCA25BE 
X-CRM114-Status: UNSURE (   8.23  )
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
Cc: Pradeep kumar Chitrapu <pradeepc@codeaurora.org>,
 Zhi Chen <zhichen@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Pradeep Kumar Chitrapu <pradeepc@codeaurora.org> wrote:

> Invalid rate code is sent to firmware when multicast rate value of 0 is
> sent to driver indicating disabled case, causing broken mesh path.
> so fix that.
> 
> Tested on QCA9984 with firmware 10.4-3.6.1-00827
> 
> Sven tested on IPQ4019 with 10.4-3.5.3-00057 and QCA9888 with 10.4-3.5.3-00053
> (ath10k-firmware) and 10.4-3.6-00140 (linux-firmware 2018-12-16-211de167).
> 
> Fixes: cd93b83ad92 ("ath10k: support for multicast rate control")
> Co-developed-by: Zhi Chen <zhichen@codeaurora.org>
> Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
> Signed-off-by: Pradeep Kumar Chitrapu <pradeepc@codeaurora.org>
> Tested-by: Sven Eckelmann <sven@narfation.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

93ee3d108fc7 ath10k: fix incorrect multicast/broadcast rate setting

-- 
https://patchwork.kernel.org/patch/10723033/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
