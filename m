Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A58FC9722C
	for <lists+ath10k@lfdr.de>; Wed, 21 Aug 2019 08:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xlj6ISuOCoKZKY5G45L0UVZaO4J7AIQiWzmiywHfbUM=; b=odJDPwE/qy5dvf
	28fANtk3NplAf14RYHmEcjxwzcAN6aHvD3PNCq9fJls8/4YH6ROONmPlENWU+kj4BjBefELxhIm+7
	xJDMFFE6g/wmhcaB8fLRth4tfnJTvHo4Ys2y+i08z7hHunsqb33vCx9sDjKn1RUmjRg7HlB/HPd/n
	/S9JlLgpi0VS1iL2piLYJhDEiaaZMK2LnJjMCVWLtUe5PDtIvhywVO8eU115mwT9ltnWXKeNlPowr
	cWrSOaWofNzJ/sJ34fWX6XliLUQc6motEcqW+8azVcdQroQ8GkDgRzVr5HAIcs8BFBCrxcMfW9Nt8
	mrYVbOhZopx/624tr6rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Jyp-0006qC-NI; Wed, 21 Aug 2019 06:20:23 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Jyk-0006pr-Kr
 for ath10k@lists.infradead.org; Wed, 21 Aug 2019 06:20:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566368418; x=1597904418;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=WBkZXWKm6w/uVqLAawYFur0sYNZA3WC5C6OFy6a7AnA=;
 b=tcIk4OR6pcIeOtfGbXJrgZCopyBBMO21JhuK4scczayAwOlCmtrRQp1p
 lKR1MzN6Fbecf/bgsK2JzTXpWaAoSYfrDGs8Mgc4A/s8AKBp079DWlPbx
 sw8cB6raqsWzXCTrS5kTLUNOS5Na1ghv96ZAhu0pYiDoQAbsCQyf4m43T A=;
Subject: RE: [PATCH 4/7] ath10k: disable TX complete indication of htt for sdio
Thread-Topic: [PATCH 4/7] ath10k: disable TX complete indication of htt for
 sdio
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 21 Aug 2019 14:20:16 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 21 Aug 2019 14:20:11 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 21 Aug 2019 14:20:09 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 21 Aug 2019 14:20:09 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: =?iso-8859-1?Q?Toke_H=F8iland-J=F8rgensen?= <toke@redhat.com>, Wen Gong
 <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVV1IyEev87vakM0G2WVqJ6I35M6cFHQig
Date: Wed, 21 Aug 2019 06:20:09 +0000
Message-ID: <00992d0991704b0fae73a500bb2eb504@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-5-git-send-email-wgong@codeaurora.org>
 <87blwkt480.fsf@toke.dk>
In-Reply-To: <87blwkt480.fsf@toke.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.80.80.8]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_232018_954954_CED7AB53 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.227 listed in list.dnswl.org]
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
> Sent: Tuesday, August 20, 2019 8:24 PM
> To: Wen Gong <wgong@codeaurora.org>; ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] Re: [PATCH 4/7] ath10k: disable TX complete indication of =
htt
> for sdio
> =

> Wen Gong <wgong@codeaurora.org> writes:
> =

> > Tx complete message from firmware cost bus bandwidth of sdio, and bus
> > bandwidth is the bollteneck of throughput, it will effect the bandwidth
> > occupancy of data packet of TX and RX.
> >
> > This patch disable TX complete indication from firmware for htt data
> > packet, it results in significant performance improvement on TX path.
> =

> Wait, how does that work? Am I understanding it correctly that this
> replaces a per-packet TX completion with a periodic one sent out of
> band?
When this patch applied, firmware will not indicate tx complete for tx
Data, it only indicate HTT_T2H_MSG_TYPE_TX_CREDIT_UPDATE_IND,
This htt msg will tell how many data tx complete without status(status mayb=
e success/fail).
> =

> And could you explain what the credits thing is for, please? :)
For high latency bus chip, all the tx data's content(include ip/udp/tcp hea=
der
and payload) will be transfer to firmware's memory via bus.
And firmware has limited memory for tx data, the tx data's content must
Saved in firmware memory before it tx complete, if ath10k transfer tx
data more than the limit, firmware will occur error. The credit is used
to avoid ath10k exceed the limit.
> =

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
