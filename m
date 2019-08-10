Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D23188B2E
	for <lists+ath10k@lfdr.de>; Sat, 10 Aug 2019 14:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rm+mgQ/E4+DNc8fC/JjhnNyYO/U7b8mRpHZIzg3ct4s=; b=oWBJ2uE88bYkTx8wgiF6rBOsk
	DGPJqpk8UKw8RQaBw77u3jYNN6EZkza5ExcjDVHSiyQNgGAX+rGj26zIqvV7/w2M9RyqTvDpMXK69
	29IMA/9xFW5WeVLK5/bmY/Fx9prIKAzk6ydwyzhty7HwvaSoUOHT2Sn2/oTjJ37UTw2hZY6RpgP5t
	jMnqDZA9+KmwNmuULabW1rpyKNTY7KCmHaPQsjkTjzyLGmHB+T0nOjUD1GeuH2N6ElUAw37Yvwxuv
	1ps9laXIdgnIW3q34ClI9R7lOk+6VN6dEXfpdTUn0TP2AegISxaQeYaGOeWxgHu66UVnER13zFhl9
	oZJD0JqVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwQ9A-0001FD-0g; Sat, 10 Aug 2019 12:06:56 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwQ93-0001EX-Pv
 for ath10k@lists.infradead.org; Sat, 10 Aug 2019 12:06:51 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C97D360256; Sat, 10 Aug 2019 12:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565438807;
 bh=Met/C+m7Iw2xBZHZk3vs+mDj3dNjzE5/kmxgi5wNi/0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PAp2UXyEGRoTNq6q3M+CD6VMaUqaDkR78mXMzOyjzcEq3kwDhz1vG2zdl3ehCVpv6
 2I6BLaqOJ78e/wsG0FKBeI2JjBvth5QwD52Ag3qYH9hZjYY4OyCMhFAZ0pyFzf+Ndw
 iT9TqFwi6vg2L9YgaxHgtK6Gpv1trFaLipuaa8LM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 4738C60721;
 Sat, 10 Aug 2019 12:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565438807;
 bh=Met/C+m7Iw2xBZHZk3vs+mDj3dNjzE5/kmxgi5wNi/0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PAp2UXyEGRoTNq6q3M+CD6VMaUqaDkR78mXMzOyjzcEq3kwDhz1vG2zdl3ehCVpv6
 2I6BLaqOJ78e/wsG0FKBeI2JjBvth5QwD52Ag3qYH9hZjYY4OyCMhFAZ0pyFzf+Ndw
 iT9TqFwi6vg2L9YgaxHgtK6Gpv1trFaLipuaa8LM=
MIME-Version: 1.0
Date: Sat, 10 Aug 2019 17:36:47 +0530
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCHv6 2/9] nl80211: Add new netlink attribute for TID
 speicific retry count
In-Reply-To: <6351a05f5c205db47740116b4bec5a6476317792.camel@sipsolutions.net>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-3-git-send-email-tamizhr@codeaurora.org>
 <6351a05f5c205db47740116b4bec5a6476317792.camel@sipsolutions.net>
Message-ID: <66f9219ed5bd03f96f23947c2bb6f990@codeaurora.org>
X-Sender: tamizhr@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_050649_888905_69AA03D4 
X-CRM114-Status: GOOD (  16.36  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 2019-07-31 14:54, Johannes Berg wrote:
> ^^ there's a typo in the subject
> 
I will fix it in next version.
>> @@ -3951,6 +3957,7 @@ enum wiphy_flags {
>>  	WIPHY_FLAG_SUPPORTS_5_10_MHZ		= BIT(22),
>>  	WIPHY_FLAG_HAS_CHANNEL_SWITCH		= BIT(23),
>>  	WIPHY_FLAG_HAS_STATIC_WEP		= BIT(24),
>> +	WIPHY_FLAG_HAS_MAX_DATA_RETRY_COUNT	= BIT(25),
> 
> This is never used, so that doesn't make sense? You probably want to
> advertise the max_data_retry_count value contingent on this flag (*) in
> some attribute, so that userspace can also detect the presence/absence
> of the flag for the feature?
> 
> (*) doesn't really need to be contingent on the flag - could just be
> contingent on max_data_retry_count being non-zero and then you don't
> need the flag.
> 
Sure, I will remove this flag.

>> + * @NL80211_ATTR_MAX_RETRY_COUNT: The upper limit for the retry count
>> + *	configuration that the driver can accept.
>>   *
>>   * @NUM_NL80211_ATTR: total number of nl80211_attrs available
>>   * @NL80211_ATTR_MAX: highest attribute number currently defined
>> @@ -2823,6 +2825,7 @@ enum nl80211_attrs {
>>  	NL80211_ATTR_TWT_RESPONDER,
>> 
>>  	NL80211_ATTR_TID_CONFIG,
>> +	NL80211_ATTR_MAX_RETRY_COUNT,
> 
> You already have the attribute, but again, aren't using it.
> 
I will use this in nl80211_get_wiphy to notify userspace.

>> + * @NL80211_EXT_FEATURE_PER_TID_RETRY_CONFIG: Driver supports per TID 
>> data retry
>> + *	count functionality.
>> + * @NL80211_EXT_FEATURE_PER_STA_RETRY_CONFIG: Driver supports STA 
>> specific
>> + *	data retry count functionality.
> 
> and if you have these you don't need the WIPHY_FLAG anyway?
> 
Sure.
>> +	[NL80211_TID_ATTR_CONFIG_RETRY] = { .type = NLA_FLAG },
>> +	[NL80211_TID_ATTR_CONFIG_RETRY_SHORT] = NLA_POLICY_MIN(NLA_U8, 0),
>> +	[NL80211_TID_ATTR_CONFIG_RETRY_LONG] = NLA_POLICY_MIN(NLA_U8, 0),
> 
> min of 0 doesn't make sense, maybe you meant 1? otherwise just don't 
> set
> anything here.
> 
The min value changed to 0 from 1 as per the previous discussions, since 
this is a retry count and not a tx count.
Or Shall I remove this min value to avoid the confusion ?
> 
>> +					    "TID specific configuration not "
>> +					    "supported");
> 
> This applies to all the patches - please don't break strings across
> multiple lines, even if they cross 80 columns. Even checkpatch won't
> give you any warning on this.
> 
Yeah, sure.
>> +		tid_conf->tid_conf_mask |= IEEE80211_TID_CONF_RETRY;
>> +		if (attrs[NL80211_TID_ATTR_CONFIG_RETRY_SHORT]) {
>> +			tid_conf->retry_short =
>> +			nla_get_u8(attrs[NL80211_TID_ATTR_CONFIG_RETRY_SHORT]);
>> +			if (tid_conf->retry_short >
>> +					rdev->wiphy.max_data_retry_count)
>> +				return -EINVAL;
>> +		} else {
>> +			tid_conf->retry_short = -1;
>> +
> 
> I guess you should document that -1 means no changes? Not sure how the
> IEEE80211_TID_CONF_RETRY comes in, you're always setting it, so that's
> useless - better remove that and document that -1 means no changes?
> 
The value -1 is to notify the driver to use default value by removing 
peer specific retry count.

Thanks,
Tamizh.


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
