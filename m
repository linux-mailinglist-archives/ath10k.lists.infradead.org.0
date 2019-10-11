Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA614D3B61
	for <lists+ath10k@lfdr.de>; Fri, 11 Oct 2019 10:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMfZZjVkLCXmmpiw2HC9qucVivvs+QU121tOCw/AkBU=; b=CtpBW47rbfTRqb
	s65qxrMcu7eZL4dh2u2sfMUEI9ZasnJ0Y/akoy19rg+PhI+jOud/pbOzvGuD62kuIDaXEdSwr3oAN
	8zxxte6TfFMSR4lae4XmmK43sGeU2C+/lcBtAtH7kjpp/j8dEFfATS9BkfnO/CW5mSafCBo24ekf8
	601H9cexL6brbHsNuVp/LtSXnmVBFtO22O5XCje0BYHKpR9fTlYZEFhmhYxABwNdW6w8Ep6SkKMxb
	i3CI4gZGQBB+49JpRXCO/y+e18VmoPLhy8fTlTPOUQW4SdyJ8s37UlfWsTIG+3OoEzCdt6zeZOzHZ
	4AV6Rxt5JTqL6ja3KaRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqTO-00036K-36; Fri, 11 Oct 2019 08:40:30 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqTK-00035t-G7
 for ath10k@lists.infradead.org; Fri, 11 Oct 2019 08:40:28 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 024D660AA3; Fri, 11 Oct 2019 08:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570783226;
 bh=jKrOmNfjGT2NuRxIi7DDNb9RKh26gHTqjkx6d4eCq5M=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=P60DOC+Ms6g6UeWeGzz7zpSKpklz83VWMykvSOirMIb9WdtSX8l5MEZqeexupnNL8
 A7qFyRer51WivxmJS/Riz520OsaglzyL3hdLUoe2EOQ+RqKiEtVUbTJFpxPMekF3bQ
 N6a2DYzZYEBoY0GInrwZG9pTARCXwMJ+CFZWJ44o=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4A7FC605FE;
 Fri, 11 Oct 2019 08:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570783224;
 bh=jKrOmNfjGT2NuRxIi7DDNb9RKh26gHTqjkx6d4eCq5M=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=dJvzUCf3xOa7kzJU7YSXt4F5AldnuI66MKXUnV8prapegZkkZZBqDPgT14fZ+25l7
 n+N8eWdclAB82QZPUOWxG6bQUwuNHJnTKIj6LdcWhO5sQtMNAxFekjVeJB8B1GBLrp
 WD5KUVQgakO5ngtu+S1i39ZfPjo6u9vSjB4ZyM0Y=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4A7FC605FE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [RFC PATCH 2/2] ath10k: regularly fetch survey counters
References: <20190918124259.17804-1-sven@narfation.org>
 <20190918124259.17804-3-sven@narfation.org>
Date: Fri, 11 Oct 2019 11:40:20 +0300
In-Reply-To: <20190918124259.17804-3-sven@narfation.org> (Sven Eckelmann's
 message of "Wed, 18 Sep 2019 14:42:59 +0200")
Message-ID: <87r23jznd7.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014026_577963_88FEB1F6 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: vnaralas@codeaurora.org, linux-wireless@vger.kernel.org,
 Sven Eckelmann <seckelmann@datto.com>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sven Eckelmann <sven@narfation.org> writes:

> From: Sven Eckelmann <seckelmann@datto.com>
>
> The survey counters from firmwares like 10.2.4 are not actually using the
> full 64 bit. Instead, they only use the lower 31 bit and overflow ever
> 14-30s. The driver must frequently fetch the survey data and add it to the
> survey data storage to avoid this problem and to present meaningful values
> to the caller of .get_survey.
>
> It is assumed for now that only the current rx_channel retrieves relevant
> updates for the survey data. This should avoid that the bss channel survey
> request times out too often.

Please clarify in the commit log on which hardware this workaround is
enabled. It should be all hardware with ATH10K_HW_CC_WRAP_SHIFTED_ALL
enabled so both QCA988X versions and QCA9887, right?

> Tested on QCA988x hw2.0 10.2.4-1.0-00043
>
> Signed-off-by: Sven Eckelmann <seckelmann@datto.com>

[...]

> --- a/drivers/net/wireless/ath/ath10k/mac.h
> +++ b/drivers/net/wireless/ath/ath10k/mac.h
> @@ -40,6 +40,9 @@ void ath10k_offchan_tx_purge(struct ath10k *ar);
>  void ath10k_offchan_tx_work(struct work_struct *work);
>  void ath10k_mgmt_over_wmi_tx_purge(struct ath10k *ar);
>  void ath10k_mgmt_over_wmi_tx_work(struct work_struct *work);
> +void ath10k_survey_dwork(struct work_struct *work);
> +int ath10k_survey_start(struct ath10k *ar);
> +void ath10k_survey_stop(struct ath10k *ar);

Please use ath10k_mac_ prefix for all functions you are adding to mac.c.
Yeah, I know not all the existing one even have that, should fix it at
some point.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
