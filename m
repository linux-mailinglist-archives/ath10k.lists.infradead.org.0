Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 600B5973BB
	for <lists+ath10k@lfdr.de>; Wed, 21 Aug 2019 09:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgZAh0uCcfC6axEjX2j+kvVJR8SkwIi4XBF0rJS5ffQ=; b=b73O6RTC4X9vr2
	0GEORdjfmFHaLTDzRW+MY5xi02/8AXZuqmXuf77SizcKcunvIyJxkGewkkfieJL+rqkg5vgrf8IVw
	MqpZ7ZNmbMtJwu2Ez1amQS8FqgMVwc4MJgGR9cK7uaORi9y6JobkGbLQaDUwq2dqxiKgXUtygLkpO
	tlEW81IsyzWGGYS3CIOIGzhwGPZ+gm1YkfYFedJQltsc0XPtou6JE/seo+N2wvZOn84iHUYh7MIse
	8cve+BxbVFSIBgPKS8OkPV8CRBuJz3jLLUpU3Dhb+g0VqrgYEvHflJIsi+ynl98/kBZm2xSm3M9L4
	V/CBJLTvA1MzQ/JQ86pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0LFA-0002To-HG; Wed, 21 Aug 2019 07:41:20 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0LF5-0002TM-Lj
 for ath10k@lists.infradead.org; Wed, 21 Aug 2019 07:41:17 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i0LF1-0004ut-Hd; Wed, 21 Aug 2019 09:41:11 +0200
Message-ID: <d37c085c66fd4703f324c5576000a16fe469d3b1.camel@sipsolutions.net>
Subject: Re: [PATCHv6 2/9] nl80211: Add new netlink attribute for TID
 speicific retry count
From: Johannes Berg <johannes@sipsolutions.net>
To: Tamizh chelvam <tamizhr@codeaurora.org>
Date: Wed, 21 Aug 2019 09:41:10 +0200
In-Reply-To: <66f9219ed5bd03f96f23947c2bb6f990@codeaurora.org>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-3-git-send-email-tamizhr@codeaurora.org>
 <6351a05f5c205db47740116b4bec5a6476317792.camel@sipsolutions.net>
 <66f9219ed5bd03f96f23947c2bb6f990@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_004115_712996_25D9F8E8 
X-CRM114-Status: GOOD (  10.11  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Sat, 2019-08-10 at 17:36 +0530, Tamizh chelvam wrote:
> 
> > > +	[NL80211_TID_ATTR_CONFIG_RETRY] = { .type = NLA_FLAG },
> > > +	[NL80211_TID_ATTR_CONFIG_RETRY_SHORT] = NLA_POLICY_MIN(NLA_U8, 0),
> > > +	[NL80211_TID_ATTR_CONFIG_RETRY_LONG] = NLA_POLICY_MIN(NLA_U8, 0),
> > 
> > min of 0 doesn't make sense, maybe you meant 1? otherwise just don't 
> > set
> > anything here.
> > 
> The min value changed to 0 from 1 as per the previous discussions, since 
> this is a retry count and not a tx count.
> Or Shall I remove this min value to avoid the confusion ?

Yeah, I think then you should just remove the min value. Perhaps a max
value is needed, but I don't know.

> > > +			tid_conf->retry_short = -1;
> > > +
> > 
> > I guess you should document that -1 means no changes? Not sure how the
> > IEEE80211_TID_CONF_RETRY comes in, you're always setting it, so that's
> > useless - better remove that and document that -1 means no changes?
> > 
> The value -1 is to notify the driver to use default value by removing 
> peer specific retry count.

Oh. So I think that's slightly different, please document that.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
