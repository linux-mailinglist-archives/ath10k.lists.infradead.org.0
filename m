Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA4A12660D
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 16:48:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWsnPFS1T0MiI3oew0HgmSQZMrvF6aqLNpnRkLDJzqk=; b=MlcP5HQimeT6dW
	ONNlu0WmQFUaxIPo61u2HjKx04pG+WPU8m/fh9SPFgQaY7iVFzj2X/TmpeqhiOrlbmjcv4Fb2HZEJ
	XuyRfQUtqRhCY5/hKJLoKIqbTajWDu09HAO2Y0Yz2ia+b0HoSOIwTTJxiDdHWR56R2tYurcvjUpXg
	ktrP5yrijmJ9R9HGrRgnT1OMALq9CdNkBRtWe865vLQNDnicl3qLfKSCxNubnvU1zi2AggBqw87E6
	wA4Zu8AohdZJDLty5I+hzxkElgTxHkFu9jWiM0EW35j13oMBErS8lMqVS/bpGmtfsJ03i5K+JFeXx
	DBhNP5xkyPx4IbHjCRKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihy2a-0008JR-CW; Thu, 19 Dec 2019 15:48:40 +0000
Received: from mail.w1.fi ([212.71.239.96] helo=li674-96.members.linode.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihy2X-0008Ic-5Q
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 15:48:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by li674-96.members.linode.com (Postfix) with ESMTP id EB48C11A09;
 Thu, 19 Dec 2019 15:48:32 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at w1.fi
Received: from li674-96.members.linode.com ([127.0.0.1])
 by localhost (mail.w1.fi [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cNJ-ZTqMTVck; Thu, 19 Dec 2019 15:48:31 +0000 (UTC)
Received: by jm (sSMTP sendmail emulation); Thu, 19 Dec 2019 17:48:28 +0200
Date: Thu, 19 Dec 2019 17:48:28 +0200
From: Jouni Malinen <j@w1.fi>
To: Pkshih <pkshih@realtek.com>
Subject: Re: [PATCH 1/2] nl80211: vendor-cmd: qca: add dynamic SAR power limits
Message-ID: <20191219154828.GA12287@w1.fi>
References: <1576684108-30177-1-git-send-email-kvalo@codeaurora.org>
 <1576684108-30177-2-git-send-email-kvalo@codeaurora.org>
 <1576748692.7758.17.camel@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576748692.7758.17.camel@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_074837_474643_5C8D0FC8 
X-CRM114-Status: GOOD (  28.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 "kvalo@codeaurora.org" <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 09:44:52AM +0000, Pkshih wrote:
> On Wed, 2019-12-18 at 17:48 +0200, Kalle Valo wrote:
> > diff --git a/include/uapi/nl80211-vnd-qca.h b/include/uapi/nl80211-vnd-qca.h
> > + * NOTE: The authoritative place for definition of QCA_NL80211_VENDOR_ID,
> > + * vendor subcmd definitions prefixed with QCA_NL80211_VENDOR_SUBCMD, and
> > + * qca_wlan_vendor_attr is open source file src/common/qca-vendor.h in
> > + * git://w1.fi/srv/git/hostap.git; the values here are just a copy of that

> > + * @QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC_BAND: Optional (u32) value to
> > + *	indicate for which band this specification applies. Valid
> > + *	values are enumerated in enum %nl80211_band (although not all
> > + *	bands may be supported by a given device). If the attribute is
> 
> Can we define separated enum to address four 5G sub-bands, likes
> 
> enum nl80211_sar_band {
> 	NL80211_SAR_BAND_2G,
> 	NL80211_SAR_BAND_5G_BAND1,
> 	NL80211_SAR_BAND_5G_BAND2,
> 	NL80211_SAR_BAND_5G_BAND3,
> 	NL80211_SAR_BAND_5G_BAND4,
> };

Please note that the vendor subcmd and attributes used here are already
deployed and in use as a kernel interface. As such, the existing
attributes cannot really be modified; if anything else would be needed,
that would need to be defined as a new attribute and/or command.

> I think this vendor command can be a generic nl80211 command, because
> we need SAR
> power limit as well.

This was discussed during the 2019 wireless workshop. The conclusion
from that discussion was that while there is clear need for SAR power
limits for various devices and multiple vendors/drivers, it did not look
clear that a single common interface could be defined cleanly taken into
account the differences in the ways vendors have designed the mechanism
in driver and firmware implementations. As such, vendor specific
commands were identified as the approach.

> > + * @QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC_POWER_LIMIT: Required (u32)
> > + *	value to specify the actual power limit value in units of 0.5
> > + *	dBm (i.e., a value of 11 represents 5.5 dBm).
> 
> Can we have higher precision, in unit of 0.125?

This existing attribute cannot be modified, i.e., a new one would need
to be added if a different precision is needed. As far as the specific
need for the vendor command defined here is concerned, 0.5 dB unit is
sufficient.

> > + * These attributes are used with %QCA_NL80211_VENDOR_SUBCMD_SET_SAR_LIMITS
> > + * and %QCA_NL80211_VENDOR_SUBCMD_GET_SAR_LIMITS.
> > + */
> > +enum qca_vendor_attr_sar_limits {
> > +	QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_INVALID = 0,
> > +	QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC = 3,
> > +	QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC_BAND = 4,
> > +	QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SPEC_POWER_LIMIT = 7,
> 
> Why these enum aren't continual?
> The reason may be because QCA_WLAN_VENDOR_ATTR_SAR_LIMITS_SELECT and something
> me
> ntioned in above paragraph but missing in this enum?

This patch does not include all the assigned values (see hostap.git for
full details if desired), i.e., all the values are actually assigned,
but the proposed use case for ath10k does not need the values that were
left out from this header file that is a copy of the authoritative
definition of the vendor attributes.

-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
