Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0CEFD6A4
	for <lists+ath10k@lfdr.de>; Fri, 15 Nov 2019 07:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjFKQL+Qyo2VEgyHv5sBQ995B03tv8mlPUf2flsFS6E=; b=oFPx8CFjAYUU1l
	Z7Z+qGzDzGbG8QiJVXdOTc8Xs6I7liXAqo/GGKoPeLllHFQSe+5dFWOoTW6WOexeCfed6ZeWPJvvv
	ACypnacF3diL9fUZGg0fSUFHPrHqFeWWP5Emx7WbmQ0enP5U1LornVDDLV1GuQzM6gtzEmo/sdcNB
	IW3qwsK4D4SVXH1gEL3rP7FmB5RR4VcSVPauSN3Wyp6+qHqOruBKuNcZohSJXf6qlHCjj9+fG4rUC
	y91/xUwmAVDPrxi1U1Ezd2EzEqrJDEDbUDvt54XWtEIBSIDrxpGgK5J0xFqbFOSb26hpEBaILB+BB
	FvRmLULQcBrMTKNEfJxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVVYi-0000TA-RU; Fri, 15 Nov 2019 06:58:20 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVVYe-0000Sr-8d
 for ath10k@lists.infradead.org; Fri, 15 Nov 2019 06:58:18 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 59CF46013C; Fri, 15 Nov 2019 06:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573801095;
 bh=vqnkhyApQKljmrQxtB/6xAndiTpIeYqwAP22gMmqcfo=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=ESv8dWjJ3yqb6d6+HfCtIcAgF0zUYzc6JeeALeMMdIRtgxRrQz7rwakd17WCFav2X
 TKWpRk0Zc0nIBFAiWBqv8Di+dTaIo7ht9XvX2c4ngH0K6ZSTKOLFVf4kVYXSPtTD3j
 MAQEl6osGuNbEz4mKx374T12PvtkVQe+n7hnL4gw=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AC81360878;
 Fri, 15 Nov 2019 06:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573801094;
 bh=vqnkhyApQKljmrQxtB/6xAndiTpIeYqwAP22gMmqcfo=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=Z6QD/iJnIY4ohKtssBn/+6TMIh0fL4hA758SMPuglesU3UfVd+4QgZkeShvoo1KDO
 7ykFKiSRLQIpvTwFaQSj8dOKzw9Ek0/Cco2bjKyY4Q2sWrCQ6SNZ2q7P1kFQ9cTDCk
 nHHudZTK/bFpfY5nBjEmfQHts0UR3H9j+Q7J2Hho=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AC81360878
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Revert "ath10k: add cleanup in ath10k_sta_state()"
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191113202644.3673049-1-bjorn.andersson@linaro.org>
References: <20191113202644.3673049-1-bjorn.andersson@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191115065815.59CF46013C@smtp.codeaurora.org>
Date: Fri, 15 Nov 2019 06:58:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_225816_328958_5B3DD970 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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
Cc: wenwen@cs.uga.edu, jeffrey.l.hugo@gmail.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bjorn Andersson <bjorn.andersson@linaro.org> wrote:

> This reverts commit 334f5b61a6f29834e881923b98d1e27e5ce9620d.
> 
> This caused ath10k_snoc on Qualcomm MSM8998, SDM845 and QCS404 platforms to
> trigger an assert in the firmware:
> 
> err_qdi.c:456:EF:wlan_process:1:cmnos_thread.c:3900:Asserted in wlan_vdev.c:_wlan_vdev_up:3219
> 
> Revert the offending commit for now.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

f4fe2e53349f ath10k: Revert "ath10k: add cleanup in ath10k_sta_state()"

-- 
https://patchwork.kernel.org/patch/11242743/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
