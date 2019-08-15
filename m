Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B4C8EA47
	for <lists+ath10k@lfdr.de>; Thu, 15 Aug 2019 13:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWMgFZVwiB6r9eqhMfZCE6wnrXDkZv/HgTmD9CYKTY0=; b=FRHITRyTiN4TBW
	vp/AHG91yw4X71zW2GzUtZQF3nOgLY1HpRsWkuIiAV/s2vIKGi9N3M8EcMtcFTe2vDPbR2OCJrZrg
	f6l6YpBhxyV1tEdgV0tJpyHQIQ1ltDCmB216Gq1zsSMJS+3tOv5h5ZFthimZHxJKl6toSAYOlOHJg
	dKYehhAqfsUabvJZiN97FHiPE7s431e4g2AJBPW+6NIFmks4+vIQra7qHNcZTYFovmySRxJc9dZrq
	+nQdwE8xYGdT4jaARl+97feaEE2SNdAuN+8LY6WuvQljE6X423SE1VPdIWjdOazyYVG92Zhl0Td4n
	cJ6oH4S1ZUnCRuqXtZYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDxX-0007ng-QE; Thu, 15 Aug 2019 11:30:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDxQ-0007n2-Mw
 for ath10k@lists.infradead.org; Thu, 15 Aug 2019 11:30:18 +0000
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D423C2086C
 for <ath10k@lists.infradead.org>; Thu, 15 Aug 2019 11:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565868616;
 bh=rmJikXWf8Yvyy/IGFErgj7eYCo7HyQbskzop7BR0pbA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WqBfzQIIN9Md0wjusYn54EDLB/BeehhvpodZ+tBdBYLeQHhxJYfXmKE4VfAgIyAZC
 Sv1Yiuuiu1ZGX0Qe3aJFwsIOF2yZkfMZdPSKCv3qSKsFIxJqkxnSPHVzcslFs5zxk/
 sMZJHwAAGd08zt3ZR3fm0osRvjHMjwCfVZnM319E=
Received: by mail-qk1-f172.google.com with SMTP id g17so1492856qkk.8
 for <ath10k@lists.infradead.org>; Thu, 15 Aug 2019 04:30:15 -0700 (PDT)
X-Gm-Message-State: APjAAAUTqAHIcQUHlusX4x1mGA6vii8TAgOmY7bauJwePb+EsDGOUS7u
 O4mtK54kLKzCJCvCqBvW+OWbA08FDdY0xwI2BJ4=
X-Google-Smtp-Source: APXvYqzJ5+AXyiemOVDVKbNDs24sH0OwNkxtnQJ1h6q4Yrr6cFadh0yjPGdvGBRJ5LK2eP5Fdd1zvvyAvtO+Rqc6bhc=
X-Received: by 2002:a37:4f41:: with SMTP id d62mr3405580qkb.302.1565868615053; 
 Thu, 15 Aug 2019 04:30:15 -0700 (PDT)
MIME-Version: 1.0
References: <BYAPR02MB6006478A57983F5B4067F54392D70@BYAPR02MB6006.namprd02.prod.outlook.com>
In-Reply-To: <BYAPR02MB6006478A57983F5B4067F54392D70@BYAPR02MB6006.namprd02.prod.outlook.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Thu, 15 Aug 2019 07:30:04 -0400
X-Gmail-Original-Message-ID: <CA+5PVA47DT2vcSW2c=QBT-=ZZ9muwh5_GOehoZKo3avCerPmbA@mail.gmail.com>
Message-ID: <CA+5PVA47DT2vcSW2c=QBT-=ZZ9muwh5_GOehoZKo3avCerPmbA@mail.gmail.com>
Subject: Re: [PULL] ath10k firmware 20190808
To: Kalle Valo <kvalo@qca.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_043016_773903_9ED17AB0 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 5:56 AM Kalle Valo <kvalo@qca.qualcomm.com> wrote:
>
> Hi linux-firmware maintainers,
>
> here's a pull request to update some ath10k firmware images. Please let me know if there are any problems.
>
> Kalle
>
> The following changes since commit dff98c6c57383fe343407bcb7b6e775e0b87274f:
>
>   Merge branch 'master' of git://github.com/skeggsb/linux-firmware (2019-07-26 07:32:37 -0400)
>
> are available in the git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/linux-firmware.git ath10k-20190808
>
> for you to fetch changes up to 1f0a99f6b07e24449411ccf208836b6769a5a2a4:
>
>   ath10k: QCA9984 hw1.0: update board-2.bin (2019-08-08 12:39:06 +0300)
>
> ----------------------------------------------------------------
> Kalle Valo (8):
>       ath10k: QCA4019 hw1.0: update board-2.bin
>       ath10k: QCA6174 hw3.0: update firmware-6.bin to WLAN.RM.4.4.1-00140-QCARMSWPZ-1
>       ath10k: QCA9887 hw1.0: update firmware-5.bin to 10.2.4-1.0-00045
>       ath10k: QCA9888 hw2.0: update firmware-5.bin to 10.4-3.9.0.2-00040
>       ath10k: QCA9888 hw2.0: update board-2.bin
>       ath10k: QCA988X hw2.0: update firmware-5.bin to 10.2.4-1.0-00045
>       ath10k: QCA9984 hw1.0: update firmware-5.bin to 10.4-3.9.0.2-00046
>       ath10k: QCA9984 hw1.0: update board-2.bin
>
>  WHENCE                              |  10 +++++-----
>  ath10k/QCA4019/hw1.0/board-2.bin    | Bin 449316 -> 607304 bytes
>  ath10k/QCA6174/hw3.0/firmware-6.bin | Bin 731276 -> 700988 bytes
>  ath10k/QCA9887/hw1.0/firmware-5.bin | Bin 237660 -> 238484 bytes
>  ath10k/QCA9888/hw2.0/board-2.bin    | Bin 84928 -> 84928 bytes
>  ath10k/QCA9888/hw2.0/firmware-5.bin | Bin 688536 -> 686996 bytes
>  ath10k/QCA988X/hw2.0/firmware-5.bin | Bin 248840 -> 248984 bytes
>  ath10k/QCA9984/hw1.0/board-2.bin    | Bin 171916 -> 171916 bytes
>  ath10k/QCA9984/hw1.0/firmware-5.bin | Bin 676316 -> 674940 bytes
>  9 files changed, 5 insertions(+), 5 deletions(-)

Pulled and pushed out.  Thanks.

josh

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
