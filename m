Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA08F393
	for <lists+ath10k@lfdr.de>; Tue, 30 Apr 2019 11:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IH1kO+JPdP03U/GplZWMrGU67UBnuC1ZjCVmbxh8fNc=; b=dMhFKAqtBCg7OucI+qWqgD+Mp
	JuxhfV2muEU0Ax9EcRPARtC50QfJ3PcC2dz3SlJ2H+ARsjMvMGvdeCkQxH+paRa3wDG+Dw5XwxkLI
	lhOT7zDcC2yrDoWS1fYyUVBiSOHZmkeFVxJFcjK84QpJOGQpu+OwBcS3rgqWVWXqwncyDTrBEA2nv
	3eKxpV135wvjnSvl6SuMxFRKfvpOPrf+WpKw5hEQL1AC32UQHGoFdMm5ZELUbaobvVDcWGsSRIAQZ
	8mlY9vOOFzNQsgjKWMkEN7if3XfBIOqP9E54YEBMv8EXOpqL8j7LTtLfqvfLdapemXhofLwMa1M6m
	QpHzK/Raw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPXB-0007Fy-Fg; Tue, 30 Apr 2019 09:58:45 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPX7-0007FM-W5
 for ath10k@lists.infradead.org; Tue, 30 Apr 2019 09:58:43 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B8EA4608D4; Tue, 30 Apr 2019 09:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556618320;
 bh=/OB55PwLiN+VY5sC2w4AVwUugT8v9nOotaENEpSmz7g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gMQbRksY8T57Ip78YeZvtOJRdCC1Za9wYgJ7tJJJhqhXWd3NAroPEPrCA4vSniv9k
 rLBDD0fGjVCkcCGFHWcrgu/nN6pN4Azd2dNhUr5/oL1SQTKo8LQzoJYNJ7kuKV1gtQ
 XMvlI0OF/zImV7UllUC2yA3v8lE90cnelV5kInTw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 35A49607DF;
 Tue, 30 Apr 2019 09:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556618320;
 bh=/OB55PwLiN+VY5sC2w4AVwUugT8v9nOotaENEpSmz7g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gMQbRksY8T57Ip78YeZvtOJRdCC1Za9wYgJ7tJJJhqhXWd3NAroPEPrCA4vSniv9k
 rLBDD0fGjVCkcCGFHWcrgu/nN6pN4Azd2dNhUr5/oL1SQTKo8LQzoJYNJ7kuKV1gtQ
 XMvlI0OF/zImV7UllUC2yA3v8lE90cnelV5kInTw=
MIME-Version: 1.0
Date: Tue, 30 Apr 2019 15:28:40 +0530
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCHv5 5/9] nl80211: Add netlink attribute to configure TID
 specific tx rate
In-Reply-To: <d9135c6be42425424e4c3fd606c7e5aaf9dac1e9.camel@sipsolutions.net>
References: <1553592550-15282-1-git-send-email-tamizhr@codeaurora.org>
 <1553592550-15282-6-git-send-email-tamizhr@codeaurora.org>
 <d9135c6be42425424e4c3fd606c7e5aaf9dac1e9.camel@sipsolutions.net>
Message-ID: <f70f928923e9623e63b27d590956cb42@codeaurora.org>
X-Sender: tamizhr@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_025842_047138_C1DBC9C5 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-04-26 15:07, Johannes Berg wrote:
>> @@ -13354,6 +13367,42 @@ static int parse_tid_conf(struct 
>> cfg80211_registered_device *rdev,
>>  			nla_get_u8(attrs[NL80211_ATTR_TID_CONFIG_RTSCTS_CTRL]);
>>  	}
>> 
>> +	if (attrs[NL80211_ATTR_TID_CONFIG_TX_RATES_TYPE]) {
>> +		int idx;
>> +		enum nl80211_attrs attr;
>> +
>> +		if (!wiphy_ext_feature_isset(&rdev->wiphy,
>> +				NL80211_EXT_FEATURE_PER_TID_TX_BITRATE_MASK))
>> +			return -EOPNOTSUPP;
>> +
>> +		if (peer &&
>> +		    !wiphy_ext_feature_isset(&rdev->wiphy,
>> +				NL80211_EXT_FEATURE_PER_STA_TX_BITRATE_MASK))
>> +			return -EOPNOTSUPP;
>> +
>> +		idx = NL80211_ATTR_TID_CONFIG_TX_RATES_TYPE;
>> +		tid_conf->txrate_type = nla_get_u8(attrs[idx]);
>> +
>> +		tid_conf->tid_conf_mask |= IEEE80211_TID_CONF_TX_BITRATE;
>> +		if (tid_conf->txrate_type != NL80211_TX_RATE_AUTOMATIC) {
>> +			tid_conf->mask =
>> +				kzalloc(sizeof(struct cfg80211_bitrate_mask),
>> +					GFP_KERNEL);
> 
> You leak this
> 
>> +			if (!tid_conf->mask)
>> +				return -ENOMEM;
>> +
>> +			attr = NL80211_ATTR_TID_CONFIG_TX_RATES;
>> +			ret = nl80211_parse_tx_bitrate_mask(attrs, rdev, attr,
>> +							    tid_conf->mask);
>> +			if (ret) {
>> +				kfree(tid_conf->mask);
>> +				return ret;
>> +			}
>> +		} else {
>> +			tid_conf->mask = NULL;
>> +		}
>> +	}
>> +
>>  	return 0;
>>  }
>> 
>> @@ -13407,7 +13456,7 @@ static int nl80211_set_tid_config(struct 
>> sk_buff *skb,
>>  		}
>> 
>>  		ret = parse_tid_conf(rdev, attrs, &tid_conf->tid_conf[conf_idx],
>> -				     tid_conf->peer);
>> +				     info, tid_conf->peer);
>>  		if (ret)
>>  			goto bad_tid_conf;
> 
> Practically everywhere, but particularly in the bad case in the next
> loop iteration etc?
> 
Yeah. I will fix this in next version.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
