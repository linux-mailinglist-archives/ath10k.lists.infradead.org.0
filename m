Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B60973BC
	for <lists+ath10k@lfdr.de>; Wed, 21 Aug 2019 09:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4InAfIu7cUOmD7oliduGGRkMBGBCmPb8aZWm8dCFWtg=; b=PV2hoD9rghCjh2
	sL4bsu3l57Nd2CydSNbXCg3IrDtAX0+AvCY7BeqS22aoJctafp/7uEemzMizpSLT7r/nNAN7Rf1gO
	yJgDIlJkYkitjuRc/taN76EhL8VUJUTfQ52YyQi3wQbVkPMqdF83vf3otx2Ysa4vOt+TLY09f/jWM
	bG8oPdhWiJZWezen0tV/rXoJE6cGODE48h/3BokhMCY9fog8nxKSKrniS/1HMuX1ygAFDsvFC/bOC
	LUiCAL9YRpBNjSln218tJQMGGScp1pyTGl4iMDI30sP0ZV16KMZYraVpgbjG/Zc+WQoTWUzgHYrX9
	VeC0Dy6SsqaYPGvvpf7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0LG1-0002aX-0U; Wed, 21 Aug 2019 07:42:13 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0LFw-0002Zp-0S
 for ath10k@lists.infradead.org; Wed, 21 Aug 2019 07:42:09 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i0LFu-0004x4-OY; Wed, 21 Aug 2019 09:42:06 +0200
Message-ID: <82bff92e6fa9ccc968566d30195cd3cd29e17a1d.camel@sipsolutions.net>
Subject: Re: [PATCHv6 1/9] nl80211: New netlink command for TID specific
 configuration
From: Johannes Berg <johannes@sipsolutions.net>
To: Tamizh chelvam <tamizhr@codeaurora.org>
Date: Wed, 21 Aug 2019 09:42:05 +0200
In-Reply-To: <be096df17632b1a71441a23a373682bf@codeaurora.org>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-2-git-send-email-tamizhr@codeaurora.org>
 <ea1f9969b52fed2da8b0e88ed8b06527bfc272aa.camel@sipsolutions.net>
 <be096df17632b1a71441a23a373682bf@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_004208_049620_B5B3EDE4 
X-CRM114-Status: UNSURE (   9.81  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Sat, 2019-08-10 at 18:10 +0530, Tamizh chelvam wrote:
> On 2019-07-31 14:55, Johannes Berg wrote:
> > On Tue, 2019-06-18 at 10:57 +0530, Tamizh chelvam wrote:
> > >  /**
> > > + * enum nl80211_tid_config - TID config state
> > > + * @NL80211_TID_CONFIG_DEFAULT: Default config for the TID
> > > + * @NL80211_TID_CONFIG_ENABLE: Enable config for the TID
> > > + * NL80211_TID_CONFIG_DISABLE: Disable config for the TID
> > > + */
> > > +enum nl80211_tid_config {
> > > +	NL80211_TID_CONFIG_DEFAULT,
> > > +	NL80211_TID_CONFIG_ENABLE,
> > > +	NL80211_TID_CONFIG_DISABLE,
> > > +};
> > 
> > Hmm. Looking at this in more detail in patch 3, I don't understand.
> > 
> > How is DEFAULT different from "attribute not present", i.e. "no
> > changes"?
> > 
> This DEFAULT is used to notify the driver to use default configuration 
> value of driver/vif.
> This will be used when the attribute is not present.

Hm, but then why is it valid in the nl80211 attribute? That seems
confusing. Maybe there should rather be a validity bit somewhere in the
internal API, so the nl82011 API doesn't need to be concerned with this?

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
