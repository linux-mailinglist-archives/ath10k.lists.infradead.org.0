Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA581591BC
	for <lists+ath10k@lfdr.de>; Tue, 11 Feb 2020 15:21:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVhZzYoD7C72Yo+6Eb1XJLlnfPHJ67hTA4PWRUdAD1E=; b=XS5MwgMo2M90BS
	p8bjO0p4oesX3ZAYn5F1UGGL/SoESoblj15l8Czk9zm85NX2TP0Jj3XdWExcLLKbzvSY1S1UQPQ2u
	BL/VRZ1ItoH73IUMTTXEfEpBuu7M/EyXzpmsuLPD3n2P/Mpy5tmTm9LsZ+8un92/FFeZWZ638hZOa
	gsVRw2lhGTEJAE2wgl09RT2K26X9T+rH08DPx9/zEwoohGMiAxnYjX8fDAMaMj3PdOHV2kKJf8sTJ
	Q+cYM0iLC69NqXlCA7U+gqS1DQkOnvRJ2JniE7EmVHGP7p5aMclXwRQ25sOCZFny2IzGhZBSPxrSW
	yfLKzlhAC6hZXCMC+x/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WPj-0002Kg-9H; Tue, 11 Feb 2020 14:21:23 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1WPe-0002KK-Cm
 for ath10k@lists.infradead.org; Tue, 11 Feb 2020 14:21:21 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581430879; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=qM5SKJxSg1XIlNtdRw4IanLcv+dOPm/En7bKG7Wq5Y8=;
 b=KzszS8tvTo5HXMnyKi7nxfQXkWVIBGxOl40CQ0QYpg/8G28n3GYzgP7gX7B4ZpRvaKaaCStQ
 qUGZ6XnqV7vhS8ljcE6GAxySUYi99O4ZJqWPO2+VeDEO2VUm8C9eVAjF8niVWOy7tzRgSHN6
 0lOS1jBqEFrzrQtXH6I5ls9enEQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e42b85c.7f25e1ef61f0-smtp-out-n02;
 Tue, 11 Feb 2020 14:21:16 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DE157C4479D; Tue, 11 Feb 2020 14:21:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C69E8C43383;
 Tue, 11 Feb 2020 14:21:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C69E8C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: fix few checkpatch warnings
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1581411578-26388-1-git-send-email-kvalo@codeaurora.org>
References: <1581411578-26388-1-git-send-email-kvalo@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200211142115.DE157C4479D@smtp.codeaurora.org>
Date: Tue, 11 Feb 2020 14:21:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_062119_833069_B7CB0F36 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> wrote:

> Fix warnings which were recently introduced:
> 
> drivers/net/wireless/ath/ath10k/ahb.c:462: Alignment should match open parenthesis
> drivers/net/wireless/ath/ath10k/ahb.c:470: Alignment should match open parenthesis
> drivers/net/wireless/ath/ath10k/sdio.c:697: space prohibited before that close parenthesis ')'
> 
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

9a5fccc1e807 ath10k: fix few checkpatch warnings

-- 
https://patchwork.kernel.org/patch/11375089/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
