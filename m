Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941C81653F
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 15:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=femOkXCEdeYbj6JsKXcZ+9NVGx6Dn5fTji+JzwLhOmQ=; b=ZdmA8XqhVCIFCa
	nLJixLbO41a6UFfLjPWQ7Ckg5oOW4BqYWJaQZT+4kZBPydUlNG2EPlCEiP5ONhugajY4dHhp0yUjX
	BjkKZwHSg4i3w/MNc1ozT3Br0XtCQRpVh0Jb0Xxr+LVxvZ0inl9nacPs9nluGsSb+XYWEia9ztO18
	AxTUw9Y69ebu22lIdALty8YuKKC0wzdvA4A5S+LT/ny3IEpKcDdkbLwXRKomgiSC5dtEcm95qPRK3
	HKByAIFJMoNgJzoch2MGP9bZGGJmD/oLTjgmQj0nXwon5YrcL9urY8XzstUqgFeD9/iIfvI6Ey0cT
	qq/he/CL+r7r2eKdKQSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0c8-0006GO-C7; Tue, 07 May 2019 13:58:36 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0c4-0006G3-MY
 for ath10k@lists.infradead.org; Tue, 07 May 2019 13:58:34 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 2042360AA8; Tue,  7 May 2019 13:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237512;
 bh=UVrAVR71DeqnGsG77IgvmH4NMdGJDIS8VmhtMoLwRy8=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=PquEXDySxJX1ksEX6xIZ7PmL218LxHE838M7dZlqhkJPxyjkX/8dniepnkFsxotf9
 wLEsgpCfuuW0kCBJXNiB7rQpoXaJpHHiYB4woJUs5KxbIbXwv4FhCCwWa46dWciX/B
 iV71FRD11ndArRLiGFLmbJD34aw3lcNU5fmpYr84=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 82B75608FC;
 Tue,  7 May 2019 13:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237511;
 bh=UVrAVR71DeqnGsG77IgvmH4NMdGJDIS8VmhtMoLwRy8=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=Wswpti8RiRXyjvxNrIjFLGsIZx+UOLVK90mMmw3Dbv8c2nhrLzN/hf9pjIxkDfoT8
 17T7VwfGMTdh7lyXR5ofRhNiw6R9ubsW7mkSDkaG3XO51roAC8sJPQK9e22MIEwctg
 glyYJ7/pXb7v/pYUyZEYninTV7xlZan4NXUMNKWc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 82B75608FC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: change swap mail box config for UTF mode of SDIO
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1554870654-4236-1-git-send-email-wgong@codeaurora.org>
References: <1554870654-4236-1-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190507135832.2042360AA8@smtp.codeaurora.org>
Date: Tue,  7 May 2019 13:58:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065832_748737_3B019D04 
X-CRM114-Status: UNSURE (   8.52  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> For SDIO chip, it does not have HTT connect step in boot phase of UTF
> mode, so it does not need the swap configuration for UTF mode, otherwise
> it will trigger UTF load fail. For normal mode, it is swap between HTT
> and WMI, for UTF mode, it does not have HTT, so it can not swap between
> HTT and WMI.
> 
> Disable swap mail box for UTF mode will let UTF mode load success.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

8cdee1affe90 ath10k: change swap mail box config for UTF mode of SDIO

-- 
https://patchwork.kernel.org/patch/10893131/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
