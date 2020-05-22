Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA461DDF23
	for <lists+ath10k@lfdr.de>; Fri, 22 May 2020 07:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yk3RWG1qR8bayylq7XoqF97bOmPgklI+ohvoSFbjYWc=; b=r1KbceyVKWMdrm
	8s5IzLqWG8Dreh/jXEZgaXQ6385AP14t+lSJLYqZuWo+luvSEFK3aNTu9ZNafXMcEVqZqGgk1ufIG
	xYQp9S0nV0jVKyOB8l5QODRVv0ORuUuVDiFJlS6qGDMRzzfHGjC+9OV2VQcly/W3EDJflzJ/AaroC
	e7LJAR1GyK2SxpwALnDC4yv69eD7UWohbggzIjbYect5fZkJ51tVGr7tZtmrhQh1RYqpKgrC1Q6vq
	vyJhicmBt3nQGMeJ4VUReqKYGnD6CkSx85baao9+anaUDUiSBN5QJAMj3QtZj2+b3aRpWxsQO357u
	86v5eY8/mXn8+w6FEFIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbzzi-0007lD-B7; Fri, 22 May 2020 05:13:18 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbzze-0007k2-FQ
 for ath10k@lists.infradead.org; Fri, 22 May 2020 05:13:16 +0000
Received: by mail-vs1-xe44.google.com with SMTP id 62so5412546vsi.2
 for <ath10k@lists.infradead.org>; Thu, 21 May 2020 22:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5yruC8ieiL7TwqkjRWBVMs7ndKJLZVQiNT3lPw/qOQU=;
 b=c7FN9I59JUxb822cpZyKQ+6QJIVWr664KHk0nWlcyZuW78SmKtEQN4zjlm51LdGU5g
 sPunvgH6DLTo6nxtmbrGaUgTML2n+aCw4nUAlfpYvGdCYB7ywLdfLhcrExyn+u9r1mXN
 z8vr3MLiiL76ZoBiFT4BBjkgquS482zfHeHqMY2IILiPQ1bkaX87zV7D9mMdv+sOcruL
 iQPCFTchyw9KNXeVLw3StTdhJ9JxBxlBcvhDi/FzuQj+4MY6VE2rRA7nLl9y0WrEY+O2
 vbcvKIrsZsgQEzUrlcaHhrPr2+k6mOTFQ/+QJ/gt326m8qBXUGXY/4JDjlP9Fi1ih8F8
 gOew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5yruC8ieiL7TwqkjRWBVMs7ndKJLZVQiNT3lPw/qOQU=;
 b=HsL5DVOBOOhPYafGM8CKK5POc06Ke3s7zBSXVH7LXXX/ISYVGXpUyIGDqcV2Ql4Dhq
 Q1rl6VMy9f65cMIweKbvw7vblP5F6irfa+O3sdg7xqSbVgdya8wQiHbSCY7NeZDon4Zz
 soto2/IfiEjoPJy6sd08gyDPzlFG/Uj2508wrm+HskynY64ODrO/SIXf3m7p5RaiUZME
 RuIrqeIH1qK17g018boMR6YbWeGKKtd5SJ2maHRIr7OrP351khOJppQ8YqW1EnqGa3cv
 1dUgqNjVx/aOys3JbaMRoTBouyh0Atldr3B8pA1FWq8KIHfkJNVeKAJSB32AblRBKuBY
 A3pA==
X-Gm-Message-State: AOAM532y2038EG0FhyJDpjy/VmNJ84IdS/7ANVbExRRuTNPjTzXnM4P9
 VfyDPQ+cnFOTRGugHBIUWnjWHe1PFBJPAa05Q7Y=
X-Google-Smtp-Source: ABdhPJx4y6XBRLuJWpzhO9R+CVeML+3mw72czhbPk8Iy3pZZs2RyIznn03Q1GFw5Ow9OKiHxuoaccU4/GzNA2iatku8=
X-Received: by 2002:a67:684a:: with SMTP id d71mr9346812vsc.176.1590124392684; 
 Thu, 21 May 2020 22:13:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <7306323c35e6f44d7c569e689b48f380f80da5e5.camel@sipsolutions.net>
 <CA+ASDXOg9oKeMJP1Mf42oCMMM3sVe0jniaWowbXVuaYZ=ZpDjQ@mail.gmail.com>
 <20200519140212.GT11244@42.do-not-panic.com>
 <CA+ASDXMUHOcvJ_7UWgyANMxSz15Ji7TcLDXVCtSPa+fOr=+FGA@mail.gmail.com>
 <CANUX_P1pnV46gOo0aL6QV0b+49ubB7C5nuUOuOfoT7aOM+ye9w@mail.gmail.com>
 <CA+ASDXPAVJwyThAXRQT0_ao4s1nDYOEQifxMc+JsEMa=cTEGJA@mail.gmail.com>
In-Reply-To: <CA+ASDXPAVJwyThAXRQT0_ao4s1nDYOEQifxMc+JsEMa=cTEGJA@mail.gmail.com>
From: Emmanuel Grumbach <egrumbach@gmail.com>
Date: Fri, 22 May 2020 08:12:59 +0300
Message-ID: <CANUX_P2thzh9oB4KkrAoyT6H-E6MDFUNQ_p0e9QZtScgMuKm7Q@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
To: Brian Norris <briannorris@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_221314_538934_90E5328E 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [egrumbach[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aquini@redhat.com, peterz@infradead.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>, mchehab+samsung@kernel.org,
 will@kernel.org, schlad@suse.de, bhe@redhat.com, ath10k@lists.infradead.org,
 Takashi Iwai <tiwai@suse.de>, mingo@redhat.com, dyoung@redhat.com,
 pmladek@suse.com, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, gpiccoli@canonical.com,
 Steven Rostedt <rostedt@goodmis.org>, cai@lca.pw, tglx@linutronix.de,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Kalle Valo <kvalo@codeaurora.org>,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, jeyu@kernel.org,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

>
> On Tue, May 19, 2020 at 10:37 PM Emmanuel Grumbach <egrumbach@gmail.com> wrote:
> > So I believe we already have this uevent, it is the devcoredump. All
> > we need is to add the unique id.
>
> I think there are a few reasons that devcoredump doesn't satisfy what
> either Luis or I want.
>
> 1) it can be disabled entirely [1], for good reasons (e.g., think of
> non-${CHIP_VENDOR} folks, who can't (and don't want to) do anything
> with the opaque dumps provided by closed-source firmware)

Ok, if all you're interested into is the information that this event
happen (as opposed to report a bug and providing the data), then I
agree. True, not everybody want or can enable devcoredump. I am just a
bit concerned that we may end up with two interface that notify the
same event basically. The ideal maybe would be to be able to
optionally reduce the content of the devoredump to nothing more that
is already in the dmesg output. But then, it is not what it is meant
to be: namely, a core dump..

> 2) not all drivers necessarily have a useful dump to provide when
> there's a crash; look at the rest of Luis's series to see the kinds of
> drivers-with-firmware that are crashing, some of which aren't dumping
> anything

Fair enouh.

> 3) for those that do support devcoredump, it may be used for purposes
> that are not "crashes" -- e.g., some provide debugfs or other knobs to
> initiate dumps, for diagnostic or debugging purposes

Not sure I really think we need to care about those cases, but you
already have 2 good arguments :)

>
> Brian
>
> [1] devcd_disabled
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/base/devcoredump.c?h=v5.6#n22

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
