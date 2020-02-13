Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C6515C7C9
	for <lists+ath10k@lfdr.de>; Thu, 13 Feb 2020 17:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xuByq9baAKS6AkxGR74qI4bTA/TRg9mwRKO085uz/s=; b=BBzA+5AoUuIOtu
	nyVjJKS5sj48pPs6V3Fq2SxaYlvqrB4m3j1ja6nFho3u+6Oq/9BuOiISgRPf4Ew+wSnbRHYDaO65Y
	e+IhCNNiXFpNqw2Lxe1x023Qupns++AJeetPFwHKmtNgJqDjcIpRQaEEATKXESXHiMDx4htEoKHjT
	RAtbSBhoOle+N1vYix90g6QBQ+w8aWTh8dWsuV7tUFL2znsqjSnYtQP4XGvzzfHkh3sh1ODJS4Q0u
	rPxAYN2ZH9OyN8vMmwYZC3DQf5HVhQ7VqAPPZrCTUY/mjzaVNGAqamT8ezsM85iJmRohk8KYbgQyI
	Bpwhw5/y+ddprL+VQ4rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HFe-0001kt-Pu; Thu, 13 Feb 2020 16:22:06 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HCf-00065J-UQ
 for ath10k@lists.infradead.org; Thu, 13 Feb 2020 16:19:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581610741; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=VUZ0aN8mfEbISkdqNt0Kuqp4RcG69sd8211gKI8qACM=;
 b=jqJstANWc12CLMUif4DQiNATix3ACv1Cgoni3RmQlkfeGmBtJGi4SUA8aYy55IlSvpOOjgGn
 n71MaEtqpVTE+WDUUn6A9oRbCRZmZdhaqLNWOOcaxD8Nelefi/4zQH4o5AbyA7hPtEjwyxIT
 TYf2QKEYCUYQnG4aBoSn7crl7iQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4576f4.7efb8fe73768-smtp-out-n02;
 Thu, 13 Feb 2020 16:19:00 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 194A7C433A2; Thu, 13 Feb 2020 16:19:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 406F7C43383;
 Thu, 13 Feb 2020 16:18:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 406F7C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Tom Psyborg <pozega.tomislav@gmail.com>
Subject: Re: [RESEND] ath10k: add tx hw 802.11 encapusaltion offloading support
References: <20191216092207.31032-1-john@phrozen.org>
 <20191217153000.76AB1C4479C@smtp.codeaurora.org>
 <CAKR_QVJVfqid8i5PXj3Yg8VJjht=MF2fZg+twkLgEkKuMB2bbQ@mail.gmail.com>
Date: Thu, 13 Feb 2020 18:18:56 +0200
In-Reply-To: <CAKR_QVJVfqid8i5PXj3Yg8VJjht=MF2fZg+twkLgEkKuMB2bbQ@mail.gmail.com>
 (Tom Psyborg's message of "Wed, 18 Dec 2019 21:14:34 +0100")
Message-ID: <87mu9mv4sv.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_081902_068339_2FABEFCE 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Tom Psyborg <pozega.tomislav@gmail.com> writes:

> On 17/12/2019, Kalle Valo <kvalo@codeaurora.org> wrote:
>> John Crispin <john@phrozen.org> wrote:
>>
>>> This patch adds support for ethernet rxtx mode to the driver. The feature
>>> is enabled via a new module parameter. If enabled to driver will enable
>>> the feature on a per vif basis if all other requirements were met.
>>>
>>> Testing on a IPQ4019 based hardware shows a increase in TCP throughput
>>> of ~20% when the feature is enabled.
>>>
>>> Signed-off-by: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>
>>> Signed-off-by: John Crispin <john@phrozen.org>
>>
>> Depends on:
>>
>> 50ff477a8639 mac80211: add 802.11 encapsulation offloading support
>>
>> Currently in mac80211-next.
>>
>> Patch set to Awaiting Upstream.
>>
>> --
>> https://patchwork.kernel.org/patch/11293627/
>>
>> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
>>
>
> the changeset is missing support for 64bit targets in htt_tx.c

A very good point. Doesn't this break with WCN3990 then?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
