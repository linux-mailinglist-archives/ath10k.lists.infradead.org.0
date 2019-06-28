Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA1D5A4F0
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 21:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTge+Re8PZ+YTe7M4vkSKjVHxJE+4zLjGQNJ9W/FVaU=; b=HATI08KqJAkSQJ
	x+VFyAxBwNteSv8itKrXDrK9TFqzRIrOGMEq1n6FGK7xOQm+FK23qXNfjLTebooakyrDFb+kG10P+
	gkI28oyVgspqmiKpiiSansBM3si4qaHTBAhPHJWw2I0sDj8iKBYZKdc+FZ+hxrxxx0wTOSnuDVRWT
	gRRQVku4OQrEQcERUN23c7uKvAnXDOKa44xDoDvG6AKgAbyp25B1jOBYtQ+c0ryRUy07ZGK5O13sL
	BnHzpLMBoH24UrTfRg6t0xLBRWrmGynmxWteDwUNh5VG37txWtcBmeSllcxZoBQRmSuKiOpWpCmQJ
	se/w0Zweolg0fKrf0zQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgwJM-0002z6-W4; Fri, 28 Jun 2019 19:13:29 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgwJH-0002yg-SI
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 19:13:26 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 933C3608BA; Fri, 28 Jun 2019 19:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561749203;
 bh=V3e8RLwz8lc/MJnEgI1dytrXcoNcPY+04lyxkFAkiXg=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=HSIzG3HGRNv6zARH8N1dmIktTeUcqg95CebPc5ohSU3prPfjU174odcQ2zYZzx0m+
 6KoNswJl0tfD16DVbctyVq4HkBu3jsnXaS6uw/5jDqq+D0wysIBJpq0zFNscf5GxVe
 V2dB8L2q3GPVqru+KheBFSQV3vVXbdYNWbANH0h0=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 885146070D;
 Fri, 28 Jun 2019 19:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561749203;
 bh=V3e8RLwz8lc/MJnEgI1dytrXcoNcPY+04lyxkFAkiXg=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=K8uMNRlwj3PzgaDsLTG85ib0AUJJ1mzR2Rx9SZdfDeLc3MjpmOQL8h3kRjWxKo8SY
 g4BV02+j+YhOjPCP1barSEPHB26xg34PxQcZqnHsJqkwF3dBvzOE9zJktZXC1rc9KO
 t/JVsklCiPLupVNYUopuu52rIL3dvOoVbyM+srys=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 885146070D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: destroy sdio workqueue while remove sdio module
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1561515940-13748-1-git-send-email-wgong@codeaurora.org>
References: <1561515940-13748-1-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190628191323.933C3608BA@smtp.codeaurora.org>
Date: Fri, 28 Jun 2019 19:13:23 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_121323_931980_19BC9351 
X-CRM114-Status: UNSURE (   6.45  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> The workqueue need to flush and destory while remove sdio module,
> otherwise it will have thread which is not destory after remove
> sdio modules.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

3ed39f8e747a ath10k: destroy sdio workqueue while remove sdio module

-- 
https://patchwork.kernel.org/patch/11016767/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
