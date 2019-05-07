Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4EB164FC
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 15:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2GaIOoEaZ6748VBto/MiSAhw5Y+NS2VBuaSK2F5wcA=; b=HLokdVb0KxGUnm
	johguZOwgvH9rjH0DOGX1lA5DmmzZqCB0JDDpvPTqmOboDZb3m4COxLBNKZZmUVpzvxrtavC+8vNy
	DCj/eu9VsN+UL/jRBOjbmqSgHr8CM9xnN0KFccni8VHgcCynHHx50vcNszM1ObxGVV4JVocyH7rrX
	CmNeQoW1YZpFKPtF0xSrhYxR+wwjiAsLenLZPAU84B37xOKLCZV32bQ3PtRmsmjrED15pxcvhoYr1
	i3S8nAbwgg889HXSesffGhoe65pH0EDGsH0qHpw8GvvyO7JGhLEGntK+2PMb6W2440h1aaKgM+wwg
	fn+OmrbxAouw5m4uS0jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0Uf-0001q1-V4; Tue, 07 May 2019 13:50:53 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0Ub-0001oi-25
 for ath10k@lists.infradead.org; Tue, 07 May 2019 13:50:51 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6B8C960DB6; Tue,  7 May 2019 13:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237048;
 bh=UMGwbXcx64tBezxSNuvo+YAOX1QBmq2Crgw3gSp06pY=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=F2jNQ6S9dPglpjfAefOHLfoCRBZUw2qvO8RXhQga57AASd8EH40rHyJiex/GO6zw3
 iuGPraS3j6tFscrrgZwUiwpcS+D55OQINkTJP5hGzHeeokJ3SK4iKhudHrAQ3p8raq
 KYRW31k+YjEaQINztptawwlGYc1MhQTp8fGjWPXs=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8B6E760CEC;
 Tue,  7 May 2019 13:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237047;
 bh=UMGwbXcx64tBezxSNuvo+YAOX1QBmq2Crgw3gSp06pY=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=U7u5HFoV3zCtub88Fi06bNmoqAcolRP+yQy034+0CdJOGwWo5/WlBEzY7fWCakmTV
 A+43FpyzmLWs4w2FX+/K96+nbSUF4B0D9Hqn0c4/5tlpP9LM/v9ucvf9rWj9FMiqZo
 GpuCd2iTxlpCuxJmXi/hxZMAJ/s101ajYRaq/oy0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8B6E760CEC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Fix encoding for protected management frames
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1554208970-16527-1-git-send-email-pillair@codeaurora.org>
References: <1554208970-16527-1-git-send-email-pillair@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190507135048.6B8C960DB6@smtp.codeaurora.org>
Date: Tue,  7 May 2019 13:50:48 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065049_115881_6574BA26 
X-CRM114-Status: UNSURE (   8.07  )
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
Cc: Rakesh Pillai <pillair@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Rakesh Pillai <pillair@codeaurora.org> wrote:

> Currently the protected management frames are
> not appended with the MIC_LEN which results in
> the protected management frames being encoded
> incorrectly.
> 
> Add the extra space at the end of the protected
> management frames to fix this encoding error for
> the protected management frames.
> 
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
> 
> Fixes: 1807da49733e ("ath10k: wmi: add management tx by reference support over wmi")
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

42f1bc43e6a9 ath10k: Fix encoding for protected management frames

-- 
https://patchwork.kernel.org/patch/10881571/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
