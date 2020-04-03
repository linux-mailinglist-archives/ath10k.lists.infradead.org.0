Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA53319D6B2
	for <lists+ath10k@lfdr.de>; Fri,  3 Apr 2020 14:30:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ra9NZdl2Z++UvuM2TXyMIFeKfPjWiXcSwci4zyugjsI=; b=hjbBUKpbiso6Kd4FI2a5H4ExEF
	7kiQsdyieoXIZNvqg6agT0VyUXgqOxkOjyTOm+veVzmsPN7VPrZg3rkvUZq1/lAK9Lzi9qgMzLCft
	TPJDDWfVHofpZHdHpNjH9AMkJZDDdPPeku/AYDEfaS2Mf9Xd3JybrxIe2t0q3nslrO2Kl5s+Z/8Ms
	3pkTDrrPNOQwThsTW9DAxQL7NPLntw0XyfDjR5zPCGwjJTV4XM5WifIYaqsOV6X3o3BWy4kUblcot
	EqtunoPznQ/0tMnOGAtvelV1t89k4NgooHX29+qpBvY76nwDayB+WDy2n3C3ROTc0uxI9KJei0Y0F
	Gpu9J9wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKLSh-0002kt-86; Fri, 03 Apr 2020 12:30:15 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKLSV-00022x-AN
 for ath10k@lists.infradead.org; Fri, 03 Apr 2020 12:30:05 +0000
Received: by mail-qt1-x831.google.com with SMTP id y25so6205942qtv.7
 for <ath10k@lists.infradead.org>; Fri, 03 Apr 2020 05:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=K5st7TTv7ypn0TqsmSu3e1kqOOtwktxm/JZXYB1lC5E=;
 b=fJj6ATH7SZOfo1349CNqaTV1nNZs0RbG1joZCj8urxBJzEArbmgOLNPZOxFbgTaypY
 BVsnoFmzeVnKPGv+SS6+rCiGDzbt9jpzA4NCT9L8mbRvz0g9cSQH8/IiOikI6fP4K6s8
 wLHf/fjwd8972RgGBLSyvL7JB5dsGdgQuKABuSfmfke3NGMcwfVqArqAMDM1Fe9I1JVU
 P7fgAA6SIre6m/x8nXp4q4C6Y2PxClEco1rxj0cCtgQBETD8nL9EKU2BJ3/JsJXeRSm5
 61FfNKx9iPcFpFoJyDR9FAw8utf1HZy5EcnQoc4D31Dbhil/h3htK5tSera/vrS8A7nj
 AN3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=K5st7TTv7ypn0TqsmSu3e1kqOOtwktxm/JZXYB1lC5E=;
 b=M7diduQTUniWFHRve4HnE1yfawUxkXtNj4efBet0y14hDFtaaN7Zj85h1ZHf2dKRP6
 5fW/xtNiLPixClLdOuABQ9rl6VfqTv30G0TOW2mGNpJDdD33LBG5V83IbRAZde1TKmG0
 lj9enm29ii2HwDEZbRBwAgzLs2yziVBaF+cx63gTxkbgTbwJrjvGtkrBKUxlKSM6TL4o
 KuL/cFNHvx77NOoHHAxquUSXQf2dZgammNKtmjyXH4rTsH9eYWJ9cVE4hswI3k5YhymB
 zlOW0Yef24CzdFK4TS3UJEcsR840MOeI4bqeY5AQdyIUvFG3kWR8q+V1+wZbAqtkx58m
 8gCA==
X-Gm-Message-State: AGi0PuaFAhkwScizXMZg1KvWabu12xbes3YJdGELq1IRJcjyGyvskH3+
 AoTI7duodmbB9hhTC9ibgRLiVLNazBX29iRWettnXjixRG4=
X-Google-Smtp-Source: APiQypKWA7qOrT9LbekI02Ml44h+wzlv6YzV8GziQnDPJDEEDTxTSEAJRv8EHvFVrUJnXs/dj0KiJ2h3rqvQjS3K5IY=
X-Received: by 2002:ac8:22b9:: with SMTP id f54mr7938127qta.173.1585917001413; 
 Fri, 03 Apr 2020 05:30:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAJoWQ3eRgEv0x=t0=2nHqyY5FkCpzWz4A6qgFPN3RuJ3cDjFug@mail.gmail.com>
In-Reply-To: <CAJoWQ3eRgEv0x=t0=2nHqyY5FkCpzWz4A6qgFPN3RuJ3cDjFug@mail.gmail.com>
From: Bogdan Dziedzic <bogibzik@gmail.com>
Date: Fri, 3 Apr 2020 23:30:14 +1100
Message-ID: <CAJoWQ3dPC9=xHrtOjSj6BMQwZVvRO1xrtrfgja76FYmrxywBeA@mail.gmail.com>
Subject: Re: failed to build .ko for ath10k against master
To: ath10k@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_053003_399327_A1E65F46 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:831 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bogibzik[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi,

performed steps:
git show
commit 5bc4a8084c1f5919707053b991fa2700e3d37635 (HEAD, tag:
 ath-202003221023, origin/master, origin/HEAD, ma


# make ARCH=arm64
CROSS_COMPILE=../../toolchains/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/aarch64-linux-gnu-
 defconfig

# make ARCH=arm64
CROSS_COMPILE=../../toolchains/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/aarch64-linux-gnu-
 scripts prepare

# make ARCH=arm64
CROSS_COMPILE=../../toolchains/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/aarch64-linux-gnu-
-C . M=drivers/net/wireless/ath
...
  LD [M]  drivers/net/wireless/ath/ath10k/ath10k_snoc.o
  MODPOST 4 modules
ERROR: "qmi_add_lookup"
[drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
ERROR: "qmi_handle_release"
[drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
ERROR: "qmi_txn_init" [drivers/net/wireless/ath/ath10k/ath10k_snoc.ko]
undefined!
ERROR: "qmi_txn_cancel"
[drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
ERROR: "qmi_txn_wait" [drivers/net/wireless/ath/ath10k/ath10k_snoc.ko]
undefined!
ERROR: "qmi_send_request"
[drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
ERROR: "qcom_scm_assign_mem"
[drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
ERROR: "qmi_handle_init"
[drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
ERROR: "qmi_response_type_v01_ei"
[drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
ERROR: "is_vmalloc_addr"
[drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
ERROR: "is_vmalloc_addr"
[drivers/net/wireless/ath/ath10k/ath10k_pci.ko] undefined!
ERROR: "is_vmalloc_addr"
[drivers/net/wireless/ath/ath10k/ath10k_core.ko] undefined!
scripts/Makefile.modpost:93: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1596: recipe for target 'modules' failed
make: *** [modules] Error 2
make: Leaving directory

Similar the build fails with my 'oldconfig' from 5.5.0 and all options
selected as 'no' or default.

I've bumped here as I'm after Erik Stromdahl's work on QCA9377 sdio
with the latest commit  6e51b0e4913ca2c93059f73ca477ca30ea95b6a0

Cheers,
Bo


On Fri, 3 Apr 2020 at 23:27, Bogdan Dziedzic <bogibzik@gmail.com> wrote:
>
> performed steps:
> git show
> commit 5bc4a8084c1f5919707053b991fa2700e3d37635 (HEAD, tag:
>  ath-202003221023, origin/master, origin/HEAD, ma
>
> # make ARCH=arm64 CROSS_COMPILE=../../toolchains/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/aarch64-linux-gnu-  defconfig
>
> # make ARCH=arm64 CROSS_COMPILE=../../toolchains/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/aarch64-linux-gnu-  scripts prepare
>
> # make ARCH=arm64 CROSS_COMPILE=../../toolchains/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/aarch64-linux-gnu- -C . M=drivers/net/wireless/ath
> ...
>   LD [M]  drivers/net/wireless/ath/ath10k/ath10k_snoc.o
>   MODPOST 4 modules
> ERROR: "qmi_add_lookup" [drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
> ERROR: "qmi_handle_release" [drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
> ERROR: "qmi_txn_init" [drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
> ERROR: "qmi_txn_cancel" [drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
> ERROR: "qmi_txn_wait" [drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
> ERROR: "qmi_send_request" [drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
> ERROR: "qcom_scm_assign_mem" [drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
> ERROR: "qmi_handle_init" [drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
> ERROR: "qmi_response_type_v01_ei" [drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
> ERROR: "is_vmalloc_addr" [drivers/net/wireless/ath/ath10k/ath10k_snoc.ko] undefined!
> ERROR: "is_vmalloc_addr" [drivers/net/wireless/ath/ath10k/ath10k_pci.ko] undefined!
> ERROR: "is_vmalloc_addr" [drivers/net/wireless/ath/ath10k/ath10k_core.ko] undefined!
> scripts/Makefile.modpost:93: recipe for target '__modpost' failed
> make[1]: *** [__modpost] Error 1
> Makefile:1596: recipe for target 'modules' failed
> make: *** [modules] Error 2
> make: Leaving directory
>
> Similar the build fails with my 'oldconfig' from 5.5.0 and all options selected as 'no' or default.
>
> I've bumped here as I'm after Erik Stromdahl's work on QCA9377 sdio with the latest commit  6e51b0e4913ca2c93059f73ca477ca30ea95b6a0
>
> Cheers,
> Bo
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
