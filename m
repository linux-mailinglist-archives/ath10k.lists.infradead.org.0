Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1891A0701
	for <lists+ath10k@lfdr.de>; Tue,  7 Apr 2020 08:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ER+wNiPdTFU3y9jdvISnMgGdGSYsvBsn3TWEbbnJf70=; b=mTBnbSA9fv5Qdl
	M39Iy532YtXNWxJC9svV5vQG0qAPOMp5gQbnW4OytFLYsa0m0Gg0ZRGz6ZUrHvPyaj7rlIK4KaabY
	k6E6f8pLraNIhqitMFQ6D0L8pdv/Xhjj56U1joqqZpUL8m4a8zaetB9Lnpo1tO9XbXIvmlCAs1pEz
	OeCIQ//HPKtf4ZCNrzMTp9+fXWs+41EB8zCPsR/wXh6ACQxuBpoBxqgIGIRgIqD6saRI0Fpv7bboW
	aWuv1L0+KC9PM8E7N9YvGD7zTpzm8IPhbjjOMzmzEUGSHbUWPyCss2LKsITb2a7CW3bk3Y5uOlMOF
	NkyRcbIXMUNzR1Ado+bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLhQ1-0003Id-Qk; Tue, 07 Apr 2020 06:09:05 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLhPt-0003IB-Js
 for ath10k@lists.infradead.org; Tue, 07 Apr 2020 06:09:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586239741; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=plPh33tcSqADjZ5N/FxeriOzadskWCCkz6NB8hSkUpQ=;
 b=aTOxk4dUQZWEa+sDMoI5qlRYXC3y3yKDAS5CuzgXVGGrcf+/kEPi9vSvHdKRn2P0SC6MBASx
 8hXnUa7NuL5ZjLlep/WoZCWHRkiINBmHXfB0AUsCocqTQjoq0LFVGZCWASgMIacJCYvZ8BnO
 N9+pjv1NT+m7t72at9ytRPiD9+I=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8c18f2.7f602cceec38-smtp-out-n02;
 Tue, 07 Apr 2020 06:08:50 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 488C6C433BA; Tue,  7 Apr 2020 06:08:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E14EDC433D2;
 Tue,  7 Apr 2020 06:08:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E14EDC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v9 1/4] ath10k: disable TX complete indication of htt for
 sdio
References: <20200212080415.31265-2-wgong@codeaurora.org>
 <20200407054431.6B2A0C433BA@smtp.codeaurora.org>
 <84039fe1187e3ec7546edd4f9fe5600a@codeaurora.org>
Date: Tue, 07 Apr 2020 09:08:46 +0300
In-Reply-To: <84039fe1187e3ec7546edd4f9fe5600a@codeaurora.org> (Wen Gong's
 message of "Tue, 07 Apr 2020 14:04:58 +0800")
Message-ID: <87mu7nx1xt.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_230901_865787_581DD2E3 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> On 2020-04-07 13:44, Kalle Valo wrote:
>
>> This has new warnings:
>>
>> drivers/net/wireless/ath/ath10k/htt_tx.c: In function
>> 'ath10k_htt_htc_tx_complete':
>> drivers/net/wireless/ath/ath10k/htt_tx.c:566:30: warning: 'msg_type'
>> may be used uninitialized in this function [-Wmaybe-uninitialized]
>> drivers/net/wireless/ath/ath10k/htt_tx.c:573:6: warning: 'flags1' may
>> be used uninitialized in this function [-Wmaybe-uninitialized]
>> drivers/net/wireless/ath/ath10k/htt_tx.c:577:42: warning: 'desc_hdr'
>> may be used uninitialized in this function [-Wmaybe-uninitialized]
>>
>
> I already run ath10k-check, but not see these warnings.
> my gcc: gcc (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4
> so is it because my gcc too version too low?

Most likely, I'm using 9.2 from crosstool:

x86_64-linux-gcc (GCC) 9.2.0

crosstool is a handy way to install GCC for kernel compilations, here
are my notes:

listings: https://www.kernel.org/pub/tools/crosstool/

wget https://www.kernel.org/pub/tools/crosstool/files/bin/x86_64/8.1.0/x86_64-gcc-8.1.0-nolibc-x86_64-linux.tar.xz
pushd /opt/cross/
tar -xf ~/tmp/crosstool/x86_64-gcc-8.1.0-nolibc-x86_64-linux.tar.xz

In top level create GNUMakefile:

CROSS_COMPILE=/opt/cross/gcc-8.1.0-nolibc/x86_64-linux/bin/x86_64-linux-
include Makefile

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
