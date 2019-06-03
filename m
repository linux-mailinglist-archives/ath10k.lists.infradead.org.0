Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 109793329C
	for <lists+ath10k@lfdr.de>; Mon,  3 Jun 2019 16:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uw5VPbOTzxBi6g8QDSDjO0ocXcPEFI4zALagdheI1cg=; b=Wvjgz1GRbYBEC0
	D2XPu62LirZHDiRu3vTRAo2qjxYZiWtsKhnOhD3Y6ttEUzs3mlx6Zj9HgjdmULgCNxEpkaUK9d0g/
	ihHsRboGa0CNj5sVITJts3OOEPiIeNqd1o0I1mI5CNzibnKdx+2/xUjz4Si6aaG0Q1WrA6EQyuyCJ
	wCz6Jc9JWObMHme0yvi2Z5NcmiQwWDuJn1+FXay8vDZsy/KxFSSn7RJcreh0sTdZ7SSCN4bq7h7Lp
	dHdn1pw8qSUrrimnGOjG+wd2bYBVyrMQLDuarRJrkFa5MRb3DaXZW4NjVK/U+hIWsBJ59CQxnAF0D
	U1auHDIYfB5Nn10zWgIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoGH-00065q-Vo; Mon, 03 Jun 2019 14:48:33 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoGD-00064v-VY
 for ath10k@lists.infradead.org; Mon, 03 Jun 2019 14:48:31 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DC69660DAD; Mon,  3 Jun 2019 14:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559573308;
 bh=4cZEGaj9UQufwOw+P10SLYwCO4sIdBPkTCOKNXaAYrU=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=J38/2kwXDfwSKhj+j4I0uBKwWafBspE+pcysiRe6q0bqMU2P3SObSe00nj3D/4LJ+
 DYTd9FmwlIVklaQJ6xIXLrzztWhpQIQbmA+k+D6gg8J+0URDy/AtDTOFrtSyHhwMMq
 inIaa6I4b7lwFCeSGYQvVZKTiyABHFQF/cEeY6Ys=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C2F1460252;
 Mon,  3 Jun 2019 14:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559573308;
 bh=4cZEGaj9UQufwOw+P10SLYwCO4sIdBPkTCOKNXaAYrU=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=J38/2kwXDfwSKhj+j4I0uBKwWafBspE+pcysiRe6q0bqMU2P3SObSe00nj3D/4LJ+
 DYTd9FmwlIVklaQJ6xIXLrzztWhpQIQbmA+k+D6gg8J+0URDy/AtDTOFrtSyHhwMMq
 inIaa6I4b7lwFCeSGYQvVZKTiyABHFQF/cEeY6Ys=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C2F1460252
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH] ath10k: avoid leaving .bss_info_changed prematurely
References: <20190311083107.311-1-sven@narfation.org>
Date: Mon, 03 Jun 2019 17:48:24 +0300
In-Reply-To: <20190311083107.311-1-sven@narfation.org> (Sven Eckelmann's
 message of "Mon, 11 Mar 2019 09:31:07 +0100")
Message-ID: <878suiwwqv.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_074830_035078_BA48CCCD 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: linux-wireless@vger.kernel.org, Sven Eckelmann <seckelmann@datto.com>,
 ath10k@lists.infradead.org, Sriram R <srirrama@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sven Eckelmann <sven@narfation.org> writes:

> From: Sven Eckelmann <seckelmann@datto.com>
>
> ath10k_bss_info_changed() handles various events from the upper layers. It
> parses the changed bitfield and then configures the driver/firmware
> accordingly. Each detected event is handled in a separate scope which is
> independent of each other - but in the same function.
>
> The commit f279294e9ee2 ("ath10k: add support for configuring management
> packet rate") changed this behavior by returning from this function
> prematurely when some precondition was not fulfilled. All new event
> handlers added after the BSS_CHANGED_BASIC_RATES event handler would then
> also be skipped.
>
> Signed-off-by: Sven Eckelmann <seckelmann@datto.com>
> ---
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: Sriram R <srirrama@codeaurora.org>
>
> Only compile tested

Unfortunately doesn't apply anymore, please rebase.

Applying: ath10k: avoid leaving .bss_info_changed prematurely
Using index info to reconstruct a base tree...
M       drivers/net/wireless/ath/ath10k/mac.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/net/wireless/ath/ath10k/mac.c
CONFLICT (content): Merge conflict in drivers/net/wireless/ath/ath10k/mac.c
Recorded preimage for 'drivers/net/wireless/ath/ath10k/mac.c'
error: Failed to merge in the changes.
Patch failed at 0001 ath10k: avoid leaving .bss_info_changed prematurely

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
