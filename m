Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F547D3B6A
	for <lists+ath10k@lfdr.de>; Fri, 11 Oct 2019 10:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ND04rgy0yNN/wHy1mzwUgoPhTlrbIPNbIzo45kEW6U=; b=a4BG1YQGuk8SX4
	B95C58h6ECIB/s6ei1x7cWwNtYwrGNnNjumHloC0FN/tAofbFxkU2Kn4JmJAo/iSsc85icMTXiPK9
	uTa/0oOybcCqK4AxQvO9Z9kK6tzqRseqAWO+THp5cStnB4RP+iCGMq02r8s9jZV0mQ4JaNA2S+piI
	hu87uIVxiW6YajAT6P8HHpoXG9r1pRJ2CgkXtUAp5o+pgq/8aPjjG2TLQVHzFyTd4MLOeOOB3ThKg
	w7ZP0p4UEHgpScO+SuMdyw7xjtFFOnZb0MyZAlFFn3wl1vNvv7bWLVJH6DjcDv9iAgHEtPY9tmhyQ
	Enj0ZnaZAZdyyslAuDug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqUu-0003aM-UD; Fri, 11 Oct 2019 08:42:04 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqUq-0003Zv-Na
 for ath10k@lists.infradead.org; Fri, 11 Oct 2019 08:42:02 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6E94060CEC; Fri, 11 Oct 2019 08:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570783320;
 bh=zFqlxr18PQtDX34HJ128An+cwS7TjNXYBDpvMEAI0UI=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=YWQb0D+yo9nvAE92goXshicCR7ZO5ax9O6IVY5RCj1vH0t3XFSIqM3gOglDbB1PJ5
 YJmlBCc5ItFmAymH56nuTkYRlkMzFisX4Sm0twCJZtlqxpmzVEsKcgeErXxTgVwdtU
 SWuOjiLV0ao0yz/ubX+bD46s9dF54KutPmQhdIlA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2F71460AA3;
 Fri, 11 Oct 2019 08:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570783319;
 bh=zFqlxr18PQtDX34HJ128An+cwS7TjNXYBDpvMEAI0UI=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=KeGHbNcnPJc82pyPJWol+Y8pbFw1I1KNRZcEBfANH1SlfL7ayuWFGgt/V4ujKU7pS
 cU03MsDIELi9hgHBGbPWcBmKnRJMk3hDo9AZlwXhlYHtxBPWo0Byr1qFQnAFraBVsZ
 WuMXJ/rJbtRVF4avusrh+EEFHBAYj7LriORw83Z0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2F71460AA3
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [RFC PATCH 1/2] ath10k: report survey info as accumulated values
References: <20190918124259.17804-1-sven@narfation.org>
 <20190918124259.17804-2-sven@narfation.org>
Date: Fri, 11 Oct 2019 11:41:56 +0300
In-Reply-To: <20190918124259.17804-2-sven@narfation.org> (Sven Eckelmann's
 message of "Wed, 18 Sep 2019 14:42:58 +0200")
Message-ID: <87mue7znaj.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014200_787319_8F20AFE3 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vnaralas@codeaurora.org, linux-wireless@vger.kernel.org,
 Sven Eckelmann <seckelmann@datto.com>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sven Eckelmann <sven@narfation.org> writes:

> From: Sven Eckelmann <seckelmann@datto.com>
>
> The survey report is expected to contain a counter which is increasing all
> the time. But ath10k reports some kind of delta. This can either be the
> difference to the last get_survey or the difference to some even older
> get_survey because the values are sometimes cached and sometimes
> overwritten.
>
> To make the returned values useful, they must be accumulated manually by
> ath10k before send out to the upper layers. Special care must be taken when
> accepting values from older firmware versions (which use
> ATH10K_HW_CC_WRAP_SHIFTED_ALL) because they will not clear the cycle_busy
> and cycle_total counter and will only use 31 bit of the 64 but counter.

Please clarify a bit more which older firmware versions you are talking
about, we have so many of them :) I assume you are talking about _all_
QCA988X and QCA9887 firmware versions, but it would be nice to clarify
that in the commit log.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
