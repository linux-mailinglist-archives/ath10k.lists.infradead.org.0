Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBA75500B
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 15:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VJH+1IMvDjm8diZSM9v0uwo5GlDup+f6cIZ8dszjV8=; b=EUUtFpskxU8oCP
	KB1VfprsSAosaz8v4a2CNf7BiGZ6zKz+o38KsFaAEZGCROUSykVZLqKw+EmHD07+982vpOIuBLB66
	n1bgF4l/RWA0ysdoHm9LXJjpkgXfIVz1vQJkiw2N3w4SzI5mPFgynOh65Ls6hBBn6CKU6tB7cNney
	1wgkXJFQqGRZ2kT8EyPEIT5AHZiLyb2Mlt1qCnSQJejK/xZ+wkji2ozm8gToC9z+ZoMCHwzzXjo5Q
	N5PHTHzMrtMT1WfeD0BXPfwvoSqfkionGqvksvqtymTIyKmh1Dg1p++1KWHzHB57RgWEy7kpa/20p
	NO2iYawxyZlSp7/o6Xqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflJK-0003SE-V2; Tue, 25 Jun 2019 13:16:34 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflJG-0003Rb-OD
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 13:16:32 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6CFFF607DE; Tue, 25 Jun 2019 13:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561468590;
 bh=F56wmmoWnTrE3I0MDCeml3psln77qAjE6+nzM4OTrBU=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=fL7UO87N9k+MQqXkfv2hmdZAC2HIPSZwltTIZCvmeLBpNgtf5wt+1uROlPueea+il
 BwReJgqV3cTj0iupb5xyHvZnvaEoUdq3UwKGZJ5BUxlBycdgMih3fO3KeiWB+IeHy0
 7I+afz9Gp5DAxQTWHjZUkJwNJ9P266A2TpfTDYYQ=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7785060867;
 Tue, 25 Jun 2019 13:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561468589;
 bh=F56wmmoWnTrE3I0MDCeml3psln77qAjE6+nzM4OTrBU=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=osQ4BiM0ezvBAgBtKa+c4opdk5LcrAHsILgAnAbxh9U+0VNf+Mf95rbbraCfqapzp
 6CWnyTFQHYR+X4yCHj5TA6K9i0FBVtzZmi4E/9rdiPYJ882WtqFgz6dRoEW46RDFcD
 dcTMGv7YJ2QubumAA3cchgPWMRhQwfPT6sPcNjcQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7785060867
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: add report MIC error for sdio chip
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1559010432-1005-1-git-send-email-wgong@codeaurora.org>
References: <1559010432-1005-1-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625131630.6CFFF607DE@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 13:16:30 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_061630_806586_8D85A44F 
X-CRM114-Status: UNSURE (   7.08  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Wen Gong <wgong@codeaurora.org> wrote:

> Firmware will report flag with HTT_RX_IND_MPDU_STATUS_TKIP_MIC_ERR
> if MIC error, the flag will be used in mac80211.
> 
> ieee80211_rx_h_michael_mic_verify will check the flag and start TKIP
> countermeasures.
> 
> Now countermeasure tests pass both with WPA only and WPA2/WPA mixed
> mode.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

47ed1b4e5d62 ath10k: add report MIC error for sdio chip

-- 
https://patchwork.kernel.org/patch/10963647/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
