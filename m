Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0053B1652A
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 15:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbU1/GdhOGUli4ulN4tbvP1xw2czTHASONB1nOAzIgo=; b=Bf1fSJq1i7Ry8m
	uDzIBb2x7q392sakVyjnNhFDzXMsBVLGtmNul6tGDDCK9YbksTyR/8c+JIwg7bPT0pThmdslwi1pz
	LaqznwmDIXZXMsRzR2DKelIIJCfl0GF13XtnwKXQ78UqRdjPXvunFrc5Ugxs01m5ySMxEDJBjGpxH
	4mLt0EHBeff1LiDu6GrS05OzjW1jemG18dVlRHh/GbpmHpOrpAU0fcZ//7fGf6IlyjtYrRDcy0xxc
	+6a802bD6uWWZ6KyV/lDq0XLcuOKswbTBB5lLTup7T1MiRJt4SoA+VCg9a+4tzwrELr/v91I5P+tO
	MfyYLzabeaWG0k3Po0cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0Z7-0005rF-Rh; Tue, 07 May 2019 13:55:29 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0Yw-0005nu-Be
 for ath10k@lists.infradead.org; Tue, 07 May 2019 13:55:26 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DC7AA61230; Tue,  7 May 2019 13:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237318;
 bh=FzVrmAEM0SCeTZL/lLnMcxA7vw2vfgD3XNlbsC95Wao=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=FeNjJrZHijmRY8+cn/LirBqZVFSz526WDjd0tTXMXjiZVjy8UXxhFpEihFLxZXb2U
 X8f8KmyiF/k5pYOr35rAtaXijLF8iUBBt1ANDDjswv+2m2Kb/u2H5YBk6m/h+gPG4D
 0CAB1f3vXyIYkOuzJENWe591pqHtQsxRdHu4oGi4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 361AC60CEC;
 Tue,  7 May 2019 13:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237316;
 bh=FzVrmAEM0SCeTZL/lLnMcxA7vw2vfgD3XNlbsC95Wao=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=OiDyL1sZ1dAUqrTnZ1LiBIXYxpdw8DT4IvY9Jg0FUQ3EIHqXP2YITFwr3zIoKFF+m
 U+oX5dpBogLLC+rN85L6ayi9Pg02ReCKKTGjzQmuYyrd6i71lTg2flYcEApX44g47i
 WklqMb7mp6FheCPf2jwmwnApMIUL9bVmEGjSIk0A=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 361AC60CEC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Fix the wrong value of enums for wmi tlv stats id
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1554792193-22535-1-git-send-email-svishnoi@codeaurora.org>
References: <1554792193-22535-1-git-send-email-svishnoi@codeaurora.org>
To: Surabhi Vishnoi <svishnoi@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190507135517.DC7AA61230@smtp.codeaurora.org>
Date: Tue,  7 May 2019 13:55:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065518_527438_3A969D5E 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Surabhi Vishnoi <svishnoi@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Surabhi Vishnoi <svishnoi@codeaurora.org> wrote:

> The enum value for WMI_TLV_STAT_PDEV, WMI_TLV_STAT_VDEV
> and WMI_TLV_STAT_PEER is wrong, due to which the vdev stats
> are not received from firmware in wmi_update_stats event.
> 
> Fix the enum values for above stats to receive all stats
> from firmware in WMI_TLV_UPDATE_STATS_EVENTID.
> 
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
> 
> Fixes: f40a307eb92c ("ath10k: Fill rx duration for each peer in fw_stats for WCN3990)
> Signed-off-by: Surabhi Vishnoi <svishnoi@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

9280f4fc06f4 ath10k: Fix the wrong value of enums for wmi tlv stats id

-- 
https://patchwork.kernel.org/patch/10890577/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
