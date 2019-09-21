Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0FDB9DA7
	for <lists+ath10k@lfdr.de>; Sat, 21 Sep 2019 13:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwJ0V/HOQIvQ19nSoZ1DZ+GpOgTiDispcrRX0i/sCMw=; b=sZ1eB46F5T4zdr
	8WPNfPFRSjWPdXcaRt58nQtu2nxZ853lS2oXhs20/nP7edtbn4xd5mScnT4mulcb9EDPYVc2HBtD2
	QqlHP8d1sW5t3Gc28grtvBF3qJByIR6qLGGNBWLBCNSL/A1mSsM1AqNkpGVwlGmUMb00XyF0IZ17B
	P5bZpWOsWDdC4/hZXPOWTUSldzallrNVVn6/MSa1PxTVsRjc3dfodH5MNDBShiH2IAeRjJK90JOht
	F4fH3JA9tRmE1BvjDE1usEAgKAf2yud+mVTfaft6F7L7TiM6Er6wg9wjM/K8x0WybqtWXJaSPGrTp
	dsTNDgGMjeJsow+Qxp7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBdjB-00017P-QH; Sat, 21 Sep 2019 11:39:01 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBdj6-000171-MA
 for ath10k@lists.infradead.org; Sat, 21 Sep 2019 11:38:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 42DD9613A8; Sat, 21 Sep 2019 11:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569065936;
 bh=gtYhQeg/21GWcRbAWVIoleIi/D4OfJWAySgPFth563E=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Gasq7a7D11UJZZv4Tpu3aNJv233VM4j3FKDMmmX+xa5004yBqMRQQ/hhjALYtXaaz
 zY4YPGxmBIyEJzXPiZHCcdGMsjaWyZgrVveN7A1x6ze/NiCK/Dr3lasbKZborSWoXU
 tO+DybnPD7IsK7Euon4YPAayxZ+QbNMk542ApXd0=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E672060364;
 Sat, 21 Sep 2019 11:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569065935;
 bh=gtYhQeg/21GWcRbAWVIoleIi/D4OfJWAySgPFth563E=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=IG5Be7gG/Ruoj9ixMfugFz4onA02AMlRiPTPwbWEcsYWvgsaugs7SdXIaLgxjKJFq
 tG6tqULvXGqZSXfhiLD6q6EiLttbWB84wA0iMzhK0xDJMc6OnYxWpYr76oH1sBOaca
 5DTJrCi5jyDjWuAlUvTBqedxVOm0YIqjx8fbiaEo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E672060364
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: add fw coredump for sdio when firmware assert
References: <1567132338-7407-1-git-send-email-wgong@codeaurora.org>
Date: Sat, 21 Sep 2019 14:38:52 +0300
In-Reply-To: <1567132338-7407-1-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Fri, 30 Aug 2019 10:32:18 +0800")
Message-ID: <874l15c20j.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_043856_745762_5F54BA33 
X-CRM114-Status: GOOD (  13.11  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> When firmware assert, it need coredump to analyze, this patch will
> collect the register and memory info for sdio chip.
>
> The coredump configuration is different between PCIE and SDIO for
> the same reversion, so this patch add bus type to distinguish PCIE
> and SDIO chip for coredump.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> +static int ath10k_sdio_read_mem(struct ath10k *ar, u32 address, void *buf,
> +				u32 buf_len)
> +{
> +	u32 val;
> +	int i, ret;
> +
> +	for (i = 0; i < buf_len; i += 4) {
> +		ret = ath10k_sdio_hif_diag_read32(ar, address + i, &val);
> +		if (ret) {
> +			ath10k_warn(ar, "unable to read mem %d value\n", address + i);
> +			break;
> +		}
> +		memcpy(buf + i, &val, 4);
> +	}
> +
> +	return ret;
> +}

What's wrong with ath10k_sdio_hif_diag_read()? AFAICS this whole
function duplicates just what it does.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
