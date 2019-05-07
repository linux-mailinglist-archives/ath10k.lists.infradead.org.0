Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2B31610A
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 11:35:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JplfBnVsvOUaSJogvgK7p1Jm4+nxKLEu+LK5ar9/ETU=; b=GwPaN8/in1jBiZ
	kK/PtHQYGC1tShJkAC0Z2QPiHF4ZuEAvrJbJ9PVrGC5/a6iTJo7Eyc205qJi0whkTZJOV2VzXwUDf
	0Mk1saMS6eo6q86ryfrC+1Px0rHnbHAP5h79lBkRuZNBpZknO/oz7GTCP55oTUEt+7SyMKjBGIyuJ
	B0zV8L2Ebwh5SPLvY+CFofZl47CcogRsGfdVprPfV/5YiUVz2mZ+d+h8MHA6y5c1fvT51VOAZTZVJ
	Qv5cK9revDP+LUDP8YKtkvJZ5xZVyBU6vciqA/Wth5HEoot61UPPdne10xts+ZT+01sEygJ+DPHOP
	rb44uSY1EatcwX+2ISBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwVA-0006Sb-OR; Tue, 07 May 2019 09:35:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwV6-00060u-W0
 for ath10k@lists.infradead.org; Tue, 07 May 2019 09:35:06 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5C18E606DB; Tue,  7 May 2019 09:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557221704;
 bh=7K2V1Ddc4Z/m3cpGaaZI/ZeUDtHdniq8QxH66RWvYKI=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=JTwySL2MxJhnSsphrzwbkr2srNkgQ6z5bfwEw01fNbht90LtHpD8NlxzUhrdZyRwH
 rDK8UWngDSyH52SVrKDS/GOuHnAisVS+iqIXmL970S+5rKqNO0b2dz+bO4BuEfWlCN
 aCe7HXVMPDgcOEtTQ42bZUqQ59LxS1k2yW4vk6/M=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-65-53.rev.dnainternet.fi
 [37.136.65.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EDBDC6055D;
 Tue,  7 May 2019 09:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557221703;
 bh=7K2V1Ddc4Z/m3cpGaaZI/ZeUDtHdniq8QxH66RWvYKI=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Q3V3HR0Ga4X9jUurdGNmv2KfWD5tiLnu+7psiRUJZR2vUeC1Yj/O3yC6FHVpgSQtG
 PIMpanilxVAoHSuAXm+ModD98ilLLJMXpRXQllKuYlowdquR2/P1Zzrj2Mf5tBmZC4
 XlpHRPMZ5sbAILrzSNosezkjESAigxxIH61GgmUE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EDBDC6055D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@qti.qualcomm.com>
Subject: Re: [PATCH] ath10k: remove mmc_hw_reset while hif power down
References: <1556417825-13713-1-git-send-email-wgong@codeaurora.org>
 <CANEJEGug_YregN5vZq_R=ppUV5ptb4WUq_TB+JApzQ4DEO_AfQ@mail.gmail.com>
 <36950ff25c0747629e60ccb68819e93a@aptaiexm02f.ap.qualcomm.com>
Date: Tue, 07 May 2019 12:34:59 +0300
In-Reply-To: <36950ff25c0747629e60ccb68819e93a@aptaiexm02f.ap.qualcomm.com>
 (Wen Gong's message of "Tue, 7 May 2019 05:05:21 +0000")
Message-ID: <87pnour4jg.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_023505_072261_F9ED95AF 
X-CRM114-Status: GOOD (  17.81  )
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
Cc: Grant Grundler <grundler@google.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

+ Ulf to give comments from SDIO point of view

Wen Gong <wgong@qti.qualcomm.com> writes:

>> -----Original Message-----
>> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Grant
>> Grundler
>> Sent: Saturday, May 4, 2019 2:01 AM
>> To: Wen Gong <wgong@codeaurora.org>
>> Cc: linux-wireless@vger.kernel.org; ath10k@lists.infradead.org
>> Subject: [EXT] Re: [PATCH] ath10k: remove mmc_hw_reset while hif power
>> down
>> 
>> [repeating comments I made in the gerrit review for Chrome OS :
>> https://chromium-
>> review.googlesource.com/c/chromiumos/third_party/kernel/+/1585667
>> ]
>> 
>> On Sat, Apr 27, 2019 at 7:17 PM Wen Gong <wgong@codeaurora.org> wrote:
>> >
>> > For sdio 3.0 chip, the clock will drop from 200M Hz to 50M Hz after load
>> > ath10k driver, it is because mmc_hw_reset will reset the sdio's power,
>> > then mmc will consider it as sdio 2.0 and drop the clock.
>> 
>> Wen,
>> 5468e784c0600551ca03263f5255a375c05f88e7 commit message gives
>> reasons
>> for adding the mmc_hw_reset() call. The commit message for removing
>> gives different reason for removal. Both are good but second one is
>> incomplete.
>> 
>> The commit message for removal should ALSO explain why adding this
>> call wasn't necessary in the first place OR move the call to a
>> different code path.
>> 
>> > Remove mmc_hw_reset will avoid the drop of clock.
>> 
>> This commit message makes it clear the original patch introduced a new
>> problem. But the original patch fixed a different problem and that
>> this proposed change seems likely to re-introduce and the commit
>> message should explain why that isn't true (or how the original was
>> fixed differently)
>
> The mmc_hw_reset's effect depends on the hardware layout/configure
> software's behavior, recently it will effect the clock of sdio for the
> platform I used. And it will still work well without mmc_hw_reset for
> the platform I Used currently. If sdio cannot work on other platform,
> I think it can add flag in ath10k_hw_params_list for the platform to
> call the mmc_hw_reset depends on the flag.

I don't see how you can use ath10k_hw_params_list to separate SDIO
controller functionality, I assume that's the real reason for difference
of functionality? Maybe this is a bug on the SDIO controller?

Ulf, what do you think? Any suggestions? Full discussion here:

https://patchwork.kernel.org/patch/10920563/

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
