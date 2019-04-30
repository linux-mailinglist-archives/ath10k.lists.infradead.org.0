Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD30EF3DA
	for <lists+ath10k@lfdr.de>; Tue, 30 Apr 2019 12:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/i53VkXDsfoAUYZeayauhEptbTQmhKzmSOMh13kPNss=; b=mWObuGkf35Kjtd
	VZuEbyTN1bmlIvESGsmFKeQuCulC2hDrQMESXB//TLl3m8Am89ZOMoaJWTs2ZXKfq7hqnYNLvbn+o
	YakZ0rMQVaYKQTDNFLUYY2P0fCvrbL6a69tK4q4h8rRJBN8RNGHbwM8UZzDA+LQhQnm8uTSIQiU95
	BL0P7Lk7aWzk6YDi65yyKm76PnXOMdv9o/LpPnQXZNoAoIy8Gh4UmRtOsqhnfO7CqPTUIKEWs4qBD
	PvQ+lTCF/WZLpqx+rBywtdsOUfgjIYm3626c12tlVMOzZ16f+hlfII+StuDpXzxaAF8p5iHOxvM9k
	I30iWlFN8imPRsCk2Ozw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPkL-00065N-7k; Tue, 30 Apr 2019 10:12:21 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPkG-00064p-Sd
 for ath10k@lists.infradead.org; Tue, 30 Apr 2019 10:12:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1556619136; x=1588155136;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=BZotg9k9E1CKXnw/zm8MhESu2Ja8QFGo/7IeWgypMlU=;
 b=UKz7ZiTUcQOztKbAVD5JKhPA3Y6bGFOGV76tWoC3dlWvzitsiFEgPVG2
 VPSKLejftr4z8ZnJvvVSA0H/i4AatVgIUX1nmu1OTNM0DsSQmExXQU4mu
 zUebPX1/x4W3ooCd+aCQXQvD2VZrzvCpbuL0m2no8leBT0jg/Tp0567qa 8=;
Subject: RE: [PATCH] ath10k: add peer id check in ath10k_peer_find_by_id
Thread-Topic: [PATCH] ath10k: add peer id check in ath10k_peer_find_by_id
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 30 Apr 2019 18:12:12 +0800
X-IronPort-AV: E=McAfee;i="5900,7806,9242"; a="28185922"
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 30 Apr 2019 18:12:12 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1395.4; Tue, 30 Apr 2019 18:12:10 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1395.000; Tue, 30 Apr 2019 18:12:10 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>, Nicolas Boichat
 <drinkcat@chromium.org>
Thread-Index: AQHU/naVjdeK9KpvqkiaD4Ar16f1/qZUc6BggAAJjYA=
Date: Tue, 30 Apr 2019 10:12:09 +0000
Message-ID: <7d528d143ae14de2a489c6986f71ac45@aptaiexm02f.ap.qualcomm.com>
References: <1554260478-4161-1-git-send-email-wgong@codeaurora.org>
 <CANMq1KAU1B4Bweq3O6O8HOMwT7fHjj9tDyxqMsn_vn4gwxXL=Q@mail.gmail.com>
 <87wojbrg0m.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87wojbrg0m.fsf@kamboji.qca.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_031217_236294_EC7C6F52 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.226 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Claire Chang <tientzu@chromium.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Kalle Valo
> Sent: Tuesday, April 30, 2019 5:37 PM
> To: Nicolas Boichat <drinkcat@chromium.org>
> Cc: Claire Chang <tientzu@chromium.org>; linux-wireless@vger.kernel.org;
> ath10k@lists.infradead.org; Wen Gong <wgong@codeaurora.org>
> Subject: [EXT] Re: [PATCH] ath10k: add peer id check in
> ath10k_peer_find_by_id
> >> --- a/drivers/net/wireless/ath/ath10k/txrx.c
> >> +++ b/drivers/net/wireless/ath/ath10k/txrx.c
> >> @@ -157,6 +157,9 @@ struct ath10k_peer
> *ath10k_peer_find_by_id(struct ath10k *ar, int peer_id)
> >>  {
> >>         struct ath10k_peer *peer;
> >>
> >> +       if (peer_id >= sizeof(peer->peer_ids) * BITS_PER_BYTE)
> >
> > I'd use >= BITS_PER_TYPE(peer->peer_ids).
> 
> Nice, I didn't know about that. Wen, please submit v2 using this.
> 
> --
> Kalle Valo
Yes, 
I have send v2 yesterday:
[PATCH v2] ath10k: add peer id check in ath10k_peer_find_by_id
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
