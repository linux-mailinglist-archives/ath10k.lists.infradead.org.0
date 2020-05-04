Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE6E1C3FF8
	for <lists+ath10k@lfdr.de>; Mon,  4 May 2020 18:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QLUgPnxG50lkESntoKmuEtUodUmI1HYBrKeDqjgosI=; b=P9Zc597tygtmO5
	sdMDi6y7HlCswNVa+Zi1KCKD1oh2gqM2UzWU0WNnAQ0P5MyaJdzDTLlr4tyub5pxVpaxQabHky2Dq
	kiaTkNGKyjSpWbxK7gqNPSzSk+bthebLIEl0wQ5lwHeCdfNjxKiV0+jOqJla91LkoN4N70M0s9jRm
	MauM8AZq0KMEx4Lj2HZzKQABw176D1n3AwLCY4k0MBxx927VeIRd+TWRIcSOYoLdrW/HI4bkpSTeF
	OeuBJJJFcAxoQ6XEpi3x0tR3BPg1l/UC3NwtVP0aPSly54L5gxoWXGUTnGMoJDDx4NawllmBj5gng
	S/PNHwAvshsPOZTWHYsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVe2R-0004bv-Tk; Mon, 04 May 2020 16:33:51 +0000
Received: from smail.rz.tu-ilmenau.de ([141.24.186.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVe2L-0004Xf-Kl; Mon, 04 May 2020 16:33:47 +0000
Received: from [192.168.178.34] (unknown [87.147.56.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smail.rz.tu-ilmenau.de (Postfix) with ESMTPSA id 26FA4580243;
 Mon,  4 May 2020 18:33:44 +0200 (CEST)
Subject: Re: [PATCH 1/2] ath10k: use cumulative survey statistics
To: Sven Eckelmann <sven@narfation.org>, ath11k@lists.infradead.org
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <1760068.xeLkAeoAig@bentobox>
From: Markus Theil <markus.theil@tu-ilmenau.de>
Message-ID: <5a4c9924-e727-30e7-8409-967c361c2fae@tu-ilmenau.de>
Date: Mon, 4 May 2020 18:33:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1760068.xeLkAeoAig@bentobox>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_093345_845238_1A85AB92 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.24.186.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org, kvalo@codeaurora.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 5/4/20 6:29 PM, Sven Eckelmann wrote:
> On Monday, 4 May 2020 17:41:21 CEST Markus Theil wrote:
>> ath10k currently reports survey results for the last interval between each
>> invocation of NL80211_CMD_GET_SURVEY. For concurrent invocations, this
>> can lead to unexpectedly small results, e.g. when hostapd uses survey
>> data and iw survey dump is invoked in parallel. Fix this by returning
>> cumulative results, that don't depend on the last invocation. Other
>> drivers, e.g. ath9k or mt76 also use this behavior.
> It is (unfortunately) not that trivial:
>
> See code and comments from other people:
>
> * https://patchwork.kernel.org/cover/11150285/
> * https://patchwork.kernel.org/patch/11150287/
> * https://patchwork.kernel.org/patch/11150289/
>
> Kind regards,
> 	Sven
Thanks a lot for pointing this out! I was not aware of your patch.


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
