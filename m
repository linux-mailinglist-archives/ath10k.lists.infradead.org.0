Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2287BDF8
	for <lists+ath10k@lfdr.de>; Wed, 31 Jul 2019 12:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QzZ3NLKtI4H6kA+XpAvpdEUlD9v7ljVYgGX+67I9AWM=; b=NEsb+VtEgC1YrhqP2t8jw3QmG
	5V2wl8fDnXIccXVpN9nskLKtdpPEGFM9A7TWuUIs+4n0wWGeBh0py0J0H+JmwrOB+SWcG8eVw94xn
	0PWZL0eltezKa6v/pyneFn/4XC25Uqq7zvWhCz+q7CFc2v0rccoIlmVO96H/6adahYlYnXAQW1Hfa
	XvwsZLeibouzvzJeKUXXEG7p+xNAiU1dP5FkZtXJCh/b4RgabipNCe+Xw7pDMizNU+aExOlCOE3mT
	XHS7GtdUGxYqCCSk5PvHjIxRN/TLKUNFvl5ZrU+bTf2XZP6rlpUEr/9btpscpXKW+Kixk9niaknqG
	c3pbsXTog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hslT6-0000DQ-Bv; Wed, 31 Jul 2019 10:04:24 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hslT1-0000D0-Qu
 for ath10k@lists.infradead.org; Wed, 31 Jul 2019 10:04:21 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DBA4A605A5; Wed, 31 Jul 2019 10:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564567458;
 bh=CdbO+zNLJrPslRH6pFLmag0YsGRHU6AwLmxkM+GsuOo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=O+DKFFOQcih27I6TyA/PRa1/O375bqjAEsaDWhkbLYGf9Ql+n2PuvjtoOLFMoHkh+
 DOABWAbI+0U/qzRoebPbX2Fc6Fkj/toaldSVAARi20qoKLy/CYN2Dy3FDYTS2+oOkp
 N5LDTneo1OXUoV6p58bvrrlnojF+T9bXJpBbnON0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 5ED43602F1;
 Wed, 31 Jul 2019 10:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564567458;
 bh=CdbO+zNLJrPslRH6pFLmag0YsGRHU6AwLmxkM+GsuOo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=O+DKFFOQcih27I6TyA/PRa1/O375bqjAEsaDWhkbLYGf9Ql+n2PuvjtoOLFMoHkh+
 DOABWAbI+0U/qzRoebPbX2Fc6Fkj/toaldSVAARi20qoKLy/CYN2Dy3FDYTS2+oOkp
 N5LDTneo1OXUoV6p58bvrrlnojF+T9bXJpBbnON0=
MIME-Version: 1.0
Date: Wed, 31 Jul 2019 15:34:18 +0530
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: Sergey Matyukevich <sergey.matyukevich.os@quantenna.com>
Subject: Re: [PATCHv6 1/9] nl80211: New netlink command for TID specific
 configuration
In-Reply-To: <20190711125111.vd4rfixmotyusuai@bars>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-2-git-send-email-tamizhr@codeaurora.org>
 <20190711125111.vd4rfixmotyusuai@bars>
Message-ID: <edc16458451377681b540553e1ddea75@codeaurora.org>
X-Sender: tamizhr@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_030419_919482_9BE9F3E0 
X-CRM114-Status: GOOD (  11.55  )
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

On 2019-07-11 18:21, Sergey Matyukevich wrote:
>> Add a new NL command, NL80211_CMD_SET_TID_CONFIG to support
>> data TID specific configuration. This per TID configurations
>> are passed in NL80211_ATTR_TID_CONFIG which is a nested
>> attribute. This patch adds support to configure per TID
>> noack policy through NL80211_TID_ATTR_CONFIG_NOACK attribute.
>> Data TID value for this configuration will be passed through
>> NL80211_TID_ATTR_CONFIG_TID attribute. When the user-space wants
>> this configuration peer specific rather than being applied for
>> all the connected stations, MAC address of the peer can be passed
>> in NL80211_ATTR_MAC attribute. This patch introduced
>> enum ieee80211_tid_conf_mask to notify the driver that which
>> configuration modified.
>> Driver supporting data TID specific noack policy configuration
>> should be advertise through NL80211_EXT_FEATURE_PER_TID_NOACK_CONFIG
>> and supporting per STA data TID noack policy configuration
>> should be advertise through NL80211_EXT_FEATURE_PER_STA_NOACK_CONFIG
>> 
>> Signed-off-by: Tamizh chelvam <tamizhr@codeaurora.org>
> 
> ...
> 
>> +static int parse_tid_conf(struct cfg80211_registered_device *rdev,
>> +                         struct nlattr *attrs[],
>> +                         struct ieee80211_tid_cfg *tid_conf,
>> +                         struct genl_info *info, const u8 *peer)
>> +{
> 
> ...
> 
> 
>> +static int nl80211_set_tid_config(struct sk_buff *skb,
>> +                                 struct genl_info *info)
>> +{
>> +       struct cfg80211_registered_device *rdev = info->user_ptr[0];
>> +       struct nlattr *attrs[NL80211_TID_ATTR_CONFIG_MAX + 1];
>> +       struct net_device *dev = info->user_ptr[1];
>> +       struct ieee80211_tid_config *tid_config;
>> +       struct nlattr *tid;
>> +       int conf_idx = 0, rem_conf;
>> +       int ret = -EINVAL;
>> +       u32 num_conf = 0;
>> +
>> +       if (!info->attrs[NL80211_ATTR_TID_CONFIG])
>> +               return -EINVAL;
>> +
>> +       if (!rdev->ops->set_tid_config)
>> +               return -EOPNOTSUPP;
>> +
>> +       nla_for_each_nested(tid, info->attrs[NL80211_ATTR_TID_CONFIG],
>> +                           rem_conf)
>> +               num_conf++;
>> +
>> +       tid_config = kzalloc(struct_size(tid_config, tid_conf, 
>> num_conf),
>> +                            GFP_KERNEL);
>> +       if (!tid_config)
>> +               return -ENOMEM;
>> +
>> +       tid_config->n_tid_conf = num_conf;
>> +
>> +       if (info->attrs[NL80211_ATTR_MAC])
>> +               tid_config->peer = 
>> nla_data(info->attrs[NL80211_ATTR_MAC]);
>> +
>> +       nla_for_each_nested(tid, info->attrs[NL80211_ATTR_TID_CONFIG],
>> +                           rem_conf) {
>> +               ret = nla_parse_nested_deprecated(attrs, 
>> NL80211_TID_ATTR_CONFIG_MAX,
>> +                                                 tid, NULL, NULL);
>> +
>> +               if (ret)
>> +                       goto bad_tid_conf;
>> +
>> +               if (!attrs[NL80211_TID_ATTR_CONFIG_TID]) {
>> +                       ret = -EINVAL;
>> +                       goto bad_tid_conf;
>> +               }
>> +
>> +               ret = parse_tid_conf(rdev, attrs,
>> +                                    &tid_config->tid_conf[conf_idx],
>> +                                    tid_config->peer);
> 
> 
> Argument 'info' is missing here from parse_tid_conf. IIUC, appropriate
> fixup is included into patch #5. So it looks like rebase issue. But it
> makes sense to fix it since this issue makes the patch set 
> non-bisectable.
> 
My bad. Yes, it is missed in the rebase. I will fix that.

Thanks,
Tamizh.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
