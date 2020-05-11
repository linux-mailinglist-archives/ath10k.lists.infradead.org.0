Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 698681CDA69
	for <lists+ath10k@lfdr.de>; Mon, 11 May 2020 14:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMmeh3XDmP5sxY728WEe0x/IwLHt7IHTFjTNXNrYYB4=; b=l7Z1N+BK48mJ1i
	XxsPtdN3L54iS0upFkjNOROobEqmWQTA3D2Ut90+/JA29ex/ss3CWRdxD/jXsaeoEuMnZskN14orZ
	qRGAUjzWhJvmE1ingEr0QrtJTOshNdVQihmGdmHaftSZsSKeqoj9MzulVET+4j/DGEHx1VR9Wyvzl
	hRyfZU5XMUyEs3oVHREVRytg4Ku4S1b4DuYB7e6LKhuf1+FS6uxnRzbKbfvn/ji6SQUaWGwKtOfgD
	+RxdrIiPPpgBmjTCY06wQlRbqRB2PpLTSEctrNhVrMP07UXPK4tjPsUrrRTETN7d2nOIr9C+hp5GL
	qnAUaVyUcgjODlIRG+kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7pA-0001pO-7Z; Mon, 11 May 2020 12:46:24 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7p6-0001on-Gj
 for ath10k@lists.infradead.org; Mon, 11 May 2020 12:46:21 +0000
Received: from mail-qt1-f176.google.com ([209.85.160.176]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mk0FM-1io5lh25Au-00kQzm for <ath10k@lists.infradead.org>; Mon, 11 May
 2020 14:46:17 +0200
Received: by mail-qt1-f176.google.com with SMTP id g16so6965198qtp.11
 for <ath10k@lists.infradead.org>; Mon, 11 May 2020 05:46:17 -0700 (PDT)
X-Gm-Message-State: AGi0PuZNokZ7seokOMKhc/sukHhA6S78Cdt81gP/QZ+mS3WjfwCO2OXD
 6MYXENZJ0YcRq1Oh226YCILJ8ebG+YhZ5Jp0ZuY=
X-Google-Smtp-Source: APiQypKSzJ/nFFOsdlvHkR+heSh3jGZQCiUPW5LDnl1OaKCDIPTPHOgosmtPR+S66nwwWCLHUzRmkNbHyt4CJv33fy8=
X-Received: by 2002:ac8:4e2c:: with SMTP id d12mr16135898qtw.204.1589201176242; 
 Mon, 11 May 2020 05:46:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200509120707.188595-1-arnd@arndb.de>
 <20200509154818.GB27779@embeddedor>
 <87zhae4r35.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87zhae4r35.fsf@kamboji.qca.qualcomm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 11 May 2020 14:46:00 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2i-jqY8FnY_Tu41VDxQGqHHKRCyJ5U-GQbNmrqa=n0GQ@mail.gmail.com>
Message-ID: <CAK8P3a2i-jqY8FnY_Tu41VDxQGqHHKRCyJ5U-GQbNmrqa=n0GQ@mail.gmail.com>
Subject: Re: [PATCH net-next 1/2] ath10k: fix gcc-10 zero-length-bounds
 warnings
To: Kalle Valo <kvalo@codeaurora.org>
X-Provags-ID: V03:K1:5C2/G86KyxtMW/YxYU8KGcVu5IoLRzuuSOhaDIFdNI1BmHpe7/O
 3bS4P03y7//QYLMdK2z92h83mmJLEBKqDE31O90DVu0io1Abr+8nhF1HVbA5B3BfBWBmET1
 9DGnFt+b5ssJsEdv90Wo82R4kVXn7BdURTC/V5ClZ0NwSB+J6Ty6kGo8qlg7Ox2iIwlbmle
 2Nv6C+tBwZ4xk/+NuOISw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oq5O4ivD7YE=:yolCg2Mc+8UdLRpvicgMFq
 W/VlSwvt4D2u9Hy6s8mRXKtieT3e5P5gvzORMxs4kd/uhYkFSm0oMuCHchmWDQVa3buWbHOM1
 k73NkvLlc8Wl/bkncwQMxn2fr3X7z9szy/B4sGi/wBOAfs7auwsn1F2npR3J87zUMZRgwhxow
 cEmsv3CQjuu8q4aVZmzX0QTSELrsO3cZ5QQaMaCy+mEedYKO4LbtAKLsFHGP2Fu9ZMfMSIbml
 yGYviU3iI5+W8dTefSHIZrxLvMGggwje9ZZev/VjgDCcAfDBFVAeCc6in2CnG0l9PfFFcTCXZ
 PzwtaZhxjw6rl1cXumu39s+vzLncsuigPwjDvVR0eoYQkmpSL3RiIjiSVt2LmEqKPlqRUZUEu
 NCnnvxM7/oenQDv5EywG9MFul/+QvwV0ZWhQbHuJhjt7YznE80KrL2yDVDR03p2zntMOk0pAO
 HyKWH/yYRjjrmvOu8yboMh1g5sWnjc0/aBCTq5AW/LALBVCSITTpJ5VeV54h9Az/aKxAJ21bp
 2ZJwydkjy+9ieinoR27C+kTMFPUX9S/FxMKV+5E1OxMpnnRba+/MQx7Rc35cunyIeOHN4Yjau
 u+0abyYS5dk2KeVWgsah62zdAijp6nJDb8DU+COeSVfOI1jPJrN8zTGl0uvxeoCFMwjvds9wL
 sjGi5GBleRN3b/EUFg2S8+OWyOlz7Z6dRvdCKBjYlVf442drMtAtxPlSZbErQnx7TTmKKWKsX
 E8wcpccnA4uqQFiXKkwNPBzOXEuGqM1P12ycslevtv5DAo8J1gmGsAlZO9X8gFMDQtG+K4HT9
 r6nRdIRL9H4jHDc9Xfhluv2sGFfliDtyJcqkd/7B2BtQdu2D0M=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_054620_848804_EADBAA9F 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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

On Mon, May 11, 2020 at 2:03 PM Kalle Valo <kvalo@codeaurora.org> wrote:
> "Gustavo A. R. Silva" <gustavoars@kernel.org> writes:

> >
> > This treewide patch no longer contains changes for ath10k. I removed them
> > since Monday (05/04/2020). So, this "Fixes" tag does not apply.

Oops, I forgot to update the changelog trext when rebasing.

> Ok, I'll remove it. Also I'll take these to my ath.git tree, not to
> net-next.

Thanks a lot!

       Arnd

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
