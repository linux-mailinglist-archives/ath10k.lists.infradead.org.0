Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6672111F2BA
	for <lists+ath10k@lfdr.de>; Sat, 14 Dec 2019 17:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFh6Ta4dxQTWAABZ1Vq46x8hdwpIcAL/XXk2Vl88I78=; b=mcNwJWEavrwYNQ
	dh+8TgjWDSH4ZgoclGFTVQFuap256Lgy76g4I2GufHrBXlBYPbOrU0e++3qyKJ3K7jVQ7INGbLqIG
	QBmEDF5J+slBCpV9DFupY7EdFY9qSacafD2lm6SNUf8pg195+FNrPC4pyz7DZ2Buu0YTIi/WUeTHG
	BEL96jUjswHltmeq5tOcQ8v2I6D6ZrAFIORLsTmnBUQMP6o9weUc7/T46NnGMDVi3KTK1IJME6kVy
	HAWf6vhxJwbTp5VziL7FVAeRNafCIisMBr1XMJNDhg3z1DHxGUfcIygUG7649OcxfACG6rn6WgHx7
	JBEwykUHDHV5wCVJXc/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig9rd-0004yx-Vb; Sat, 14 Dec 2019 16:01:53 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig9rZ-0004yD-UG
 for ath10k@lists.infradead.org; Sat, 14 Dec 2019 16:01:51 +0000
Received: by mail-ot1-x343.google.com with SMTP id g18so3060316otj.13
 for <ath10k@lists.infradead.org>; Sat, 14 Dec 2019 08:01:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k5n26h5aUGynjAqQqkXs+oOQEbeY7Busq7aVKwZv934=;
 b=ODeXure6jQF/dq3PW1o9+jB3aEO0KJwMWTteksoKCh0yRp8GbygEpVabOYcB+IUfhG
 14lox5LNc8rvyY+84+Ca/HuKoMmghzfqai+GI5ouKEp5dWTKeLSW5EctgTdiGss1JBNh
 Ak7CaWvDcuoNrVcMIt1XT1wvrhVguQUSErevTkoWudsxSC/m5kTHa3P3hLDfAImr/9Yk
 D8V18JwqAxXFCm3qr4eLwiSaFhbJL7hy5oYhtbOT4TnkAehE5TqP8iJKJWQYet4U7g4K
 U9417WAZstehJf5N7r6TUzb5xZDUn0HpfHHbXPxxvQWTCTsvbPZcufkSEkzARLP+YkEY
 Iy3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k5n26h5aUGynjAqQqkXs+oOQEbeY7Busq7aVKwZv934=;
 b=gmgWd03dnAzeJ/4BWZPF2aHbCyvQ4KaRQU1REHcmSleBH3uEwsbriitsgGR/+N1NnN
 +NmLHYKkgibhjcstQK2nrByTGaYyDFGFsGgLXbOnr0g+eq+wMuut5EyE4XY0ZkTvXG7m
 xMdjiV++qPjCrRFjjDQ1bVzEguWhOh5a5GwCpqQs4gj2lZ/jMpYOaqfYqKszNXS63uFt
 fobfvL3EQK2DdVoNR47WKnZMMJRPlZnjE7CsxYsCzcdw40o1knc9+V1xm5JyQLizi5Kc
 xMgLT2H92++60Rlz5PpWUGWSaxvMwzYI1Cf3HUNpUB75u0Rygs+Sm5z7HizSEcwRsjde
 bluw==
X-Gm-Message-State: APjAAAURI5bJcsxmGhbiiQFJxfb+tgz3IqrXYYDUTC75mO84gXPuM+AB
 kyIcNYAe0zzVmaT3rUCUWSJ9tD1ckaHU6jCyKko=
X-Google-Smtp-Source: APXvYqz+H/j/TFBlFdrIIgynXYxj+oOM32TkJIpVcK9KgF3QxZVmQoV31wWAW+azEY9okJhHTF2/7JXaOXxRQchrkH4=
X-Received: by 2002:a9d:6b03:: with SMTP id g3mr1132014otp.200.1576339308565; 
 Sat, 14 Dec 2019 08:01:48 -0800 (PST)
MIME-Version: 1.0
References: <0101016eaadee57a-54500c6d-4751-423f-8bab-5acd8fad2175-000000@us-west-2.amazonses.com>
 <0101016eb61d9520-b0306a23-c9b9-4b57-b708-9f80ac47eef1-000000@us-west-2.amazonses.com>
 <CAMrEMU-VOYeHO2F5AjyWJLqgEVq5HOUHZkMJqGio1qovFPo8ug@mail.gmail.com>
 <b5404ac0-1be1-229f-a9e3-8033cdf7eea9@candelatech.com>
In-Reply-To: <b5404ac0-1be1-229f-a9e3-8033cdf7eea9@candelatech.com>
From: Justin Capella <justincapella@gmail.com>
Date: Sat, 14 Dec 2019 08:01:33 -0800
Message-ID: <CAMrEMU_2D9KzPudqVEMv-JS73JZD=hrmtf4drk41Hd1zOqS2dw@mail.gmail.com>
Subject: Re: [PATCH] ath10k: set WMI_PEER_AUTHORIZE after a firmware crash
To: Ben Greear <greearb@candelatech.com>, Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_080149_995312_DC8D78C2 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

If you have time to spare I'd be interested in hearing a little more
about your stances on this... I'm trying to learn more about this
stuff and not at all qualified to say one way or the other if it is a
good idea, but my intuition is this is going to lead to inconsistent
state/behaviors. I have been wondering if maybe this change may be
related to some of the fw crash reports coming in--- perhaps marking
the station as authorized before the fw is fully started and/or the
device is present

On Mon, Dec 2, 2019 at 10:17 AM Ben Greear <greearb@candelatech.com> wrote:
>
> On 12/1/19 8:45 PM, Justin Capella wrote:
> > Are there security concerns here? Was the peer known to be authorized
> > beforehand? Would it be better to just trash the peer in the event of
> > a fw crash?
>
> I think you should completely re-associate the peer(s) when firmware
> crashes.  The driver does not cache all possible changes, so it cannot
> exactly rebuild the config to the previous state.
>
> Thanks,
> Ben
>
> >
> > On Thu, Nov 28, 2019 at 11:46 PM Kalle Valo <kvalo@codeaurora.org> wrote:
> >>
> >> Wen Gong <wgong@codeaurora.org> wrote:
> >>
> >>> After the firmware crashes ath10k recovers via ieee80211_reconfig(),
> >>> which eventually leads to firmware configuration and including the
> >>> encryption keys. However, because there is no new auth/assoc and
> >>> 4-way-handshake, and firmware set the authorize flag after
> >>> 4-way-handshake, so the authorize flag in firmware is not set in
> >>> firmware without 4-way-handshake. This will lead to a failure of data
> >>> transmission after recovery done when using encrypted connections like
> >>> WPA-PSK. Set authorize flag after installing keys to firmware will fix
> >>> the issue.
> >>>
> >>> This was noticed by testing firmware crashing using simulate_fw_crash
> >>> debugfs file.
> >>>
> >>> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> >>>
> >>> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> >>> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
> >>
> >> Patch applied to ath-next branch of ath.git, thanks.
> >>
> >> 382e51c139ef ath10k: set WMI_PEER_AUTHORIZE after a firmware crash
> >>
> >> --
> >> https://patchwork.kernel.org/patch/11263357/
> >>
> >> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
> >>
> >
>
>
> --
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
