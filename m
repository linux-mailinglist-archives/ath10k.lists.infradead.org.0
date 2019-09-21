Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE310B9CC1
	for <lists+ath10k@lfdr.de>; Sat, 21 Sep 2019 08:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmEPC0CiqIMYT/vPSAe2nOqGWta3lLeuBAYz8mAwv5Q=; b=Tuou871uaAJ1g+
	EnMLza/jNMEdO8huE/Cce/1TTNs6UptBllLWyiFh+PyOpjeE4LSh1mks4RcCGfmPWTys0fSj//yC8
	Ah8QD4qK5wHkqh9g9syzRqE6J1dsxMkszwE3Dlv0h7uJ808kIylZdPZwzE4tccUS/YYwyroHw40L8
	CpxYULP3jWzU50BHFD8FwTQs/JIOfpYqWXEzdXkCkjhv6nKNS5XsZqRmj5SONBGLn4KrJO0JEWzX4
	bMcX1NyByX4G1waKlRMs+r6/bzpgx7FbojZsbUQifL2MjtwcSjl3/byPeDcbg8dSs+QvKIRYJF5Qz
	73fV3Q7FXo/JJkCK3zOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBZCM-0000kO-IR; Sat, 21 Sep 2019 06:48:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBZCH-0000jy-JL
 for ath10k@lists.infradead.org; Sat, 21 Sep 2019 06:48:46 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 4ECDB61214; Sat, 21 Sep 2019 06:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569048525;
 bh=aHeEaDJt/JsylAkdqSShbYOzs3ga1rwWccKp+1RXgsE=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=mQxeUMI9iiegkU1zLT9uVSNzonIMYEu9Jp86FoT+4MuYDha/4zVA/GaUzJwQn1hW+
 wbp/Qg87gjlUmv8u4ihQm0frH/JFKREhNPwUAkgJ7ErVvKT/xMJ9OeZzYJ5xU1doev
 n0RByqE19w72v/W6gMW+GqLNMilZ7dwRRbQtWn7s=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D630A60736;
 Sat, 21 Sep 2019 06:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569048524;
 bh=aHeEaDJt/JsylAkdqSShbYOzs3ga1rwWccKp+1RXgsE=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=kr6bOU3OACUbG0wDQ0EiwMXHz6bClansUTkD5cYQldV8L/pOaw2kDGLs+zZNxatVI
 9XhqgUKw7kIIwyxh3lCsjgEYwXFLx1O2r8phS1VhKd0Jf39PoNJHLoyMKcP/BzyjbF
 zV1KRd+Y4K2NMrwBiP+2eXVP0sSO9/Jrm+8tvy7E=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D630A60736
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v4] ath10k: Enable MSA region dump support for WCN3990
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190709053617.32042-1-govinds@codeaurora.org>
References: <20190709053617.32042-1-govinds@codeaurora.org>
To: Govind Singh <govinds@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190921064845.4ECDB61214@smtp.codeaurora.org>
Date: Sat, 21 Sep 2019 06:48:45 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_234845_656946_9D18D22B 
X-CRM114-Status: UNSURE (   6.57  )
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Govind Singh <govinds@codeaurora.org> wrote:

> MSA memory region caries the hw descriptors information.
> Dump MSA region in core dump as this is very helpful in debugging
> hw issues.
> 
> Testing: Tested on WCN3990 HW
> Tested FW: WLAN.HL.3.1-00959-QCAHLSWMTPLZ-1
> 
> Signed-off-by: Govind Singh <govinds@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

3f14b73c3843 ath10k: Enable MSA region dump support for WCN3990

-- 
https://patchwork.kernel.org/patch/11036163/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
