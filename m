Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226751C4A98
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 01:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eUCpR3vtvvcBEP2h1Nvkeh68jpbQixR8lF1WF5KdY/k=; b=AovTkXJVOqscIZXSwV4Pb5iHd
	Od6pnBK5dVfVtVZtkfuKFu+IhDMgew8Irq7iW0BWzBn9BHZimGsutsHCOWPQfIv9rJxaq/utqzsnK
	W10LdlCWpDQxYJo7YukaV7bsLEB1EGwQEtg7yHufqe3HCFFLCLYI2SJNEIv7UpB6srd6DzxZpgyU7
	d7Nhh8Ris6kFIEEJSfpez2AHccbMGuH/Qlo34lgIIbbusEGb3+ADOsVbuqgajPjfPhfnUz/mxajz6
	swjOPPrlPfZ7LaDS/ZNf3tGAT9vims3wBy3RiiUdGcBaaTrJxUlD2DToC3nplWm4WD0OIEpKEKFl5
	L1jjm1HFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVkq0-0007rw-L0; Mon, 04 May 2020 23:49:28 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVkpw-0007qw-Dl; Mon, 04 May 2020 23:49:25 +0000
Received: from [192.168.254.4] (unknown [50.34.219.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 70B6A13C2B0;
 Mon,  4 May 2020 16:49:20 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 70B6A13C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1588636160;
 bh=FOB1U3QVYCyG3wm/IhkIjxv7yks2Kjv4QKsl8PiY2XI=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=rYVmW9zddMvVkJtdh6fQKF9z6ggOQhrOrWt5RnIty5MjBywlAbB7z3iQErMSEKz9s
 jcNBAcHhXe/yEYB02rQ0Bj7JdhvEag92sGPfxuVVXVJ5NWq2EMYzbJwbuTt0HuXhYH
 BS4jR+VTl9QBkB2gBIhzJJ0Q0M+K1sEOQcqtkd9s=
Subject: Re: [PATCH 1/2] ath10k: use cumulative survey statistics
To: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Markus Theil <markus.theil@tu-ilmenau.de>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <f772b7bf0eac31516a4e28719c1938f2@codeaurora.org>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <323b4d4f-a967-cf63-6f5a-04f53802c50a@candelatech.com>
Date: Mon, 4 May 2020 16:49:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <f772b7bf0eac31516a4e28719c1938f2@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_164924_516442_00782EBC 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, kvalo@codeaurora.org, ath11k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org



On 05/04/2020 04:46 PM, Rajkumar Manoharan wrote:
> On 2020-05-04 08:41, Markus Theil wrote:
>> ath10k currently reports survey results for the last interval between each
>> invocation of NL80211_CMD_GET_SURVEY. For concurrent invocations, this
>> can lead to unexpectedly small results, e.g. when hostapd uses survey
>> data and iw survey dump is invoked in parallel. Fix this by returning
>> cumulative results, that don't depend on the last invocation. Other
>> drivers, e.g. ath9k or mt76 also use this behavior.
>>
>> Signed-off-by: Markus Theil <markus.theil@tu-ilmenau.de>
>>
>
> IIRC this was fixed a while ago by below patch. Somehow it never landed in ath.git.
> Simple one line change is enough.
>
> https://patchwork.kernel.org/patch/10550707/
>
> -Rajkumar

Have you tested this with wave-1?  Lots of older, at least, firmware has brokenness in this area.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
