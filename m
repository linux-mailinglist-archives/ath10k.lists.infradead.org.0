Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148E055012
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 15:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S35jj3DKQmEXRhcWhREiO3wbN4BVcrA/prXyoDfM860=; b=VaSTzbVTS4Pvq5
	zHh3l1rsaTs6Oc5lzOgEI2+0eJlboe7N3VA27ROQh8aruXbUFhXfNPCsLdKmwDv3Mbp5Q/M3B8Etj
	85IU5LL+DYHEfjM0sysaeULXV7r/JrteF/wSHk+NOgpRFru5u2bO2KXaFTBe1eMPt2QkEU+nLCLv0
	mJTveiyRheUYgZVULTmHjBwmMfvDMruvFeYz1AUG6ig0JofiX/C4boev5ko4spl8tW7US+WZHZKew
	BRyfBWHToie5szjx6r3OyziZfK3ZJO/Frb2xuIt80nDyDrGOnh3IE3iNTCky0Qkh2+F0hesxsAdFs
	VEwmraJ7yhSGDpQb1QRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflKb-0003jY-Pr; Tue, 25 Jun 2019 13:17:53 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflKW-0003g2-4V
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 13:17:49 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8FDB860AD1; Tue, 25 Jun 2019 13:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561468667;
 bh=KEJdrdhw6An0ZkLpTtNp8OmOcc9f2AmcB1N4w/cLrBM=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=UmJKSXiVI5oL0iK6SsygCzmA+InHlk7dsPZMrXT52iHlu8Gv0Ir/l8G0L2PDW5hNQ
 /+6Sjc1CCLoGxdhwlErXa1TsbykG7la4gkpwmmfAgcjLYdcnN9dUQHUS4lwxzWWlNe
 0NOU96McVu0P4JmJn9a41KtKE0diAZ4eLdCmVJrM=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 108EF60DAD;
 Tue, 25 Jun 2019 13:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561468667;
 bh=KEJdrdhw6An0ZkLpTtNp8OmOcc9f2AmcB1N4w/cLrBM=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=BEU6vT+iQfNY84qci03bMADcGb0RrNMXWsxOlp3cLb4IO9oGhOhuLj+WSZO1vu42V
 JVtlQd/lkIrYGQh26s96kt8hKfzMIw2ZrnFgcysjG0VO8AbHIzsV+D59d8E9U9iGeK
 Irl6uVMrJQnqlKUlgpD91pyTfut2R5eC2ndY8w2Y=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 108EF60DAD
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Add WMI diag fw logging support for WCN3990
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190401132202.29626-1-govinds@codeaurora.org>
References: <20190401132202.29626-1-govinds@codeaurora.org>
To: Govind Singh <govinds@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625131747.8FDB860AD1@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 13:17:47 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_061748_209991_302DFED9 
X-CRM114-Status: UNSURE (   6.63  )
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Govind Singh <govinds@codeaurora.org> wrote:

> Integrated WiFi chipset ex:WCN399x supports fw logging
> using WMI copy engine and shared mem DIAG based fw logging.
> By default shared mem DIAG based fw logging is enabled.
> To support WMI copy engine based fw logging add QMI
> control message to enable WMI copy engine based fw logging.
> 
> Enable WMI based fw logging using fw_diag_log module parameter.
> 
> insmod ath10k_core.ko fw_diag_log=1
> 
> DIAG utility(https://github.com/andersson/diag) implements extraction
> of diagnostics related messages between application processor and
> various subsystems while shared mem DIAG based fw logging is enabled.
> 
> Testing: Tested on WCN3990/QCA6174 HW
> Tested FW: WLAN.HL.3.1-00959-QCAHLSWMTPLZ-1
> 
> Signed-off-by: Govind Singh <govinds@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

d9e47698965d ath10k: Add WMI diag fw logging support for WCN3990

-- 
https://patchwork.kernel.org/patch/10879943/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
