Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76947126B2E
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 19:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8a4VQ9E4YFpyDT3jh4GvBUsySj9cgMDx916ZrirE1o=; b=OLCQPI7pGzlnx6
	U77UtYkQ0Gn4maQJxAdOTA76/usp4eqrLDboSRvNhl4BpdbCUrABB4Z88FKbliOVfWRSP4nlnfIG8
	g6E8AOiCD48x5F16zwsO3AJXA4qummc3CgeY3ONA9PU5MygFXx0cNbSSmxVzy4gnR+vBplCw5w7ml
	hasPZbgEbovxw9VO/wqNTSibBrPy2hHCKFqHNg8YzC42AA3nF6gNf1NbWqQIgg/NOzbZBo1CikHwI
	k/5vweDMRYvLXTutvFeHq9KAcGNBo4wkqJWJahfpkNSQtrgRdjJp2xBsmzvjZlXjiq9uN+5MZuHCO
	4r3aU4uFrKe4EYAM4H9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0xQ-0007d4-6q; Thu, 19 Dec 2019 18:55:32 +0000
Received: from mail.w1.fi ([212.71.239.96] helo=li674-96.members.linode.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0xM-0007bs-5R
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 18:55:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by li674-96.members.linode.com (Postfix) with ESMTP id 0067C11A09;
 Thu, 19 Dec 2019 18:55:26 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at w1.fi
Received: from li674-96.members.linode.com ([127.0.0.1])
 by localhost (mail.w1.fi [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cw2naQkVIzJU; Thu, 19 Dec 2019 18:55:24 +0000 (UTC)
Received: by jm (sSMTP sendmail emulation); Thu, 19 Dec 2019 20:55:22 +0200
Date: Thu, 19 Dec 2019 20:55:22 +0200
From: Jouni Malinen <j@w1.fi>
To: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH 1/2] nl80211: vendor-cmd: qca: add dynamic SAR power limits
Message-ID: <20191219185522.GA16010@w1.fi>
References: <1576684108-30177-1-git-send-email-kvalo@codeaurora.org>
 <1576684108-30177-2-git-send-email-kvalo@codeaurora.org>
 <1576748692.7758.17.camel@realtek.com>
 <20191219154828.GA12287@w1.fi>
 <CA+ASDXMTYLGbEkBPHSqtyitMEvY5o_MjU0s+NoWdnN_ORy1gDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+ASDXMTYLGbEkBPHSqtyitMEvY5o_MjU0s+NoWdnN_ORy1gDw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_105528_470364_ABD1E171 
X-CRM114-Status: GOOD (  35.70  )
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
Cc: Pkshih <pkshih@realtek.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "kvalo@codeaurora.org" <kvalo@codeaurora.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 10:32:06AM -0800, Brian Norris wrote:
> On Thu, Dec 19, 2019 at 7:48 AM Jouni Malinen <j@w1.fi> wrote:
> > On Thu, Dec 19, 2019 at 09:44:52AM +0000, Pkshih wrote:
> > > On Wed, 2019-12-18 at 17:48 +0200, Kalle Valo wrote:
> > > > diff --git a/include/uapi/nl80211-vnd-qca.h b/include/uapi/nl80211-vnd-qca.h
> > > > + * NOTE: The authoritative place for definition of QCA_NL80211_VENDOR_ID,
> > > > + * vendor subcmd definitions prefixed with QCA_NL80211_VENDOR_SUBCMD, and
> > > > + * qca_wlan_vendor_attr is open source file src/common/qca-vendor.h in
> > > > + * git://w1.fi/srv/git/hostap.git; the values here are just a copy of that
> 
> By the way, I wonder -- why have this statement? That's not how I
> recall any other piece of kernel development ever working; upstream
> Linux defines the upstream Linux API, not some arbitrary user space
> project. This statement could be useful for saying, "don't stomp on
> those command numbers please," but the response should probably be to
> go out and define a totally new vendor ID or something. (See below.)

As far as the OUI 00:13:74 is concerned, the defined mechanism for
getting any new identifier values assigned is by getting a patch applied
into hostap.git. If another OUI is used, that can clearly use different
mechanism for this. Anyway, I'd expect the process for OUI 00:13:74 to
be the most convenient one to use.

This does not mean that there could not be new subcmds and attributes
defined as part of the upstream kernel review and those changes being
modified as part of that review. However, the final ID values for the
subcmds/attributes would happen through whatever mechanism defined for
the particular OUI. For 00:13:74, that would mean defining the
subcmds/attributes first with TBD ID values and once the definitions are
otherwise fine in the kernel patch review, contributing a patch to
hostap.git to get the identifiers assigned, updating the kernel patch to
use the assigned values, and apply it to the kernel.

> > Please note that the vendor subcmd and attributes used here are already
> > deployed and in use as a kernel interface. As such, the existing
> > attributes cannot really be modified; if anything else would be needed,
> > that would need to be defined as a new attribute and/or command.
> 
> Clarification: you're talking about out-of-tree drivers, which really
> have no relevance in upstream discussion, except possibly as examples.
> I don't think it's ever been a valid approach to dictate upstream
> kernel design based simply on "what $vendor already implemented for
> Android."

There is clearly no requirement to use an existing attribute, but since
there is such an attribute already defined, I'd claim it is perfectly
fine to consider it as an option for this. If something else is
identified to be needed, a new subcmd/attribute can obviously be
defined.

> Maybe it's a better idea to just use different command numbers (or
> vendor ID?) here, to avoid stomping on each others' implementation
> choices. Otherwise, it sounds like our only choice here is to copy
> your Android driver verbatim, or get lost.

I'd use the same OUI 00:13:74 since there is a defined process for
getting identifiers assigned from there for upstream Linux WLAN needs.
Defining other/new non-conflicting subcmds/attributes is of course fine
when needed.

> > This was discussed during the 2019 wireless workshop. The conclusion
> > from that discussion was that while there is clear need for SAR power
> > limits for various devices and multiple vendors/drivers, it did not look
> > clear that a single common interface could be defined cleanly taken into
> > account the differences in the ways vendors have designed the mechanism
> > in driver and firmware implementations. As such, vendor specific
> > commands were identified as the approach.
> 
> [citation needed]

I'm not aware of any publicly available meeting minutes that covered the
details for that discussion. My personal notes indicate that there were
at least two vendors indicating existence of vendor specific commands
for configuring SAR parameters, a discussion about the parameters used
for this being different, and a conclusion that this would be an example
kernel interface where a generic nl80211 interface may not be achievable
and a vendor specific interface would be more likely. This discussion
resulted in the discussion on how to use vendor specific nl80211
commands/attributes in upstream drivers and the eventual documentation
of that in the location you noted.

-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
