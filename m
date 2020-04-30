Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2AF1C0999
	for <lists+ath10k@lfdr.de>; Thu, 30 Apr 2020 23:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8u0lmKrXl6VFOFfVOqwJ6IotvZ8sK4kszLiJSa1CjDw=; b=Fgd9OM/U6lG8mY
	BOIofodP/aD00C3eiMMmIXCmibnJgovIGutIatelN51SJkX4sEUHTeAyIm8/FpauJPglPEXX/hI1V
	Dt3NvXDevvK3fMaz3u68GAI6bTTFyyg7nugsL+4iMP02it84O0O58BGjOQArrD1uOhnHQoJjcjZuk
	ii3C+c+Ae/JlS4PVfgXYiEZ7TXMlhbRzehZpXez+1zONk9e8XJEyvh/Qd7Embn0dBz/9FitkC7NQo
	FCBPHZCXzJ1hv8xhHCkObDcyOaFC/hMu8q1Tb8wr7xQuhQ3/exHjgIFn5ZBYYj75mSqh+FPDwEJx/
	SW+x3INDdqqBIy3304wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGz1-00049Z-Uo; Thu, 30 Apr 2020 21:44:39 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGyy-00048Z-AC
 for ath10k@lists.infradead.org; Thu, 30 Apr 2020 21:44:37 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MkpOZ-1ikWeE3ZgF-00mKaP for <ath10k@lists.infradead.org>; Thu, 30 Apr
 2020 23:44:34 +0200
Received: by mail-qk1-f169.google.com with SMTP id 23so7487978qkf.0
 for <ath10k@lists.infradead.org>; Thu, 30 Apr 2020 14:44:33 -0700 (PDT)
X-Gm-Message-State: AGi0PuZEmahD1iv5TeEdvGxC61UnuGvHmBoRQWPLCp3RflU8KtM+8K9K
 NPeGfPiXwIw10d9fMjuRSvIp+JVe38iy0SgopTc=
X-Google-Smtp-Source: APiQypJG61UgX2jVL3xX+glRo4MMKBEeabgc3GqvItqPEIiPOYIHTXVB0ewjzbQUwQBm4qyJilYhp6OqGHyHSKdeL8Q=
X-Received: by 2002:a37:63d0:: with SMTP id x199mr594389qkb.3.1588283072801;
 Thu, 30 Apr 2020 14:44:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200430213101.135134-1-arnd@arndb.de>
 <20200430213101.135134-5-arnd@arndb.de>
 <49831bca-b9cf-4b9a-1a60-f4289e9c83c0@embeddedor.com>
In-Reply-To: <49831bca-b9cf-4b9a-1a60-f4289e9c83c0@embeddedor.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 30 Apr 2020 23:44:16 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0y0JTrsjFx1XRh7A6YdSZ=aJ1V3-Eajfsbz3HtQOEu7A@mail.gmail.com>
Message-ID: <CAK8P3a0y0JTrsjFx1XRh7A6YdSZ=aJ1V3-Eajfsbz3HtQOEu7A@mail.gmail.com>
Subject: Re: [PATCH 04/15] ath10k: fix gcc-10 zero-length-bounds warnings
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-Provags-ID: V03:K1:WrLzwTv07NMa3I7pw7v9PleYrGuEnAy2EJdF9y0T+Oo5kMtUUPL
 dPaK8P7pEloj5lloXXKT303yubWnhSZ3I+LsZ3SNk0ghxxW0mQ8Lz+szPHuHnyySjqfmnqi
 Go4lhFZVDl+BQ/5Rg9RCz2ce1mN+W2Len47M4GZ/oRES78q9H/sTbVfibN15qnbHPsjhVYq
 0bpkojdCiQByvF55vnOQQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/3+MELssnxE=:ZqO6WKeV8kf/HQ6mCf9FP/
 JWtsVJMksCb6tDbRbe1DU4DvjUkaovE2SbQ2ZEr7dH7WtXLY9QTIHaOgJTu+l8THt4QobqHZi
 ADcwACKFGWPtt4d8imFxCO8eJ8ouCybc/MLcuXLcWFDeZ+q9tApMcWavOXH3EjZVxshdWtgba
 JIiLElmxbpLyoTC5JPIfmmpukDVgsUmbtQrFH81niLZzYcVLxUOiMvDpnwNvMeLuxzSVvucRp
 z2Xpc/MhkDWJGkZSJToBLcmIJjKS16e5sT2vU83GXMhRIZG//4+aRRs9aL1XWKEEpXrxp7MPH
 85aRIgIT2iO0Awq3taeYe5iNDvM7Z3eGfc8YIlCD7EtVftSeit4VABBu7bfYcEdT+COtFAMsh
 HIPRlTSrwt3sf1KiCSCqtbCdBBAZAW+kl5fL5syUOmQN4PdPGSSN7K7idcCBLpaTlKrPUU80J
 gDK8jQJ0RvyaNu8BgfE9bNtV+Jts0Ea90UG0w8cie17DdvKwpef/zAE9iGeJsTSPDDh0fpkC8
 i3I4EDuYH91Vt7bOe6ZALkc7K56Zm6M4cw4gIEjy6+kFtMxRr2VyiFFimok8PfMdMgu+wgyT1
 OShz9UO7OcOLUpW6wNr9kgOVnVcvdrU16qkH5CAwAPMiiZsgJdlryaOmv0YZ5Q0+5ZJeTQNKa
 LQG5qKIKUj3zsz2/gXqelLKYjBdED30NbWpt5y5VUoG1d83lbrQE/wCTh1jVIW62VLUkr5USd
 EV3YO5tlCd/+qm5G0YA14Wh/uTG4JCXi4Jec/NQ3zRVnDA1wM0tsYVO6KzvhsvlU2jMmyvCR2
 ElGtKTldKLCXtbz8Inqwhh6u2dkqhbVbpq5L+uXHh3Jm3sasMI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_144436_644804_02E2B86D 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
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
 Kees Cook <keescook@chromium.org>, Erik Stromdahl <erik.stromdahl@gmail.com>,
 Networking <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@qca.qualcomm.com>,
 Michal Kazior <michal.kazior@tieto.com>, Wen Gong <wgong@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 11:41 PM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:
> On 4/30/20 16:30, Arnd Bergmann wrote:
> > gcc-10 started warning about out-of-bounds access for zero-length
> > arrays:
> The treewide patch is an experimental change and, as this change only applies
> to my -next tree, I will carry this patch in it, so other people don't have
> to worry about this at all.

Ok, thanks!

       Arnd

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
