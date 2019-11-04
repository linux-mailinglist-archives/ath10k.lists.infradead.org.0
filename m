Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BF9EE786
	for <lists+ath10k@lfdr.de>; Mon,  4 Nov 2019 19:42:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GEv0UuJLd4R86GAtcDNMD5p60mdhociNk8Hk20xj8xs=; b=WRY91LJhNwk7dy6QqpKaS9C+y
	OF/bLORgIgdhkYyjMnuVOR5ZojyCdHvcmiqOQGgqMXuhqwzL0p/yvx/JD1nniZlGWmYG1EzkuR+dZ
	/C/eYwZl4pKpeQ8RsNVGCbsAncp3W8/b3pk0RKXE/XY02CoLUlBXRO+imukuXVPHtYj/kZTCVgTGf
	cDR4nuPuACBGxEhpS0spn4EcY36ApFxP8c7SBHyTu6StJo0CnZmDlM9I6L3jxr1pbZjdSsTIXoLfV
	+Q7hAwilpmz7JDlxCfhEAYAxbocPlykCVDbKv9+rnzZbbHA4zYKXGHDS3WUq2zPMcAf2Um54cVRUn
	ZCGbT+B4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRhIl-00060L-NS; Mon, 04 Nov 2019 18:42:07 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRhIh-0005z6-Kj
 for ath10k@lists.infradead.org; Mon, 04 Nov 2019 18:42:05 +0000
Received: by mail-pl1-x641.google.com with SMTP id l4so2750837plt.13
 for <ath10k@lists.infradead.org>; Mon, 04 Nov 2019 10:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eero.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=nT1u9EQrXODKur5odFwwtyLmwUgE0+RfIth/A09d2R8=;
 b=WoFLNN5tuCCp5Kto7GDa7Zfc2f+aR4xJRPljt5Yu/Y8F6SV7/4Fke+FUfuLjoMwVml
 GBbeGbfUdi62P3CvZIdn3o5CTXZcPSqRNCVboLZ21YBajslkUKqmsqP4g7n/ojekav4X
 gI8E+icmh5DkeLTPQyU6QCQXUoGKl0ys7fAjI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=nT1u9EQrXODKur5odFwwtyLmwUgE0+RfIth/A09d2R8=;
 b=mP3Xhp3xetgkVhRnhq9A2yE7YqR1REuVpBZOmeTPl6boWUZ25UjpS1GC2Crz7TnKv2
 QVVP3nodxviuz9sfjSWqNZci9OsFEfa4yoZKP2nLhftnvTFYCN0p0rgvakSiTxugSubm
 RKDmx/B+01vDV4HkYdvHlL2Sk69fJ1KRaxpnB/aln8vJ9NiTbLcnUfe58/7i1k2cvPg2
 z6NqTBxE1tD1KyqPQo1xqv0AlGjALeHkFB6EzEFMTbDltee8sSWob1sDVRx+a8PYLmmB
 UM6YQCNAvS/4lvo2cRoBhQ5S2jkMPNzvimmmbpPrEyDxqA7vXJV10md+zwnE6xCDfbMp
 ooKg==
X-Gm-Message-State: APjAAAV6Nlf0qF7iwh0vSuWtYYS/I5tWdzRec1uNVXfzf7NdhPiNTgz9
 sS3GeZOD7L9mFt2ZxNUjxZo1uJ7I0WQmow==
X-Google-Smtp-Source: APXvYqx06VbV+n2SyPHyycKi9+nLaUzlgRkD9ESoNTpcTEqFErpUN1XFsYra7EGKEP9CSGc5vpnkdg==
X-Received: by 2002:a17:902:a988:: with SMTP id
 bh8mr29337765plb.303.1572892921528; 
 Mon, 04 Nov 2019 10:42:01 -0800 (PST)
Received: from [10.0.2.15] (eero.static.monkeybrains.net. [199.116.72.162])
 by smtp.gmail.com with ESMTPSA id b6sm18195396pga.12.2019.11.04.10.42.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 04 Nov 2019 10:42:00 -0800 (PST)
Subject: Re: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
To: Tom Psyborg <pozega.tomislav@gmail.com>, zhichen@codeaurora.org
References: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
 <d6cfd945-7bab-a01d-0157-e0e1802f66e3@eero.com>
 <8c6d531f6474faf4df55f90185466774@codeaurora.org>
 <CAKR_QV+Qh_ErYduYoD8=u_i-y=cbKSJkkajtKxsJ5ML8-Z79EQ@mail.gmail.com>
From: Peter Oh <peter.oh@eero.com>
Message-ID: <3f3b683f-789a-9b7f-a854-0fdcc20819d1@eero.com>
Date: Mon, 4 Nov 2019 10:41:58 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKR_QV+Qh_ErYduYoD8=u_i-y=cbKSJkkajtKxsJ5ML8-Z79EQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_104203_690320_AAE685BA 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


On 11/3/19 7:36 AM, Tom Psyborg wrote:
> On 30/10/2019, zhichen@codeaurora.org <zhichen@codeaurora.org> wrote:
>> On 2019-10-23 01:16, Peter Oh wrote:
>>> How can you say value 0 (I believe it's 64 bytes) DMA burst size
>>> causes the symptom and 1 fixes it?
>>>
>>> Peter
>> Confirmed from HW team that the configuration controls AXI burst size of
>> the RD/WR access to the HOST MEM.
>> 0-	No split , RAW read/write transfer size from MAC is put out on bus as
>> burst length.
>> 1-	Split at 256 byte boundary
>> 2,3- Reserved
>>
>> That's why we see issue with value 0.
>>
>> Zhi
>>
>> _______________________________________________
>> ath10k mailing list
>> ath10k@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/ath10k
>>
> is this true for both wave1 and wave2 ? at least per this commit
> message: ath10k: Fix DMA burst size
> it's suppose to be:
>
> 0 - 128B max (not sure if this means 128B static, or any size between 0 and 128)
> 1 - 256B
I didn't check other chipsets, but QCA4019 registers say AXI read/write 
burst size is 64 bytes for 0.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
