Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 590D81DD6AA
	for <lists+ath10k@lfdr.de>; Thu, 21 May 2020 21:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHvyI3+7kxTF74MwOrinMiPLwb1lCBxZATkoJi0lZLg=; b=JIAxLcCAQkevVa
	sC2sG7XhVJ1zShGAAp6+Qdf9yQMWBobYvJE0564YQ7nMksAz14MK5+WmoOuPEgbcbqJfQW2zpN6VY
	AsgcpcCsecFC5Aett7ZYlrcd0AsRqJFYN49LelWXKZ49ZvnGrI6c4kM4s/GqPp/O5lQ7q0dWmf672
	vmmi82KAagaL4LboQ7HULce49kiRLGySOdSlRfZgXKLQPTQafC0tAOdQusfAsJtGNLQiMMXhcaNl3
	suuSpQWEjUQ/Q4oixW0G3vnGKYJ8TtZGKSI3kRMRnbTu2uPv1YWa94ULTbnpm8aD9dteIWW96nYDh
	JuJt2A6GMmqmK6aMDJsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqZT-0005VD-AN; Thu, 21 May 2020 19:09:35 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqZP-0005Ui-Id
 for ath10k@lists.infradead.org; Thu, 21 May 2020 19:09:33 +0000
Received: by mail-ed1-x542.google.com with SMTP id g9so7434429edr.8
 for <ath10k@lists.infradead.org>; Thu, 21 May 2020 12:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OsSPUhpJYq73nfHib5c1j0os+u2XY4uTeNRmqrqb5mQ=;
 b=CmUCxNDgIi9qt6Q51kYVv8cFYZP4VEdLcAfjYqxn2qIZvUtue5c2fyvygZREGpwI/I
 tJb6hl3rKHFKaoBTMP89eAd5lK/gvCB5918Ju881W2CrP4VbdppU15ZViA7z5qhRr6EA
 1NvHnsGrU68uXBlLj/C1Oi49N91W+p2BZiJQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OsSPUhpJYq73nfHib5c1j0os+u2XY4uTeNRmqrqb5mQ=;
 b=oOyj/upm49GvNDDvsslLDF/PWWxcFHFbMUspYf+H2CN0QLddqmdWsi2RmD/CnI1zSE
 Z9LZZJd2JGIro17RqrUOtkaCtlWsMRhs1r7LK/Q2XNurL6eSet80URfI3voHnSCD9WRb
 k4hrkK8Imc0YGak/FnN+SMaT/JIMs6y3mb5OsoRbnQbXR7q+KAiVdW5Xxl5XdSX920/7
 vR92h7wS9ydfHklngfFJnsrrGI+ntT4bCSOx9dZ2G/Sht/UZ34IAPVNB/ILIMxaL/6Cx
 QwffXjdqDWFMpxop7zVX7cBxNpO5LPNQXOZxJ9vsKZcF7sYnLhubXF+vz5tQQHcQ+NMg
 D1ug==
X-Gm-Message-State: AOAM530rQWQ4qhgabCpBSAPPgF13gIvnPzybQHs6PfBIpVaaIfc0OjPp
 0xFB1+X/bmEsfeCC5+xym1Gr6wG+K5s=
X-Google-Smtp-Source: ABdhPJx2oNhFe7ACNzYS/24jMRPwzAF0F2k7RTH9isXYImZixN2TERvqUuEUscIlk+X4BjsreJKi/g==
X-Received: by 2002:a05:6402:8c1:: with SMTP id
 d1mr126893edz.265.1590088169294; 
 Thu, 21 May 2020 12:09:29 -0700 (PDT)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id m3sm5342878ede.58.2020.05.21.12.09.29
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 12:09:29 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id l17so7764764wrr.4
 for <ath10k@lists.infradead.org>; Thu, 21 May 2020 12:09:29 -0700 (PDT)
X-Received: by 2002:a2e:9896:: with SMTP id b22mr5475234ljj.276.1590087687179; 
 Thu, 21 May 2020 12:01:27 -0700 (PDT)
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
From: Brian Norris <briannorris@chromium.org>
Date: Thu, 21 May 2020 12:01:14 -0700
X-Gmail-Original-Message-ID: <CA+ASDXPAVJwyThAXRQT0_ao4s1nDYOEQifxMc+JsEMa=cTEGJA@mail.gmail.com>
Message-ID: <CA+ASDXPAVJwyThAXRQT0_ao4s1nDYOEQifxMc+JsEMa=cTEGJA@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
To: Emmanuel Grumbach <egrumbach@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_120931_614749_57BC6E5A 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, May 19, 2020 at 10:37 PM Emmanuel Grumbach <egrumbach@gmail.com> wrote:
> So I believe we already have this uevent, it is the devcoredump. All
> we need is to add the unique id.

I think there are a few reasons that devcoredump doesn't satisfy what
either Luis or I want.

1) it can be disabled entirely [1], for good reasons (e.g., think of
non-${CHIP_VENDOR} folks, who can't (and don't want to) do anything
with the opaque dumps provided by closed-source firmware)
2) not all drivers necessarily have a useful dump to provide when
there's a crash; look at the rest of Luis's series to see the kinds of
drivers-with-firmware that are crashing, some of which aren't dumping
anything
3) for those that do support devcoredump, it may be used for purposes
that are not "crashes" -- e.g., some provide debugfs or other knobs to
initiate dumps, for diagnostic or debugging purposes

Brian

[1] devcd_disabled
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/base/devcoredump.c?h=v5.6#n22

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
