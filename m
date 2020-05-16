Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D88B1D6168
	for <lists+ath10k@lfdr.de>; Sat, 16 May 2020 15:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKlUwbnpyTB0z/JdUeS2YLPsOmEs53Woc7x8Ka0LLzs=; b=ANTnB/ya7lahg1
	TGsusKQ/V4TEyNrkGQBPPgFNdts9WtmkNl3FVhUWh6HA3zwiAxO2gc+StGk8o5JZTCN3csk6p70sL
	bIWmXrkxDqwvKO5QCmbIOo1hI+wT0Tb/xXPGfncVB9siypjfSlbIDXZEH1+foM74VqullW0GOXext
	8fS8pten4nwVhePX7CuWkxLiGU28RVVGqD4bn34Cib67xob0SbQ2iljpsrI9UVY0RcnHRbOGU3UFS
	dVUOTB4YAK3FeVAJ1oqWmyA1bkDilP68to7D1x3EL0BH0kYyDChgfqXA+N5gB7iSB6UWBPXC9YIIB
	K7uQcwjHTkHH6ODRwB3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZxE6-0001fv-Pm; Sat, 16 May 2020 13:51:42 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZxE3-0001fZ-U5
 for ath10k@lists.infradead.org; Sat, 16 May 2020 13:51:41 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jZxDN-00ECfk-5c; Sat, 16 May 2020 15:50:57 +0200
Message-ID: <7306323c35e6f44d7c569e689b48f380f80da5e5.camel@sipsolutions.net>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
From: Johannes Berg <johannes@sipsolutions.net>
To: Luis Chamberlain <mcgrof@kernel.org>, jeyu@kernel.org
Date: Sat, 16 May 2020 15:50:55 +0200
In-Reply-To: <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 (sfid-20200516_152518_154267_1B9A55D6)
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 (sfid-20200515_233205_994687_1F26BDAB)
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 (sfid-20200516_152518_154267_1B9A55D6)
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_065139_965982_EE235B36 
X-CRM114-Status: UNSURE (   8.79  )
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

On Sat, 2020-05-16 at 15:24 +0200, Johannes Berg wrote:

> Instead of the kernel taint, IMHO you should provide an annotation in
> sysfs (or somewhere else) for the *struct device* that had its firmware
> crash. Or maybe, if it's too complex to walk the entire hierarchy
> checking for that, have a uevent, or add the ability for the kernel to
> print out elsewhere in debugfs the list of devices that crashed at some

I mean sysfs, oops.


In addition, look what we have in iwl_trans_pcie_removal_wk(). If we
detect that the device is really wedged enough that the only way we can
still try to recover is by completely unbinding the driver from it, then
we give userspace a uevent for that. I don't remember exactly how and
where that gets used (ChromeOS) though, but it'd be nice to have that
sort of thing as part of the infrastructure, in a sort of two-level
notification?

Level 1: firmware crashed, but we're recovering, at least mostly, and
it's more informational

Level 2: device is wedged, going to try to recover by some more forceful
means (perhaps some devices can be power-cycled? etc.) but (more) state
would be lost in these cases?

Still don't think a kernel taint is appropriate for either of these.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
