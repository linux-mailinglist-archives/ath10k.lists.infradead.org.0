Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78204B500A
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 16:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z25ZwFeAw8JRObwiwmXkbu47imbsohHszshUFEqeNYM=; b=DBkV49llMukku7
	Pws8c++SYLgWn7/y5ie64HPUEdOIikVGXmY5T1PlvYSMnl7XlqTNHdr28lf2InavwIB/iH9qLwqyi
	phPeZlGnUsQ3sHFy3B6rtSgYM7s8359Ci7Ol6D6fdJLJIEQ6sRRSIRbzAEeNNpVXI2+Pi3mEc9Vd1
	wLE82kSOjzdH3LStAPsLoS4SLADK9M5ccAjV+tptR7ig15yz5iN/8vJE/zQsQK4Kt0LFg3ERbaTbX
	TI+xFlzoTkkCIeicN2pJhmwjcMydB507AxLauh3M01Vqj/RLu6dZwpvRLUazAJAkp8alEWIiHxUrA
	jMpF8fatiC0ajODGyUew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEC3-0004FJ-Mq; Tue, 17 Sep 2019 14:10:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEBy-0004Et-Ao
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 14:10:55 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C49A36141C; Tue, 17 Sep 2019 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729454;
 bh=Xk7dfjNLZQgR9IBaMaMsVlGhXbY3AXcfDb6MCqDIqx8=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=JPJE4aROuKWNgEvTeRTCwprl1AyJ67wwSwJHrn040q3kIUdXxYjldrapBLWnv3doo
 DgLcQsS6I0++jduTWnls/3NJqsuiREaXqg+rL3hEEQ7YSqZWDlHfUqYqa5L6WbyCSq
 JpQcZi9iLgMPVpSN8dg5BHwPAyOPtGErwfSQ6CC4=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1A6D6614BF;
 Tue, 17 Sep 2019 14:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568729453;
 bh=Xk7dfjNLZQgR9IBaMaMsVlGhXbY3AXcfDb6MCqDIqx8=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=i1ZeLKgeRartYsS0SCzpA2IuC4hLJRzZ7tFt/F7TKL+pZM8/NUj/Ni6JL5ar1Gwwg
 BisR10a9pwsBkDe04xq5PISkhE1u9xAYVVg0Sjkf9GDPSUvEUEN1vevT2B5OgK+5v6
 b4j1ajFhR/ra1SQ+ZZLoC3mvUazzQqwrsjrycyow=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1A6D6614BF
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: revalidate the msa region coming from firmware
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190731114220.22830-1-govinds@codeaurora.org>
References: <20190731114220.22830-1-govinds@codeaurora.org>
To: Govind Singh <govinds@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190917141053.C49A36141C@smtp.codeaurora.org>
Date: Tue, 17 Sep 2019 14:10:53 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_071054_395853_7F78479A 
X-CRM114-Status: UNSURE (   7.04  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Govind Singh <govinds@codeaurora.org> wrote:

> driver sends QMI_WLFW_MSA_INFO_REQ_V01 QMI request to firmware
> and in response expects range of addresses and size to be mapped.
> Add condition to check whether addresses in response falls
> under valid range otherwise return failure.
> 
> Testing: Tested on WCN3990 HW
> Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1
> 
> Signed-off-by: Govind Singh <govinds@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

c41305993ff5 ath10k: revalidate the msa region coming from firmware

-- 
https://patchwork.kernel.org/patch/11067547/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
