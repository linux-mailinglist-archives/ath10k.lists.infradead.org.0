Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE39019D69
	for <lists+ath10k@lfdr.de>; Fri, 10 May 2019 14:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsB7TGyKI4jzCQQGrksmmaS6/AE8VP6bwJl7Ww5JyFQ=; b=soX6yQjkBOrDeB
	KJkj5ZtL4k70pmaci2Q3hHWgjK+ISIN1/7O4IO1JceqLbb8bV9qHqxClt0FKZOz+Wh5n0eyDa21Ad
	dYsgEvC4YoneBxpQRTR5ADGQ9u17lbUvAweXJaNGxaXqTXuzBkhFxhZJgMmMaNOnmXchuKdri1dgw
	jGVC6LGlTGp3eBJ6dHkY9BzdXcthseyfeJib/EulPZD1FnyRM3gKPDY0727wtO8KmLymygYK05U+Z
	FIHGNMJIRC3uHmXBxixf84SY4ry7FZ4+QmD3hWj2LyGEnGROr0GcEtNomlpzpy2iREbbCJ4yhZf7S
	Ewl9NCEIiafdbSEelJNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP4vx-0000yF-QG; Fri, 10 May 2019 12:47:29 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP4vt-0000xh-Ru
 for ath10k@lists.infradead.org; Fri, 10 May 2019 12:47:27 +0000
Received: by mail-wm1-f67.google.com with SMTP id 7so1398640wmo.2
 for <ath10k@lists.infradead.org>; Fri, 10 May 2019 05:47:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NfKfWn7DrHOX0wH6sUILo7m2dpOkoTaI5+lqVCQ9btI=;
 b=ea5OlnROMf2yj3dzX+6IITRy9ln4WmOB8QkZ4tEQjsK/Z4xcbE/Bl4kfjx5aWjb8Nr
 cQQKCJZ6LcQ2DQtsqCp3/TrmhqkKlu73R7AmSpyjBsTSKOnZEBcIsebQacfqm81Z92mO
 h/XY2TjuslbBXEuMblV81Z0WdiNfMhLAfcT6IcIwSUalKFX5KlqYrZ16EFq1s8wU8zeW
 Ba1HkM2KtKTS7rfy4mxUytMVPXHS1VTPFtuDK8jJ2c74bvf2aqFuP007yXDeMU/rJHyB
 8lktTsrO2KeCOUl/Uvvzyi7JnN8iiJaNmxUhPVC4phYRKUywB52M4qBrI2hfsXvyVhXn
 X8RQ==
X-Gm-Message-State: APjAAAWugRgyklVWd4op+9RLpBHj3B7yU4JQFc7Iq3MGtwAxU+BM+19E
 8lcu+5SzLnLp+MYPCn9B8wnSMWH6vH0CgAaLJy4w5w==
X-Google-Smtp-Source: APXvYqwl4fmlBHIWyOyXhNJ/RQGdsE5FAvjUfSmvQcPC2FPI3JGABeHdQ42/np61DNZCj1ClM0pGOlO00Rgfmaq8dbU=
X-Received: by 2002:a05:600c:2283:: with SMTP id
 3mr6662373wmf.125.1557492443500; 
 Fri, 10 May 2019 05:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wim_asb1MRpis39SDghBNN5SpKDvUvF6cTtwa9w8cS8_Q@mail.gmail.com>
In-Reply-To: <CAHk-=wim_asb1MRpis39SDghBNN5SpKDvUvF6cTtwa9w8cS8_Q@mail.gmail.com>
From: Adrian Chadd <adrian@freebsd.org>
Date: Fri, 10 May 2019 05:47:10 -0700
Message-ID: <CAJ-Vmonr0wbSV4hgcF=BWVM9-y3axAuTgsfys8q7cTP96FbYgQ@mail.gmail.com>
Subject: Re: ath10k: wmi service ready event not received
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_054725_904940_D34EA886 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (adrian.chadd[at]gmail.com)
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: ath10k@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, 10 May 2019 at 05:28, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> Hmm.
>
> I have a nice new laptop, and it works fine. Except today it lost
> wireless, and I have no idea why.
>
> It's not happened before (but it's fairly new and I'm actually on my
> first trip with it), so I don't know how common this is, but the
> kernel messages seem to say that the cause of it was
>
>   ath10k_pci 0000:02:00.0: wmi service ready event not received
>   ath10k_pci 0000:02:00.0: could not init core (-110)
>   ath10k_pci 0000:02:00.0: could not probe fw (-110)
>
> and then nothing works. -110 is ETIMEDOUT, fwiw.

Which NIC is it?

That's super, super early after NIC wake-up.

> Rebooting got wireless back. It's possible I could have done something
> less drastic, but I was thinking that it would be the new kernel and
> rebooted into an older version. But then rebooting into the new one
> afterwards (double-checking before starting a bisect) and it all
> worked.
>
> Is there anything I can do to debug this if it happens again?

I'd see whether it detached from the PCI bus or not - sometimes a
firmware crash super early does that. You could also rmmod reload
ath10k/ath10k_pci to see if that's enough. It's almost always enough.

We've been poking at this in FreeBSD for a bit. Some NICs don't reset
right after PCI reset is deasserted; some don't like being reset via
registers and need a PCI bus reset; some just take longer to wake-up
than the service ready event timeout is. Some just .. crash super
early :-) Someone ended up submitting a patch to my driver fork that
attempts this a few times in a loop with resets in between to ensure
it does load at boot.


-adrian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
