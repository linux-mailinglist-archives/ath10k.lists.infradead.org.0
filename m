Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC6D7BE63
	for <lists+ath10k@lfdr.de>; Wed, 31 Jul 2019 12:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xB0Zek4/wFv7l+hQIQEfOGLDPbehxekEAyyuulZ9LWM=; b=ZNFxBoUFgPXoKAwd9ApaxNmL4
	G/o8Z2bZdS52lpf0YDYjbTqZd6pNWpQZi0IVMtiIjmxCHWZ9fv37YZShNIcFnXlYnpBx2ORu+4fsS
	KG1H9rNAH8vqqJSV4gymQYpI6VgteeHw86h7Qao2z6sCV/M0UpBi8hlnbGH4tBXR/5679VjajMEhD
	WEFUVOtii0X/M2YIHxzZOt4PdADQ6mgDXTH0yxv6Pg/K6Hk5iDQek30UD8nJYNyqerD0Zkl0Te+ri
	tKziOr+xj4BPoGlURMj17Qif76p0CJEG//R3nUNQDgRc1VvrjFYB1KKsKIffGwFoexc3IZR1UgP/D
	V9H1UNn6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hslqh-0004Dn-Ka; Wed, 31 Jul 2019 10:28:47 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hslqd-0004DR-Fz
 for ath10k@lists.infradead.org; Wed, 31 Jul 2019 10:28:44 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1910460734; Wed, 31 Jul 2019 10:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564568923;
 bh=Hohr4y8oZKjtr+w8imCjvXreoghIOPTdQmGwNkT6eB4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RV1M74FbGr48IEi48hZNVZ5u/05PpuQfzlPibwwUY+o90eNlHR0SjnVigtxZ/VkgT
 mljf0bdpaK5w1P08D76pWTZfl8H8hD+97BcNP8hBYt3kC+sIY5mKKs08DEHpv6S27S
 cvCoV+UNRzdqKJdU+AhzsWJ/DUBdb12OOLcgL9YQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 9BF07601D3;
 Wed, 31 Jul 2019 10:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564568922;
 bh=Hohr4y8oZKjtr+w8imCjvXreoghIOPTdQmGwNkT6eB4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dOan4vPE6rmloHZV9oEP0RGZWY/GgGgGdgAtdooTlOkhp6T/Ctas9hdHzZrSjlzd/
 ZokiXtJxdNnT2n2pblFdtJ3S6wxq1VmSULKTMHc6JWXWuQgQKpAbqcucDBeVauSy9R
 XRlIf2j2+WLjdLK26F8iA6RoXQT2YVzQSmvXQqRw=
MIME-Version: 1.0
Date: Wed, 31 Jul 2019 15:58:42 +0530
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCHv6 1/9] nl80211: New netlink command for TID specific
 configuration
In-Reply-To: <428fec1c2dd6f6d9345323f272eef423a214bc39.camel@sipsolutions.net>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-2-git-send-email-tamizhr@codeaurora.org>
 <428fec1c2dd6f6d9345323f272eef423a214bc39.camel@sipsolutions.net>
Message-ID: <19a236986ca5c91c232769989f9d6950@codeaurora.org>
X-Sender: tamizhr@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_032843_557330_980B690C 
X-CRM114-Status: UNSURE (   8.84  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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


> 
>> + * @NL80211_ATTR_TID_CONFIG: TID specific configuration in a
>> + *	nested attribute with %NL80211_TID_ATTR_* sub-attributes.
> 
> Please use NL80211_TID_CONFIG_ATTR_* throughout, also for
> 
>> +/* enum nl80211_tid_attr_config - TID specific configuration.
> 
> the enum name
> 
>> +enum nl80211_tid_attr_config {
>> +	__NL80211_TID_ATTR_INVALID,
>> +	NL80211_TID_ATTR_CONFIG_TID,
>> +	NL80211_TID_ATTR_CONFIG_NOACK,
>> +
>> +	/* keep last */
>> +	__NL80211_TID_ATTR_CONFIG_AFTER_LAST,
>> +	NL80211_TID_ATTR_CONFIG_MAX = __NL80211_TID_ATTR_CONFIG_AFTER_LAST - 
>> 1
> 
> and all the things in it.
sure.
> Also, as you can see above, the kernel-doc comment isn't formatted
> right.
> 
sure, I will fix it.
> 
>> +	nla_for_each_nested(tid, info->attrs[NL80211_ATTR_TID_CONFIG],
>> +			    rem_conf) {
>> +		ret = nla_parse_nested_deprecated(attrs, 
>> NL80211_TID_ATTR_CONFIG_MAX,
>> +						  tid, NULL, NULL);
> 
> You shouldn't use _deprecated.
> 
Okay.
>> +		ret = parse_tid_conf(rdev, attrs,
>> +				     &tid_config->tid_conf[conf_idx],
>> +				     tid_config->peer);
> 
> and yeah, this should compile.
> 
My bad. Sorry about this. I will fix this in the next version.

Thanks,
Tamizh.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
