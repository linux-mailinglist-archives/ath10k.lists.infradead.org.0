Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3EE88B6A
	for <lists+ath10k@lfdr.de>; Sat, 10 Aug 2019 14:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fi/o0IE37BYlkFQqBx9S/txWYgZY8x6XHgUAxK5s5B0=; b=LVs1J0nzTtdEhWkQuJsKQf6uk
	8dnpp4O76YJLVFFSL5FSj0/bqcyOmiiDjN6PtELeEj9Q/XjNcpQhq7Lo6AYMFTSqHeh04ptfvlv61
	ej6cWPe02hnHfDewE6lemHwULfeRzg7Z5YhAdydnBaSW57WmL5QXmvMcvulJsdiHdCL4pk0WQeyx6
	DUTVkIIC0MMOmlpj4kvnk51ejRW2IMDqO2iiqHdyVFJvx52fEu3SQi9pY199nQZNsZTWtQ+2uEbdK
	D9/HL3m99wcQjxln4ig4c39SQfajmD5jBNHdwyoNXOIzE9AdmSBhuJafLyVMu6d8B6MlSvHGx8kjR
	YwKRnsb2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwQgS-0003jS-KJ; Sat, 10 Aug 2019 12:41:20 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwQgN-0003j5-Uf
 for ath10k@lists.infradead.org; Sat, 10 Aug 2019 12:41:17 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 216C96074F; Sat, 10 Aug 2019 12:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565440875;
 bh=yJ1BlyP2N+MGDpUxAHU8VlyACH1I6LtPj6CRxZyqCX8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=f+OFtFpgwFDZ07ppEVkE+P0/Huiv5wzYVmVKwVCOtHD6QGTvGb8j66QG5ztbCML5w
 sWSjgNfQZ34zvldTFLAqCdiTI7mzApdRSBFSm9BMomKFu4nkAyZjC3Zb+PxPqentq5
 l8tSiQu37Wlnyot29/zJomDI7dUsimElDHP3sxHw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id A3B56602ED;
 Sat, 10 Aug 2019 12:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565440874;
 bh=yJ1BlyP2N+MGDpUxAHU8VlyACH1I6LtPj6CRxZyqCX8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TDowV+u6LOHcpW402dXkH7Nnj9bAKaX824lvHMaHyyevfnVn9Y6fyOFKEmeaiqiqn
 3PShPpe0Os4RVdOtTH0i8vdGxihb64Mh5zPORP1GQef/LE4IFfScA1bZmnlbGLAICQ
 63eJtLbUds1jnuLvTaPuDfmYWcc6Sgev3vuz/uJI=
MIME-Version: 1.0
Date: Sat, 10 Aug 2019 18:11:14 +0530
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCHv6 3/9] nl80211: Add netlink attribute for AMPDU
 aggregation enable/disable
In-Reply-To: <1077c62701b31cfcb4436e6b13be64ade6b1ae1b.camel@sipsolutions.net>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-4-git-send-email-tamizhr@codeaurora.org>
 <1077c62701b31cfcb4436e6b13be64ade6b1ae1b.camel@sipsolutions.net>
Message-ID: <e704b7dd39c86c2596b6c0861a376117@codeaurora.org>
X-Sender: tamizhr@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_054116_012841_85D1C462 
X-CRM114-Status: UNSURE (   7.52  )
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

On 2019-07-31 14:58, Johannes Berg wrote:
> On Tue, 2019-06-18 at 10:57 +0530, Tamizh chelvam wrote:
>> 
>> +		if (!wiphy_ext_feature_isset(&rdev->wiphy,
>> +				NL80211_EXT_FEATURE_PER_TID_AMPDU_CTRL)) {
>> +			NL_SET_ERR_MSG_ATTR(extack,
>> +					    attrs[NL80211_TID_ATTR_CONFIG_AMPDU_CTRL],
>> +					    "TID specific configuration not "
>> +					    "supported");
>> +			return -ENOTSUPP;
>> +		}
>> +
>> +		if (peer && !wiphy_ext_feature_isset(&rdev->wiphy,
>> +				NL80211_EXT_FEATURE_PER_STA_AMPDU_CTRL)) {
>> +			NL_SET_ERR_MSG_ATTR(extack,
>> +					    attrs[NL80211_TID_ATTR_CONFIG_AMPDU_CTRL],
>> +					    "peer specfic TID configuration not "
>> +					    "supported");
>> +			return -ENOTSUPP;
>> +		}
> 
> I think you should probably make this be a function to which you pass
> the attribute pointer and feature flags.
> 
> err = nl80211_check_tid_config_supported(extack,
> 					 attrs[NL80211_TID_ATTR_CONFIG_AMPDU_CTRL],
> 					 NL80211_EXT_FEATURE_PER_TID_AMPDU_CTRL,
> 					 NL80211_EXT_FEATURE_PER_STA_AMPDU_CTRL);
> 
> since you have this code a lot?
> 
Sure, I will make that change in the next version of patchset.

Thanks,
Tamizh.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
