Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732D7685F9
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 11:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCcTVxJs5DplL89456KSN0bfAt8SuHJ92SN+AA9ktIg=; b=IDUb9ctFL34fpH
	/HSCb3HEhOSy6GqREJ0e7y7uLlNFCF8xFmFSnfg6+DI+I+a6/YFFrMWnYRGbBzqCqDvPloGbHdrAh
	Di6vJGSdFZht92MPb7/PhGjRJwuzyXcPnJ9isd1QbLg+sXhnZFVLSBY46sdOhOFiT3Vs4KBuy6Rws
	M4gOTm51EnmBJ8w/9EUPtlYgdCglsYy4bOb6Y/xoYqRIwjiald/l243DVGeHGH7H+5IsgvIO3TbO4
	8iUN+yQohzqKDiMSH2XAoQRLzYGfBV/2PgWhOaByuxN8+cZvnq5qA3oUOVOMk71zVlL2BaMInMsnB
	IlCrURfurLjUTo7/fujA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmwx0-0003U3-HK; Mon, 15 Jul 2019 09:07:14 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmwwt-0003TA-33
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 09:07:08 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id AEBD7608A5; Mon, 15 Jul 2019 09:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563181625;
 bh=qeUJ6yQ41HgaxDpxnwOg7cqQHROMxVkkhftKtI6wZ0E=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=P4ZdemaBHDoHGA5gjZVTRSYHptmo9IpqizDzo3MSBJXoMl3d5Z7qk4lvCXBCM+oiH
 AWOYACqgo9ksNApDJhJXTgvgSaRJZ4baD+BSx4CbqlR1DPYtEsLcuC3CXCIHIQ7d0r
 0lwvUgyuVKnm8Xp6m6J+9hTMm5gJ4KhBo00+vON0=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 907DD608A5;
 Mon, 15 Jul 2019 09:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563181625;
 bh=qeUJ6yQ41HgaxDpxnwOg7cqQHROMxVkkhftKtI6wZ0E=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=P4ZdemaBHDoHGA5gjZVTRSYHptmo9IpqizDzo3MSBJXoMl3d5Z7qk4lvCXBCM+oiH
 AWOYACqgo9ksNApDJhJXTgvgSaRJZ4baD+BSx4CbqlR1DPYtEsLcuC3CXCIHIQ7d0r
 0lwvUgyuVKnm8Xp6m6J+9hTMm5gJ4KhBo00+vON0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 907DD608A5
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Fuqian Huang <huangfq.daxian@gmail.com>
Subject: Re: [PATCH v3 20/24] wireless: Remove call to memset after
 dma_alloc_coherent
References: <20190715031941.7120-1-huangfq.daxian@gmail.com>
Date: Mon, 15 Jul 2019 12:06:59 +0300
In-Reply-To: <20190715031941.7120-1-huangfq.daxian@gmail.com> (Fuqian Huang's
 message of "Mon, 15 Jul 2019 11:19:41 +0800")
Message-ID: <87zhlf8y4s.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_020707_151058_EC285B7E 
X-CRM114-Status: GOOD (  11.89  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: brcm80211-dev-list.pdl@broadcom.com,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Sergey Matyukevich <smatyukevich@quantenna.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-wireless@vger.kernel.org,
 Hante Meuleman <hante.meuleman@broadcom.com>, ath10k@lists.infradead.org,
 linux-kernel@vger.kernel.org, Igor Mitsyanko <imitsyanko@quantenna.com>,
 Wright Feng <wright.feng@cypress.com>, brcm80211-dev-list@cypress.com,
 Avinash Patil <avinashp@quantenna.com>,
 "David S . Miller" <davem@davemloft.net>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Fuqian Huang <huangfq.daxian@gmail.com> writes:

> In commit 518a2f1925c3
> ("dma-mapping: zero memory returned from dma_alloc_*"),
> dma_alloc_coherent has already zeroed the memory.
> So memset is not needed.
>
> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
> ---
> Changes in v3:
>   - Use actual commit rather than the merge commit in the commit message
>
>  drivers/net/wireless/ath/ath10k/ce.c                     | 5 -----
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c  | 2 --
>  drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c | 2 --
>  drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c | 2 --
>  4 files changed, 11 deletions(-)

Via which tree is this supposed to go? Can I take this to
wireless-drivers-next?

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
