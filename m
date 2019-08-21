Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB02B971DB
	for <lists+ath10k@lfdr.de>; Wed, 21 Aug 2019 08:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAsrMoY3O8e8eM1MfqD1BDBUYgJ1olYPGCqSDJFncBU=; b=JoDyDOWqNkkyNl
	8J0p3US0OJAg3FnF26BLRc1Js7Q56Dx9YEobf7eB1jkqIM5Tg6e2+A9GjeXBhMb/l9zGkpTh4F6qq
	wMQMPw+dj2CNT/Y1ubb9ONuW03ln2RabZNd+f6rEZGaWpQBFc/BKM6IHOvoBm4/g1kg4Vz4/YPgud
	iOyveQ/1IfMSR7A1d5979OqoJwE72oLTUH2ZrIbVnVsmVJHF0sLddWEvhimhvDjw9lLilsd52n61E
	b40o/nGDkRC+7OEnqj77+wiSyjmmp6z4XK/qMndypwY5j6PxTYbQ7RaLJdXazUJ01pOV8BPXIaaYC
	L0HrqdkWwrhCjNgVuHsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0JgR-0004d9-E9; Wed, 21 Aug 2019 06:01:23 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0JgK-0004cj-Jd
 for ath10k@lists.infradead.org; Wed, 21 Aug 2019 06:01:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566367276; x=1597903276;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=Z4sOZIIqc3uNbOQ5iNitu/gQo/TygmuGLUxJ+qGRP88=;
 b=EogAJhdJlZV0aZuQv6ZrbtUvUTz9P3Biiwk94Xq49bDEVtWAKCkj96Px
 hjyJrV9KoRg9Y64yqNGapWOqec7wivGn0X/IcGwz4T/+hwj1aBN27xw/H
 AfFszAiPnA0IbiHNLBrPgV83pu3dB3v1PbJUEN5ug7CtfrfmPRquTErNp w=;
Subject: RE: [PATCH 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
Thread-Topic: [PATCH 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 21 Aug 2019 14:01:12 +0800
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 21 Aug 2019 14:01:07 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 21 Aug 2019 14:01:05 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 21 Aug 2019 14:01:05 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: =?iso-8859-1?Q?Toke_H=F8iland-J=F8rgensen?= <toke@redhat.com>, Wen Gong
 <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVV1IT665ZCd8Q0062/iF/q1AQPqcFGalg
Date: Wed, 21 Aug 2019 06:01:05 +0000
Message-ID: <59f668bda688419e9b6f44587d391135@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-3-git-send-email-wgong@codeaurora.org>
 <87ef1gt49d.fsf@toke.dk>
In-Reply-To: <87ef1gt49d.fsf@toke.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.80.80.8]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_230116_926999_F60D8903 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.226 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Toke
> H=F8iland-J=F8rgensen
> Sent: Tuesday, August 20, 2019 8:23 PM
> To: Wen Gong <wgong@codeaurora.org>; ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] Re: [PATCH 2/7] ath10k: change max RX bundle size from 8 to
> 32 for sdio
> =

> Wen Gong <wgong@codeaurora.org> writes:
> =

> > The max bundle size support by firmware is 32, change it from 8 to 32
> > will help performance. This results in significant performance
> > improvement on RX path.
> =

> What happens when the hardware doesn't have enough data to fill a
> bundle? Does it send a smaller one, or does it wait until it can fill
> it?
> =


The bundle is filled by firmware. =

It will not wait until it can fill it.
For example, if you do ping per second, it will have only 1 ping packet
In the bundle.

> -Toke
> =

> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
