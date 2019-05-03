Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E181286C
	for <lists+ath10k@lfdr.de>; Fri,  3 May 2019 09:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RHdq/jbl/Y8EybHjSVYRO0Zg9teMGzkkwy/MUngKojI=; b=IWNhX7WvsfMJL9
	BPs9U7vbZXs+B7hm9tZciQoQCA2z2Ag/0cb3VImst9oOV9btxCN/es1nvEyAxb6s2HVKYOiPZEGir
	ShQ/nKp34MRs1dFR2YCHHMSWjFwzylhzHTiFfMrxEsSQOwWUHlfLRD8mpUFmGaEsBM9QEOc2EIMNQ
	rDUGJ/Oy0i8xvicOy8ETqHSi2jM6iEYAS0qx0DxemT6jmBAXQHVF7k4sCuTLYc6v6akZTzai9aifC
	jeMVi8A0Fl/fjkAl/B0+sDrY+2CMabk+/I8R269xhJJ68QhL1HNb9qTiEnkklVG2UqmwPrzBvYI11
	22eVPcPP4sv2hilcQ7DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMSFf-0006Kd-10; Fri, 03 May 2019 07:04:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMSFb-0006Jp-BA
 for ath10k@lists.infradead.org; Fri, 03 May 2019 07:04:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id EAE8A60A42; Fri,  3 May 2019 07:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556867095;
 bh=OyT8qsuh8ibPPnij7/0rJBaEnM9dbXjyfonsLWubQWg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=RqsholnhGpeT3aC3TRCm3xK0rEj9JNfxAsMacr4mGjm9JxYAqIVvm+rqqs4tvj6US
 cw6F0plbgVCiVQfRhoWsko+2LRYCJ7Su03nRi1Db4BNDA38XSYmrCTCaKkA3d7XHvz
 a9m9jnGXediQuQ4sh4RCQ/QwNkjHjZX+1MzZjIh8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 99F0760E42;
 Fri,  3 May 2019 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556867094;
 bh=OyT8qsuh8ibPPnij7/0rJBaEnM9dbXjyfonsLWubQWg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=fxWw0YC0LBk+oljcfoDPemA1xdYJVgpDKTwO+ameFKirw8jTOYcgyYdk+gxLkYnqh
 xPHhP/rpfe49tttZcVJVcB/JTmbKoPiSlKEGCFO9sNVwV94vAd00Wd4Hok3CtyNEZP
 aH0WvWgDJsp5IkzgXplYlcCJFQL/o/UaP/EDFYuc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 99F0760E42
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH 1/2] ath10k: Fix rate table updation in tx stats
References: <1552319602-17795-2-git-send-email-pillair@codeaurora.org>
 <20190503060032.23F1C61195@smtp.codeaurora.org>
 <edfbff30627849996b0597b964ed018c@codeaurora.org>
Date: Fri, 03 May 2019 10:04:50 +0300
In-Reply-To: <edfbff30627849996b0597b964ed018c@codeaurora.org> (Rakesh
 Pillai's message of "Fri, 03 May 2019 12:26:31 +0530")
Message-ID: <87d0l0koh9.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_000455_410709_AA08B26E 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

(please don't top post, fixing that manually)

Rakesh Pillai <pillair@codeaurora.org> writes:

> On 2019-05-03 11:30, Kalle Valo wrote:
>> Rakesh Pillai <pillair@codeaurora.org> wrote:
>>
>>> The index for updating rate table, which is displayed
>>> in the tx stats via debugfs, is calculated using the
>>> bandwidth value. The bandwidth values do not map
>>> correctly with the bandwidth values shown in the rate table.
>>>
>>> Correct the bandwidth value calculation which is used
>>> to calculate the index for rate table updation for tx stats.
>>>
>>> Tested HW: WCN3990
>>> Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
>>>
>>> Fixes: e88975ca37d1 ("ath10k: dump tx stats in rate table format")
>>> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
>>
>> Fails to compile:
>>
>> drivers/net/wireless/ath/ath10k/htt_rx.c: In function
>> 'ath10k_accumulate_per_peer_tx_stats':
>> drivers/net/wireless/ath/ath10k/htt_rx.c:3252:14: error: implicit
>> declaration of function 'ath10k_get_bw'; did you mean
>> 'ath10k_get_tid'? [-Werror=implicit-function-declaration]
>>   rtable_bw = ath10k_get_bw(&ar->hw_params, pstats->flags);
>>               ^~~~~~~~~~~~~
>>               ath10k_get_tid
>
> This set of patches is dependent on
> https://patchwork.kernel.org/patch/10831319/
> I can send out v2 for this patchset, marking the dependency, if needed.

Ok, I added this patchset back to my queue. No need to resend.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
