Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301BDF180
	for <lists+ath10k@lfdr.de>; Tue, 30 Apr 2019 09:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WrIGSiVOrJqK1EsYOc9NSV/hgNO5GGUD5pePNP+NWII=; b=cdCX+4EcUYhKlqdeBYCdE9rcq
	u82Y0l4ViD6s0/XvcSyO56+J7WQpTttJIr6icrs/5m+eyTyGHLubZzXNao0D4HZRDYIzPkatKv9A0
	eD9p590mzzZh74OKiHh2AUmXmKYStEPTVhAxGiYCWAKIdhWMLjLCK1KcnqnTeBPKpzh9iEoCPNJx6
	Zv60JVXYOL7PzkcOrW/XHMWAdBcTgUuskEThERCSRqCHnnoLJLJi3tT2GXbjZ58jZnlM0HbxjInke
	ToIGsHBw0BbrM1Tsd7uMQ+rEQmHgY2JIR1Jkcx4kjW9B02LU8Q3O/4UwZdknMueZEa0lDiK0jiD07
	B7Kx1hQYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLNLb-0000co-1u; Tue, 30 Apr 2019 07:38:39 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLNLX-0000cQ-0V
 for ath10k@lists.infradead.org; Tue, 30 Apr 2019 07:38:36 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 29DCD608FF; Tue, 30 Apr 2019 07:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556609914;
 bh=rc2xgNkgQET7gaHOGb2/cfjqBTVggusGVoyINF7svOM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=T/Y3CmHQRZHkfUX/YTqtFIeHy8RaGtqm1Y3MiGDOQ265xJvrGe7tln5t2C9FlMK72
 MFDkdBRLV56OeL0GfMslpTsDlfcxj+ZZM3NFgtFQWMoC75nu3T+SFIQb3NYlDrpioW
 tb3qD2rYGP+6x/GCsqWtmhQu97euAfxEyMw7lqs0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 9EB25602F5;
 Tue, 30 Apr 2019 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556609913;
 bh=rc2xgNkgQET7gaHOGb2/cfjqBTVggusGVoyINF7svOM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Gz4IQO/mdM1OW2/7dUVWqTlHpNccEuDqRWekY9dGnoiTDQvkgfFA/kOVRBDNc7Jdx
 c5HDU7ETrfUHVo2hjiy+++JScejVCsJhHXFLU9mwz3qVdCitBpfyPuQrO4hLMeSOPA
 swiVZfMEBfxHeRakvgQhqay/h5VsCJ6yvAeW0Y6A=
MIME-Version: 1.0
Date: Tue, 30 Apr 2019 13:08:33 +0530
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCHv5 1/9] nl80211: New netlink command for TID specific
 configuration
In-Reply-To: <b90f20a45af63a3261ee14eda38239521dce6486.camel@sipsolutions.net>
References: <1553592550-15282-1-git-send-email-tamizhr@codeaurora.org>
 <1553592550-15282-2-git-send-email-tamizhr@codeaurora.org>
 <b90f20a45af63a3261ee14eda38239521dce6486.camel@sipsolutions.net>
Message-ID: <eb8dfd6dad55bbecff5342509be4f179@codeaurora.org>
X-Sender: tamizhr@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_003835_091075_BCBCF8E6 
X-CRM114-Status: GOOD (  19.03  )
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


>> +enum ieee80211_tid_conf_mask {
>> +	IEEE80211_TID_CONF_NOACK	= BIT(0),
>> +};
>> +
>> +/**
>> + * struct ieee80211_tid_cfg - TID specific configuration
>> + * @tid: TID number
>> + * @tid_conf_mask: bitmap indicating which parameter changed
>> + *	see %enum ieee80211_tid_conf_mask
>> + * @noack: noack configuration value for the TID
>> + */
>> +struct ieee80211_tid_cfg {
>> +	u8 tid;
>> +	enum ieee80211_tid_conf_mask tid_conf_mask;
> 
> This shouldn't use the enum type if it's a bitmap. Doing the enum type
> above is only useful for documentation, which you should add there.
> 
Okay. I will change this to u32.

>> + * @set_tid_config: TID specific configuration. Apply this 
>> configuration for
>> + *	all the connected stations in the BSS if peer is NULL. Otherwise
> 
> %NULL renders better, IIRC
> 
Sure.

>> + * @NL80211_ATTR_TID_CONFIG: TID specific configuration in a
>> + *	nested attribute with %NL80211_ATTR_TID_* sub-attributes.
> 
> Please use NL80211_TID_ATTR_* to disambiguate the namespaces
> 
Sure.
>> +enum nl80211_tid_config {
>> +	NL80211_TID_CONFIG_DEFAULT,
>> +	NL80211_TID_CONFIG_ENABLE,
>> +	NL80211_TID_CONFIG_DISABLE,
>> +};
> 
> 
> That could do with some documentation
> 
Sure.
>> +
>> +/* enum nl80211_attr_tid_config - TID specific configuration.
>> + * @NL80211_ATTR_TID_CONFIG_TID: a TID value (u8 attribute).
> 
> See above - TID_ATTR_* is better.
> 
>> + * @NL80211_ATTR_TID_CONFIG_NOACK: Configure ack policy for the TID.
>> + *	specified in %NL80211_ATTR_TID_CONFIG_TID. see %enum 
>> nl80211_tid_config.
>> + *	Its type is u8, if the peer MAC address is passed in 
>> %NL80211_ATTR_MAC,
>> + *	then the noack configuration is applied to the data frame for the 
>> tid
>> + *	to that connected station. This configuration is valid only for 
>> STA's
>> + *      current connection. i.e. the configuration will be reset to 
>> default when
>> + *      the station connects back after disconnection/roaming.
>> + *      when user-space does not include %NL80211_ATTR_MAC, then this
> 
> please use tabs consistently
> 
>> + *	configuration should be treated as per-netdev configuration.
>> + *	This configuration will be cleared when the interface goes down 
>> and on
>> + *	the disconnection from a BSS.
> 
> "goes down" is redundant then? Or do you mean that's for the AP case?
> 
In AP case, if a station disconnects from AP then the configuration will 
be cleared for the station. Similarly in STA mode if it disconnected 
from the BSS then the configuration also will be cleared.

>> +static const struct nla_policy
>> +nl80211_attr_tid_config_policy[NL80211_ATTR_TID_CONFIG_MAX + 1] = {
>> +	[NL80211_ATTR_TID_CONFIG_TID] = { .type = NLA_U8 },
> 
> Shouldn't this use NLA_POLICY_RANGE() or MAX()?
> 
To give option to apply configuration for all TIDs if the value is 
255(likely).
>> +	[NL80211_ATTR_TID_CONFIG_NOACK] =
>> +			NLA_POLICY_MAX(NLA_U8, NL80211_TID_CONFIG_DISABLE),
>> +};
>> +
>>  const struct nla_policy nl80211_policy[NUM_NL80211_ATTR] = {
>>  	[NL80211_ATTR_WIPHY] = { .type = NLA_U32 },
>>  	[NL80211_ATTR_WIPHY_NAME] = { .type = NLA_NUL_STRING,
>> @@ -541,6 +548,8 @@ static int validate_ie_attr(const struct nlattr 
>> *attr,
>>  	[NL80211_ATTR_PEER_MEASUREMENTS] =
>>  		NLA_POLICY_NESTED(nl80211_pmsr_attr_policy),
>>  	[NL80211_ATTR_AIRTIME_WEIGHT] = NLA_POLICY_MIN(NLA_U16, 1),
>> +	[NL80211_ATTR_TID_CONFIG] =
>> +			NLA_POLICY_NESTED(nl80211_attr_tid_config_policy),
>>  };
> 
> Great! :-)
> 
>>  /* policy for the key attributes */
>> @@ -13259,6 +13268,93 @@ static int 
>> nl80211_get_ftm_responder_stats(struct sk_buff *skb,
>>  	return -ENOBUFS;
>>  }
>> 
>> +static int parse_tid_conf(struct cfg80211_registered_device *rdev,
>> +			  struct nlattr *attrs[],
>> +			  struct ieee80211_tid_cfg *tid_conf,
>> +			  const u8 *peer)
>> +{
>> +	tid_conf->tid = nla_get_u8(attrs[NL80211_ATTR_TID_CONFIG_TID]);
> 
> You need to check that this is even present!
> 
>> +	size_of_conf = sizeof(struct ieee80211_tid_config) +
>> +		num_conf * sizeof(struct ieee80211_tid_cfg);
> 
> use struct_size()
Sure
> 
>> +	tid_conf = kzalloc(size_of_conf, GFP_KERNEL);
>> +	if (!tid_conf)
>> +		return -ENOMEM;
>> +
>> +	tid_conf->n_tid_conf = num_conf;
>> +
>> +	if (info->attrs[NL80211_ATTR_MAC])
>> +		tid_conf->peer = nla_data(info->attrs[NL80211_ATTR_MAC]);
>> +	else
>> +		tid_conf->peer = NULL;
> 
> No need to initialize to NULL after kzalloc()
okay sure.
> 
>> +	nla_for_each_nested(tid, info->attrs[NL80211_ATTR_TID_CONFIG],
>> +			    rem_conf) {
>> +		ret = nla_parse_nested(attrs, NL80211_ATTR_TID_CONFIG_MAX, tid,
>> +				       NULL, NULL);
>> +
>> +		if (ret)
>> +			goto bad_tid_conf;
>> +
>> +		if (!attrs[NL80211_ATTR_TID_CONFIG_TID]) {
>> +			ret = -EINVAL;
>> +			goto bad_tid_conf;
>> +		}
> 
> Oh, you check here. Perhaps easier to do inside though?
Checked here since the parse_tid_conf function called after this check.
> 
>> +	{
>> +		.cmd = NL80211_CMD_SET_TID_CONFIG,
>> +		.doit = nl80211_set_tid_config,
>> +		.policy = nl80211_policy,
> 
> The .policy field no longer exists.
Sure, I will remove this
> 
> johannes

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
