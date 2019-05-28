Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9741A2BD6F
	for <lists+ath10k@lfdr.de>; Tue, 28 May 2019 04:55:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/Pz0dOb0+KXNpg58Ie/DSRDJKy2F/y/CwGzvyGgmiU=; b=RThJtLITmX1HUh
	8C/w2F41LyuH8wWvo6EJAz5bGf0CdNiMIa6sxKBka3EGGjQJFSEqL5rEp7aTBxYUlYX46ik+1riZG
	y2lRi7NUjP/Js/vY+QWnkHZEBl/Rv+2dZsLBEmFzAeq01ZpYcs4p3DRDzbcZtf4NlXE1BU1FwTdvE
	QJxYz2AxbzeZ3LO2Rs6aQ/sZ/L0+DqjF+GMrvQiTCI2AbjJKwvq3V+4V+GysR55IemwcrxVmY8Wcg
	p7bDdkGqLDNCAEhtVFqAPJRHnkULXERVurQbO7lsSuzVklu5B9zaz+kXhWPaStgI7n5NUHagUex9F
	L8qdChCjoF1VTW8Epsyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVSGW-0004ej-4G; Tue, 28 May 2019 02:55:04 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVSGP-0004e1-TA
 for ath10k@lists.infradead.org; Tue, 28 May 2019 02:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1559012097; x=1590548097;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=zNYXwNuVh9/1L9/I1OSG3THPZyntxIZ+lEywT6ycp0M=;
 b=WieZggBagZ2WQumgkk/sUFORNePwhYGFYm1aE37eQBClFDYLJhpOfzTZ
 k+R35RKka6ZaLPfddK0v3MpOA8ktBlL8gEnOuxRfOamd2CuXPEj/lCUN5
 1cWpMcdONXEWGKMKqQ6KHVIe9BuzBOqRZknoxZcDc7mJmWEXjDHeINnAo s=;
Subject: RE: [PATCH v2] ath10k: add support for simulate crash on SDIO chip
Thread-Topic: [PATCH v2] ath10k: add support for simulate crash on SDIO chip
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 28 May 2019 10:54:56 +0800
X-IronPort-AV: E=McAfee;i="5900,7806,9270"; a="30540123"
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 28 May 2019 10:54:55 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1395.4; Tue, 28 May 2019 10:54:53 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1395.000; Tue, 28 May 2019 10:54:53 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Claire Chang <tientzu@google.com>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVCslW/u/fYzi78E+Y5SXBgv663aZ2uDcwgAkzO/A=
Date: Tue, 28 May 2019 02:54:53 +0000
Message-ID: <4b8277404b26439395006d4476dd5e06@aptaiexm02f.ap.qualcomm.com>
References: <1556524457-17469-1-git-send-email-wgong@codeaurora.org>
 <CALiNf29_GwSEUJ_vdp+_1DeDyFZj0uuUY9kYh94w4P_eeDT=8g@mail.gmail.com>
 <5b1f1d8619524128894e5f31ca4733af@aptaiexm02f.ap.qualcomm.com>
In-Reply-To: <5b1f1d8619524128894e5f31ca4733af@aptaiexm02f.ap.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_195458_202216_CF0CD1E4 
X-CRM114-Status: UNSURE (   7.58  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Wen Gong
> Sent: Wednesday, May 22, 2019 2:24 PM
> To: Claire Chang <tientzu@google.com>; Wen Gong
> <wgong@codeaurora.org>
> Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> wireless@vger.kernel.org>; ath10k@lists.infradead.org
> Subject: [EXT] RE: [PATCH v2] ath10k: add support for simulate crash on SDIO
> chip
> > Tested-by: Claire Chang <tientzu@chromium.org>
> >
> > If this patch adds support for detecting the real firmware assert,
> > maybe the title should be "add support for _crash recovery_ on SDIO
> > chip"
> Yes, seems this title is more appropriate.
Hi Claire
New patch has uploaded for the change
https://patchwork.kernel.org/patch/10955189/
[v3] ath10k: add support for firmware crash recovery on SDIO chip

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
