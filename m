Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B677ABAF39
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 10:20:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxoJUNUaUhAmDUrtZeuXQR84aNe/io7YACzsO1e4TEk=; b=e2H4bh8fSihRKL
	w8RP/aKKKOise0EAPIrmbRZ/o3h4EmeqpuoxbO7+FJIXVPoDO1odfo9q1Huu6BcsXoSpk7lHXilDT
	xJfY+D/5HaAWfHH8eRfXIwLMB9vBl87lWNgBqwlvarpD/xVAutueSgTVA97g6YChjo77hxPmScuxl
	OpFnvCRFnX5qCVwTqjPbJN2V4+xu0ei9h16tk1sjGVHEAUFmtMUGFwSSRHe1/g3CZbu6Fj6YcfCzh
	yzSUG8VQ2zcZnYVORSB1qmtBfk88K1Sw0Z0LSXi97OW4qsmDkw143lYwifg8bO6WTtkvX3dNsp63i
	+zKas31X+jlb37G/Au0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJaL-00020z-MW; Mon, 23 Sep 2019 08:20:41 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJaH-00020Y-Hq
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 08:20:38 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1B7A0615AB; Mon, 23 Sep 2019 08:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569226836;
 bh=opFBMeR9OKIAgs+gJiPlz7sbZPKpmcRVcHLH4TchmV0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=RZfdKZv+rrwPav84N2oIqTN7cggTmomun3ITGRFcDwpImDL9LxGvqPa6viCsWzPXy
 Bu/ZIg8SUyRYCK6ycoyb+Gi7FjlwiAG9EiA6ewm2sl6t68+jChL8RyvkIiCuLl0fnA
 nN60/3E4m/cn1zTLQBpk/R19CFe4BUDzxOmjW+r8=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D977A60850;
 Mon, 23 Sep 2019 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569226835;
 bh=opFBMeR9OKIAgs+gJiPlz7sbZPKpmcRVcHLH4TchmV0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=moCOTw8j8VEqHmTPQIoUtmTO1bElTmYrtiTooDvDxr6e4mXY1/taAWiTekUD9tlP0
 BOjqw4c7cE6Jx0vPHOn1+NnAT66nbgq0K3wj6G7hmouI0S77il6P8xCzpDoBVSSY58
 7ekY+O+ULysqQbfzvG2U83Hk9QVY22SPiCX1uwAk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D977A60850
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Surabhi Vishnoi <svishnoi@codeaurora.org>
Subject: Re: [PATCH 0/2] Add support for per peer HTT tx stats for WCN3990
References: <1551251581-21193-1-git-send-email-svishnoi@codeaurora.org>
Date: Mon, 23 Sep 2019 11:20:31 +0300
In-Reply-To: <1551251581-21193-1-git-send-email-svishnoi@codeaurora.org>
 (Surabhi Vishnoi's message of "Wed, 27 Feb 2019 12:42:59 +0530")
Message-ID: <875zlja0fk.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_012037_611435_F46AF116 
X-CRM114-Status: GOOD (  11.20  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Surabhi Vishnoi <svishnoi@codeaurora.org> writes:

> WCN3990 firmware sends the HTT_TLV_T2H_MSG_TYPE_PEER_STATS in tlv
> format so the handling of this message has to be done in different
> manner.
>
> This patchset adds support to attach rx_ops based on htt version
> and adds the handling of HTT_TLV_T2H_MSG_TYPE_PEER_STATS message
> based on HTT version.
>
> Surabhi Vishnoi (2):
>   ath10k: Add support for adding htt_rx_ops based on htt_version
>   ath10k: Add support for per peer HTT tx stats for WCN3990

When you resubmit, could you please include Rakesh's fixes in the same patchset:

ath10k: Fix rate table updation in tx stats
ath10k: Fix NSS tx stats for legacy rates

https://patchwork.kernel.org/project/linux-wireless/list/?series=90199&state=*&order=date

They depend on this patchset, so it's easier to handle them all
together.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
