Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D680E1AC172
	for <lists+ath10k@lfdr.de>; Thu, 16 Apr 2020 14:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KWZAd10nP47Fza/lwLmL5J+kWDTzQ6+BtY8jpxk5Bg=; b=NqMiAjbPJ14oKn
	VvIi1Dv/GYnP+mJj60ItE24hi1lTXEACEKN4ZEtotnSe6twphMlU4p9uOWL50oQ05UvRGoVjdobpV
	z4UT7Ibvap78GjEEr8DoydwzqKPt/edoVymzlmQ7dovfEkoUolzXk0r+RD4zKTEbHAtwms+ZweFIW
	FRU+7avKaYmXVD7hs9/CT44IcEEAQq7tEPefncVEXB0cM503cYehNM9fgtkOhaE4BMrV7mpvCorut
	cR5Ofsgw7dGt99+iDbAHMArIn4+akaRD3DDbbeh/JjFYRdnJ+oSGAgrEVGl+ezIMfprpzday+HTh/
	CyMNHuJFJXEIDPVqO6kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3nd-0006UK-4v; Thu, 16 Apr 2020 12:39:21 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3nV-0006Tw-7c
 for ath10k@lists.infradead.org; Thu, 16 Apr 2020 12:39:17 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587040755; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=gxuTGmhRi0u25Gp9sTe5nLTggXf9KJ5ShQ/dHi+p8ys=;
 b=FiAbsH1zXd62L/Gh9aKq7rjZywLQqWVMbfxmmoDZgfqYyaZl57Al4C6yd/VxsLHLbHMJWGGY
 2drmIyhM3aAlQLlcEMlCuRC6KSN2vN/99PKVcbh++jJ/wNim4L6rsub8SwoLSDGqInz2HgHS
 QmG/T4BMcG2IFRmIaaghQtBGe5o=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9851db.7fb7754d3998-smtp-out-n04;
 Thu, 16 Apr 2020 12:38:51 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D1B11C4478C; Thu, 16 Apr 2020 12:38:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2268FC432C2;
 Thu, 16 Apr 2020 12:38:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2268FC432C2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH] ath10k: improve power save performance for sdio
References: <0101016ed9241282-73dd8b35-e2e5-4f37-9b50-cf2fb6524dfc-000000@us-west-2.amazonses.com>
Date: Thu, 16 Apr 2020 15:38:48 +0300
In-Reply-To: <0101016ed9241282-73dd8b35-e2e5-4f37-9b50-cf2fb6524dfc-000000@us-west-2.amazonses.com>
 (Wen Gong's message of "Fri, 6 Dec 2019 02:57:30 +0000")
Message-ID: <877dyfr4fb.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_053915_782905_A2713B20 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> This patch is to set register to allow the mbox enter sleep status
> if it does not have tx traffic and wakeup it if tx traffic arrive.
> After mbox enter sleep status, the soc will enter sleep status by
> firmware, this will save power. The power consume drops from about
> 90mW to about 10mW with this patch.
>
> This patch only effect sdio chip.
>
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> +static inline int ath10k_hif_set_mbox_sleep(struct ath10k *ar, bool enable_sleep)
> +{
> +	if (ar->hif.ops->set_mbox_sleep)
> +		return ar->hif.ops->set_mbox_sleep(ar, enable_sleep);
> +	return 0;
> +}

I don't think we need to add another hif op for this. I sent v2 which
uses existing op.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
