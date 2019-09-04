Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DE8A7A26
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 06:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2d8q+emPIrP0gtHN4bRHjxG713zHFo4Bn3DS3c8nzqo=; b=B1vaNlqOihYvk1
	zrnJnScUuv/u0cnhAczrgQ5P5a+h3cMJCNqzN2+ZkXovcTvOuFcT875i7c2ym0VXOoid5No7XxkUD
	416SujjPfIsa4TsmP/Zm8PNw2pilD7GbX5N/4nYqD77e8Nl+AHyERjgTASdJlSA39zAR7pwWmQ4nd
	bnSV5gjemMFdPld/8ZA+eG0NmNU14Scp4jT/18ihzBtNtId7fgZKA9DtYtD+pjZZJCYyW3RgH9zz4
	pTllEO4Ave0SY+lWTbzHWkWHmQEPRCN2torV0Af1s+PhEKnVJ4nQMpYHhqS1Bh2LTwQL9j08Q4EcZ
	/3+iDNG/+fiTOE3/s1OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5N8q-00031V-BD; Wed, 04 Sep 2019 04:43:36 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5N8l-00030L-IB
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 04:43:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567572211; x=1599108211;
 h=from:to:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=DMDQwa1wMgq3WtQtLRk0tX1gDVhgMz6LcVx5a87hHFo=;
 b=QRs/peYPbuNJ+8+Gpb8vNFY6VjjdizX0CERKIXj5+17m/+u3wrZHrIuQ
 QVPlReebPgIeiauxPAbso6jFHp+vvc8a0gKWISr1eT5ImdLkaCGM1c9/U
 Lo2/wLZ4hZ2IHFPckol9EypJHMPdO+7O7ROju8qOil54ggaSWtYB6mN00 0=;
Subject: RE: [PATCH 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
Thread-Topic: [PATCH 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 04 Sep 2019 12:43:27 +0800
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 04 Sep 2019 12:43:23 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 4 Sep 2019 12:43:21 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 4 Sep 2019 12:43:21 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Dave Taht <dave@taht.net>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>, "linux-wireless@vger.kernel.org"
 <linux-wireless@vger.kernel.org>
Thread-Index: AQHVYnII1QGsPhG3K0ybAPHFlPgABKca8VbA
Date: Wed, 4 Sep 2019 04:43:21 +0000
Message-ID: <259d8d7f8c2a4c428ae14ff211c83c1a@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-3-git-send-email-wgong@codeaurora.org>
 <87k1apnyyo.fsf@taht.net>
In-Reply-To: <87k1apnyyo.fsf@taht.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_214331_892164_0D33C7A3 
X-CRM114-Status: UNSURE (   9.72  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Dave Taht <dave@taht.net>
> Sent: Wednesday, September 4, 2019 12:10 AM
> To: Wen Gong <wgong@qti.qualcomm.com>; ath10k@lists.infradead.org;
> linux-wireless@vger.kernel.org
> Subject: [EXT] Re: [PATCH 2/7] ath10k: change max RX bundle size from 8 to
> 32 for sdio
> 
> 
> In terms of deeply grokking what increasing buffering to achieve high
> bandwidth on a testbench, vs what it can do to clobber latency in the
> real world at low bandwidths, I tend to point folk at:
> 
> https://www.youtube.com/watch?v=Rb-UnHDw02o&t=25m40s
> 
> where I got a whole bunch of hackers to stand up and act like packets
> in an aggregating FIFO wifi queue.
> 
> This key section is only 8 minutes long, and I promise, y'all laugh
> at least 3 times at the demonstration.
> 
> At the time, also, the ath10k was so overbuffered that on one test
> I could try to start 100 flows, and only get five.
> 
> https://lwn.net/Articles/705884/
> 
> and on my slides:
> 
> https://blog.linuxplumbersconf.org/2016/ocw//system/presentations/3963/
> original/linuxplumbers_wifi_latency-3Nov.pdf
> 
Hi Dave,
So your mean is change 8  to 32 will impact latency? It will increase latency of rx?

> 
> 0xFFFEFFFF

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
