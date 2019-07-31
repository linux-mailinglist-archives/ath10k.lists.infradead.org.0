Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B15B17BCCE
	for <lists+ath10k@lfdr.de>; Wed, 31 Jul 2019 11:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvZ2XTasL9Qx33oNjyUMIHNiZzLWdZpL+LNLy1mY09M=; b=Uv3paO4jRzor+x
	IbSFyURuI6NFRK9yPPB1SUcy9xWUmgp5ijYBVgLPKgENElmY2tlesjVOrrNrHTfNTZzTmYOlAHHE+
	GCvnmwRhjrUTMa4GQ009eL86xNP62FbtPSNG4S437LQG6okAjH2IO1ViV1sqa/CeCkpyVwc9Vgf+m
	rGYE/3Ga5L6PIrr5PDLSSA8F3QYwQH5MxsFw+N0Pj7L3ixm3eW5kyZSLZk/SnDItlaFeEW8TQLJ7/
	t+7pknsq0YnB4UCA9kKF/+0DalK8nN7cWPBieHI60Vd41suNyTFVOOnLcqlBVFeDx67mC4zHpLxn9
	DQJJUXzejLfRo7xD91qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsklv-0008Ob-9X; Wed, 31 Jul 2019 09:19:47 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsklP-00085D-TT
 for ath10k@lists.infradead.org; Wed, 31 Jul 2019 09:19:17 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hsklL-0004Tl-6x; Wed, 31 Jul 2019 11:19:11 +0200
Message-ID: <428fec1c2dd6f6d9345323f272eef423a214bc39.camel@sipsolutions.net>
Subject: Re: [PATCHv6 1/9] nl80211: New netlink command for TID specific
 configuration
From: Johannes Berg <johannes@sipsolutions.net>
To: Tamizh chelvam <tamizhr@codeaurora.org>, ath10k@lists.infradead.org
Date: Wed, 31 Jul 2019 11:19:10 +0200
In-Reply-To: <1560835632-17405-2-git-send-email-tamizhr@codeaurora.org>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-2-git-send-email-tamizhr@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_021916_034194_627AEF00 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
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

Hi,

Was waiting for you to address Sergey's feedback, but now that I looked
anyway, I have some of my own. Sorry for the long delay though!

> + * @NL80211_ATTR_TID_CONFIG: TID specific configuration in a
> + *	nested attribute with %NL80211_TID_ATTR_* sub-attributes.

Please use NL80211_TID_CONFIG_ATTR_* throughout, also for

> +/* enum nl80211_tid_attr_config - TID specific configuration.

the enum name

> +enum nl80211_tid_attr_config {
> +	__NL80211_TID_ATTR_INVALID,
> +	NL80211_TID_ATTR_CONFIG_TID,
> +	NL80211_TID_ATTR_CONFIG_NOACK,
> +
> +	/* keep last */
> +	__NL80211_TID_ATTR_CONFIG_AFTER_LAST,
> +	NL80211_TID_ATTR_CONFIG_MAX = __NL80211_TID_ATTR_CONFIG_AFTER_LAST - 1

and all the things in it.

Also, as you can see above, the kernel-doc comment isn't formatted
right.


> +	nla_for_each_nested(tid, info->attrs[NL80211_ATTR_TID_CONFIG],
> +			    rem_conf) {
> +		ret = nla_parse_nested_deprecated(attrs, NL80211_TID_ATTR_CONFIG_MAX,
> +						  tid, NULL, NULL);

You shouldn't use _deprecated.

> +		ret = parse_tid_conf(rdev, attrs,
> +				     &tid_config->tid_conf[conf_idx],
> +				     tid_config->peer);

and yeah, this should compile.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
