Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 724211CE67
	for <lists+ath10k@lfdr.de>; Tue, 14 May 2019 19:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Clih9aAaKr3uemglOXhTy9wl/7ZSLNbT19xTKk6Yp2M=; b=ddV9c0NvfafPy58h1Xu7i7HjV
	Lwj6Yr8Ho6zACZRfXpmA1qCVaEb+ijJsr8oKKSXp5+YI+GgJ4OJYAiu+RW1Q9sBGmK1If7zSEuLJw
	0Yid1n/XlFdR6t/vHM1JXCuOQakBjx3XT9JI+nbWpEuG9Ag9BX6deG1AsG+jaMuzznpRbGaSiQibr
	g9LIiabwcS4J+rtH9mlRGjIUnZDdZ+PBbe0sh762EHfkLpfqpbiST9D4kpSLBuoplTp98P2dX4LgD
	/Ue0bLisBW69S0J29nbgAzX8FDf6NFauFUEx+SnxUjmYRI0/ihN8xywxP6rfjKMrwl7y7bSFrHqtn
	9NVojz1Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQbef-00010v-5U; Tue, 14 May 2019 17:55:57 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQbeZ-00010T-7w
 for ath10k@lists.infradead.org; Tue, 14 May 2019 17:55:55 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 0923D13C283;
 Tue, 14 May 2019 10:55:50 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 0923D13C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1557856550;
 bh=1oLOTWzN5aUL+BV36V/HH5i+dM7TibE9gwI1+9t2OI0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Gctrmng/rcmgK71WC2Fxf0uAi4sLb++t+7wSccPobluuRXnaSZNTmSMTqnmYMgduu
 kcsAwkl0DIu91ypAtlVMfNWUEf7g9ISYGpiKzlldeymjeinfzUOoARBdxvlNtvvFRE
 4x/R7+Tve1UC/1OAqVKxYGJsHIaKFN4kCvQHGsvA=
Subject: Re: [PATCH v2] mac80211: remove warning message
To: Joe Perches <joe@perches.com>, Johannes Berg <johannes@sipsolutions.net>, 
 Yibo Zhao <yiboz@codeaurora.org>
References: <1557824507-17668-1-git-send-email-yiboz@codeaurora.org>
 <7c92f5cf51eaec1d5449698d90f5b6c5ca6c2bea.camel@sipsolutions.net>
 <ccb48284f0d96e72f4c041e12c943f0a@codeaurora.org>
 <e2a6596b99085541a5886c0d0d6393c849ac2d57.camel@sipsolutions.net>
 <34f72d5db336b9898618bf1c5c15ec41094d7d06.camel@perches.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <4d013893-3302-14f0-c957-b3771f4b6b82@candelatech.com>
Date: Tue, 14 May 2019 10:55:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <34f72d5db336b9898618bf1c5c15ec41094d7d06.camel@perches.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_105553_779201_311BFC25 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Zhi Chen <zhichen@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 5/14/19 8:44 AM, Joe Perches wrote:
> On Tue, 2019-05-14 at 11:12 +0200, Johannes Berg wrote:
>> On Tue, 2019-05-14 at 17:10 +0800, Yibo Zhao wrote:
>>> On 2019-05-14 17:05, Johannes Berg wrote:
>>>> On Tue, 2019-05-14 at 17:01 +0800, Yibo Zhao wrote:
>>>>> In multiple SSID cases, it takes time to prepare every AP interface
>>>>> to be ready in initializing phase. If a sta already knows everything
>>>>> it
>>>>> needs to join one of the APs and sends authentication to the AP which
>>>>> is not fully prepared at this point of time, AP's channel context
>>>>> could be NULL. As a result, warning message occurs.
> []
>>> I was planning to use WARN_ON_ONCE() in the first place to replace
>>> WARN_ON() then after some discussion, we think removing it could be
>>> better. So the first patch was based on my first version which is sent
>>> incorrectly. Please check again.
> []
>> I guess changing it to WARN_ON_ONCE() makes sense,
> 
> WARN_ON_RATELIMIT exists.

We know the WARN hits, we have the backtrace, and it is easy enough (in my setup
at least) to reproduce this.  So, the WARN logic has done its job.

Having more of these spam the kernel doesn't add much benefit I think.

Anyone have any suggestions on how to fix the underlying issue?

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
