Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354D1E2DDD
	for <lists+ath10k@lfdr.de>; Thu, 24 Oct 2019 11:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wlGn5WbfejEOBsHdqfcYFVVarWo+pe3CrTbbuRp9r8U=; b=T4UG+aleokTLg00BRaP597OdA
	n8TUtIrkHwv1vQTtNAPyHsIKwYjgshtIOaYEo51GOXxkix1VPtzi3fYdA8Ulq4G31UWkaIzHXRI0t
	erQ7BUuCSq/KgooCK30QrwYKpZUba+eRVokycFOw6qxyLs/aiNUFSB4vcC36hFEncovH4GQlSJeTZ
	2NAI/mhAWldnr8c1JI3u4K8OjnepwUS3kbPmNjsUuhZ81kf0OqhC7aEkW5fki3N2X+/YW2azZV37J
	OjbfgmQhTaRFGCi8m+VfKWz7HhyPl44riV92SNldjOOtjl+7y9PM76TjZHoAeTJvKlzyYP6HnAcah
	qcyaR+HFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZi3-0001xJ-9B; Thu, 24 Oct 2019 09:47:11 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZhz-0001wr-Sf
 for ath10k@lists.infradead.org; Thu, 24 Oct 2019 09:47:09 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0302161067; Thu, 24 Oct 2019 09:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571910427;
 bh=FgebyyM68KyCZTp8a5RynFQnhebEfIplee6uQIgAQqU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KBV53puNNObhltDnZ/11NInDZ5MHzlcguSGItDS6u5/x7v8Kb3e4l80f/ghQ6PqgZ
 PVAU1r8DmleRyrIzKCUN2MzeTMvjMcxT/Cxp0XjsNu5TQpiCPxO6Hkid99BTwDey/L
 TxBDi3eo0WUVpq/5rHLkiryFyGG1vrF70X17gI6E=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 063A060FEF;
 Thu, 24 Oct 2019 09:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571910426;
 bh=FgebyyM68KyCZTp8a5RynFQnhebEfIplee6uQIgAQqU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LafDKB1y/2/61nQFjgpvN6qi8a3ZprsPjfuzsazfWp41f70tYiWXVJp962CFe+2M8
 AyYVXTFUUfuRARtLhlBVjFUMG7kOyilWzBAV5fS7QsWFog42E5K5xctgtsodWgwVkm
 qie7thlh0PcWDcvslo/lQDWrOGH4zYdhWefCERKo=
MIME-Version: 1.0
Date: Thu, 24 Oct 2019 17:47:05 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v6 2/3] ath10k: change max RX bundle size from 8 to 32 for
 sdio
In-Reply-To: <87mudqsd6d.fsf@kamboji.qca.qualcomm.com>
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-3-git-send-email-wgong@codeaurora.org>
 <87mudqsd6d.fsf@kamboji.qca.qualcomm.com>
Message-ID: <200eef83925da532e49565bcf4f9ffc1@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_024707_951138_0E466A2F 
X-CRM114-Status: UNSURE (   6.98  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-10-24 17:30, Kalle Valo wrote:
> Wen Gong <wgong@codeaurora.org> writes:
> 
>> The max bundle size support by firmware is 32, change it from 8 to 32
>> will help performance. This results in significant performance
>> improvement on RX path.
>> 
>> Tested with QCA6174 SDIO with firmware
>> WLAN.RMH.4.4.1-00017-QCARMSWPZ-1
>> 
>> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> 
> [...]
> 
>> --- a/drivers/net/wireless/ath/ath10k/sdio.c
>> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
>> @@ -24,7 +24,7 @@
>>  #include "trace.h"
>>  #include "sdio.h"
>> 
>> -#define ATH10K_SDIO_VSG_BUF_SIZE	(32 * 1024)
>> +#define ATH10K_SDIO_VSG_BUF_SIZE	(64 * 1024)
> 
> Is allocating 64 kb with kmalloc() reliable, especially on smaller
> systems? I hope it is, but checking if someone else knows better. We
> only do this only once in probe(), though.
rx packet is more than 1500 bytes for performance test, so for 32 
packets, 32*1024 is not enough.
yes, it is allocated only one time for probe.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
