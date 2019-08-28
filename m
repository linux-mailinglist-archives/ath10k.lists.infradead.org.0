Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6F7A0279
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 15:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MN5PHG13gq3T68XuDd4c4UoG6mDNB6yIlcmpd/8SfqI=; b=lhPs2ACUb9LfIZ
	iYnI/b/Rq+YklETQV+o6b2nIEcSZl50G6ngHF2lUiyQmZoevjcHtCz7ogigwA41lLA+Yz18iafFTw
	KEKTMWIxACdGlWfLmgSRlwEyNemsg/1If2rwrHPzD0jxMeLzE1Ypg3i833eLfR/DI0LR4p0lyzRj4
	CuKv2dXhMGq3Jorh5GXoLWrs2bqBktLpEzwBGwUIRCxeFgxzLxGBd66CMltnc0+oAOx+Q4fmQyMmP
	Fhr2rFkIzRWfeueoQSWEKU2U/Rtd4+vCjUx+8SGcuoS8ZNNPcdr2xyHvLznLyq8fRXNotujra3sUz
	0GfhrXk4JwWKgJGRYZ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xbl-0002jO-3p; Wed, 28 Aug 2019 13:03:29 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xbe-0002hx-RF
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 13:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566997402; x=1598533402;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=J2JIvCo/gDWUqveBoiH0BGVSG/QSfuMxe9cIL73DU34=;
 b=idW8LNGY8J1KaMX4qyUzRY78DWsyRiKUgKYizSp/tkIAuITp6P2LQUig
 XZJPi/2B70jMOnLDDne+WP/mdiuqP9ONLCB0ngdwXqg1ksGOL2NDWhhIw
 ocxpRWbYICv8DDAolmqEe16itbaHIbspLxEGxNGha0iOI1Z2hPM1Yq+Db w=;
Subject: RE: [PATCH v2 5/7] ath10k: add htt TX bundle for sdio
Thread-Topic: [PATCH v2 5/7] ath10k: add htt TX bundle for sdio
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 28 Aug 2019 21:03:21 +0800
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 28 Aug 2019 21:03:21 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 28 Aug 2019 21:03:19 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 28 Aug 2019 21:03:19 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXWKa4RLo4LlR4Eu0hbim+24wL6cQhk8A
Date: Wed, 28 Aug 2019 13:03:19 +0000
Message-ID: <2ebd81574092476a952ddeb671d1bfcf@aptaiexm02f.ap.qualcomm.com>
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-6-git-send-email-wgong@codeaurora.org>
 <CANMq1KAQncoZ3yX5Sfsc5tR8z9tJyA=jFF4_F1K=hLRe51OD4g@mail.gmail.com>
In-Reply-To: <CANMq1KAQncoZ3yX5Sfsc5tR8z9tJyA=jFF4_F1K=hLRe51OD4g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_060323_142046_EAB8C744 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Nicolas
> Boichat
> Sent: Wednesday, August 28, 2019 1:36 PM
> To: Wen Gong <wgong@codeaurora.org>
> Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> wireless@vger.kernel.org>; ath10k@lists.infradead.org
> Subject: [EXT] Re: [PATCH v2 5/7] ath10k: add htt TX bundle for sdio
> 
> 
> > +       int cn = 0;
> > +       unsigned int skb_len;
> > +
> > +       ath10k_dbg(ar, ATH10K_DBG_HTC, "bundle skb: len:%d\n",
> bundle_skb->len);
> > +       skb_len = bundle_skb->len;
> > +       ret = ath10k_htc_consume_credit(ep, skb_len, true);
> 
> ret makes me think of some error status, can we find a better name?
> Like credit_available or something?
If consume fail, it mean a error status(-EAGAIN), then it mean fail for this tx.
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
