Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58476F6FEC
	for <lists+ath10k@lfdr.de>; Mon, 11 Nov 2019 09:50:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FphCvKZetBngRracUXX6LMNPD10BaccA0btVB6iGzNc=; b=rk6CrYBwEdQiw7
	7wZZpLJ8cE31BCeMcmSfEYBHCpYGSSchHkaRZTBluMaIRI9Cx66fcBChGCnEQK24cYbUcrn/5KZ1x
	iwDgFK6VUpD1EawnjOzRrPZwW8MuCTsUPLjulXSQrS87b4d0Hab18yMM9QYPrWaAsZOqh+/Z6+lm0
	b4MfAeAky9QcZuhW795Qi6Rc7ZiI1zNDgnbvrccEejvHMcLI7KsxbzHlqMRtAURdJEppIP+2ENA+u
	JxjxCUBKYLe6Qlp5aVd7fR2VocAdYISg+Nlb2E8B1vkMAxFO2ZULU6xWi+dutWkAVCdX4yEwb9CFI
	gcFc9af/Gtx7bSPq+JXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU5PN-0004oa-Kd; Mon, 11 Nov 2019 08:50:49 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU5PK-0004oE-4j
 for ath10k@lists.infradead.org; Mon, 11 Nov 2019 08:50:47 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 36F9B60A0A; Mon, 11 Nov 2019 08:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573462245;
 bh=GvOlQX+57Rq7/CbOJpGdatAOu9E/Itm4nXOE7A7fMOc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ftjqvakIJ5LUqtcbge0wBalpTQyUiXyQSk9ZPfG5XVvzokDYWrqAKzzHaKTOk595q
 EUTXCNBCNEj9baX8/rQ9B7yRBcUV2n5WiDf8AjwDkWeRQnTzU8+21uTCHEwXb/wdlp
 pLrMbi9aeQ8Sz2UcRRh7gaztUzPJR1Pdc6SExJUk=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EA89460117;
 Mon, 11 Nov 2019 08:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573462244;
 bh=GvOlQX+57Rq7/CbOJpGdatAOu9E/Itm4nXOE7A7fMOc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=jZBmFJshHVlV95Hh4FvUF1Zf1mCGE5NcW5JwKtk3zDo9FukBy0qV/Tsyi04ETOW6b
 Dy4tTJZ1E8himjpUNfRTNKvR8Nzhxzqw9+KeaFQvK4sbH0a0zAVGCZjuSnRco3plN/
 Wesb7xysSWkqROuzY4qmd8zvS6GzacatxKZH25fw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EA89460117
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Eduardo Abinader <eduardoabinader@gmail.com>
Subject: Re: [PATCH] ath10k:mac: disassoc dbg msg after return check
References: <20191111083040.16824-1-eduardoabinader@gmail.com>
Date: Mon, 11 Nov 2019 10:50:41 +0200
In-Reply-To: <20191111083040.16824-1-eduardoabinader@gmail.com> (Eduardo
 Abinader's message of "Mon, 11 Nov 2019 09:30:40 +0100")
Message-ID: <87lfsmssny.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_005046_205531_0297A0C6 
X-CRM114-Status: UNSURE (   9.56  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Eduardo Abinader <eduardoabinader@gmail.com> writes:

> Signed-off-by: Eduardo Abinader <eduardoabinader@gmail.com>

No empty commit logs, please.

> --- a/drivers/net/wireless/ath/ath10k/mac.c
> +++ b/drivers/net/wireless/ath/ath10k/mac.c
> @@ -6786,13 +6786,13 @@ static int ath10k_sta_state(struct ieee80211_hw *hw,
>  		/*
>  		 * Disassociation.
>  		 */
> -		ath10k_dbg(ar, ATH10K_DBG_MAC, "mac sta %pM disassociated\n",
> -			   sta->addr);
> -
>  		ret = ath10k_station_disassoc(ar, vif, sta);
>  		if (ret)
>  			ath10k_warn(ar, "failed to disassociate station: %pM vdev %i: %i\n",
>  				    sta->addr, arvif->vdev_id, ret);
> +		else
> +			ath10k_dbg(ar, ATH10K_DBG_MAC, "mac sta %pM disassociated\n",
> +			   sta->addr);

I don't understand, how is this better?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
