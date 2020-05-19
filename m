Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24311D8CDF
	for <lists+ath10k@lfdr.de>; Tue, 19 May 2020 03:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=riTqXY6By2V6JjCa6w+MEsUbKk4jElT5tnhuUAcx3WY=; b=j3v6NiRTj//mBb
	50cSb6AgUOysWtwjAHylvYMZhbe2tLEU28TofnQZxlL5ew2pyjPNTrpR7Qz/yxIJr6yVXfJiJ2Kfi
	cIfCMvWD9dlX0RO+tTSooK4j97K4giS7bMwIpsk9uTuSbs0/y8srbhZpk49WCqX7v3Cy5F1sGU35w
	Mus46yIW1DRP0MvOE4gGK5b66enIonujtnGMVWTd4+y0uA6bgVIJ+ME7oMU/wSUrhR1phKmLSbsPd
	o0qmr0f/27my+9HLacBqze8k8gx5NMr+hDaYJ9UhONEH5rH5sud5H9qdjxphU79wakEuwfkIOt8uk
	phizIXEgKW7nPtPyfXLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaqhP-0007zm-Ip; Tue, 19 May 2020 01:05:39 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaqhL-0007z2-IT
 for ath10k@lists.infradead.org; Tue, 19 May 2020 01:05:37 +0000
Received: by mail-pl1-f195.google.com with SMTP id u22so4925049plq.12
 for <ath10k@lists.infradead.org>; Mon, 18 May 2020 18:05:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=K9aPjeV4NwTg9tl9jzb0nJX+9U/z5KY8RnyA4zhH0iQ=;
 b=fGHOHzsg4ypCZnref56JoLPuGwluWZXjXLXTk9jUa0BC3xyMG+l2S9tdQveEA0QTAr
 zTIGcSIP2N7aoaaEfwUPcx39wWiJi1pLwQsVpTjU1srMLcanvleMPHw+zzjiGu1TDHMm
 OON7Z3miNBy7sLfKqZSmoNQL8JRJ7HHtUmop9s0yIhtjTnTWc54keVrgLkc1jSq0wjK6
 RqhyYIRkz+D1wS76W+SSRR7zQs9oZ9LdYqVkHjQDRzhgIk6LzfCqbyyKE98eqZ09dz+I
 ryS2IqskI0NtJZIicPovL1JTdfy83L0EJA4IVZPbarkbHkwWvdBLdN8A178M7ThIznmc
 5cFQ==
X-Gm-Message-State: AOAM53140SA5MwM6aMPxyNTsJP1SGGUR/sltzONf5cx/gvEsnWlMgu0T
 yng6PujzExT1S8h+9Ac7rPc=
X-Google-Smtp-Source: ABdhPJyqsiuMQQ8IrtPAOnXbAbCthJOk4QcQ7xbbMAx9MJhxdNXa/AIAheZ1W7B7s3zmFmh4S/9Rmg==
X-Received: by 2002:a17:90a:b00d:: with SMTP id
 x13mr720432pjq.11.1589850333253; 
 Mon, 18 May 2020 18:05:33 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id l4sm8666640pgo.92.2020.05.18.18.05.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 18:05:31 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 0ED2640B24; Tue, 19 May 2020 01:05:31 +0000 (UTC)
Date: Tue, 19 May 2020 01:05:30 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200519010530.GS11244@42.do-not-panic.com>
References: <CALLGbR+ht2V3m5f-aUbdwEMOvbsX8ebmzdWgX4jyWTbpHrXZ0Q@mail.gmail.com>
 <20200518190930.GO11244@42.do-not-panic.com>
 <e3d978c8fa6a4075f12e843548d41e2c8ab537d1.camel@sipsolutions.net>
 <20200518132828.553159d9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <8d7a3bed242ac9d3ec55a4c97e008081230f1f6d.camel@sipsolutions.net>
 <20200518133521.6052042e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <d81601b17065d7dc3b78bf8d68faf0fbfdb8c936.camel@sipsolutions.net>
 <20200518134643.685fcb0e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20200518212202.GR11244@42.do-not-panic.com>
 <20200518151645.4693cf30@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518151645.4693cf30@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_180536_029870_FDDA1841 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, aquini@redhat.com,
 peterz@infradead.org, daniel.vetter@ffwll.ch, mchehab+samsung@kernel.org,
 will@kernel.org, Ben Greear <greearb@candelatech.com>, bhe@redhat.com,
 ath10k@lists.infradead.org, Steve deRosier <derosier@gmail.com>,
 Takashi Iwai <tiwai@suse.de>, mingo@redhat.com, dyoung@redhat.com,
 pmladek@suse.com, keescook@chromium.org, arnd@arndb.de, gpiccoli@canonical.com,
 rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, Johannes Berg <johannes@sipsolutions.net>,
 Kalle Valo <kvalo@codeaurora.org>,
 Network Development <netdev@vger.kernel.org>, schlad@suse.de,
 LKML <linux-kernel@vger.kernel.org>, jeyu@kernel.org,
 akpm@linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 03:16:45PM -0700, Jakub Kicinski wrote:
> On Mon, 18 May 2020 21:22:02 +0000 Luis Chamberlain wrote:
> > Indeed my issue with devlink is that it did not seem generic enough for
> > all devices which use firmware and for which firmware can crash. Support
> > should not have to be "add devlink support" + "now use this new hook",
> > but rather a very lighweight devlink_crash(device) call we can sprinkly
> > with only the device as a functional requirement.
> 
> We can provide a lightweight devlink_crash(device) which only generates
> the notification, without the need to register the health reporter or a
> devlink instance upfront. But then we loose the ability to control the
> recovery, count errors, etc. So I'd think that's not the direction we
> want to go in.

Care to show me what the diff stat for a non devlink driver would look
like? Just keep in mind this taint is 1 line addition. Granted, if we
can use SmPL grammar to automate addition of an initial framework to a
driver that'd be great, but since the device addition is subsystem
specific (device_add() and friends), I don't suspect this will be easily
automated.

   Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
