Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0921CDBAE
	for <lists+ath10k@lfdr.de>; Mon, 11 May 2020 15:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eebMJ2zJf7ovteRHPaTJ6bA/KcU7GEwmaVCkDfnWa8=; b=AcjFLeBxy3apkg
	5Emwf/xiAgSd2IjpbSkQSgIkgkdjUWc7E768C1DQWsUyBAmN4Uusje4at+WRjHHtEPYZArLjSJ3qu
	tM4XoxxbuOcTtaFtSSveyeS1d6UekcaXlZZEE5vY2p+39an8nyvSEEb7+ZTNoglUvNGKmTET59AiC
	uavOJSghj7H0wsrQTBFvY2ZYaxWKXunfSYIqfMeoyEmztz0OGhTfjo+PdLucuz+gcZSy9sr4yJ32f
	A3SL5up7Oda5FHugP4glHjzoek+yOylQO4ZpbCkVMdnNiYSUpLcG6v/MRcLn6wCMMZs0/bJ/W6p4/
	dgKqKH06tOwA3qrOvGUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY8mX-0005Pg-1y; Mon, 11 May 2020 13:47:45 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY8mS-0005Oj-FA
 for ath10k@lists.infradead.org; Mon, 11 May 2020 13:47:42 +0000
Received: from mail-qk1-f182.google.com ([209.85.222.182]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N1Ok1-1j5vTV0T63-012r7x for <ath10k@lists.infradead.org>; Mon, 11 May
 2020 15:47:38 +0200
Received: by mail-qk1-f182.google.com with SMTP id a136so775856qkg.6
 for <ath10k@lists.infradead.org>; Mon, 11 May 2020 06:47:37 -0700 (PDT)
X-Gm-Message-State: AGi0PuYQGP4bWXi4jgiWwhv6t33X9/zj5b2Lb/Q/Klm6QE8SltsBRw52
 AtY053Pd96ua5bkuoPmzPVUdnSPwQwH842/adNg=
X-Google-Smtp-Source: APiQypKAmn8UHB9s5fZFUEek8MrcF9YGNPQ+XRrD/RRIOUQTXBl4yaQtpyq7H+rrJXTAzdartJwHwlybaBPVbygbULs=
X-Received: by 2002:a37:4e08:: with SMTP id c8mr15521244qkb.286.1589204856778; 
 Mon, 11 May 2020 06:47:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200509120707.188595-1-arnd@arndb.de>
 <20200509154818.GB27779@embeddedor>
 <87zhae4r35.fsf@kamboji.qca.qualcomm.com>
 <CAK8P3a2i-jqY8FnY_Tu41VDxQGqHHKRCyJ5U-GQbNmrqa=n0GQ@mail.gmail.com>
 <87mu6e4nyy.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87mu6e4nyy.fsf@kamboji.qca.qualcomm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 11 May 2020 15:47:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2Qu6Byo5bddd1ECwRB1qiTXpYuV55_i_2CUw+J5zqtfQ@mail.gmail.com>
Message-ID: <CAK8P3a2Qu6Byo5bddd1ECwRB1qiTXpYuV55_i_2CUw+J5zqtfQ@mail.gmail.com>
Subject: Re: [PATCH net-next 1/2] ath10k: fix gcc-10 zero-length-bounds
 warnings
To: Kalle Valo <kvalo@codeaurora.org>
X-Provags-ID: V03:K1:ueEsovMxBtcURXReUUlCDa8MwQsKxNSXsCBJlkrBASYm5++CrXD
 6I/rWJ4mxI7EHqRdZj6WXutSYIyad6nW6n2gVlorKyTwR4RPK+/+uPBaO8ujlr361b39zUx
 +OTVTqYKSvnU+BuMjbTEip4br78uWibdLAp9ND+f2ND30U2YkqhUsFm0ZNL7r9XsNQNLbsE
 2oHT5nDV4tiztoxP31TsQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eYPQHRW7Bt4=:I/bQHWQnzxVgoXK4UEyHnV
 2mj1UhvjfCTCu8LxVY9sqzR2a8raScPFRaIi0+ElVhUOIsz5eWh69LKEvk0nTr2hDFyJ3DG7C
 pb9byuB7yVUExXq2dC+6xl3uaL7VvGnTYmhGk2Nq/EC3K+yXvOzERepN3sR4yh2X/Z0W2E3Vd
 d+EUOmP+AeCq/IxexVsjF/ChS53HgHaZoTaUFMNvoFIgomkpz+iMuyonZcyAI72/5h+kAq2sA
 ra1aqfmtlMY7Yc4JPg3g8YvBTuivViN8xQY4tweiLyobXTw4ootXNPazniOPxyDAUqSc0yTfi
 JemgI9B2m9Ttntlp/JR3oLAIxGLwCZ+MvQNmbZALmcEtSyJrUgicA47iTcYRPvF3yRrYCL4yy
 aZGghhtJKCq94VSnFedt0laqswNuvrgp2Ex2OsD/wK4X5IT10b2YhuPwDKZN59yKN3WhkBWsY
 Z8h3MJ6f2C/rlvs6738sR2FfxixhRIkHxq8RsApGZXaKZG0+tNhuwVrcMbhsh/jb0K+P0wIRI
 FGYf0gPhZJFWsLrgmSr/IjMl0i5qonU5vxPT4Bs9ZhwE3tE/3KHAGqGu96a6b+Do4cdOcLE85
 5WROMrgEtT9hZ9UHrYE3YY4nfsABb25Or2EiHdC/1cIlEmM1frV34jgymYJLC8HS73ISJX/91
 w8wCXip7SKF2+iBojXmO1eeCjoH1gsE3zfORm+/RQW/lWQN8nFN30RrOcei3azXUZORglK2QA
 5j4fNR3dTKzdfqy1MLYFr1q2jDu4PtCZyiSMQlE3dZ5w4n/o/l9YTamuFolgu9fsGcyAAq6DX
 YYmumTJvHKDbvRNzSJcfPMxpNLuGhHv043W3grjAmIBrEfNatk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_064740_798269_78B434B8 
X-CRM114-Status: GOOD (  11.29  )
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Erik Stromdahl <erik.stromdahl@gmail.com>, Networking <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, ath10k@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Kazior <michal.kazior@tieto.com>, Wen Gong <wgong@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 3:10 PM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Arnd Bergmann <arnd@arndb.de> writes:
>
> > On Mon, May 11, 2020 at 2:03 PM Kalle Valo <kvalo@codeaurora.org> wrote:
> >> "Gustavo A. R. Silva" <gustavoars@kernel.org> writes:
> >
> >> >
> >> > This treewide patch no longer contains changes for ath10k. I removed them
> >> > since Monday (05/04/2020). So, this "Fixes" tag does not apply.
> >
> > Oops, I forgot to update the changelog trext when rebasing.
> >
> >> Ok, I'll remove it. Also I'll take these to my ath.git tree, not to
> >> net-next.
> >
> > Thanks a lot!
>
> Weird, I had a conflict with this patch but couldn't figure out why.
> Anyway, I fixed it in my pending branch and please double check:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=c3e5221f3c3ddabc76a33ff08440ff1dc664998d

Looks good to me. It may have been an artifact on my side, as I
have applied and later reverted Gustavo's patch on the same branch.

     Arnd

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
