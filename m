Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09DB1D6143
	for <lists+ath10k@lfdr.de>; Sat, 16 May 2020 15:25:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLgew3BKO8KEiISq34hLtVKt7YWZzSDAMYPXiUB3MEI=; b=MlsfJzgBxTXxaN
	PhjpQuUbchxQODmKoZZFOz1htSWOk3LiGH0r6piTEwLi4ORsoZ8D2yziF5L0I/4CHKcO/rcIjvFu9
	9AgEppwClBmS3A/z6GIwNr+PuqAv4LOWSO498L39RVm8ex8Bke9yn0EJxID6Z7ZpIUGhvCyB07kN+
	Krqiazp+ZXBh0sNP77yuLrkk66RkpKwBbuLh3m9KUOfR1kS//r9/3TG2NjIGL4EA0H9CUbdo3gFqq
	N+hSU8Hbz1OTjwwWCSZkXcJyXJ5OVgvTdm1n54eb/lyYXFwtlWoYZPofEhnhTs28PTKdC7Iolg/QB
	kqj0dsS0Bsi86/5nyPhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZwoO-0001fz-GE; Sat, 16 May 2020 13:25:08 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZwoJ-0000m2-Ka
 for ath10k@lists.infradead.org; Sat, 16 May 2020 13:25:04 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jZwnO-00EBvX-6E; Sat, 16 May 2020 15:24:06 +0200
Message-ID: <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
From: Johannes Berg <johannes@sipsolutions.net>
To: Luis Chamberlain <mcgrof@kernel.org>, jeyu@kernel.org
Date: Sat, 16 May 2020 15:24:01 +0200
In-Reply-To: <20200515212846.1347-13-mcgrof@kernel.org>
 (sfid-20200515_233205_994687_1F26BDAB)
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 (sfid-20200515_233205_994687_1F26BDAB)
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_062503_677887_830199EE 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-wireless@vger.kernel.org, aquini@redhat.com, peterz@infradead.org,
 daniel.vetter@ffwll.ch, mchehab+samsung@kernel.org, will@kernel.org,
 bhe@redhat.com, ath10k@lists.infradead.org, tiwai@suse.de, mingo@redhat.com,
 dyoung@redhat.com, pmladek@suse.com, keescook@chromium.org, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, kvalo@codeaurora.org,
 netdev@vger.kernel.org, schlad@suse.de, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, 2020-05-15 at 21:28 +0000, Luis Chamberlain wrote:> module_firmware_crashed

You didn't CC me or the wireless list on the rest of the patches, so I'm
replying to a random one, but ...

What is the point here?

This should in no way affect the integrity of the system/kernel, for
most devices anyway.

So what if ath10k's firmware crashes? If there's a driver bug it will
not handle it right (and probably crash, WARN_ON, or something else),
but if the driver is working right then that will not affect the kernel
at all.

So maybe I can understand that maybe you want an easy way to discover -
per device - that the firmware crashed, but that still doesn't warrant a
complete kernel taint.

Instead of the kernel taint, IMHO you should provide an annotation in
sysfs (or somewhere else) for the *struct device* that had its firmware
crash. Or maybe, if it's too complex to walk the entire hierarchy
checking for that, have a uevent, or add the ability for the kernel to
print out elsewhere in debugfs the list of devices that crashed at some
point... All of that is fine, but a kernel taint?

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
