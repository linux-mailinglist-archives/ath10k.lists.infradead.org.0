Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F321354F7A
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 14:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7sSwknwt61RQbBX4T/eCq9AHBkL3rpexXsRUwxJSx1I=; b=pRM+AfGC7wDJLR
	mUDDQ2cKvahhneayOt0Udx/GAOxa3avR2yovSaS33G3JHAI6J7BWcU6zdV1DZuvcugyBEyBR7L6OT
	owDQ9wmNWexjrwsO6j4D6U6p0/0Cv8xOWh+8NPtZibze+6fex8CkTtfa0hJaDrLjkZBzWj5PhH0+L
	FE42VFnay9eDWMwcO/iWBjUEZYuOygjiejsrQDq+5IOoYu7qRzLLJ2elAm0wHW0IqFqkxhk2mB99K
	elmQ56izJGlBZINMXLUgqCtA0LbuOCnjEMx7HXmNW/WziqEyJUowXuljpgdllH3BSXUlxg7N59M9D
	8D6QlCkK24UeY/IYf1Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl2F-000725-5z; Tue, 25 Jun 2019 12:58:55 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl2B-00071m-Lz
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 12:58:53 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 44127602F4; Tue, 25 Jun 2019 12:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467531;
 bh=a8Rca21arwvNo+iIyTeF4mU7wZ/+IYY/W7PLD8V0MaU=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=jYUsyjhsWEPvPGUPvMjb5s1HE8IvJZ4VC/Fw/0vok5fAIUoHtxtgOTQ2P6uiHAJ2u
 VDzizHexxXzBfpTIowMVuCXpNtgXTxdK1ubQlXswXvXN8NlOiIRFEkTrjgYmDGemxw
 hD5bqJu0ln8eXzsqS6qp5QnUG2CBjmzx7H2eSO1E=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C6CE6601B4;
 Tue, 25 Jun 2019 12:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467531;
 bh=a8Rca21arwvNo+iIyTeF4mU7wZ/+IYY/W7PLD8V0MaU=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=n49b72GnReoYeQbLR0U6ni1ZKl+EZbJBYvF9TyXel8akMEfgKKDkeoYS/gWtD4bke
 iAh3CPMrxVMajg8Z9FHtJvM0ISHXgGekw6VKrhhx/TI360ljG7anf6He+zm9aPyalh
 K6N8aXhT4PbVl/DMj5PfSNayxoSWhcVk3MN9Uo1I=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C6CE6601B4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: add missing error handling
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190523071534.254611-1-tientzu@chromium.org>
References: <20190523071534.254611-1-tientzu@chromium.org>
To: Claire Chang <tientzu@chromium.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625125851.44127602F4@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 12:58:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_055851_731658_B57A760E 
X-CRM114-Status: UNSURE (   8.92  )
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
Cc: Claire Chang <tientzu@chromium.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Claire Chang <tientzu@chromium.org> wrote:

> In function ath10k_sdio_mbox_rx_alloc() [sdio.c],
> ath10k_sdio_mbox_alloc_rx_pkt() is called without handling the error cases.
> This will make the driver think the allocation for skb is successful and
> try to access the skb. If we enable failslab, system will easily crash with
> NULL pointer dereferencing.
> 
> Call trace of CONFIG_FAILSLAB:
> ath10k_sdio_irq_handler+0x570/0xa88 [ath10k_sdio]
> process_sdio_pending_irqs+0x4c/0x174
> sdio_run_irqs+0x3c/0x64
> sdio_irq_work+0x1c/0x28
> 
> Fixes: d96db25d2025 ("ath10k: add initial SDIO support")
> Signed-off-by: Claire Chang <tientzu@chromium.org>
> Reviewed-by: Brian Norris <briannorris@chromium.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

4b553f3ca4cb ath10k: add missing error handling

-- 
https://patchwork.kernel.org/patch/10957013/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
