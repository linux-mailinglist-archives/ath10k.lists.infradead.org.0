Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3BAAA2D0
	for <lists+ath10k@lfdr.de>; Thu,  5 Sep 2019 14:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XP7mKiCpo9tx9Rn8bQfAE84XsHcZ5vDlSXSdJJMfYQ=; b=RC8dtI43Ae8LyN
	qyPOFDgMALxolV8F2X7PeuDM0sZR1KkWCXoZ7c7DWdhJkWxpKdVSUs9XQy6DNLxMIFswVvITGf/1b
	d1RIDgezF9kh+d0Rp/GUYh1O8tV/hn8pDwqmOrDESIBEO00PDJ8iBMHGQgsuoNQOdRT/dgqb4Gih8
	TwcrpjGhzy3Y3IQxo5fi+/qFeOCRMKZVkMiFsSuekq2St6ZUj5QZG4L/VSSzLpTh0VmomR5mZOXLu
	SKY/74uuYehTRPpsnjtyUb62bbKzgaieiLYPMp/rhxcMzit9TMN6x+Z5c81Qq6yUvjLoXrKAB/smG
	ToNTub8v+B0wdNnMFTsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qgg-0005P5-1r; Thu, 05 Sep 2019 12:16:30 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qgW-0005NQ-KU
 for ath10k@lists.infradead.org; Thu, 05 Sep 2019 12:16:22 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 39ADE611FB; Thu,  5 Sep 2019 12:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567685780;
 bh=VPAdkjohvkbfjDgG001DLgbkEGB4YTFim9HhrivJr4o=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Bnw36JsjIqkZun7kqd4TsjKPL7IaSXBFX0y8snGOsbVFWVwzuF4oawv0AXJEvtqiq
 TGmCSHsqig8kz77zybu/8cd+84L5+V6nO49qSiAe1f6DjOySDQbH/qSHUasDlAtCwN
 VlH9tRKZc6h5hbGFn/J20q3Kvc4r1dk6wPkoA02Y=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2171C60328;
 Thu,  5 Sep 2019 12:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567685777;
 bh=VPAdkjohvkbfjDgG001DLgbkEGB4YTFim9HhrivJr4o=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Y+G1fPUMVbG7hKMUJY36TlYufgBKRws44RmyNmtHDW7p6WMGjajHfulBn6CzOk+FL
 2i+DyWU565K0vwDY8bdsQX+cqiyYJBtHT6yWRy/AFwlq1B/zaQZTs96HCMQu5ri07c
 g65GuYFlMcw6U1WhR4s7nsJBekh/nanf+gm2q2Dg=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2171C60328
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH v4 1/8] ath10k: adjust skb length in
 ath10k_sdio_mbox_rx_packet
References: <1567416146-14403-1-git-send-email-wgong@codeaurora.org>
 <1567416146-14403-2-git-send-email-wgong@codeaurora.org>
 <CANMq1KANHhmP+yEj7Yw3P+akT+mM=y6rjfq1sEjg0NUuWJkdCw@mail.gmail.com>
Date: Thu, 05 Sep 2019 15:16:13 +0300
In-Reply-To: <CANMq1KANHhmP+yEj7Yw3P+akT+mM=y6rjfq1sEjg0NUuWJkdCw@mail.gmail.com>
 (Nicolas Boichat's message of "Tue, 3 Sep 2019 16:02:09 +0800")
Message-ID: <87a7bjlz02.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_051620_704556_31F57F75 
X-CRM114-Status: UNSURE (   9.43  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Nicolas Boichat <drinkcat@chromium.org> writes:

> Kalle: Can you please help prioritize the review and merge of this
> patch? This is quite a serious regression (the rest of the series is
> performance improvement and probably a little less urgent).

Ok, I'll prioritise this (but I have not reviewed it yet).

But in the future if there's something urgent, it's best to submit the
patch separately and label it with "[PATCH 5.3]" or something like that:

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#tree_labels

This way I can find the patch faster.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
