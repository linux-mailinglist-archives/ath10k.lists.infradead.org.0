Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D012F7BE02
	for <lists+ath10k@lfdr.de>; Wed, 31 Jul 2019 12:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o8ZuVXPja8Ctrt7Nup4P8DND75HRE4UA+4wPSq6H4ek=; b=aPzV/EKc09iTWGoMLyE3CXjD+
	EIdnRQmk7HN02jLHsDHzQhYOxt9Yl//dhQgmv/MI0aj2Vq6umCf3N+64B9Qz3M0ghjioxP664oSbl
	vxIK2bO7pKMffSd6+jcN8xn/kXmcMlBsR2WEHU7nxT2EepYUe6NduHXjIdgX6uVt2QAQb6GUGssYZ
	h14+i3mgpsFI9TF+H0kQnq4uuV2sQgs4FVzSKDRoZR/LlRvwBQR4X2U0pYAYlzU8s/AFg7KODDeUW
	qeXDj8zRmRZ2tRSFdEVZT9qL2YEapWEZTe8+O6968UIhB8XSsIqCjFzxe3W5uMX5K+1gm4f3XFu7c
	aeGe6kihQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hslXG-0001bb-33; Wed, 31 Jul 2019 10:08:42 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hslXA-0001bB-Mb
 for ath10k@lists.infradead.org; Wed, 31 Jul 2019 10:08:37 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 501CA606FC; Wed, 31 Jul 2019 10:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564567716;
 bh=tyXhWVWCnnQ7q59ZKItSqdjCqoU7pywvbQ/iseFdC7k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nWuP/cVaKx55K0647kmr1nlZS1PHVcStTYgBxRNgYJ87MahvxHHoFDpCtw0/O2hMB
 jNNqQKVN2kazN+3UgI50FWhgJaFqRK8WjZguI3Vi8NY3WVZMdBI9BWb5kVk/+MkYr9
 APWkLsx2bj6fnmMzNrVhphgmC0uRmEQVAJveXwbg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id D9CF9602F1;
 Wed, 31 Jul 2019 10:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564567715;
 bh=tyXhWVWCnnQ7q59ZKItSqdjCqoU7pywvbQ/iseFdC7k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Sy1kiXQFoAytiu0JkGcHZe6YhaRphnPqDok+ty6Pdhmpa331DRqEewa5GwKsxqso3
 UmsvkUxXc12L2hLLOAH8O3KE/igcvP/lSeBJqiDsoTY7Lrjf+lmrC1Nx6zqa05IG3Y
 wFuD/V4Ogee90blptPKv9Mn5JLlUf0aFrIsd03dk=
MIME-Version: 1.0
Date: Wed, 31 Jul 2019 15:38:35 +0530
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: Sergey Matyukevich <sergey.matyukevich.os@quantenna.com>
Subject: Re: [PATCHv6 5/9] nl80211: Add netlink attribute to configure TID
 specific tx rate
In-Reply-To: <20190711125442.unlaqjl5nnqgsbod@bars>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-6-git-send-email-tamizhr@codeaurora.org>
 <20190711125442.unlaqjl5nnqgsbod@bars>
Message-ID: <e306b921ab10228a40eb1958de8e6173@codeaurora.org>
X-Sender: tamizhr@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_030836_762595_7801D9C3 
X-CRM114-Status: GOOD (  10.09  )
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
Cc: johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-07-11 18:24, Sergey Matyukevich wrote:
>> Introduce NL80211_TID_ATTR_CONFIG_TX_RATES in nl80211_tid_attr_config
>> to accept data TID specific TX bitrate configuration
>> through NL80211_CMD_SET_TID_CONFIG command. TID for which the
>> this configuration is to be applied is passed in
>> NL80211_TID_ATTR_CONFIG_TID attribute. TX bitrate mask values passed
>> in NL80211_ATTR_TX_RATES attribute and 
>> NL80211_TID_ATTR_CONFIG_TX_RATES
>> attribute will have types of the TX rate should be applied.
>> When the user-space wants this configuration peer specific
>> rather than being applied for all the connected stations,
>> MAC address of the peer can be passed in NL80211_ATTR_MAC attribute.
>> 
>> Driver supporting this feature should advertise
>> NL80211_EXT_FEATURE_PER_TID_TX_BITRATE_MASK and supporting per-STA 
>> data TID
>> TX bitrate configuration should advertise
>> NL80211_EXT_FEATURE_PER_STA_TX_BITRATE_MASK.
>> 
>> Signed-off-by: Tamizh chelvam <tamizhr@codeaurora.org>
> 
> ...
> 
>>         if (info->attrs[NL80211_ATTR_TX_RATES]) {
>> -               err = nl80211_parse_tx_bitrate_mask(info, 
>> &params.beacon_rate);
>> +               err = nl80211_parse_tx_bitrate_mask(info, info->attrs,
>> +                                                   
>> NL80211_ATTR_TX_RATES,
>> +                                                   
>> &params.beacon_rate);
>>                 if (err)
>>                         return err;
>> 
> 
> Could you please clarify this change of nl80211_parse_tx_bitrate_mask 
> arguments.
> Unless I missing something, the appropriate change for
> nl80211_parse_tx_bitrate_mask
> is not included into this patch set.

Yeah. These arguments are missed in the function definition place:( I 
will fix this rebase issue in next version.

Thanks,
Tamizh.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
