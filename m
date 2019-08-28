Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A40A0264
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 15:00:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pn7Ryj00m8cMRnPlTR5BCBqPNyz4WsJhqwCL1NUgTTQ=; b=ZIHpdIDJQOdNMg
	hDuuRV/e8QVINWqTkmQNHY0tPB50x1f5MWxUlU0GaNFOJcTNeO7e4Okx+2NBHzc/Qgl7xUMW/ahjk
	eFtAIEqK6nIDRH4yve4X6ywNrCkkV4YPlIVHvbznYP+/oTjlaxE/gViOEB56h44vWMuNat3ZR7asa
	074tB5Gp1sR5xYB/69rpH7ga87IevaLI7wSas5V4xjMMaUHdWntluIGB/1SuKnBCKo0LL0xb6dhUg
	7vUJXbOPzCeTpuj8ShP9UkOSikv9glCplT7Vr7uIv5ymqBsOakbg6bz8+2oTGCNSR+2BP2g7K2zfX
	DjsYCE7k7xINCqfyNI6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xYU-00011R-R1; Wed, 28 Aug 2019 13:00:06 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xYN-0000em-Hq
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 13:00:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566997199; x=1598533199;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=wOU4tVJO3ByJwR7Ch5MaE86PQonwsrDPw/6jEeqaQdE=;
 b=yvFldjrJU5VP6nQuy0JLG/tSAhHCcdKorRREKgAsvh8pWAwZHRjcJa6Q
 AkIOzYv4+egTUfROEta/oKacWyO6uzmAKWNkdkI4z0Ej5yy5+4CGfbrFp
 KGC2m1vyVISBgKgVthsmJlE9r7/4vtsHAzKbgTQVKguSWXoGVEuI6T1dD E=;
Subject: RE: [PATCH v2 4/7] ath10k: disable TX complete indication of htt for
 sdio
Thread-Topic: [PATCH v2 4/7] ath10k: disable TX complete indication of htt for
 sdio
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 28 Aug 2019 20:59:56 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 28 Aug 2019 20:59:52 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 28 Aug 2019 20:59:50 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 28 Aug 2019 20:59:50 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXWFSQ/SJykVh+UihzVRM6dfs6acQhZzQ
Date: Wed, 28 Aug 2019 12:59:50 +0000
Message-ID: <d97ba89eaee24e07ac14c34fca2ad46d@aptaiexm02f.ap.qualcomm.com>
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-5-git-send-email-wgong@codeaurora.org>
 <CANMq1KDeQaJWYiAz=P9pKm0_seNmtnEHVgt9T0-=40Ew=zLs0A@mail.gmail.com>
In-Reply-To: <CANMq1KDeQaJWYiAz=P9pKm0_seNmtnEHVgt9T0-=40Ew=zLs0A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_055959_857001_F5EDCC19 
X-CRM114-Status: UNSURE (   6.82  )
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
> Sent: Wednesday, August 28, 2019 1:27 PM
> To: Wen Gong <wgong@codeaurora.org>
> Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> wireless@vger.kernel.org>; ath10k@lists.infradead.org
> Subject: [EXT] Re: [PATCH v2 4/7] ath10k: disable TX complete indication of
> htt for sdio
> >  static unsigned int ath10k_cryptmode_param;
> >  static bool uart_print;
> > +static bool disable_tx_comp = true;
> 
> So you don't like my feedback to call this enable_tx_comp? That's ok,
> but please let me know why ,-)
Since tx complete is enabled by default, so disable_tx_comp will be a 
Make sense word per my understand.
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
