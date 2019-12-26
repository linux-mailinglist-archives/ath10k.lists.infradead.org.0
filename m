Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 459BD12AA89
	for <lists+ath10k@lfdr.de>; Thu, 26 Dec 2019 07:38:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mC3vDloheyzNtjf/270Uvcq6UTJc+M+//ibp9ragOp8=; b=WpequfGBNzyrIo
	fDZ6x2YhCc9JIQgK7zM+6WPUxPHAkKGIRi48lLszm8YohlxHYJv2h1iGaXfxpBv0Kf4MDJExhvzWc
	qk3uBOULeEAFmosej4+fnQYy17zZSVB2iTTBgU4vm1HJn9bAiJVbei57trwTGlSr+6bGq2JvqonGM
	2Iyx/gH9v0JNoKTBj7xn64iYbpBnWXPcXCcoobUxZvn8ha9oe1i+5BGJkmh9JiCP1qzyxOdkSg+VY
	PxX7Db4/sT0eRraAB2XO3B8KnPwHXtMunFGqVTOye4hY4/9ErFZvpv8nhBIeT/5TRjw7G+7aWOBy+
	I1Q8/qiBbDyBbieOaIXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikMmi-0008Jd-UC; Thu, 26 Dec 2019 06:38:12 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikMme-0008JI-7O
 for ath10k@lists.infradead.org; Thu, 26 Dec 2019 06:38:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1577342288; x=1608878288;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=J8+wed+SF9vVAtfwPyOzfe2DRaPD/2Xi/xGBms0Y2uA=;
 b=QFlkpYN6vbHQqy+EU1LUFPhju1LeODNpHhmaZ+/28ZtnXIeJsylE8N3B
 mwa6HiOu0THzEQW4RY7+Btnr1uVQWdbuGPQy3y5HipyJBYbXoeXBx+wQy
 bES5s4QcEzeTYDC4dsj81w7xnM5m8znt1oiJD38Lz+J6GmxQqjpqPj4XO E=;
Subject: RE: [PATCH] ath10k: start recovery process when payload length
 exceeds max htc length for sdio
Thread-Topic: [PATCH] ath10k: start recovery process when payload length
 exceeds max htc length for sdio
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 26 Dec 2019 14:38:01 +0800
Received: from aptaiexm02e.ap.qualcomm.com ([10.249.150.15])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 26 Dec 2019 14:37:58 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02e.ap.qualcomm.com (10.249.150.15) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Thu, 26 Dec 2019 14:37:56 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Thu, 26 Dec 2019 14:37:56 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVtwM5cmoEosErVUSoACeK8vh5vafL/9aQ
Date: Thu, 26 Dec 2019 06:37:56 +0000
Message-ID: <02596d5969ab4edabe0b725379bc26a2@aptaiexm02f.ap.qualcomm.com>
References: <20191220070021.12103-1-wgong@codeaurora.org>
In-Reply-To: <20191220070021.12103-1-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_223808_535903_4E8F147E 
X-CRM114-Status: UNSURE (   3.43  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Wen Gong
> Sent: Friday, December 20, 2019 3:00 PM
> To: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] [PATCH] ath10k: start recovery process when payload length
> exceeds max htc length for sdio
V2 sent: https://patchwork.kernel.org/patch/11310185/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
