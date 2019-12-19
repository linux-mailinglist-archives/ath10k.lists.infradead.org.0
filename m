Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A281271A3
	for <lists+ath10k@lfdr.de>; Fri, 20 Dec 2019 00:41:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZytkELLu5lmMIcnAQ9iLerDCk7Zazq5ds42amEx2Q4w=; b=pHlPPIJmSJgfsl
	70DwQxJMZInM/WJMJlGc99s4/b5OapMb/9NqnYTCVI9z26DUhMQH2uuFYLSJHGLrMchm2DJHbr3lC
	YIylV073TnfPv9mzU6TNBrGWeXvjX03h+AnUt2g4ckOBmB4ZQT2D2Mn1FZ6IcXD3RWP8/5VxAmUVj
	tfrrfY1ZrEQisgE5TCMxzgmwRzJiZ7EEBayL9sQVl3x7QdK4SDJu7n2Savv7WhzP+0cDO73GRPWiA
	BrsjiNT8PVCzIB6U/Ph2QL0tp7W+o8SAV72mouDqkaBLnUFLqfMAzIp0FQj5MSyjdMidEK5WHj5UT
	1xizW5Yqns0vNpQdmCBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5Pi-0000Sc-R0; Thu, 19 Dec 2019 23:41:02 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5Pe-0000Re-O2
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 23:41:00 +0000
Received: by mail-qk1-x742.google.com with SMTP id t129so6129038qke.10
 for <ath10k@lists.infradead.org>; Thu, 19 Dec 2019 15:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uG8r1HUS9fGO+BwiDUVGLE//cKSZauHELXBsBFK0kD4=;
 b=fdF5CxkfLEktgqkt8kaiPh8D4WrWusI8mQmmsjSHoa8Aotr4lla6lsjWPnYK50jrkc
 1eDg59Pg9PbXcszaB4E0mohlBHOn91ajkWGmuAuPvAfWJdtjiQQYyUpSfE4o8AoaD1ww
 yWrnvexJ9VbEgokUhGopsfylFFLufvW5VhsHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uG8r1HUS9fGO+BwiDUVGLE//cKSZauHELXBsBFK0kD4=;
 b=VR0qaYXiI+5mGi/tsd9OuzOkOmmjWPecpryRHpuQt1SM1u3s64OFZUlFR/3N09/C3i
 LDp9vDKNMgD/pnAE4Ty5R0RWcedfPIimC2a/6NTuKrE1+YfXZZPvQEEflqOvFsfvrJsp
 72B61QAOn0waGWsByW2ml6FOwdCKSWs8bEsiOFzAUVCO6pOZi4Wm0Yf8/2Fr1gvGZkmd
 aDZqgheHL6ArrzPgeQv6EXW70J5mYel8OeFm1lPYMqLT6RvwBA5Ug1Aj7WAp+jtIfsQ9
 WZyKmAoOn6sWb0kYmwxpNjOO2SmClLO+cJcAtP8l9Ab8nSBkO05Hj1PdszEe9WXTXn9S
 Eumw==
X-Gm-Message-State: APjAAAUxfeATpsy8HE6eQ/Ej0lbvQu4/tNLdFudOP5/4KuCXKWBEokX5
 ZVqQpk29TX9CcScbHMu7cqMfl7GxmBQ=
X-Google-Smtp-Source: APXvYqzb4tKqW06cxFO9nHmZATi5v1J9sjDFx2z4FQmW25YI6f3BUXEJksSaje1kM9FYKMD4xZTklQ==
X-Received: by 2002:a05:620a:1403:: with SMTP id
 d3mr1715528qkj.243.1576798856332; 
 Thu, 19 Dec 2019 15:40:56 -0800 (PST)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com.
 [209.85.160.180])
 by smtp.gmail.com with ESMTPSA id q5sm2202394qkf.14.2019.12.19.15.40.55
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 15:40:55 -0800 (PST)
Received: by mail-qt1-f180.google.com with SMTP id k40so6581572qtk.8
 for <ath10k@lists.infradead.org>; Thu, 19 Dec 2019 15:40:55 -0800 (PST)
X-Received: by 2002:ac8:4086:: with SMTP id p6mr9221206qtl.161.1576798854764; 
 Thu, 19 Dec 2019 15:40:54 -0800 (PST)
MIME-Version: 1.0
References: <1576684108-30177-1-git-send-email-kvalo@codeaurora.org>
 <1576684108-30177-2-git-send-email-kvalo@codeaurora.org>
 <1576748692.7758.17.camel@realtek.com>
 <20191219154828.GA12287@w1.fi>
 <CA+ASDXMTYLGbEkBPHSqtyitMEvY5o_MjU0s+NoWdnN_ORy1gDw@mail.gmail.com>
 <20191219185522.GA16010@w1.fi>
In-Reply-To: <20191219185522.GA16010@w1.fi>
From: Brian Norris <briannorris@chromium.org>
Date: Thu, 19 Dec 2019 15:40:43 -0800
X-Gmail-Original-Message-ID: <CA+ASDXNOxkrZTxL0Jo4ONR2YtL83BVc_w-rBXc6ggBLdwUpDZw@mail.gmail.com>
Message-ID: <CA+ASDXNOxkrZTxL0Jo4ONR2YtL83BVc_w-rBXc6ggBLdwUpDZw@mail.gmail.com>
Subject: Re: [PATCH 1/2] nl80211: vendor-cmd: qca: add dynamic SAR power limits
To: Jouni Malinen <j@w1.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_154058_809200_0E3AD6A6 
X-CRM114-Status: GOOD (  35.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Thu, Dec 19, 2019 at 10:55 AM Jouni Malinen <j@w1.fi> wrote:
>
> On Thu, Dec 19, 2019 at 10:32:06AM -0800, Brian Norris wrote:
> > On Thu, Dec 19, 2019 at 7:48 AM Jouni Malinen <j@w1.fi> wrote:
> > > On Thu, Dec 19, 2019 at 09:44:52AM +0000, Pkshih wrote:
> > > > On Wed, 2019-12-18 at 17:48 +0200, Kalle Valo wrote:
> > > > > diff --git a/include/uapi/nl80211-vnd-qca.h b/include/uapi/nl80211-vnd-qca.h
> > > > > + * NOTE: The authoritative place for definition of QCA_NL80211_VENDOR_ID,
> > > > > + * vendor subcmd definitions prefixed with QCA_NL80211_VENDOR_SUBCMD, and
> > > > > + * qca_wlan_vendor_attr is open source file src/common/qca-vendor.h in
> > > > > + * git://w1.fi/srv/git/hostap.git; the values here are just a copy of that
> >
> > By the way, I wonder -- why have this statement? That's not how I
> > recall any other piece of kernel development ever working; upstream
> > Linux defines the upstream Linux API, not some arbitrary user space
> > project. This statement could be useful for saying, "don't stomp on
> > those command numbers please," but the response should probably be to
> > go out and define a totally new vendor ID or something. (See below.)
>
> As far as the OUI 00:13:74 is concerned, the defined mechanism for
> getting any new identifier values assigned is by getting a patch applied
> into hostap.git. If another OUI is used, that can clearly use different
> mechanism for this. Anyway, I'd expect the process for OUI 00:13:74 to
> be the most convenient one to use.

OK, I guess that makes a little more sense. But I'm not sure I agree
with the phrase "convenient."

> For 00:13:74, that would mean defining the
> subcmds/attributes first with TBD ID values and once the definitions are
> otherwise fine in the kernel patch review, contributing a patch to
> hostap.git to get the identifiers assigned, updating the kernel patch to
> use the assigned values, and apply it to the kernel.

That doesn't really sound convenient at all. But I suppose that's
beside the point, so I won't harp on that.

> > > Please note that the vendor subcmd and attributes used here are already
> > > deployed and in use as a kernel interface. As such, the existing
> > > attributes cannot really be modified; if anything else would be needed,
> > > that would need to be defined as a new attribute and/or command.
> >
> > Clarification: you're talking about out-of-tree drivers, which really
> > have no relevance in upstream discussion, except possibly as examples.
> > I don't think it's ever been a valid approach to dictate upstream
> > kernel design based simply on "what $vendor already implemented for
> > Android."
>
> There is clearly no requirement to use an existing attribute, but since
> there is such an attribute already defined, I'd claim it is perfectly
> fine to consider it as an option for this. If something else is
> identified to be needed, a new subcmd/attribute can obviously be
> defined.

Ack, thanks. I think I misinterpreted your intention to say, "I won't
take suggestions, because the attributes are already decided
elsewhere."

> > > This was discussed during the 2019 wireless workshop. The conclusion
> > > from that discussion was that while there is clear need for SAR power
> > > limits for various devices and multiple vendors/drivers, it did not look
> > > clear that a single common interface could be defined cleanly taken into
> > > account the differences in the ways vendors have designed the mechanism
> > > in driver and firmware implementations. As such, vendor specific
> > > commands were identified as the approach.
> >
> > [citation needed]
>
> I'm not aware of any publicly available meeting minutes that covered the
> details for that discussion. My personal notes indicate that there were
> at least two vendors indicating existence of vendor specific commands
> for configuring SAR parameters, a discussion about the parameters used
> for this being different, and a conclusion that this would be an example
> kernel interface where a generic nl80211 interface may not be achievable
> and a vendor specific interface would be more likely. This discussion
> resulted in the discussion on how to use vendor specific nl80211
> commands/attributes in upstream drivers and the eventual documentation
> of that in the location you noted.

Hmm, I actually think I was only around for the pre-discussion, in
which y'all suggested you might later meet to decide what eventually
became [1]. So maybe I missed some specific examples that would
provide the [citation] I requested.

That being said, I have personally fielded out-of-tree SAR
implementations from 4 different vendors:

(a) Two of them (this ath10k proposal, roughly; and Realtek's) employ
exactly the same concept: N frequency ranges, each with associated
power limits.
(b) Two of them (Intel/variant-of-iwiwifi and Marvell/mwifiex) utilize
a platform-specific (BIOS or Device Tree) mechanism for enumerating
power tables, and the nl80211 API simply takes an index N (e.g., 0 or
1), so user space can say "switch to mode N"

Unfortunately, for (b), I think there are enough reasons to think they
won't share an API similar to (a) (for Marvell, their
platform-specific tables are large undocumented blobs -- I have a
feeling if we already had a common API for (a), they *could* have
implemented some translation in a nicer way in their driver, but they
haven't chosen to do that work and probably won't be convinced to do
so).

But that still means there's some hope for (a).

Anyway, I am happy that there's a documented policy for vendor APIs
[1], and I'm happy to see this proposal out here. I just want to see a
critical eye put to this particular proposal if possible, to see if we
can improve its flexibility (either now, or in a later version of a
QCA vendor command, or even in a common nl80211-proper command).

So to put a little different spin on Pkshih's request: is there any
value in making this particular ath10k proposal a little more generic
(e.g., more granularity or flexibility in frequency bands, or more
precision in power limits), such that other vendors might implement
the same thing? Or would it be better to let each vendor implement
their similar-looking APIs (i.e., (a); or maybe even (b)) on their
own, and only later look at sharing?

Brian

[1] https://wireless.wiki.kernel.org/en/developers/documentation/nl80211#vendor-specific_api

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
