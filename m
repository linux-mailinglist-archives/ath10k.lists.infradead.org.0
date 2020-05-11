Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D491CDA34
	for <lists+ath10k@lfdr.de>; Mon, 11 May 2020 14:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IilMF7OqNKAmCHxdtsGtzE5Jmff6KefwlI3dYLxQ7QQ=; b=ILOSeoMfafNVLP
	JnbHT6sL1Egp3x4hbADjLXl+PNU1f4mUdZRk2mfp9LXC9wNx14jWX9uwotqs/eTVAdYsD1wO0V+E/
	mLFo5b/vrRgqUWqXF8UPdNnjWXSxzDFDI+9DXY4iQEcEq6AxFyjKv3dpeqwIIq2DQVF+SUpWtcoqQ
	VbFtW+LvBkzTMkx1ljROvf1E9Xyq2SF1mbedO2sZwGRVUSzGn3WdaaKhrcY8EL7mSCzukdl2+xF9F
	xYceNeLq2oW0Lm6sDbs+4nmUL/EHnaPjQ7haze0HngrkhCJf5SdNB0WW+0iaIsWy7sBMnz+D2j15R
	cJ3j1ifACeYbu+JaPj8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7il-0003W1-0Z; Mon, 11 May 2020 12:39:47 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7ih-0003Uy-3X
 for ath10k@lists.infradead.org; Mon, 11 May 2020 12:39:44 +0000
Received: from mail-qv1-f43.google.com ([209.85.219.43]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N5VLY-1j1nnc2soM-016yNo for <ath10k@lists.infradead.org>; Mon, 11 May
 2020 14:39:38 +0200
Received: by mail-qv1-f43.google.com with SMTP id a4so1178468qvj.3
 for <ath10k@lists.infradead.org>; Mon, 11 May 2020 05:39:38 -0700 (PDT)
X-Gm-Message-State: AOAM530ONEWmQsHjvekpc0ZNfvoxCBUnK4MJl2FdzWKIIoHQFYpPYIby
 1TAjrLXgMDGNZ+ULvP/86CfgHuvMsToGwHwQUyg=
X-Google-Smtp-Source: ABdhPJy3yFsBWp1nK1ImGF0MitXLs6M20wf6JJjlnmGirp/X0hBOy7mBcRbBLXQAjFiEonL+pzBlJFwyLyikux1+b14=
X-Received: by 2002:a05:6214:2f1:: with SMTP id
 h17mr2676901qvu.222.1589200777391; 
 Mon, 11 May 2020 05:39:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200509120707.188595-1-arnd@arndb.de>
 <20200509120707.188595-2-arnd@arndb.de>
 <87v9l24qz6.fsf@kamboji.qca.qualcomm.com>
 <87r1vq4qev.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87r1vq4qev.fsf@kamboji.qca.qualcomm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 11 May 2020 14:39:21 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2kRPcpv=xR6yYvFQ5bnFbOWAzyPyzzqufyzFmk2WW2fA@mail.gmail.com>
Message-ID: <CAK8P3a2kRPcpv=xR6yYvFQ5bnFbOWAzyPyzzqufyzFmk2WW2fA@mail.gmail.com>
Subject: Re: [PATCH net-next 2/2] ath10k: fix ath10k_pci struct layout
To: Kalle Valo <kvalo@codeaurora.org>
X-Provags-ID: V03:K1:dKRY1IrCXEVuVdBTdg6S59q4ffeFpb/ALM9I5iMNUpLgmzXThu5
 iGBAqoHeWCRrp52NGYi6ugoJ0hISvW3V2x03RXCzyvYsS9EaSL71nn9EGr9w124cDWcv9nq
 L8utu0fpVXtzekuk6k+2cccl8vGPBT6QqgnNRqDFZwOA49UsjPkzJzhhEoExAczTLus+VL6
 idn8gCFSpUm9J3t0U5E/g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SIWuTdzhmVM=:xHk53JQAEddimDGcfpTw4j
 rO1dTiI9AHSNDxS4vD4TfQERDZPck8mV0H3ofzywDrbE0yEYucz92fay8ljXAlYuDwHd+CxYS
 zuPr5/zGTY1j9SXMForAd62aqcUjN/DH560EZzZDiS7JsGjUrrWcx8jqMBSf48/vhJTWm5W9h
 SGA7IPoM89B6ioW6KPBB2xAFHU7zJhRVLhkSIUlKp5Y3r7CybcKs+9NPL6YKvQbn7BxUtv4ER
 IFlFz6bGIWtcJTYCnhCw1Zq6lKBCpAIy7bBEnqC1cyuHBsvphvt9TJktnsRgsOOaJtGEZ4g6C
 ffDX0twkiA+EEubqyc/qE29VjdoTcRSjYxahZt5m0dm43zCquwtKxVeYrBHjwAFaaannyE1qh
 auk1VwhejsOSkyKKCijaaNBxT/hT/yjdSP1U41UimsIRsdns/2M5DA4iJdPCMraXstVcABWQe
 Bo7QrzUcAOfWj3awscSD11nAz8+9m1Wb6CV9M3ivn/NprNAhFTLffgBFcs5g3SLTb231P2DSO
 JnBqr1d0MigblX+3NZ6VSegu2Hwx4xdV4BlVMW9dOxH58XPEC9PhIzHRw8OANuoFGNmtyncfn
 lknPR2awQ80yq8bUlQtIXJ5LYPJkwYdIeZeRUT/CqiXMj+4kDMCGH5uGTXIX/qT2erJo1LoNf
 Fw+9fpDpw0rccRNclsQH519sYCHw6MBjQqlLPQUH40uYLbUUebaPPZ5pEjOGKJy0n8XvF216j
 +hBsSUfaJ4TVsouKf2mlRc+CZkVsrpQQ3tB25HKcQry6/NskSgTY3X88bcuOcI0fA3NXj6qKR
 uQq9r3OmvUnFZe5P8d2eSUKpjky9LgLKg/AjXpvjOL3dTW8j1A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_053943_438638_B3B6B04A 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 Networking <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 ath10k@lists.infradead.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 2:17 PM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Kalle Valo <kvalo@codeaurora.org> writes:
> >>
> >> Change it to a flexible-array member and move it last again to
> >> make it work correctly, prevent the same thing from happening
> >> again (all compilers warn about flexible-array members in the
> >> middle of a struct) and get it to build without warnings.
> >
> > Very good find, thanks! This bug would cause all sort of strange memory
> > corruption issues.
>
> This motivated me to switch to using GCC 10.x and I noticed that you had
> already upgraded crosstool so it was a trivial thing to do, awesome :)
>
> https://mirrors.edge.kernel.org/pub/tools/crosstool/
>
> I use crosstool like this using GNUmakefile:
>
> CROSS_COMPILE=/opt/cross/gcc-10.1.0-nolibc/x86_64-linux/bin/x86_64-linux-
> include Makefile

Right, I have something similar (with many more additional things)
in a local makefile here.  I mainly use that to pick the correct cross
toolchain based on ${ARCH}, and to build multiple randconfig kernels
in parallel with 'make -j${NR_CPUS}' for better CPU utilization.

> I think it's handy trick and would be good to mention that in the
> crosstool main page. That way I could just point people to the crosstool
> main page when they are using ancient compilers and would need to
> upgrade.

I actually started working on a script that I'd like to include the kernel
sources to list the installed compilers, automatically pick on that
works for the current architecture, or download one for local installation.

      Arnd

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
