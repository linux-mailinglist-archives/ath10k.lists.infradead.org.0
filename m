Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3900A78C0
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 04:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYtLIJW4ksw6bjnlmaAZpGUsuDHJLxH5t7Wwy7OC9q0=; b=YOKUlByK289XLx
	Ddnvp/JCPGmJx6UfcBi1Va9/JWqxLR+sGI3KIk8gkOZsK09YGM2MLvB3V41JVtfAmAgZLiAS6r7qp
	BO7HQgCuGQu0buoZRq31RoN7M+Mg62VG8yxRh1vzekj+wJjBKiUX0JYgkfzYiV4we0GCZq8KAwnRQ
	UCHK8FK0unMo+vHzOBs795EImH6T+EFNF7cQzzBl73Oj+1Ak613zhQgksLqFxAjiPuGX3FGa1Dm3D
	k0926YDA3nUobZn/UEIMuwrmazVwLISjZ533fvfMvtu8NQULXKxcxCpPsDeLlDKqTYMTy58K5FVwa
	T0S+tdfDQX7pNMfYF6NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5L5d-0004XN-El; Wed, 04 Sep 2019 02:32:09 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5L5W-0004X5-So
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 02:32:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567564322; x=1599100322;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=NLB1xeOi3nBJwBo+9laKV4NOYgRE67VnSHnyb5xNtZM=;
 b=VvEV9ZwmPUFMq2tDUbAqcMkREgbSvefSxAta4wQpqotNLAxuZEBlubGY
 L61sj/zLdypEzR8RJb79Yt6JncueGq5fZf9Bw34xLwJ5Ku9FWmDCr+RiJ
 5WMzV4kt4xDEhkm+r/EjCGcwNG725evVrFIcBklPQxb2G2bzJb3VU62R3 4=;
Subject: RE: [PATCH 3/7] ath10k: add workqueue for RX path of sdio
Thread-Topic: [PATCH 3/7] ath10k: add workqueue for RX path of sdio
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 04 Sep 2019 10:31:57 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 04 Sep 2019 10:31:53 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 4 Sep 2019 10:31:51 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 4 Sep 2019 10:31:51 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVV05R/CpIJkLVJ0inzjWcDTYK7qca4w3g
Date: Wed, 4 Sep 2019 02:31:51 +0000
Message-ID: <ae8cb55ffd5c4437a13fe9d7df29be96@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-4-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566302108-18219-4-git-send-email-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_193203_225155_295504A3 
X-CRM114-Status: UNSURE (   4.88  )
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
> Sent: Tuesday, August 20, 2019 7:55 PM
> To: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] [PATCH 3/7] ath10k: add workqueue for RX path of sdio
> 
Patch v2 sent, https://patchwork.kernel.org/patch/11116671/

> --
> 1.9.1
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
