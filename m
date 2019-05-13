Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E441B029
	for <lists+ath10k@lfdr.de>; Mon, 13 May 2019 08:20:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zxVvOWT7zMHfDs1IsptMQ14/2ied4byFwzJy9vpxs6I=; b=ZnFe8m0VAGOn1j8315M1ib7Gn
	uiLnOlf9d/qdt3XOY/UEt2xVzmJU5ORuzbH7RUZWzTC1n5gc+lMca+b64+pZ1A2lEDQxw2XdLx6fN
	P37h52saAid9LMCESMmoJkRNQB3ETYYae/kMr5pW4v4TmQNU7RsNKRP7k9h+NFRwaIsTED4/vux5A
	rxzQ3SlIE6stfLrUYi1xQYBKGpKEOWK6VN/W+vWnAhqZI90TNu+XDMj4+pY32RwPyps6lDAr7l4SF
	i4EjfB6g7FxyYi+pr7QrSW/xdFAIKwXznbMxhdiRcA/jieKw3Aoyvh0QQ0R7fgscTZ6GlKv9ezX7B
	nGjCLVZ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4K8-0000pC-H6; Mon, 13 May 2019 06:20:32 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4K4-0000oQ-He
 for ath10k@lists.infradead.org; Mon, 13 May 2019 06:20:29 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7A11B608A5; Mon, 13 May 2019 06:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557728427;
 bh=T+hUVENOurRHcRRbtlZ0pXY3c7M47y8tTE+83qFhXNo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=A+fQs+4wIdfk53bgfk4xsibUO7FFz1LQrDrXvKVyiEoB61iiNNnjp7YAZiaHoDYOZ
 ndU9BSx2sUL7E0S21amX4VCh5M9ucZVKS01pYuBom01jArXAuoSNghAbpMFVl+ZIzJ
 avMUKqkJAo+jdJ12LM+BAKx1Has8W5xL9yOhFbWs=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 8F82D60735;
 Mon, 13 May 2019 06:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557728426;
 bh=T+hUVENOurRHcRRbtlZ0pXY3c7M47y8tTE+83qFhXNo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZrI/Ju0Xt1Ki/tjgzAweE/21187vYG3dBk1Aj9GNEpS6wxRBpftgaABnjQ4dhUOzz
 sY3kUXeZiP3lLbrNDqKxGb8B+s8/scfUV4qBUeny071mQZK013yoPdVjbze9hO1uRz
 FITCMoOJGWvgfV51z27IhAPoKxaAHPWW5wznIDec=
MIME-Version: 1.0
Date: Mon, 13 May 2019 14:20:26 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: Ben Greear <greearb@candelatech.com>
Subject: Re: [PATCH] mac80211: remove warning message
In-Reply-To: <7119f24f-5b88-629a-d507-73776b841f65@candelatech.com>
References: <1557471662-1355-1-git-send-email-yiboz@codeaurora.org>
 <7119f24f-5b88-629a-d507-73776b841f65@candelatech.com>
Message-ID: <0247de90c551b76aed1f9647f9b274c0@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_232028_628518_D824960A 
X-CRM114-Status: GOOD (  16.64  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Zhi Chen <zhichen@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-05-10 22:04, Ben Greear wrote:
> On 05/10/2019 12:01 AM, Yibo Zhao wrote:
>> In multiple SSID cases, it takes time to prepare every AP interface
>> to be ready in initializing phase. If a sta already knows everything 
>> it
>> needs to join one of the APs and sends authentication to the AP which
>> is not fully prepared at this point of time, AP's channel context
>> could be NULL. As a result, warning message occurs.
>> 
>> Even worse, if the AP is under attack via tools such as MDK3 and 
>> massive
>> authentication requests are received in a very short time, console 
>> will
>> be hung due to kernel warning messages.
> 
> Since it is a WARN_ON_ONCE, how it the console hang due to warnings?  
> You should
> get no more than once per boot?
> 
Hi Ben,

I was planning to use WARN_ON_ONCE() in the first place to replace 
WARN_ON() then after some discussion, we think removing it could be 
better. So the patch was based on my first version. Sorry for the 
confusing. Will raise another one.

> I have no problem with removing it though.  Seems a harmless splat and 
> I removed
> it from my tree some time back as well.
> 
> Thanks,
> Ben
> 
>> 
>> If this case can be hit during normal functionality, there should be 
>> no
>> WARN_ON(). Those should be reserved to cases that are not supposed to 
>> be
>> hit at all or some other more specific cases like indicating obsolete
>> interface.
>> 
>> Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
>> Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
>> ---
>>  net/mac80211/ieee80211_i.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/net/mac80211/ieee80211_i.h b/net/mac80211/ieee80211_i.h
>> index 2ae0364..f39c289 100644
>> --- a/net/mac80211/ieee80211_i.h
>> +++ b/net/mac80211/ieee80211_i.h
>> @@ -1435,7 +1435,7 @@ struct ieee80211_local {
>>  	rcu_read_lock();
>>  	chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);
>> 
>> -	if (WARN_ON_ONCE(!chanctx_conf)) {
>> +	if (!chanctx_conf) {
>>  		rcu_read_unlock();
>>  		return NULL;
>>  	}
>> 

-- 
Yibo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
