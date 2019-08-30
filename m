Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61542A2D02
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 04:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGvb/AACAqbJKslDrq4M4xKmkl8Q80s0ctx1AmBbdDg=; b=oGkAoi13hhdQUN
	guMDo/1RDqVdfCjmsaj9bXRpI+jWbqSPtHtvGR4w9vNfooHObm1TN4Slvje418lERwRLwf/QbBuy+
	GvxFHTBWGbMjvL6U24ykKRlokFcYUQFbEgBJ0zuA0SJ0/faTfYRHQwpJgsIgPyYLFrkemYYn1eVtn
	l2M2UsRkL0X0g9ehdr+bUMUIkpRKf4shyYJgHu8+arOvT4Cod7TudbHzyqNGw1gSEd2UJ5G9YJ5nJ
	+AQcP/eO8a10bamTTxk0SMmkZcClhlhCqu9q7vizQqJ7E3F0BjI1EolwBDUKpmsd/yG7jQJZme2JS
	OSBufi2N0oezR5i1X/QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3X24-0000bE-Kn; Fri, 30 Aug 2019 02:53:00 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3X1y-0000an-R2
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 02:52:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567133574; x=1598669574;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=+ZyU7CTvWQEs+oV1t+MWTWx424qD+3s986DErneCy5c=;
 b=SkDEzFQFHnrRzHVfeZa/EbV47unypy4VSc43OQYMlIKM32bevjwmk2Il
 9Pj5RXZL97kD0i+CyRGnol3OkRedsvWH+fafVN1RPK6IHlT9TtaGaWM7P
 iPE49XJVn6Qr0Mm2ULrM/KWcJK+drUXJexx09NXHMKviFyh/tQQR9Jfeb c=;
Subject: RE: [PATCH v2 7/7] ath10k: enable napi on RX path for sdio
Thread-Topic: [PATCH v2 7/7] ath10k: enable napi on RX path for sdio
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 30 Aug 2019 10:52:53 +0800
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 30 Aug 2019 10:52:53 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Fri, 30 Aug 2019 10:52:51 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Fri, 30 Aug 2019 10:52:51 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXWMTQUSOA0hE8EaEPXwyNjcZkqcTASRw
Date: Fri, 30 Aug 2019 02:52:51 +0000
Message-ID: <dd7f7cd664e64ee59965117ffd7c2c7e@aptaiexm02f.ap.qualcomm.com>
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-8-git-send-email-wgong@codeaurora.org>
 <CANMq1KCQZCOw8kHn2MJfAT9fWoLCmz2jFWqHzd=9QOgZ7MeaXQ@mail.gmail.com>
In-Reply-To: <CANMq1KCQZCOw8kHn2MJfAT9fWoLCmz2jFWqHzd=9QOgZ7MeaXQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_195255_151988_44ADBB78 
X-CRM114-Status: UNSURE (   5.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.227 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
> Sent: Wednesday, August 28, 2019 1:40 PM
> To: Wen Gong <wgong@codeaurora.org>
> Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> wireless@vger.kernel.org>; ath10k@lists.infradead.org
> Subject: [EXT] Re: [PATCH v2 7/7] ath10k: enable napi on RX path for sdio
> 
Changed and v3 sent, https://patchwork.kernel.org/patch/11122183/

> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
