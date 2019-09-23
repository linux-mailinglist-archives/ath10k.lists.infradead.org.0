Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60261BB16D
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 11:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0bsD6M+4hQRNS8iODIWTKFkFwyBC9R1RHxE1BfIQc8=; b=HNCWlwbL6njYqa
	Dtic5gCvOYfuZCdu0Yxv7RXEMuBV98SSh3oZpb4hcClm3YHCEhg7yOf9A/8k1SK6B1NdUC27EmAro
	YbfTHO4DNL8LXvFCsPjqtxSmznKCH3HXX/QAlsM/0b2Ii1wuf8uf/e98bCvXfS//63KaHbi1rAml3
	u3NZ+YkBgmGgg7qN5oPnUdF8E6TTc2wZoJPhT9jPrNDlcREEeIX06Ikgd9LgXJYbmD0Hq9pBrXulD
	V7/BK1o6JWfrc40H4FNf62o9rGIIUS+Dt43nYN6kzELSHZd8gihceTTuimVBJpaV79Cq/UyBuibEe
	tv0tNpmMnre/I/AVO78g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKfN-0007ht-3h; Mon, 23 Sep 2019 09:29:57 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKfH-0007hP-Ip
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 09:29:54 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id CEEA5602A8; Mon, 23 Sep 2019 09:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569230991;
 bh=D+rdXYJOSYeIJJ0VA2+MIg14cqG8bvEfeyZVH63asSc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Q0guuEPXJ64jbKPg7OwpJpRJgUhfGCgMYsOndQAVUfY3VCxQnzPQ9dIs3OFDgj4Z9
 AXk0+gVva72aqkzTefv+HXLemt2JP/qx6DEuc5dDKl5wPvjz9xfaNFfB5A22rSpBS6
 GZKRv9+qfwS3PBPAw69dNarUsCoRGwSTrzHtOiQI=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 794146021C;
 Mon, 23 Sep 2019 09:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569230989;
 bh=D+rdXYJOSYeIJJ0VA2+MIg14cqG8bvEfeyZVH63asSc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=fQgLbZ1cvV5AMZa973G9VfW923xVRjG4KWlJZ0KDiorbi5dc51UcKaQb1W0vARsBy
 sz8puuKQrOQykQTAoFopZG0qOnSfBFY+qENAMpbuHMf/tfOiPQzx1asPRRtH1DxFRo
 CNbbBu/xeH3nMwQpYsWtCg2ofxXj+eFEu9lDp4qw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 794146021C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v5 0/8] ath10k: improve throughout of tcp/udp TX/RX of sdio
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
Date: Mon, 23 Sep 2019 12:29:46 +0300
In-Reply-To: <1567679893-14029-1-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Thu, 5 Sep 2019 18:38:05 +0800")
Message-ID: <87sgon8inp.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_022953_617955_7B19B252 
X-CRM114-Status: UNSURE (   9.24  )
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

Wen Gong <wgong@codeaurora.org> writes:

> The bottleneck of throughout on sdio chip is the bus bandwidth, to the
> patches are all to increase the use ratio of sdio bus.
>
>                       udp-rx    udp-tx    tcp-rx    tcp-tx
> without patches(Mbps)  320        180       170       151
> with patches(Mbps)     450        410       400       320
>
> These patches only affect sdio bus chip, explanation is mentioned in each
> patch's commit log.

Below is my summary of the patchset. I recommend splitting these into
smaller sets, makes it a lot easier to review and apply. And please send
only one or two patchsets at a time.

[PATCH v5 1/8] ath10k: adjust skb length in ath10k_sdio_mbox_rx_packet

Applied.

Patchset 1:

[PATCH v5 2/8] ath10k: enable RX bundle receive for sdio
[PATCH v5 3/8] ath10k: change max RX bundle size from 8 to 32 for sdio

Reasonal but needs some cleanup.

Patchset 2:

[PATCH v5 4/8] ath10k: add workqueue for RX path of sdio

Is really another thread needed? We already have one for SDIO.

[PATCH v5 6/8] ath10k: add htt TX bundle for sdio

And again a new thread so that we would have three threads for SDIO? I'm
not convinced about that.

Patchset 3:

[PATCH v5 7/8] ath10k: enable alt data of TX path for sdio

Again another module parameter?

[PATCH v5 8/8] ath10k: enable napi on RX path for sdio

Seems reasonable, but worried about breaking USB.

Patchset 4:

[PATCH v5 5/8] ath10k: disable TX complete indication of htt for sdio

Quite hackish and I need numbers how much it really improves throughput

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
