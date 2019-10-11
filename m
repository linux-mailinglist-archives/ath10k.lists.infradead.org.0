Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5B9D3F16
	for <lists+ath10k@lfdr.de>; Fri, 11 Oct 2019 13:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CQd4vwf8Xik51CxwYpmL2N5ltpz5gzmoYgyLHj8wyo=; b=GHZ0ub+VpKnY/B
	MAEjwri372EQnIjPfzp7jtkkO+S3vsKzc9m/hXBs0t6cEPJcMLJAMkogRbMoqyNiReznRy1O9MtmW
	eBqTeTTNeAo3cpr4ythb8tGz6XuTKjCq9W3Ez1t5cseM+yyTl+LC8O7KH1vmRAF9He3DLTsucKagF
	px5DUlmXz5zwaYScTG1oQ2oFWKBQgehj9Xn8jHR/5vDT3fl0ur7rl4JC6yy4LkjAsw2MhZc+GUFir
	LKCgFD3LVVRq9gZ5SAQXTrLoXDABpFElddFi054SR7ihfDpZZMGaaxYqBKHBPjiuHEerV/filCqMA
	fzcAno1p8+9OETDsiqnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iItY8-0005vn-5d; Fri, 11 Oct 2019 11:57:36 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iItY4-0005vR-DR
 for ath10k@lists.infradead.org; Fri, 11 Oct 2019 11:57:33 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 044BF60BE8; Fri, 11 Oct 2019 11:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570795052;
 bh=EPYe5kTBBGci2tg48EPs5GLHdxzLBPQNaqpnWCbvN0A=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=dcyAOLXlc63HacOqTCRkTOezC44jm2EsyeUorxd4Y2Czh0nylMKLnukFv2yIPyDC6
 gSEkVyhOQ9ZCuAADkDBMe2oepgpoWIS6GeGE5xrcy8lb2+J7dP2OL3jy6rJbjCP01C
 +IHbZyPOYgUzaj0GS9Nt+pRHzcpRXpJGfgV2qm1w=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B19BB602EE;
 Fri, 11 Oct 2019 11:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570795051;
 bh=EPYe5kTBBGci2tg48EPs5GLHdxzLBPQNaqpnWCbvN0A=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=eCT6yiCW4z23JIr4WE8iA1QhYZu/HoLLv/OdH8G5QEa5TVLcY4VigfBIS5uGhmp5d
 ds0tQP+w3Vc91Niy04tYYt51RBcWIsQeY182WQVCX9JPWZIQEo5T4etyqE2VxVguwl
 07Ii9gVVw/vvgqEa50iIDZK8TnIqgB7yHP0PYHaI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B19BB602EE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Correct error check of dma_map_single()
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191010162653.141303-1-bjorn.andersson@linaro.org>
References: <20191010162653.141303-1-bjorn.andersson@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191011115732.044BF60BE8@smtp.codeaurora.org>
Date: Fri, 11 Oct 2019 11:57:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_045732_477319_A55A1717 
X-CRM114-Status: UNSURE (   6.68  )
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 stable@vger.kernel.org, Niklas Cassel <niklas.cassel@linaro.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bjorn Andersson <bjorn.andersson@linaro.org> wrote:

> The return value of dma_map_single() should be checked for errors using
> dma_mapping_error(), rather than testing for NULL. Correct this.
> 
> Fixes: 1807da49733e ("ath10k: wmi: add management tx by reference support over wmi")
> Cc: stable@vger.kernel.org
> Reported-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Did this fix any real bug? Or is this just something found during code review?

-- 
https://patchwork.kernel.org/patch/11183923/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
