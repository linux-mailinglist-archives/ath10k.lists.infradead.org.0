Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE72E2D37
	for <lists+ath10k@lfdr.de>; Thu, 24 Oct 2019 11:26:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HirwBhWRxgY39K5IqqdMzzHWBg9svPmz7EAW6aM52BI=; b=gA4zLcwjD/Xfkk
	rvNnUD7xmg7sxVdSTDr4BFd7d3sXUkvhta2Ch6eEwaJX5QAQmt1zB1TuQGoBh7s+XitOU6wqnXauL
	jg76d/ZC1Y6pyXM1ioDFpheH4xCuzxtmHGGpCedGIUMEIn+jS1UD5NjHKi9pdelMxTAZbTyZ7my00
	QGrfkg3k0RhbEXxZf6AuMl9BT19Qn2fQnmVL/uUS49EaXH+mqACgY7RodaheP3EOKdDz4vSCJhXnM
	EiQv3f+C+utvkKKr1jK23RJ0fUNvqG1VB+CwNif8S4SWQ9eAlrLRZ82Rn1G+ErK3MzdoVXRGuCact
	xpWEa3gVoPCewiOSVdng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZNe-0004WF-Ss; Thu, 24 Oct 2019 09:26:06 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZNb-0004Vd-4j
 for ath10k@lists.infradead.org; Thu, 24 Oct 2019 09:26:04 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 85CEA60A63; Thu, 24 Oct 2019 09:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571909162;
 bh=PEIzFpY5nGoLIIuQICN1TfB401FhrK5IFQmaG/eMnIw=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=nonE0+yPs0N9wR+WGHpRlkudTdHf95ffZa36svk3dWZpuk4RQznq4saHlb3V6iPXg
 J3F2HmV+KJOSDsC1cHh21WnahreT3k6CwzNuflkY9hJANpr0v6gGJK1TtNJCfmH5A2
 5Blo0FhrebGVd2SuVj2xLe5Bej3DR/ZaS2/1fRPA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (unknown [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2730A6081C;
 Thu, 24 Oct 2019 09:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571909162;
 bh=PEIzFpY5nGoLIIuQICN1TfB401FhrK5IFQmaG/eMnIw=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=nonE0+yPs0N9wR+WGHpRlkudTdHf95ffZa36svk3dWZpuk4RQznq4saHlb3V6iPXg
 J3F2HmV+KJOSDsC1cHh21WnahreT3k6CwzNuflkY9hJANpr0v6gGJK1TtNJCfmH5A2
 5Blo0FhrebGVd2SuVj2xLe5Bej3DR/ZaS2/1fRPA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2730A6081C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v6 2/3] ath10k: change max RX bundle size from 8 to 32 for
 sdio
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-3-git-send-email-wgong@codeaurora.org>
Date: Thu, 24 Oct 2019 12:25:58 +0300
In-Reply-To: <1569402639-31720-3-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Wed, 25 Sep 2019 17:10:38 +0800")
Message-ID: <87r232sdeh.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_022603_208944_A6A95738 
X-CRM114-Status: GOOD (  14.32  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> The max bundle size support by firmware is 32, change it from 8 to 32
> will help performance. This results in significant performance
> improvement on RX path.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWPZ-1
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/htc.h  | 12 +++++++++---
>  drivers/net/wireless/ath/ath10k/sdio.c |  4 ++--
>  drivers/net/wireless/ath/ath10k/sdio.h |  4 ++--
>  3 files changed, 13 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/htc.h b/drivers/net/wireless/ath/ath10k/htc.h
> index f55d3ca..7055156 100644
> --- a/drivers/net/wireless/ath/ath10k/htc.h
> +++ b/drivers/net/wireless/ath/ath10k/htc.h
> @@ -39,7 +39,7 @@
>   * 4-byte aligned.
>   */
>  
> -#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        8
> +#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        32

So how do I know that this change doesn't break any other hardware? I
did a quick review and I think it's safe, but the commit log mentions
nothing about this.

Please clarify and I can update the commit log.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
