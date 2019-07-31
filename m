Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 856107BCF0
	for <lists+ath10k@lfdr.de>; Wed, 31 Jul 2019 11:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcuEa669Gn5N4I+BsdqwYWeYECrqZ4FLgslF3Gwsn1I=; b=nGwmL2Q2PAAND3
	U/YcxH46HgIg+E8kx+5Nla+HveZ1wwD1BAGIUQZ6McArujEFRzgwy1tA21D0lCTYVCnYCe0SvM1Jx
	gv467YzbQCiyLoaWlcM3wpoRyW3kCE3uGXbkMg+zIw11w8zz6UyTFvPmLOlMM2IPO5BeeQ428Bz1f
	mzgZQhK4hzOurVLNTTuc4Wk2G558vdIstpUKe7HfdqUdYM9Ekf7TCRsdqdr3oGWO+sctcmcxMh7AA
	lnT8tdn0EWY8rkESSshMfzTveavKukC4nvZYa+xqregPT8enNtPZa94waWscpjfsOefawOhfk10SE
	ZsWOQ4qZk1cjAoEgseDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskqR-00022B-Ju; Wed, 31 Jul 2019 09:24:27 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskqN-00021o-F8
 for ath10k@lists.infradead.org; Wed, 31 Jul 2019 09:24:24 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hskqM-0004Zv-0w; Wed, 31 Jul 2019 11:24:22 +0200
Message-ID: <6351a05f5c205db47740116b4bec5a6476317792.camel@sipsolutions.net>
Subject: Re: [PATCHv6 2/9] nl80211: Add new netlink attribute for TID
 speicific retry count
From: Johannes Berg <johannes@sipsolutions.net>
To: Tamizh chelvam <tamizhr@codeaurora.org>, ath10k@lists.infradead.org
Date: Wed, 31 Jul 2019 11:24:21 +0200
In-Reply-To: <1560835632-17405-3-git-send-email-tamizhr@codeaurora.org>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-3-git-send-email-tamizhr@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_022423_507999_5027CED3 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

^^ there's a typo in the subject

> @@ -3951,6 +3957,7 @@ enum wiphy_flags {
>  	WIPHY_FLAG_SUPPORTS_5_10_MHZ		= BIT(22),
>  	WIPHY_FLAG_HAS_CHANNEL_SWITCH		= BIT(23),
>  	WIPHY_FLAG_HAS_STATIC_WEP		= BIT(24),
> +	WIPHY_FLAG_HAS_MAX_DATA_RETRY_COUNT	= BIT(25),

This is never used, so that doesn't make sense? You probably want to
advertise the max_data_retry_count value contingent on this flag (*) in
some attribute, so that userspace can also detect the presence/absence
of the flag for the feature?

(*) doesn't really need to be contingent on the flag - could just be
contingent on max_data_retry_count being non-zero and then you don't
need the flag.

> + * @NL80211_ATTR_MAX_RETRY_COUNT: The upper limit for the retry count
> + *	configuration that the driver can accept.
>   *
>   * @NUM_NL80211_ATTR: total number of nl80211_attrs available
>   * @NL80211_ATTR_MAX: highest attribute number currently defined
> @@ -2823,6 +2825,7 @@ enum nl80211_attrs {
>  	NL80211_ATTR_TWT_RESPONDER,
>  
>  	NL80211_ATTR_TID_CONFIG,
> +	NL80211_ATTR_MAX_RETRY_COUNT,

You already have the attribute, but again, aren't using it.

> + * @NL80211_EXT_FEATURE_PER_TID_RETRY_CONFIG: Driver supports per TID data retry
> + *	count functionality.
> + * @NL80211_EXT_FEATURE_PER_STA_RETRY_CONFIG: Driver supports STA specific
> + *	data retry count functionality.

and if you have these you don't need the WIPHY_FLAG anyway?

> +	[NL80211_TID_ATTR_CONFIG_RETRY] = { .type = NLA_FLAG },
> +	[NL80211_TID_ATTR_CONFIG_RETRY_SHORT] = NLA_POLICY_MIN(NLA_U8, 0),
> +	[NL80211_TID_ATTR_CONFIG_RETRY_LONG] = NLA_POLICY_MIN(NLA_U8, 0),

min of 0 doesn't make sense, maybe you meant 1? otherwise just don't set
anything here.


> +					    "TID specific configuration not "
> +					    "supported");

This applies to all the patches - please don't break strings across
multiple lines, even if they cross 80 columns. Even checkpatch won't
give you any warning on this.

> +		tid_conf->tid_conf_mask |= IEEE80211_TID_CONF_RETRY;
> +		if (attrs[NL80211_TID_ATTR_CONFIG_RETRY_SHORT]) {
> +			tid_conf->retry_short =
> +			nla_get_u8(attrs[NL80211_TID_ATTR_CONFIG_RETRY_SHORT]);
> +			if (tid_conf->retry_short >
> +					rdev->wiphy.max_data_retry_count)
> +				return -EINVAL;
> +		} else {
> +			tid_conf->retry_short = -1;
> +		

I guess you should document that -1 means no changes? Not sure how the
IEEE80211_TID_CONF_RETRY comes in, you're always setting it, so that's
useless - better remove that and document that -1 means no changes?

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
