Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BE7D6E87
	for <lists+ath10k@lfdr.de>; Tue, 15 Oct 2019 07:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iT3PJAnJcKgsL9iNKSMldYs6Jgx0vKH/vfCvl6BCFXk=; b=TtSerPpHkTFHfk
	IPHkS8uM542GnjKnfFx+77N6uRh5NwzSabJck31F9iBJw3urPDTh7wejkztH4Vt+HrTHCX1DQRfdA
	VAvCncz2zoT9Na2C02+1jVdqk2rJsSDoSAv23v+m6dHrI9yNnWVb7t6rOMxdXnpD+FHbadYHUXD4e
	AFurd8Kj6k6/9o2S6Q2lNtbW6VeM02yenyMz30hMn10zGZL0SXWtNEJS8PTFJ1DqbRvfiI0dxkkzi
	4epYJ9swueSqKqc3PSK3QcMBbHgpCABJkC/8da7tw3LBuAKn+QMFqcyubvdULgh0GwN1zL3mNRu0P
	xf+jQhw0Rd/aTTgqvkhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKFH0-0001YF-Qu; Tue, 15 Oct 2019 05:21:30 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKFGw-0001Xg-PL
 for ath10k@lists.infradead.org; Tue, 15 Oct 2019 05:21:28 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D2E0C60B7A; Tue, 15 Oct 2019 05:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571116882;
 bh=I9WghGtYVeVXJlrf61PEkCMhAN/CWWt9s6E+2MBmULs=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=oHtitwk3p/DHQeJIDy/tz4URozWpErZP6nJ/43iw2NPjopbMDOQEUHqGyP1yFmWiR
 vtfWDJq//4dP44ND2t8PIvcnbfIZG3aABJ+Ia6KuPmX9Uwvtqq4vrfI9lwxOmmFYLN
 rXTzMX3vxdowSm6mvJ72pO5eKeIbzUedDWUFIOck=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5D5BE60A08;
 Tue, 15 Oct 2019 05:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571116882;
 bh=I9WghGtYVeVXJlrf61PEkCMhAN/CWWt9s6E+2MBmULs=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=NnBS+7x4cXUBpHYlGfS2P9pXG0hRUwGdykafpD6XvkHSi6ZHk6Q5HEgtpQlPoNISP
 aNXuk0+bDPWjjMTMjqPcLketao2JjtarTtgLPEgooWF+xnYw2z4vdkhZL/2/QPRc2I
 e2Uvtqr11xwD/Wz+ObDG7J7LqU0OdjuQLAAMsqF4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5D5BE60A08
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v3 20/24] wireless: Remove call to memset after
 dma_alloc_coherent
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190715031941.7120-1-huangfq.daxian@gmail.com>
References: <20190715031941.7120-1-huangfq.daxian@gmail.com>
To: Fuqian Huang <huangfq.daxian@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191015052122.D2E0C60B7A@smtp.codeaurora.org>
Date: Tue, 15 Oct 2019 05:21:22 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_222126_845582_FD5EBF05 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
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
Cc: , brcm80211-dev-list.pdl@broadcom.com,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Sergey Matyukevich <smatyukevich@quantenna.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-wireless@vger.kernel.org,
 Hante Meuleman <hante.meuleman@broadcom.com>, ath10k@lists.infradead.org,
 linux-kernel@vger.kernel.org, Igor Mitsyanko <imitsyanko@quantenna.com>,
 Wright Feng <wright.feng@cypress.com>, Fuqian Huang <huangfq.daxian@gmail.com>,
 brcm80211-dev-list@cypress.com, Avinash Patil <avinashp@quantenna.com>,
 "David S . Miller" <davem@davemloft.net>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Fuqian Huang <huangfq.daxian@gmail.com> wrote:

> In commit 518a2f1925c3
> ("dma-mapping: zero memory returned from dma_alloc_*"),
> dma_alloc_coherent has already zeroed the memory.
> So memset is not needed.
> 
> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>

Patch applied to wireless-drivers-next.git, thanks.

52d4261862ec wireless: Remove call to memset after dma_alloc_coherent

-- 
https://patchwork.kernel.org/patch/11043359/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
