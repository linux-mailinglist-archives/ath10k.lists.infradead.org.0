Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11455C3340
	for <lists+ath10k@lfdr.de>; Tue,  1 Oct 2019 13:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWY/QhDjfn3XlmE9fAAESMDSDMEXlypCMTB3OFKQ29E=; b=j1398aIj9NF6vt
	UoMj07BAep8OyCf+SVI6J6YC/+g+FCHYdfn/k1qEu7183Q54KEUuQOBm6a+6w+SiKP5Ku+Jn5AwKC
	33WrfKtorFSedvjRzLp2jElFjGsjg/2sfnrXgwfqq1QRl7JCQV4Py9xmCyHVcNFhB1+CbwhZ1GD65
	Oab8bF3Bl3VIywRDf9di9ZeCd0Anvw3Lq4LGncoydWaWpTy3ojJMzNj4u/wFwAnMV2VW7yId5Aomy
	3VrvtkCBGpPJ4zR+EqmpJJpEN+cdF7LXlYjuULDikF2dibhu3RU1pkCSQGGkrf4Befh7ew3nJXDFb
	Auo/NaTGUqw2n8lCep3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGdr-0003XZ-Jg; Tue, 01 Oct 2019 11:48:31 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGdo-0003XB-5R
 for ath10k@lists.infradead.org; Tue, 01 Oct 2019 11:48:29 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id EF5C060A30; Tue,  1 Oct 2019 11:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569930507;
 bh=Wb4lZwb9g/pt0+rJG1lh2i9/SJ75BfIWfkH1h3/wW6I=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=b/HodGGaZ5tj3cvwJmHcsizgDyBgLF+R7FtNIsHGI2U9UubElKQUZMvQGJ6nZu+Tu
 P95lP7Ii8EAoVQjf+NN7a+GVvQDgHauDyNrCdmq1K7QPRD2WZpzYQrSNCswMPMLvuV
 mAmAIK9pP9vrU8x+YdnF2+jqZaIqHOxXLsONlWYA=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CE6E0616B8;
 Tue,  1 Oct 2019 11:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569930505;
 bh=Wb4lZwb9g/pt0+rJG1lh2i9/SJ75BfIWfkH1h3/wW6I=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=fiLr0KMZ5m5Gw/1f0MApBKZcaT91lJB9Q4m1K/X8q6B0lxh9h7xoiU0GcbUTZxWRQ
 RggROlIuKgqIRmgN+UTKRBORyJhGccovfTPmSOLocSZE5es5LRrP6p1MYzkDnyQFOC
 +njiN3AoVkPntpYPc+jo8SVE7t2pJU1qQZfee5E4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CE6E0616B8
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Erik Stromdahl <erik.stromdahl@gmail.com>
Subject: Re: [PATCH 2/2] ath10k: switch to ieee80211_tx_dequeue_ni
References: <20190617200140.6189-1-erik.stromdahl@gmail.com>
 <20190617200140.6189-2-erik.stromdahl@gmail.com>
Date: Tue, 01 Oct 2019 14:48:20 +0300
In-Reply-To: <20190617200140.6189-2-erik.stromdahl@gmail.com> (Erik
 Stromdahl's message of "Mon, 17 Jun 2019 22:01:40 +0200")
Message-ID: <87eezw660r.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_044828_229980_92F5D64A 
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
 davem@davemloft.net, ath10k@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Erik Stromdahl <erik.stromdahl@gmail.com> writes:

> Since ath10k_mac_tx_push_txq() can be called from process context, we
> must explicitly disable softirqs before the call into mac80211.
>
> By calling ieee80211_tx_dequeue_ni() instead of ieee80211_tx_dequeue()
> we make sure softirqs are always disabled even in the case when
> ath10k_mac_tx_push_txq() is called from process context.
>
> Calling ieee80211_tx_dequeue_ni() with softirq's already disabled
> (e.g., from softirq context) should be safe as the local_bh_disable()
> and local_bh_enable() functions (called from ieee80211_tx_dequeue_ni)
> are fully reentrant.
>
> Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>

I already applied this, but I still want to check _why_ you are changing
this? Is it that you want to call ath10k_mac_tx_push_pending() from a
workqueue in sdio.c in a future patch, or what? Because at the moment me
and Johannes were not able to find where this is called in process
context.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
