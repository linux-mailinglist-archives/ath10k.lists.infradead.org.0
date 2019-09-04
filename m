Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD58A790D
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 04:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrzn/ne9yn3/5aAn0cO89lMbsQHV54xYvh9QhI694+M=; b=UAj7vxGeyhRqq/
	e15Cyy6kZ5MDE6b+ugQf4a7XinOQk639xHDjAHVT9c0ByBikCopEP5/aTnE3dlsk0iUd1ffKXGTRv
	fUIfhG+L35TAHgl+thcc8oMUUuk3beRAvPuQpNIir3JCsQRPpJTm02i8vuRvs9aACEACn8IA0+Azd
	F/DavVQ85Bja7eevWLMVi+Tfs3nQI5EzlEY7Y00cR1gWtSqT8W7PgBIfUW1AYBQzVH3sTmJM0krHI
	8cMAAcNk23F7QLnajjig7km6YqLpYcDTtlykcbntgzKVvX4EkXVPdMlyUg2ogGEnm0JsXVbuQ+3mz
	47ICZyVbvYT/GvP8bHHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5LSQ-00048m-Aj; Wed, 04 Sep 2019 02:55:42 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5LSL-00048R-JE
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 02:55:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567565737; x=1599101737;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=xRmhuNm1Y90GG9dIUkgmXRB9g95cDPJ515pi0MDymsI=;
 b=pqLMLeAWQ84wNveE3XE5wCE25Do5EDtGl/l3K6eJrBpud9B084Ypc33Z
 q2ujcZfl5WXQqrqj/4nlwN5p6yWI7h413M3mcTkSI7kzPdYlNh7/Gusz5
 4GTmo1yQr9wWZS0Fdmt82csOkH2qA9F/cALPdWNLtwEiVdQypskFyeHBZ 0=;
Subject: RE: [PATCH v3 4/8] ath10k: add workqueue for RX path of sdio
Thread-Topic: [PATCH v3 4/8] ath10k: add workqueue for RX path of sdio
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 04 Sep 2019 10:55:36 +0800
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 04 Sep 2019 10:55:32 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 4 Sep 2019 10:53:57 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 4 Sep 2019 10:53:57 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVXoibqDgIK544R0OGZW22VfB8RKca2s+w
Date: Wed, 4 Sep 2019 02:53:56 +0000
Message-ID: <69b89708f046420793e4aa5ac4dd2562@aptaiexm02f.ap.qualcomm.com>
References: <1566998177-2658-1-git-send-email-wgong@codeaurora.org>
 <1566998177-2658-5-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566998177-2658-5-git-send-email-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_195537_905182_1CCAE672 
X-CRM114-Status: UNSURE (   3.98  )
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Wen Gong
> Sent: Wednesday, August 28, 2019 9:16 PM
> To: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] [PATCH v3 4/8] ath10k: add workqueue for RX path of sdio
> 
Patch v4 sent, https://patchwork.kernel.org/patch/11126229/
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
