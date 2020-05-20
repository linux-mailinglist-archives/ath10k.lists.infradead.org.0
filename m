Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D001A1DAD7D
	for <lists+ath10k@lfdr.de>; Wed, 20 May 2020 10:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syEl3eY+aGKWjBj0OuKvPKVG/IGQyGMUDiyzWi5pNBA=; b=JBEwKVF5R+OV3S
	+spY9E+fqKMmHx0DKWidO9e0P7r+AOB2gP+e42WWTQpjw3GODxmN3iuP4OnFmIxbUcxZr3J/QB1tD
	xviMInJOO8GF+vyWdJvONdyXlC3NU82xJDZoDDriUkEPQpXAdLkiIboe7QTpezlTqIFDtJ04Lzzxi
	hyx/wRIK8XQ2A0X0fDlzJHsflC0w9aTStzAm5V0aMbIMoe643ugHPtRWgZpHKCxpvAFwkLYirtxOE
	8+N6F0TA7YL7s0sfSPHHl7HdxerK31LzxzEQQPnSUf1X+iM3Sqr2yow/xznWLpqOIV+dStnqUeWzV
	wtTvtyoMzkCZ37TvK4Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbK9h-0006CT-Kk; Wed, 20 May 2020 08:32:49 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbK9d-0006Bj-NG
 for ath10k@lists.infradead.org; Wed, 20 May 2020 08:32:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id f4so1091042pgi.10
 for <ath10k@lists.infradead.org>; Wed, 20 May 2020 01:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LdXCTub4Z9kDMOSy0ARQdskJN6lbu+XKJdQ8G1oxt2w=;
 b=ioWZhImdJDpldT4SXJ9FDSvyluvAVlamd6Z0TPO1ZCr3WXm+XVbBYF9lRlMTGfKiKP
 fwn6gWXg/dMeYxmVmC6VCbCS813r3sF8ENw447F9cDZN7o+4jwf/ATR4C4xfJlmDxPr6
 VvHSR5zXvxwrCQdrSC+eNGxlXV8KtMFitR4k98f+Y0AFsYmu9xI/EeJblOAhUJIrQ5ti
 HTZW/41UyGeg1taV1I3LZpMGDmng67TjVIn+9Hs+NVuh39gvBCX9vwCElmWiHsoRqEtd
 arPVZp8aD9G1ASHPX4AFLYDGOMNVtJ61wePi0FfgHxsfz80qD6WMxu2KD0EaSyqsNnzG
 iDww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LdXCTub4Z9kDMOSy0ARQdskJN6lbu+XKJdQ8G1oxt2w=;
 b=uBUD38NND4SXlcIcAOq4zSSWRAflbmAFo/2gaHGA5j8lK8AJ8Jt+fRJkHdOWMsYB6u
 f9/TN7ZAN7j7RvQ1vh1ZMV3RLvydRABK1BhE/rx8VXowHzVg28DIRiUEe7sYdMcN5hUi
 sLLrjhZD2IOeujQ+LeF7UrbfYx/FnzKvMgO26Je7/oa4YvgzafpzKch4Bu0aO3rhwqv8
 HzxH6E3uQ/qzGsFXkHrSb0bEJRHLvgSsrdkeINaIjJBi5s270GVW1RXwO/1EELnuIT5x
 H9rlF6Y5Md6SzQaN3Sccf3+3nhsA19plSLU18TsxX1ZxdcB/i3ZeGvN7gOQyk+HeGyuJ
 d7tw==
X-Gm-Message-State: AOAM533mPOI1Jnz+vcwYqLDKDU1juYKk+52j86BfxUx/G/I4KbAcRtm8
 hDFWcQpWVL5QZuhOAefjvb7r4yykviRIEYu7Kcmpo+6xQYU=
X-Google-Smtp-Source: ABdhPJxyc7lGecCf47GbjoOmrlktPAZ4hEbvxvpm/3E/o9ZhCs/tLKv3L7khmH+4TruBr0WdnFND/2t3RPZbLKPE2F0=
X-Received: by 2002:a65:6251:: with SMTP id q17mr3051810pgv.4.1589963564573;
 Wed, 20 May 2020 01:32:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <7306323c35e6f44d7c569e689b48f380f80da5e5.camel@sipsolutions.net>
 <CA+ASDXOg9oKeMJP1Mf42oCMMM3sVe0jniaWowbXVuaYZ=ZpDjQ@mail.gmail.com>
 <20200519140212.GT11244@42.do-not-panic.com>
 <CA+ASDXMUHOcvJ_7UWgyANMxSz15Ji7TcLDXVCtSPa+fOr=+FGA@mail.gmail.com>
 <CANUX_P1pnV46gOo0aL6QV0b+49ubB7C5nuUOuOfoT7aOM+ye9w@mail.gmail.com>
In-Reply-To: <CANUX_P1pnV46gOo0aL6QV0b+49ubB7C5nuUOuOfoT7aOM+ye9w@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 20 May 2020 11:32:32 +0300
Message-ID: <CAHp75VfOvABsQyxdy9j-On6pTunM1+uisoWQOmoNa7wLWJ+CSw@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
To: Emmanuel Grumbach <egrumbach@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_013245_811627_414E3952 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aquini@redhat.com, "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Will Deacon <will@kernel.org>, schlad@suse.de, Baoquan He <bhe@redhat.com>,
 Brian Norris <briannorris@chromium.org>, ath10k@lists.infradead.org,
 Takashi Iwai <tiwai@suse.de>, Ingo Molnar <mingo@redhat.com>,
 Dave Young <dyoung@redhat.com>, Petr Mladek <pmladek@suse.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 gpiccoli@canonical.com, Steven Rostedt <rostedt@goodmis.org>, cai@lca.pw,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Kalle Valo <kvalo@codeaurora.org>,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 8:40 AM Emmanuel Grumbach <egrumbach@gmail.com> wrote:

> Since I have been involved quite a bit in the firmware debugging
> features in iwlwifi, I think I can give a few insights here.
>
> But before this, we need to understand that there are several sources of issues:
> 1) the firmware may crash but the bus is still alive, you can still
> use the bus to get the crash data
> 2) the bus is dead, when that happens, the firmware might even be in a
> good condition, but since the bus is dead, you stop getting any
> information about the firmware, and then, at some point, you get to
> the conclusion that the firmware is dead. You can't get the crash data
> that resides on the other side of the bus (you may have gathered data
> in the DRAM directly, but that's a different thing), and you don't
> have much recovery to do besides re-starting the PCI enumeration.
>
> At Intel, we have seen both unfortunately. The bus issues are the ones
> that are trickier obviously. Trickier to detect (because you just get
> garbage from any request you issue on the bus), and trickier to
> handle. One can argue that the kernel should *not* handle those and
> let this in userspace hands. I guess it all depends on what component
> you ship to your customer and what you customer asks from you  :).

Or the two best approaches:
1) get rid of firmware completely;
2) make it OSS (like SOF).

I think any of these is a right thing to do in long-term perspective.

How many firmwares average computer has? 50? 100? Any of them is a
burden and PITA.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
