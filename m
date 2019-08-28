Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39799F95E
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 06:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNIwlpbSqq+RutrN4ht335ZOAz3F6dteQ3ou4VADN+I=; b=BNA3rWDSc1YroD
	UKGk51sKlM/W3UOEFF+bfA4bq9/wyoC1Pt6XZ6HBtgj9ey3WLCYRiEorgffBnkXSbKiJ2FvEUGiCZ
	Ra8Eq2El/lT2MTvsebUeLPHFx4mTMMkRuIuHzKRw+20TRWvtbeUIWRkloaQdnG6c4dxQeOv1aNuvA
	Q+FW6y2ib7csPcGLGEn/028gMku1zNBQ8QJJa+a0XBPSgSbWS61e6jCF+fMf2rA1lQeAiuDdLuS0u
	uqoRtDGZNVquIxAInXIfamKUSIr93FKOp+ttTjIAlnlvPomOj7+fiU7Pue4hMx5xbany9Q5Hvs333
	OAmVcy1Nb84nk6xTnnzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2pWr-0005uD-Rc; Wed, 28 Aug 2019 04:25:53 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2pWm-0005tt-MI
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 04:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566966348; x=1598502348;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=1w7wzvKuS9YEZhjT4ceycD2S/64vc4595oy7ZgVgPbk=;
 b=FuhxNRCZoI+gUk+9DAnKZaTes1u+vW1Zfc1TKwgOkup4Cd3mYJsAfkeN
 9I4ovKbx/u7LB5pfRQ1AGARkeQAk5RMXuQkvCA0IFWV30cP+ymPIOUC7u
 3bnTKVicMXaMjmAIXnPjtm7fTwSqpcmKcZhmXCEVZ8NglGl6bdfoAsiL7 c=;
Subject: RE: [PATCH 1/7] ath10k: enable RX bundle receive for sdio
Thread-Topic: [PATCH 1/7] ath10k: enable RX bundle receive for sdio
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 28 Aug 2019 12:25:47 +0800
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 28 Aug 2019 12:25:43 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 28 Aug 2019 12:25:40 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 28 Aug 2019 12:25:40 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Thread-Index: AQHVXKrOUvYo32uqIkuIjmEPEapo6qcOngKQ//9/pgCAAdoPoA==
Date: Wed, 28 Aug 2019 04:25:40 +0000
Message-ID: <032d964e076f4d34ac516863b031bf17@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-2-git-send-email-wgong@codeaurora.org>
 <CANMq1KBR0nd+XOJWpgWyoJdsFgZByQyjD-0dpttygiN0OfiD5Q@mail.gmail.com>
 <2ec213d88ebb4b89812826866b39886d@aptaiexm02f.ap.qualcomm.com>
 <CANMq1KCiH8-16esCfwi+60=ArZKC0G83Qs-W2Hq5GARar=6D9g@mail.gmail.com>
In-Reply-To: <CANMq1KCiH8-16esCfwi+60=ArZKC0G83Qs-W2Hq5GARar=6D9g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_212548_999001_43ADAE7A 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Nicolas
> Boichat
> Sent: Tuesday, August 27, 2019 4:08 PM
> To: Wen Gong <wgong@qti.qualcomm.com>
> Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> wireless@vger.kernel.org>; ath10k@lists.infradead.org; Wen Gong
> <wgong@codeaurora.org>
> Subject: [EXT] Re: [PATCH 1/7] ath10k: enable RX bundle receive for sdio
> 
> On Tue, Aug 27, 2019 at 4:03 PM Wen Gong <wgong@qti.qualcomm.com>
> wrote:
> >
> > > -----Original Message-----
> > > From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Nicolas
> > > Boichat
> > > Sent: Tuesday, August 27, 2019 3:41 PM
> > > To: Wen Gong <wgong@codeaurora.org>
> > > Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> > > wireless@vger.kernel.org>; ath10k@lists.infradead.org
> > > Subject: [EXT] Re: [PATCH 1/7] ath10k: enable RX bundle receive for sdio
> > The bundled buffer len is 256 * 3 = 768, it has 256 bytes for each packet,
> the left size is padding which
> > Is not needed, but the left padding is not same for each packet, before read
> all the buffer from sdio bus,
> > It does not know each packet's act len, it only know the 1st packet's act len.
> > So it need to copy all the alloc_len's buffer to ensure it will not lose data.
> 
> Gotcha, thanks.
Patch v2 sent with the changes, https://patchwork.kernel.org/patch/11116681/
> 
> > > Actually, just use skb_put_data.
> > >
> > > Also, do you have the same issue as
> > > https://patchwork.kernel.org/patch/11116215/ w.r.t. act_len being
> > > incorrect?
> > >
> > > > +               pkt->status = 0;
> > > > +               skb_put(skb, pkt->act_len);
> 
> So I guess this is incorrect, see patchwork linked above.
> 
> > > > +               pkt_offset += pkt->alloc_len;
> > > >         }
> > > >
> > > >         return 0;
> > > >
> > >
> > > _______________________________________________
> > > ath10k mailing list
> > > ath10k@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/ath10k
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
