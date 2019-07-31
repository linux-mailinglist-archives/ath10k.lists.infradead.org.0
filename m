Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362337BD23
	for <lists+ath10k@lfdr.de>; Wed, 31 Jul 2019 11:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9pWki/O+LdwHhuJscXa3WF25Zyp59bWSrFt5Ss4UX0=; b=uctwREI38bJgOg
	1cZsy/sHcuMc6k4UXBxTn1vw5h1yFfO+jUi2jme8dm/LZPzPyt3SS90q06zu8Jx8bB2Zb/YuPmzs2
	tdhaRmk/c2b11z7F/xnth0AMDy9S5qLegs1RIfCsXzZs5W/EEvP3dePbJBYn/jQiXINLZ3nLJVbmR
	RC97P+qYaJXNGPhP6OCQJm3PPEr86zHEQ4CqTc2Nh9kAnQiOGfuqIRIKFU0L2Xu2RmLIwj/NFVl6L
	I7MPvS7b/P5v02YaLxOsOqhbCBoR5AVlowJzl/m+w09sg1XlbvQGqP2T0aKytz2kWMbWQ5gPlvEWf
	lKgCFm+JXN/JvHMMIqkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsku7-0003z0-SQ; Wed, 31 Jul 2019 09:28:15 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsku2-0003yJ-I0
 for ath10k@lists.infradead.org; Wed, 31 Jul 2019 09:28:11 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hsku1-0004eq-4J; Wed, 31 Jul 2019 11:28:09 +0200
Message-ID: <1077c62701b31cfcb4436e6b13be64ade6b1ae1b.camel@sipsolutions.net>
Subject: Re: [PATCHv6 3/9] nl80211: Add netlink attribute for AMPDU
 aggregation enable/disable
From: Johannes Berg <johannes@sipsolutions.net>
To: Tamizh chelvam <tamizhr@codeaurora.org>, ath10k@lists.infradead.org
Date: Wed, 31 Jul 2019 11:28:08 +0200
In-Reply-To: <1560835632-17405-4-git-send-email-tamizhr@codeaurora.org>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-4-git-send-email-tamizhr@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_022810_598203_085DA2B7 
X-CRM114-Status: UNSURE (   6.16  )
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

On Tue, 2019-06-18 at 10:57 +0530, Tamizh chelvam wrote:
> 
> +		if (!wiphy_ext_feature_isset(&rdev->wiphy,
> +				NL80211_EXT_FEATURE_PER_TID_AMPDU_CTRL)) {
> +			NL_SET_ERR_MSG_ATTR(extack,
> +					    attrs[NL80211_TID_ATTR_CONFIG_AMPDU_CTRL],
> +					    "TID specific configuration not "
> +					    "supported");
> +			return -ENOTSUPP;
> +		}
> +
> +		if (peer && !wiphy_ext_feature_isset(&rdev->wiphy,
> +				NL80211_EXT_FEATURE_PER_STA_AMPDU_CTRL)) {
> +			NL_SET_ERR_MSG_ATTR(extack,
> +					    attrs[NL80211_TID_ATTR_CONFIG_AMPDU_CTRL],
> +					    "peer specfic TID configuration not "
> +					    "supported");
> +			return -ENOTSUPP;
> +		}

I think you should probably make this be a function to which you pass
the attribute pointer and feature flags.

err = nl80211_check_tid_config_supported(extack,
					 attrs[NL80211_TID_ATTR_CONFIG_AMPDU_CTRL],
					 NL80211_EXT_FEATURE_PER_TID_AMPDU_CTRL,
					 NL80211_EXT_FEATURE_PER_STA_AMPDU_CTRL);

since you have this code a lot?

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
