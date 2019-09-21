Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 079B1B9CBF
	for <lists+ath10k@lfdr.de>; Sat, 21 Sep 2019 08:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBeSCIWwM7gxwUkmmyvNiQO8O+FsFTk9RWsj0jZFvlQ=; b=lhJLXwyK/ex+IT
	XGlegV6uc92q8x9DJxMqJxQBTYKOUuWyCtiJY1CEHlsd3kchAUH3pdkeGG8yT52//gFAoPbbLr19+
	l2lQc6odVFdHx3/Dn41V+UE57U1sbxGaiZcsjsAcXHYdu96LygnDXtQt89piCgUAM0tK5h0elW1kb
	u9rzMxgmpNV7152OxBj2RxndGr4CP6Idqz9eEH3Stt4jnx1v2fvkfOH991T3RFT9KmURW8hp4NBb0
	ENNN3q5IONLqQ4bsXevZkdhad+TCTzDu4xtcxZvwCR9+c9DgtTyOe5ik6VYcRnmGU9j7N5CzDgguu
	wZ3laUrJDFl3quru3wLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBZBg-0000eZ-Au; Sat, 21 Sep 2019 06:48:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBZBV-0000eB-SP
 for ath10k@lists.infradead.org; Sat, 21 Sep 2019 06:47:59 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 4827A60863; Sat, 21 Sep 2019 06:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569048475;
 bh=GtnPkrkrPh+SadImv6m1ielDnGM4Hbs5LQQoKjVZaV4=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=mXIxgFAg2TXFFSSZOm/0ubweqVzC+DTAOeK8cGuso48BoQMvtaF78pYcXg6l3Ju/q
 SOlN+IY49CosLdnEHWSo0xeXrw6I2A4at99ihJLxY8rG0Np75sMgzymMA/hHZ0HAOg
 w58okSS40Jrci0L0WVh9E+dlY0zMizu4mTfCASi4=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6941A60863;
 Sat, 21 Sep 2019 06:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569048474;
 bh=GtnPkrkrPh+SadImv6m1ielDnGM4Hbs5LQQoKjVZaV4=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=M8rfGF+cm/pRtzIQbYY7BUkMYfgpPQXOjxwJ1Ij3/Gx01JSJE6wUF3l4P27l5sKYI
 du/qdHzXKZESo3d88PvoICNndHjKbTHeZeTMhn/GJBRhWzUDu/A0S1c3ogvc9235vp
 LRIqEi2LFu1f77kt4zNS1pDdQc2Fj08kxnLCLfmQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6941A60863
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v3 1/2] dt: bindings: add dt entry for XO calibration
 support
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190401091926.19119-2-govinds@codeaurora.org>
References: <20190401091926.19119-2-govinds@codeaurora.org>
To: Govind Singh <govinds@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190921064755.4827A60863@smtp.codeaurora.org>
Date: Sat, 21 Sep 2019 06:47:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_234757_990402_B0A0DE2F 
X-CRM114-Status: UNSURE (   6.79  )
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
Cc: robh@kernel.org, Govind Singh <govinds@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Govind Singh <govinds@codeaurora.org> wrote:

> Add dt binding to get xo calibration data support for wifi rf clock.
> 
> Signed-off-by: Govind Singh <govinds@codeaurora.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

2 patches applied to ath-next branch of ath.git, thanks.

892022e108dd dt: bindings: ath10k: add dt entry for XO calibration support
75f545e85744 ath10k: Add xo calibration support for wifi rf clock

-- 
https://patchwork.kernel.org/patch/10879475/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
