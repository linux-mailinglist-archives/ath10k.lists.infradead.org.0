Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D452DB4FF1
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 16:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAXp24tVruLvRi0vLOpRWTkS+obm1gC+c2WwOLUUIgA=; b=LWbE5ymDuSOPY/
	MLYFIwY4OHN+CCkUKv+kCsIB8JH+rCgKDRp2W2q2D8qNg574iLtIgax7AyOrth4YqjU9BQ1k4PiZ8
	P3voBnwQME2wpgPzKlEbHMq2hs42uk8W0Wf6NbUiC7kbRGHa/L843Y1WsSPiK9eBVEr6z1uUyGyC8
	iQdFVebT7R82ngvMBi57b9MZP0785HgEB2uELp9J1aiWI5qfN8k6qJmVy46888TFotSuof7YjGWgS
	FIQz3FEoeOvNApU2YEJOGPWoXHNbq5tdHQyMwNEP82wnZkbi/DvGnLoprUi1tjpoEDvde0mxul89Q
	PGFuZ5ec1U2DWklBOndw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAE9l-0002b4-RU; Tue, 17 Sep 2019 14:08:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAE9h-0002aj-4i
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 14:08:34 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C7A7460790; Tue, 17 Sep 2019 14:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729312;
 bh=5wstTaol9OEkbdIh5bH2JEcOWDwQTs42JwDygN0c5K4=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=JiDNSU5z5U3zrBl14WbZT3ufHNfwxpAjAQGKVcQQHpm6j5LWkdSgJOnxkD6zz/osD
 90SiHba6y19CR49nD1xAMbaQkblz489lBaykVuAIfdgJWtdDn3kwYGAII6KpMW7WGr
 /FtZHsqX5TvvTPtsB/5k5KAhsiyf+JrVsQWO50eo=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B529B6021C;
 Tue, 17 Sep 2019 14:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729312;
 bh=5wstTaol9OEkbdIh5bH2JEcOWDwQTs42JwDygN0c5K4=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=F3GuoGxkGdAgLc5l6g2fxO0MgWhfTbkkYMAgTq7gqlfFcCZHuNuUftZDZS5Rm+Zfd
 5qvRpw3+83CUpCIaKUqb0muiCBDENIjwv9OMoz4n+vflguGyPT+IuPX8AMnT0yazdy
 b28imho1BFRyY/LwaNJTB3HsuB/7ilbi6DG7xtTk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B529B6021C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v3] ath10k: avoid leaving .bss_info_changed prematurely
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190703141949.9295-1-sven@narfation.org>
References: <20190703141949.9295-1-sven@narfation.org>
To: Sven Eckelmann <sven@narfation.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190917140832.C7A7460790@smtp.codeaurora.org>
Date: Tue, 17 Sep 2019 14:08:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_070833_212571_DBACEE3A 
X-CRM114-Status: UNSURE (   9.09  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, Sven Eckelmann <seckelmann@datto.com>,
 ath10k@lists.infradead.org, Sriram R <srirrama@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sven Eckelmann <sven@narfation.org> wrote:

> ath10k_bss_info_changed() handles various events from the upper layers. It
> parses the changed bitfield and then configures the driver/firmware
> accordingly. Each detected event is handled in a separate scope which is
> independent of each other - but in the same function.
> 
> The commit f279294e9ee2 ("ath10k: add support for configuring management
> packet rate") changed this behavior by returning from this function
> prematurely when some precondition was not fulfilled. All new event
> handlers added after the BSS_CHANGED_BASIC_RATES event handler would then
> also be skipped.
> 
> Signed-off-by: Sven Eckelmann <seckelmann@datto.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

0227ff3656f2 ath10k: avoid leaving .bss_info_changed prematurely

-- 
https://patchwork.kernel.org/patch/11029683/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
