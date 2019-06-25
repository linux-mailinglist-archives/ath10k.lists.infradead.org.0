Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C701D55110
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 16:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWN6viTkrVKwFis9R53HTGIORqWWXGInncstUoZzDHs=; b=QbJfzfAEsZPren
	eKVs1O0couxRCgIN5uqLXdJ+2U9TeD9hTW0LCOEi+vkGRUI3EIqDM1usS3FeBj1mZNj3DLzabdrBn
	xNVsd8ar6wEHoE+wQL0X3o1EU98xJ6fhOjgBbfAR75rXJFpm0lmUxsOajFtbRiMOqUCHrI80tGqH3
	zeksDM65tjdj9cbhvssvrUUj/zpC24GGxtIZyPPA4wZWj1CRRlsm9dgzP6BID1u75ugABAk47eJJ3
	7/Zj0rYRsYM5psrpSBMfRn7od5o3Gziz9/q7F3X4lE8h7I2vKbuaC+//J+l3zLpoPfjOnd4TRg8Mr
	48rfVAZvD6kOlZhLENtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfm5y-0008Ta-B5; Tue, 25 Jun 2019 14:06:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfm5u-0008TD-39
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 14:06:47 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A32456085C; Tue, 25 Jun 2019 14:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561471605;
 bh=cXRc0B/OOGCbX6QM2Qm2hXR9TSxjZMnQrVVkT9t0maY=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=YuCR9WfwOUb0KiWdIwLjteAx6nEhDnpikWFh0DTW38/qI/nXC/zxKKP2hRmQha2Rn
 jzK7zAJFY8o2kyky/RQ3tb/IIF8/If3N4kP7/VMorBrikxAg9ccYiKpeNXt/flvzaM
 r/GfAaqTeTwDUwt0iqznEuvJ19FwAYm7jWa85Lw8=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 30EB56016D;
 Tue, 25 Jun 2019 14:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561471605;
 bh=cXRc0B/OOGCbX6QM2Qm2hXR9TSxjZMnQrVVkT9t0maY=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=ZtGvEBBcxSgVUDZJK3rMsvf+hFd1KL5hMUOnGnDqENAfW5UDM02iVvNebij6vbjll
 ouL7PtzpVIAIhdJAOTMbLv4TzGf3b/CldQ+1ovxms5EcxhdxQfJ0AEPnrRuFXYM//o
 Aab8+pDQk3G12YfLMJNoOtsdCtRCo79FwzwLxmuM=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 30EB56016D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v3] ath10k: Enable MSA region dump support for WCN3990
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190610091759.29508-1-govinds@codeaurora.org>
References: <20190610091759.29508-1-govinds@codeaurora.org>
To: Govind Singh <govinds@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625140645.A32456085C@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 14:06:45 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_070646_158103_05331CB4 
X-CRM114-Status: UNSURE (   6.73  )
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

> MSA memory region caries the hw descriptors information.
> Dump MSA region in core dump as this is very helpful in debugging
> hw issues.
> 
> Testing: Tested on WCN3990 HW
> Tested FW: WLAN.HL.3.1-00959-QCAHLSWMTPLZ-1
> 
> Signed-off-by: Govind Singh <govinds@codeaurora.org>

New warning:

drivers/net/wireless/ath/ath10k/snoc.c: In function 'ath10k_msa_dump_memory':
drivers/net/wireless/ath/ath10k/snoc.c:1662:25: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
  hdr->start = cpu_to_le32(ar_snoc->qmi->msa_va);
                         ^

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/10984519/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
