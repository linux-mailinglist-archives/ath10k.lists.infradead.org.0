Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25071D8A93
	for <lists+ath10k@lfdr.de>; Tue, 19 May 2020 00:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQJIt3ROeUCjeem3JgzxyAwPj9bXNcoNDpRE5OAh0SI=; b=pgw9msgS5foX+Z
	GndXUPiMon0u6fzu7VkIOy1/jZozSGvq++ztjUA0KVlXNj3BIpVvsdPfgI6sJ1yVsNk8OF+TSNWgL
	A93iY8LaBVXN06LYkU845VDmNNQjU1F0p/katGc110uL+n6c7RW6rtqADp8bRK09LxBknbCn0co8B
	cOp1SPTkOvn3hvWG5yPwO1NnxL9hdlJR79TdOmRwTYl1ctddQv6WlGWzTS/mRg1eaGJKV7Gggfwfo
	+q0Yi6iWAr21KL0vOUlw9FnCMXnQ1QC9rMShAN+b6oU3PDEzCPTcpDf7C1fYX7q31GuJAJXH2U5or
	wJ7jUjAxWAPsNzjindFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jao45-0002YO-6o; Mon, 18 May 2020 22:16:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jao41-0002Xu-L9
 for ath10k@lists.infradead.org; Mon, 18 May 2020 22:16:50 +0000
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DE7920657;
 Mon, 18 May 2020 22:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589840209;
 bh=llfoXoDbUl/zjbezMoNa+XpAXA1AlgWEQ8r/kkE3h8I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fT61f7mzfm0m3Lue047kumZqLTm7/F4faZnDWN1uTHo4KF1ylu3cNS6l37Ux2pkVs
 WqISsIThqmyDfpUyAxKl1tPns4HyZ/yJj9XOGNkSN4K/ORRL3UYlicHtM6m16R5Bdr
 IYOw1z50Xlbq/Ho9/HGc4JqDO87NlzZd7zynX3SQ=
Date: Mon, 18 May 2020 15:16:45 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200518151645.4693cf30@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200518212202.GR11244@42.do-not-panic.com>
References: <abf22ef3-93cb-61a4-0af2-43feac6d7930@candelatech.com>
 <20200518171801.GL11244@42.do-not-panic.com>
 <CALLGbR+ht2V3m5f-aUbdwEMOvbsX8ebmzdWgX4jyWTbpHrXZ0Q@mail.gmail.com>
 <20200518190930.GO11244@42.do-not-panic.com>
 <e3d978c8fa6a4075f12e843548d41e2c8ab537d1.camel@sipsolutions.net>
 <20200518132828.553159d9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <8d7a3bed242ac9d3ec55a4c97e008081230f1f6d.camel@sipsolutions.net>
 <20200518133521.6052042e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <d81601b17065d7dc3b78bf8d68faf0fbfdb8c936.camel@sipsolutions.net>
 <20200518134643.685fcb0e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20200518212202.GR11244@42.do-not-panic.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_151649_710865_9D446881 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, 18 May 2020 21:22:02 +0000 Luis Chamberlain wrote:
> Indeed my issue with devlink is that it did not seem generic enough for
> all devices which use firmware and for which firmware can crash. Support
> should not have to be "add devlink support" + "now use this new hook",
> but rather a very lighweight devlink_crash(device) call we can sprinkly
> with only the device as a functional requirement.

We can provide a lightweight devlink_crash(device) which only generates
the notification, without the need to register the health reporter or a
devlink instance upfront. But then we loose the ability to control the
recovery, count errors, etc. So I'd think that's not the direction we
want to go in.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
