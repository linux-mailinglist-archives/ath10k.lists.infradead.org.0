Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D12A790A
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 04:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MB7cybqxJwCPV2EuVbap5J7sxDwR0pGlua3vNSE0uUU=; b=iP/j8wJBSCh1EU
	rqAlRr3SijmeL6x/d9is36wyaDz02/CpOtKXRI6xMF+PN+wLi/Fd774mAO9yjbwKlsIskrvXe7xPI
	ucOkXacjZ3hkc5koT77q7AP+QYMrIw99fwzldegNytzsBO8nuM8ARf+XLkvGSxCWWxOqBAWctvMhk
	Obaev5etTbNxKHD8LZHSO+hNojwYPBxZlXXxrj3lHtPbjrElGZwj+UPqVChD6MOouvoOYjz966WRK
	hQxMFbNNpwkAjl4GTyYY6M+FYCnA7JNyHbScD/Vi50TkShbF9veKApDm9SqFxclNULoupZOw7QbhT
	5u6cJbntUG/t9YNDPtpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5LPz-0002fg-HM; Wed, 04 Sep 2019 02:53:11 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5LPt-0002f5-Pc
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 02:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567565585; x=1599101585;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=ce1LyIJsst268UIaT8qzmnUQzaBGDuk7qlW2EIvBuEo=;
 b=BVlEmed8V0SjUXpaxCinuKMlSr0/1vuADjJUUO8PKhZIEVuzHwp1do6T
 eukF+rg+c9HUwb++xJWNKk9XjBCcvENABEg9zdwl+k9GwwZxF2UcQmxkQ
 9HU5I/DhAg3sBuXEekYHmZJVjVYsaeFqecffxNMzRvyav4dHqxoxtltcZ A=;
Subject: RE: [PATCH v3 3/8] ath10k: change max RX bundle size from 8 to 32 for
 sdio
Thread-Topic: [PATCH v3 3/8] ath10k: change max RX bundle size from 8 to 32
 for sdio
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 04 Sep 2019 10:53:04 +0800
Received: from aptaiexm02e.ap.qualcomm.com ([10.249.150.15])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 04 Sep 2019 10:52:59 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02e.ap.qualcomm.com (10.249.150.15) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 4 Sep 2019 10:52:57 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 4 Sep 2019 10:52:57 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXuCgv+l+3UA4lk6mCk3Lpfzlu6ca2cxw
Date: Wed, 4 Sep 2019 02:52:57 +0000
Message-ID: <bf3c71d1826a4a238d0b0fd41058ed08@aptaiexm02f.ap.qualcomm.com>
References: <1566998177-2658-1-git-send-email-wgong@codeaurora.org>
 <1566998177-2658-4-git-send-email-wgong@codeaurora.org>
 <CANMq1KDLXsar1AqU=mfce-2LGD7SRDmC5phkKtz92D3BG35Eog@mail.gmail.com>
In-Reply-To: <CANMq1KDLXsar1AqU=mfce-2LGD7SRDmC5phkKtz92D3BG35Eog@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_195306_104293_0E12EB8A 
X-CRM114-Status: UNSURE (   4.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.226 listed in list.dnswl.org]
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
> Sent: Friday, August 30, 2019 11:11 AM
> To: Wen Gong <wgong@codeaurora.org>
> Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> wireless@vger.kernel.org>; ath10k@lists.infradead.org
> Subject: [EXT] Re: [PATCH v3 3/8] ath10k: change max RX bundle size from 8
> to 32 for sdio
Patch v4 sent, https://patchwork.kernel.org/patch/11126225/
> 
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
