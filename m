Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9979DFD6A7
	for <lists+ath10k@lfdr.de>; Fri, 15 Nov 2019 07:59:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xsZsSUKR4fbhX1pP2xh/m4L1eC3b+T67rFtc91QjqKI=; b=BoBcDmKQqL+HZ/
	XVExN5dTrIbYmyKb5E819smhGvoeNxnCU1Jmz4Hd8nETcVuhU4yB51BKhnI8emooBZQCtVhmMMLSE
	0pxSQWiNJdGtI9lfcvaIgkkTWp0ErhMBcXeC5d+6kt9krycmIzA/VdfB1naPT8Hh1xB8Q73xYsc6g
	V4Jwq5SS2kfCAFahjudG6VlOLy2Kui2efb36vyFOOZgRPthWtMK2xOHnxfCYsPp7jJI9UubwsVJMH
	ogrbhxtkClP/8aucaP51/djrSLEsIdXeOKhzykJvL+NUmbPdOKhry8SNJl7YBgC2BRAoMCm/sFqbl
	YChvnhgCyLagj2X7Ytlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVVZT-0000av-7O; Fri, 15 Nov 2019 06:59:07 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVVZP-0000aZ-3j
 for ath10k@lists.infradead.org; Fri, 15 Nov 2019 06:59:04 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id BE89960FF0; Fri, 15 Nov 2019 06:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573801142;
 bh=z5KxkEjc5934okYiimYZ65jjTiQWO34Ga0VC5decT1U=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=ow2MkMlRCBluA/rOacNYhpM2TDxIqBA+BXB8VEzBRVFx5mBR3kkRoMOBkK7X+Hzqr
 s2kH1aiveG5VLN9a3ksA7aLPE1ALophRnCcPULJ7QGie9VUXxnv2B5cPuLlsPF9ixA
 g2aVo2HU8PAN0nN2aAbibsgwiCAN2NfI++T/DAkc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8D9376013C;
 Fri, 15 Nov 2019 06:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573801142;
 bh=z5KxkEjc5934okYiimYZ65jjTiQWO34Ga0VC5decT1U=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=oYPi8lrU4ttup+FzvAoFqZG/KLYQBO7lzQKThBLCVv1mL6uNpQ6IIdDU1WCP40b4K
 5cP9ZmE+2ZYHoWv8mNtvSWua+Nk3dEamDEZo8W4+oGg62N4sKEfwWym80sTo+LzwXq
 O7QtZCc9R/RUVmEXjhW6GTfOOmVfMGD76PFbAc+8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8D9376013C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: qmi: Sleep for a while before assigning MSA memory
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191113233558.4040259-1-bjorn.andersson@linaro.org>
References: <20191113233558.4040259-1-bjorn.andersson@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191115065902.BE89960FF0@smtp.codeaurora.org>
Date: Fri, 15 Nov 2019 06:59:02 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_225903_175334_D382603E 
X-CRM114-Status: UNSURE (   6.81  )
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
Cc: govinds@codeaurora.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bjorn Andersson <bjorn.andersson@linaro.org> wrote:

> Unless we sleep for a while before transitioning the MSA memory to WLAN
> the MPSS.AT.4.0.c2-01184-SDM845_GEN_PACK-1 firmware triggers a security
> violation fairly reliably. Unforutnately recovering from this failure
> always results in the entire system freezing.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

b70b3a36ec33 ath10k: qmi: Sleep for a while before assigning MSA memory

-- 
https://patchwork.kernel.org/patch/11242883/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
