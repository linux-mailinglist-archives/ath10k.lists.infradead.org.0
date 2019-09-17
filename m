Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68855B4FDC
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 16:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=heqmgHexRRl/XkJ+AeV5ggevJbr48fwwdHL7WJhONLk=; b=MZsoH5V++z2FtE
	KQ1W2GG2haMcxW6YF19AUFWT2rsmabCBVuiYqrbMgvV28GPIFID3wWtxTbhcb6bdwFAT5RzBtmf4l
	W8Jv0D881fiEhsjUSRlqqVnbk0VPAKTIZ7vo7Ga9VaeBUaUhxMmf/71QsaAm4MuOhD1zvXEwAQife
	jOI6lMPtzT5p8eBC6WYTotNoNAws2rVitj4lJiyZI5moi9WbjuXMA0RzZFsu2rSXIXy4a7HX6MQb5
	q+JKEIDMu3pRb0ejxD5CYkE/qfPRzle3/o7GpoUKyAYdbEMJsqIZGcH/Ajy8fgmKFH0J7gafBr+tM
	kiWHL51p+Dcp5WlAxE4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAE69-0000ez-NU; Tue, 17 Sep 2019 14:04:54 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAE61-0000dW-OH
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 14:04:47 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 4BB4661424; Tue, 17 Sep 2019 14:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729085;
 bh=rAaMYvqbeLheWv8CIxiDyX/e12oeMdBVoUmnUwywv5Q=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=nV2umR6R289up963IQf51z4elD/8hSfUfS7xrdnSVc8eic0ZFzWYNRHiHiC1zVyno
 i9iXTtZEOsP45lU5RnXEhyhq5pMNIIW/uxBtWWNvzoqsomYIkZVxX6d1Fvfa8bqOaR
 LHBMs0BVnAgGxRARt6Vdh4c53Jwxm30DPn/hdccc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 24BF36016D;
 Tue, 17 Sep 2019 14:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729084;
 bh=rAaMYvqbeLheWv8CIxiDyX/e12oeMdBVoUmnUwywv5Q=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=HXDHo5T2HJtx2ogcRKuCOwqk+wlVKzcov6Qhn/RIBADhCetuRZIt2f8kOYCBGWsFy
 FhKPiZcsSsRMJTti+2r6vWZYRkLOGYHiK03XQvksaTVvclmN2vxtjTncFjF2jCoj71
 qYCeRk2Wcljgm7Pyx2QtZq1kBDDoZJRAsbD8ckvI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 24BF36016D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/3] ath10k: snoc: skip regulator operations
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190725174755.23432-2-bjorn.andersson@linaro.org>
References: <20190725174755.23432-2-bjorn.andersson@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190917140445.4BB4661424@smtp.codeaurora.org>
Date: Tue, 17 Sep 2019 14:04:45 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_070445_815506_8FDE45B8 
X-CRM114-Status: UNSURE (   8.76  )
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
Cc: Govind Singh <govinds@codeaurora.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bjorn Andersson <bjorn.andersson@linaro.org> wrote:

> The regulator operations is trying to set a voltage to a fixed value, by
> giving some wiggle room. But some board designs specifies regulator
> voltages outside this limited range. One such example is the Lenovo Yoga
> C630, with vdd-3.3-ch0 in particular specified at 3.1V.
> 
> But consumers with fixed voltage requirements should just rely on the
> board configuration to provide the power at the required level, so this
> code should be removed.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

3 patches applied to ath-next branch of ath.git, thanks.

b003e7f1974e ath10k: snoc: skip regulator operations
c56c7f24d7f8 ath10k: Use standard regulator bulk API in snoc
f93bcf0ce6a1 ath10k: Use standard bulk clock API in snoc

-- 
https://patchwork.kernel.org/patch/11059507/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
