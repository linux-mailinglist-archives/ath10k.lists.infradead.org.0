Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDD7B47E6
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 09:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OulwQKKn9n53ALRMy0XFu3EAH9zn6P+J3xE45k2GWVQ=; b=jEebnZJd4FITD/
	g/kgdimgQJCpp6SQrB94r0WHab3H/sAMr32gOp/YeFGb/gf9lNaNQYxqyJhoJ7eivR3ocyVPXmPLn
	22X/4gBWYX5cLwanugXrip8mR4ZUV2GCIAKYKnu1Ov/3QG8IlzMgjwVqxZf++/4om0IzpiyRBxuhu
	V8yrhv7QRpx2GlmQIB0ZXYNUfWj8jREAAAtKWkPn41Owhfg0B/rZJ7SatlYyWKRI3T9oeYp5fj96u
	gw5NShqkIINa/U3WLCiQku3bQDwWoX1hRvSjIujIfmFBuCyDEBAv3hsek8t4fJlPxPlmqyc0j2A3A
	4Q8xxj0dcb7T3sZDilQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7el-0000EA-70; Tue, 17 Sep 2019 07:12:11 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7ec-0000Dj-Lo
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 07:12:04 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3752F6016D; Tue, 17 Sep 2019 07:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568704322;
 bh=ShYD8stI/e8wrCbX70U2IAUnW5cvRGQsjsgDE8dYptk=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=VkuWRh6CkllcitfG5x+g/8IEkkrYfxtT6gy5NqVT2BD6/kZ8NfNsZlBx7FQBHBios
 bhcjv5w4wEYddPTLmsEh6QFiwg7BJRuP8nl1WT3ZCR7zvu9QJMa2k1TNMKKnkxJDOF
 HCCGGApZLZ6MtXKQpdPI91ETaGvLbTYbVlchIQsY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8BCBC611CE;
 Tue, 17 Sep 2019 07:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568704321;
 bh=ShYD8stI/e8wrCbX70U2IAUnW5cvRGQsjsgDE8dYptk=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=SWK1VxLZ7RFsxFxyRTdENGm5DvKk4eB7wmyABSlgtsdEc51N8bDojtNcrzindMdh1
 qDOtDA35QkuC3mc1qSvCqqWTww9L6PiS13Od01aWpPkVovILnP0h0kiW5mKYtidG+I
 zXF3H9eFbGdJQVTBrsDs5e6HbQFb4vAUfXSuazOA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8BCBC611CE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: remove TX lock from ath10k_htt_tx_inc_pending
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190824134857.4094-1-erik.stromdahl@gmail.com>
References: <20190824134857.4094-1-erik.stromdahl@gmail.com>
To: Erik Stromdahl <erik.stromdahl@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190917071202.3752F6016D@smtp.codeaurora.org>
Date: Tue, 17 Sep 2019 07:12:02 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_001202_765392_3C088C77 
X-CRM114-Status: GOOD (  20.38  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Erik Stromdahl <erik.stromdahl@gmail.com>, kvalo@qca.qualcomm.com,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Erik Stromdahl <erik.stromdahl@gmail.com> wrote:

> This commit removes the call to ath10k_mac_tx_lock() from
> ath10k_htt_tx_inc_pending() in case the high water mark is reached.
> 
> ath10k_mac_tx_lock() calls ieee80211_stop_queues() in order to stop
> mac80211 from pushing more TX data to the driver (this is the TX lock).
> 
> If a driver is trying to fetch an skb from a queue while the queue is
> stopped, ieee80211_tx_dequeue() will return NULL.
> 
> So, in ath10k_mac_tx_push_txq(), there is a risk that the call to
> ath10k_htt_tx_inc_pending() results in a stop of the mac80211 TX queues
> just before the skb is fetched.
> 
> This will cause ieee80211_tx_dequeue() to return NULL and
> ath10k_mac_tx_push_txq() to exit prematurely and return -ENOENT.
> Before the function returns ath10k_htt_tx_dec_pending() will be called.
> This call will re-enable the TX queues through ath10k_mac_tx_unlock().
> When ath10k_mac_tx_push_txq() has returned, the TX queue will be
> returned back to mac80211 with ieee80211_return_txq() without the skb
> being properly consumed.
> 
> Since the TX queues were re-enabled in the error exit path of
> ath10k_mac_tx_push_txq(), mac80211 can continue pushing data to the
> driver. If the hardware does not consume the data, the above mentioned
> case will be repeated over and over.
> 
> A case when the hardware is not able to transmit the data from the host
> is when a STA has been dis-associated from an AP and has not yet been
> able to re-associate. In this case there will be no TX_COMPL_INDs from
> the hardware, resulting in the TX counter not be decremented.
> 
> This phenomenon has been observed in both a real and a test setup.
> 
> In order to fix this, the actual TX locking (the call to
> ath10k_mac_tx_lock()) was removed from ath10k_htt_tx_inc_pending().
> Instead, ath10k_mac_tx_lock() is called separately after the skb has
> been fetched (after the call to ieee80211_tx_dequeue()). At this point
> it is OK to stop the queues.
> 
> Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>

What hardware and firmware versions did you test this? Please always add that
to the commit log.

As Erik mostly works on SDIO I assume PCI is not that well tested. Has anyone
else tried this?

-- 
https://patchwork.kernel.org/patch/11112997/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
