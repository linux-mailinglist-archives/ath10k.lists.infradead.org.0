Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C26EDFE78
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 09:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IwR073d7cN6Ia6YPNwrXwRJFlrNsGFPiap2mcoHLdNg=; b=BE3NNwjgKvSEGi
	gSRlWU2A6Rpe5pwa55mqoXFnbDMy3BswdIFCo4VaescGx/PkzsPWnVT43xJlZQSdZmNO/yvD+kyNa
	/AgUyLg9eNkKhi0Z/WZrowMZY1bww2wHEvZc+yKG1tyVDvNygx17iY0wwskuMHc53WNYlKbidr3nw
	NDIK2o9BcAeFZ2GU8eigizQkOM0AaQkvPrM9vTlbGPQYJ8kJMsLcWKf0o/3VzyS+OGyLSvvtimjh/
	uX15wh1EyxXmQMj2EY3ElaewexB1hr+X/LeLZjXAOAcClVrdwtAvLvFw3VibBsampVeUZf+rRjcF4
	imXWFuVbZ51QSJ6btHJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMomv-0001Gn-FL; Tue, 22 Oct 2019 07:41:05 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMoms-0001GK-7k
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 07:41:03 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5EDA9607C3; Tue, 22 Oct 2019 07:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571730061;
 bh=QuqBvyXmiPRZUq96WqDG8E3ujBoX/SM0M39BxLLd+CA=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=hwvM43KBXyUq2gGX5IJXUWNadrPUxvPPxp3nacmjsxppWVuxZbZ3oSqsn0VSRBiGd
 EyWhQbAUwpG+ZDIg6aMk7CVDiHjbW1eBFMHwHIbyy05NVPnDRTM0fApesp7hMUZ4gS
 ZybhB18+EL6rOEK6SwlUsG5YqwSd0NyotlzJTWtA=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BB4936039C;
 Tue, 22 Oct 2019 07:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571730060;
 bh=QuqBvyXmiPRZUq96WqDG8E3ujBoX/SM0M39BxLLd+CA=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=aRUr+1tmkVkgtfJVj1C0qcMOjvtpQK7UV3ncGegSqDSzW8V6CjQuipglDxGUPoh5p
 fgRUaNLx5P4soc9UGTYxb0UX25zQ79t6z5SpN/zgnpGWr4bcSdVP3khC2TNuawo7mG
 TtZ5qVArZCcQi0J4rKX622/dVtZ9mqfgT/WkS21E=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BB4936039C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v4 2/2] ath10k: Enable Airtime-based Queue Limit (AQL)
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191011022413.176208-3-kyan@google.com>
References: <20191011022413.176208-3-kyan@google.com>
To: Kan Yan <kyan@google.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191022074101.5EDA9607C3@smtp.codeaurora.org>
Date: Tue, 22 Oct 2019 07:41:01 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_004102_300285_5DD95B62 
X-CRM114-Status: UNSURE (   6.09  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kan Yan <kyan@google.com>, make-wifi-fast@lists.bufferbloat.net,
 toke@redhat.com, linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 yiboz@codeaurora.org, johannes@sipsolutions.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kan Yan <kyan@google.com> wrote:

> Calculate the estimated airtime pending in the txqs and apply AQL to
> prevent excessive amounts of packets being queued in the firmware queue.
> 
> Signed-off-by: Kan Yan <kyan@google.com>

Dropped per Kan's and Toke's comment:

https://lkml.kernel.org/r/878speqh75.fsf@toke.dk

Patch set to Rejected.

-- 
https://patchwork.kernel.org/patch/11184783/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
