Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7128EF1D72
	for <lists+ath10k@lfdr.de>; Wed,  6 Nov 2019 19:23:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Np3hFC+8/5H8sS+e2QyTAj6sjTiOgAvq6pXuLKb69uA=; b=QpN2F2LVKow1CM
	eP1JMmOaUGds+dEL+cW1AyF79+DVhUpmFK/mCe7EVt9LMQTrAQoy5bdqD43RsdzuUMtd3LKwQslEg
	ziHTFhEQvXtw852b3KN6mB7+PStuie+Q9rgN5DW6AfRZ3q7DjlzvIil7HtIlnGlWZYEvIgsRD1Lgl
	kkzz8Jkk0dO7PxbIlIwlD6vDCLAr8OnFMZufpeJo/g6oCQjJS+A4Lc4p75drqE1LwKJIWiak85qiS
	lUl6kx+YMy/h8vhJthOnSMm+abP0vC/zWkOmZC0WEuwaGT72tcj3vziovGPl2GPeO368uE/fJrLO1
	pi85PE+W/Q6Cbs+4CVag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSPxU-0008RF-AZ; Wed, 06 Nov 2019 18:23:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSPxQ-0008QS-AG
 for ath10k@lists.infradead.org; Wed, 06 Nov 2019 18:23:05 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 905106030E; Wed,  6 Nov 2019 18:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573064582;
 bh=f8LjsY8UAdJTWrsEXBbmOOJZMmDExAEs4UlfYAv6xAE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=YQWssHj1hIp+G+mBMsNF/15B/cru208q0naT/vdBj3rtlvIu7fUahenofDI4Piq/y
 qNiNd1pxe245ohucnRRUocr5eajxHZz+C/KU6HmfVXMYUSzJk4WAUIv2J1th6eZERc
 sIcnVZfWrRrtW66MdifMuOenKtQG2c8Jv6OscM2U=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 832D860274;
 Wed,  6 Nov 2019 18:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573064582;
 bh=f8LjsY8UAdJTWrsEXBbmOOJZMmDExAEs4UlfYAv6xAE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=YQWssHj1hIp+G+mBMsNF/15B/cru208q0naT/vdBj3rtlvIu7fUahenofDI4Piq/y
 qNiNd1pxe245ohucnRRUocr5eajxHZz+C/KU6HmfVXMYUSzJk4WAUIv2J1th6eZERc
 sIcnVZfWrRrtW66MdifMuOenKtQG2c8Jv6OscM2U=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 832D860274
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ikjoon Jang <ikjn@chromium.org>
Subject: Re: [PATCH] ath10k: disable cpuidle during downloading firmware.
References: <20191101054035.42101-1-ikjn@chromium.org>
Date: Wed, 06 Nov 2019 20:22:58 +0200
In-Reply-To: <20191101054035.42101-1-ikjn@chromium.org> (Ikjoon Jang's message
 of "Fri, 1 Nov 2019 13:40:35 +0800")
Message-ID: <87y2ws3lvh.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_102304_376398_DE94879B 
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Ikjoon Jang <ikjn@chromium.org> writes:

> Downloading ath10k firmware needs a large number of IOs and
> cpuidle's miss predictions make it worse. In the worst case,
> resume time can be three times longer than the average on sdio.
>
> This patch disables cpuidle during firmware downloading by
> applying PM_QOS_CPU_DMA_LATENCY in ath10k_download_fw().
>
> Signed-off-by: Ikjoon Jang <ikjn@chromium.org>

On what hardware and firmware versions did you test this? I'll add that
to the commit log.

https://wireless.wiki.kernel.org/en/users/drivers/ath10k/submittingpatches#guidelines

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
