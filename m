Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC5DC322E
	for <lists+ath10k@lfdr.de>; Tue,  1 Oct 2019 13:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERI0UTOiwYiIOeVxVCkxpgm1qcRMHF1walWYn/0aADA=; b=OtH4qUGpMkk27A
	9+Spjmgg9roxbkHSVSqVk827EKFO5aJh9LEHxEZLcVrYYO+z8xuRMMWPHL7hh7hjUHnDzIDrj+TVO
	HToY7vWyu+Ag0J9k2vmVOC9z3r6XLjoobgUK5Qj5PTqKCVdwhh6LOvfA8gJFYgTuARmoWLH29G9eW
	UZsE/iVgxpqCX64T3wwUAiWviLPYEXmw5sWzZ4oj+wck1xh40FTNOiWN3tHGxCH+3oU5uned+BIvr
	wH94ymjvVO4Izdlq21vIPCO2yt7qqa3H0qubOadafEi0ONxahkCAQNJeexnCARiu1JPOhLWvTwhKJ
	UsEW4zDX3fbXmM40wCdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFG9L-0006Wm-Pn; Tue, 01 Oct 2019 11:16:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFG9H-0006WQ-CX
 for ath10k@lists.infradead.org; Tue, 01 Oct 2019 11:16:56 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1983D6053D; Tue,  1 Oct 2019 11:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569928615;
 bh=7cR0arRKi/SCYXtaaoqTZQnZ5L3q7IfxNdGtWUL6QIU=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=OoctPRYo+kYjnsAKoqb/C8IdV0mcUTqp5j88KB53c82Lmqz/8PFeiAAZ9oj5zyYo4
 KgSie/TWdJmrXJ/qC9cgoBsHKGFtmK9t3lK23yHe1TH78RtSyGEoFHCNRKUXcWx6Z6
 DcUZqeMgZiviKO9xm9uwhjTcOzZUpikHj7/bh+Tg=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3F1BC601D4;
 Tue,  1 Oct 2019 11:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569928614;
 bh=7cR0arRKi/SCYXtaaoqTZQnZ5L3q7IfxNdGtWUL6QIU=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=B3KJ+qTXLRTd5OSU+pQoICBuLgtTxcrv+1kb1ucLMz39WstQdZmU7+xAMb7rkB2X2
 RpbP25h0hyHaym53L1aRSkp0DqmgShgiiHTHo3XAHGeQmwyJx+if9mdk30aK4VQ0kX
 cmtWtvGT1gJ8asbRdc+CEJVMuPOrhXXmWsWsCfOw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3F1BC601D4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] ath10k: switch to ieee80211_tx_dequeue_ni
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190617200140.6189-2-erik.stromdahl@gmail.com>
References: <20190617200140.6189-2-erik.stromdahl@gmail.com>
To: Erik Stromdahl <erik.stromdahl@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191001111655.1983D6053D@smtp.codeaurora.org>
Date: Tue,  1 Oct 2019 11:16:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_041655_449732_77DB2CC1 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
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
Cc: Erik Stromdahl <erik.stromdahl@gmail.com>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 johannes@sipsolutions.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Erik Stromdahl <erik.stromdahl@gmail.com> wrote:

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
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

306547608c84 ath10k: switch to ieee80211_tx_dequeue_ni

-- 
https://patchwork.kernel.org/patch/11000363/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
