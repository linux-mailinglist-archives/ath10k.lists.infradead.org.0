Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1177CB9D98
	for <lists+ath10k@lfdr.de>; Sat, 21 Sep 2019 13:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4D/HJ6FFKj2RXhQ/EKgxmpURp7cKUFRd3OK3ENUItP4=; b=Y4A1t320OZuI5l
	1TP1V1EZhJP/Uleocdbcx5XAOWTKYLJVtkaGBrNrOAXg3bYzCYK5I0Y50Jb63gZmfilTemdWgKhHi
	tg3VBLkOx//ZvQ90QH/j9Z2YeHWh5gjMBGzEOzvHgdsxjtpetoTcmbfG/tL2QhEzLcGgqpP7xE+bo
	cPYxIdFHR7/fw7naUDGQbboIpKbDH5G24gubtE5I033GVdEkixppOfz5MMBlXELzYbOG41Umeo4qh
	dDo/xynOGKN/YHPM/gmLDp5s3k2oeVc/zcjuw1u+VxyrZtbM4Qhu2oEET2K4RChtqFGTJ2E3Db2zM
	CXm/JEzsWYikW8U6Uz1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBdXc-0006P1-Pr; Sat, 21 Sep 2019 11:27:04 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBdXX-0006Og-Ve
 for ath10k@lists.infradead.org; Sat, 21 Sep 2019 11:27:01 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 43E99613A8; Sat, 21 Sep 2019 11:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569065219;
 bh=d523pat/7HXfX/N5O6ps4NSPZ+ok2hHb1PagZE1tirw=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=OISB6SPxffcXVcKIvxL0uw4yL4foYrJKrjpPnT8cRndX1lRyuTaPLzZKgjh0oThV1
 LaqFXQDT/eNUexvuGbVwVeSP3yR+EgrD/iUGsI0jHNLXTfYfIk8z5vVzOACL/rwxKd
 tSE01pJqO6em1hUCdA4J7XlM31DfYwqsYFkGa5FI=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D09D560790;
 Sat, 21 Sep 2019 11:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569065218;
 bh=d523pat/7HXfX/N5O6ps4NSPZ+ok2hHb1PagZE1tirw=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=W51W8DnOe38vsZ2nMMsOQUMDUKMIRpxbQMj0DTjns72OPHgFn9RBGPQxI1IDuPgxL
 8RjjyO8L4kmci0WeX8x/uMef2U3gGdORK7SL9+x95rxAgG4O4U4UqtWxRTSiFIMR4t
 uNRin/Y+0owrtE3eh2kOIn0QtD7b+RWR0u3a/cHk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D09D560790
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: add fw coredump for sdio when firmware assert
References: <1567132338-7407-1-git-send-email-wgong@codeaurora.org>
Date: Sat, 21 Sep 2019 14:26:54 +0300
In-Reply-To: <1567132338-7407-1-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Fri, 30 Aug 2019 10:32:18 +0800")
Message-ID: <87d0ftc2kh.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_042700_044862_364D5032 
X-CRM114-Status: GOOD (  15.32  )
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

I think this patch should be split into two, the first patch preparing
coredump layouts to support different bus types and the second patch
adding coredump support for SDIO.

> --- a/drivers/net/wireless/ath/ath10k/hw.h
> +++ b/drivers/net/wireless/ath/ath10k/hw.h
> @@ -11,6 +11,7 @@
>  #include "targaddrs.h"
>  
>  enum ath10k_bus {
> +	ATH10K_BUS_ANY,
>  	ATH10K_BUS_PCI,
>  	ATH10K_BUS_AHB,
>  	ATH10K_BUS_SDIO,

I don't think we need add this type ANY. From a quick look QCA4019 is
AHB and all the rest are PCI, right? So in the first patch you only need
to add correct bus type for each entry and everything should work as
before.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
